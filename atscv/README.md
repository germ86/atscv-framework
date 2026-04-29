# atscv

ATS-safe, LuaLaTeX-only CV class/package system.

## Build
1. Ensure TeX Live 2025+ with LuaLaTeX and biber.
2. Compile examples:
   - `tests/compile-all.sh`
3. Validate extraction order:
   - `tests/extract-text.sh`
   - compare outputs with `tests/expected-text-order.md`

## Modes
- ats
- modern
- academic
- careertrack
- executive
- compact

## Known limitations
- Font availability depends on host system.
- PDF/UA validation still requires veraPDF/PAC external checks.

## Roadmap
- richer localized section enforcement
- stricter PDF tag tree auditing
- JSON/YAML input-to-TeX compiler frontend
