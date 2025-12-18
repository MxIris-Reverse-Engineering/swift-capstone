# Repository Guidelines

## Project Structure & Module Organization
- Swift Package layout: core API in `Sources/Capstone`, C bridge in `Sources/Ccapstone`, enum generator logic in `Sources/CapstoneEnumsGenerator` + `Sources/capstone-enums-generator`, and the SwiftPM command plugin in `Plugins/CapstoneEnumsGeneratePlugin`.
- Tests live in `Tests/CapstoneTests` (XCTest) with fixtures in `TestFixtures.swift`; `Tests/LinuxMain.swift` provides Linux entry points.
- Examples such as `Examples/cstool` show end-to-end usage; keep them building with the main package.
- Static docs under `docs/` are generated via swift-doc; avoid hand-editing them.

## Build, Test, and Development Commands
- Prerequisite: install the native Capstone library/headers (e.g., `brew install capstone` on macOS) matching the branch you target.
- `swift build` – compile the package.
- `swift test` – run the XCTest suite; use `swift test --filter CapstoneTests/testName` to scope failures.
- `swift package plugin generate-enums` – regenerates the Swift enums from the Capstone headers; run after upgrading upstream Capstone and commit the resulting file.
- `swift run cstool -- --help` (from `Examples/cstool`) – sanity-check the example tool.

## Coding Style & Naming Conventions
- Swift 5.3+ syntax (tools version 6.1); prefer 4-space indentation and trailing commas for multiline literals.
- Follow Swift naming: UpperCamelCase types, lowerCamelCase methods/properties, UPPER_CASE for C-style constants bridged into Swift when necessary.
- SwiftLint is configured (`.swiftlint.yml`); run `swiftlint lint` locally when available. Large tuples, nesting, and line length limits are relaxed; keep identifiers succinct (min length 1).
- Keep generated enum files under `Sources/Capstone/*Enums.swift` excluded from lint but still readable.

## Testing Guidelines
- Tests use XCTest; place new suites in `Tests/CapstoneTests` and name classes `*Tests` with methods starting `test...`.
- Prefer fixture-driven cases (see `TestFixtures.swift`) to cover architecture-specific decoding and detail rendering.
- For coverage checks, run `swift test --enable-code-coverage` and inspect the `.build` artifacts; aim to touch new instruction paths and error cases.

## Commit & Pull Request Guidelines
- Commit messages are concise and imperative (e.g., “Fix Arm64 const”, “Add RISCV”); group related changes per commit.
- PRs should describe the change, link related issues, list how to reproduce/test, and note any generated artifacts (enum regen, docs).
- Include screenshots or sample output only when behavior changes are user-visible (e.g., example tool output); otherwise keep PRs text-focused.

## Security & Configuration Tips
- Ensure the system Capstone version matches the Swift wrapper branch to avoid runtime mismatches.
- The enum-generation plugin writes to the package root; run it intentionally and commit deterministic outputs. Do not commit build products from `.build/` or `Examples/*/.build/`.
