# Repository Guidelines

## Project Structure & Module Organization
- Swift Package layout: core API in `Sources/Capstone`, enum generator logic in `Sources/CapstoneEnumsGenerator` + `Sources/capstone-enums-generator`, and the SwiftPM command plugin in `Plugins/CapstoneEnumsGeneratePlugin`. The C module, `Ccapstone`, comes from the capstone package.
- Tests live in `Tests/CapstoneTests` and `Tests/CapstoneEnumsGeneratorTests`.
- Examples such as `Examples/cstool` show end-to-end usage; keep them building with the main package.
- API documentation is the DocC catalog `Sources/Capstone/Capstone.docc`; its articles carry the contracts the signatures do not show. Build it with `SWIFT_CAPSTONE_DOCUMENTATION=1 swift package --build-system native generate-documentation --target Capstone`; the output is not committed. The plugin builds every trait, so the generated enums of all architectures must compile.
- Generated sources carry an `AUTO-GENERATED` header — `*Enums.swift`, `Architecture+Generated.swift`, `*+Operands.swift`. Change `Sources/CapstoneEnumsGenerator` and regenerate instead of editing them.
- Project documentation lives in `Documentations/`; evolution proposals in `Documentations/Evolutions/`. Read `Documentations/Internal/CodeGeneration.md` before changing the generator or adapting another architecture, and `Documentations/Internal/Disassembler.md` before changing the engine or the instruction view.

## Build, Test, and Development Commands
- No prerequisite install: capstone is a Swift package dependency built from source. Set `USING_LOCAL_DEPENDENCIES=1` to resolve it from a sibling checkout instead of the remote.
- `swift build` – compile the package.
- `swift test` – run the suite (swift-testing); use `swift test --filter <name>` to scope failures. Trust the raw exit code, never a formatter's summary.
- `swift package plugin generate-enums` – regenerates the enums, the architecture table and the operand accessors from the capstone headers; run after upgrading capstone and commit the result. Add `--check` to compare instead of writing. Both the plugin and the generator stop at an unknown argument.
- `swift run capstone-enums-generator --include <capstone>/include/capstone --output Sources/Capstone --check` – verifies the checked-in generated files still match the headers, writing nothing. Exits non-zero when stale.
- `swift build --enable-all-traits --build-tests` – every architecture's generated enums must compile, since the documentation plugin builds this way.
- `swift run cstool -- --help` (from `Examples/cstool`) – sanity-check the example tool.

## Coding Style & Naming Conventions
- Swift 6 language mode (tools version 6.2); prefer 4-space indentation and trailing commas for multiline literals.
- The package must keep building with Xcode 26.6 (Swift 6.3): no syntax or API that needs Swift 6.4. An API that needs a newer OS than the declared platforms goes behind `@available` / `#available` as an extra option, never as the only path.
- The `Capstone` target checks strict memory safety. Mark unsafe operations with `unsafe` where they meet capstone's C API (the engine, the instruction view, the operand types, the C-array helpers) and keep them out of everything else. Build with the current toolchain clean: Swift 6.3 also flags calls such as `withUnsafeBytes` and `withCString` that 6.4 considers safe, and no marking satisfies both.
- Every file of the `Capstone` target, generated ones included, imports capstone as `internal import Ccapstone`, so no C type can reach a public signature; the check is per file, so new files follow suit. The target enables `MemberImportVisibility`: a file calling a Foundation member imports Foundation itself.
- Follow Swift naming: UpperCamelCase types, lowerCamelCase methods/properties, UPPER_CASE for C-style constants bridged into Swift when necessary.
- SwiftLint is configured (`.swiftlint.yml`); run `swiftlint lint` locally when available. Large tuples, nesting, and line length limits are relaxed; keep identifiers succinct (min length 1).
- Keep generated enum files under `Sources/Capstone/*Enums.swift` excluded from lint but still readable.

## Testing Guidelines
- Tests use swift-testing (`@Suite` / `@Test` / `#expect`); place new suites in `Tests/CapstoneTests`.
- Keep the package in Swift 6 mode: Swift 5 mode lets a non-Sendable type through a `Sendable` requirement silently, so `SendableTests` would stop catching anything.
- Expected values must come from the instruction encoding or the capstone headers, never from re-running the wrapper — a test that recomputes the implementation's answer can never disagree with it.
- Also run `swift test --traits AARCH64,SH`. It compiles SH into the engine without a wrapper, the only configuration in which `Architecture.isCompiledIn` reports an architecture this package has no `DisassemblyArchitecture` type for.
- For coverage checks, run `swift test --enable-code-coverage` and inspect the `.build` artifacts; aim to touch new instruction paths and error cases.

## Commit & Pull Request Guidelines
- Commit messages are concise and imperative (e.g., “Fix Arm64 const”, “Add RISCV”); group related changes per commit.
- PRs should describe the change, link related issues, list how to reproduce/test, and note any generated artifacts (enum regen, docs).
- Include screenshots or sample output only when behavior changes are user-visible (e.g., example tool output); otherwise keep PRs text-focused.

## Security & Configuration Tips
- This wrapper targets capstone v6. Only AArch64 is wrapped, as the one `DisassemblyArchitecture` type, tracked by the default trait set in `Package.swift`; the other architectures have generated enums only.
- The enum-generation plugin writes to the package root; run it intentionally and commit deterministic outputs. Do not commit build products from `.build/` or `Examples/*/.build/`.
