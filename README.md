# Resume

LaTeX source for my resume. The compiled [resume.pdf](resume.pdf) is checked in
and kept in sync with `resume.tex` by a pre-commit hook.

## Building

Requires a TeX distribution with `latexmk` (e.g. [MacTeX](https://www.tug.org/mactex/) or TeX Live).

```sh
make            # build resume.pdf
make watch      # rebuild on changes
make clean      # remove intermediate build files
make distclean  # remove all generated files, including the PDF
```

## Setup after cloning

Enable the versioned git hooks (rebuilds and stages `resume.pdf` whenever
`resume.tex` is committed):

```sh
make hooks
```
