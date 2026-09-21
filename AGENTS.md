# Repository Guidelines

## Project Structure & Module Organization
- Swift Package layout: core API in `Sources/Capstone`, C bridge in `Sources/Ccapstone`, enum generator logic in `Sources/CapstoneEnumsGenerator` + `Sources/capstone-enums-generator`, and the SwiftPM command plugin in `Plugins/CapstoneEnumsGeneratePlugin`.
- Tests live in `Tests/CapstoneTests` (XCTest) with fixtures in `TestFixtures.swift`; `Tests/LinuxMain.swift` provides Linux entry points.
- Examples such as `Examples/cstool` show end-to-end usage; keep them building with the main package.
- Static docs under `docs/` are generated via swift-doc; avoid hand-editing them.
- Generated sources carry an `AUTO-GENERATED` header — `*Enums.swift`, `Architecture+Generated.swift`, `*+Operands.swift`. Change `Sources/CapstoneEnumsGenerator` and regenerate instead of editing them.
- Project documentation lives in `Documentations/`; evolution proposals in `Documentations/Evolutions/`.

## Build, Test, and Development Commands
- No prerequisite install: capstone is a Swift package dependency built from source. Set `USING_LOCAL_DEPENDENCIES=1` to resolve it from a sibling checkout instead of the remote.
- `swift build` – compile the package.
- `swift test` – run the suite (swift-testing); use `swift test --filter <name>` to scope failures. Trust the raw exit code, never a formatter's summary.
- `swift package plugin generate-enums` – regenerates the enums, the architecture table and the operand accessors from the capstone headers; run after upgrading capstone and commit the result.
- `swift run capstone-enums-generator --include <capstone>/include/capstone --output Sources/Capstone --check` – verifies the checked-in generated files still match the headers, writing nothing. Exits non-zero when stale.
- `swift run cstool -- --help` (from `Examples/cstool`) – sanity-check the example tool.

## Coding Style & Naming Conventions
- Swift 5.3+ syntax (tools version 6.1); prefer 4-space indentation and trailing commas for multiline literals.
- Follow Swift naming: UpperCamelCase types, lowerCamelCase methods/properties, UPPER_CASE for C-style constants bridged into Swift when necessary.
- SwiftLint is configured (`.swiftlint.yml`); run `swiftlint lint` locally when available. Large tuples, nesting, and line length limits are relaxed; keep identifiers succinct (min length 1).
- Keep generated enum files under `Sources/Capstone/*Enums.swift` excluded from lint but still readable.

## Testing Guidelines
- Tests use swift-testing (`@Suite` / `@Test` / `#expect`); place new suites in `Tests/CapstoneTests`.
- Expected values must come from the instruction encoding or the capstone headers, never from re-running the wrapper — a test that recomputes the implementation's answer can never disagree with it.
- `Tests/CapstoneTests/Legacy/` holds the v5-era suite, excluded from the target because it covers twelve architectures at once. Move files back out as each architecture is adapted to v6.
- For coverage checks, run `swift test --enable-code-coverage` and inspect the `.build` artifacts; aim to touch new instruction paths and error cases.

## Commit & Pull Request Guidelines
- Commit messages are concise and imperative (e.g., “Fix Arm64 const”, “Add RISCV”); group related changes per commit.
- PRs should describe the change, link related issues, list how to reproduce/test, and note any generated artifacts (enum regen, docs).
- Include screenshots or sample output only when behavior changes are user-visible (e.g., example tool output); otherwise keep PRs text-focused.

## Security & Configuration Tips
- This wrapper targets capstone v6. The v6 adaptation is in progress: only AArch64 is adapted, tracked by the default trait set in `Package.swift`.
- The enum-generation plugin writes to the package root; run it intentionally and commit deterministic outputs. Do not commit build products from `.build/` or `Examples/*/.build/`.
