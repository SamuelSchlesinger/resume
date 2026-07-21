# Resume

[![Build](https://github.com/SamuelSchlesinger/resume/actions/workflows/build.yml/badge.svg)](https://github.com/SamuelSchlesinger/resume/actions/workflows/build.yml)

LaTeX source for my resume. The compiled [resume.pdf](resume.pdf) is checked in
and kept in sync with `resume.tex` by a pre-commit hook. If you like the
format, feel free to fork this repo and swap in your own content.

## Building

Requires a TeX distribution with `latexmk` (e.g. [MacTeX](https://www.tug.org/mactex/) or TeX Live).

```sh
make            # build resume.pdf
make watch      # rebuild on changes
make clean      # remove intermediate build files
make distclean  # remove all generated files, including the PDF
```

Every push is also built by [GitHub Actions](.github/workflows/build.yml),
which compiles the resume in a clean TeX Live container and uploads the PDF
as an artifact.

## Setup after cloning

Enable the versioned git hooks (rebuilds and stages `resume.pdf` whenever
`resume.tex` is committed):

```sh
make hooks
```

## License

The LaTeX source and formatting are [MIT-licensed](LICENSE). The personal
content — the text of the resume itself — is not licensed for reuse; swap in
your own.
