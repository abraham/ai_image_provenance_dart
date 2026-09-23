# Third-party test fixtures

The JPEG files in this directory are unmodified samples from the
[c2pa-org/public-testfiles](https://github.com/c2pa-org/public-testfiles)
repository, used here under the terms of the
[Creative Commons Attribution-ShareAlike 4.0 International license](https://creativecommons.org/licenses/by-sa/4.0/).

- `adobe-20220124-A.jpg` — no C2PA manifest.
- `adobe-20220124-C.jpg` — a valid manifest signed with C2PA Tool's test
  certificate (not on any trust list, so it validates as untrusted).
- `adobe-20220124-E-sig-CA.jpg` — a manifest with a deliberately invalid
  claim signature.

These files are excluded from the published package via `.pubignore`; they
are only used by this package's own test suite.
