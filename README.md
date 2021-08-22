# simpledoc

# description

This provides a simple package for LaTeX for formatting a simple title.

## Usage

If simpledoc is installed in the `texmf` directory:

```
\usepackage{simpledoc}
.
.
.
\simpletitle{Review, \textit{Richard Strauss in Context}}
```

## Installation

On MacOS and Linux, the script `install.sh` will create the directory (if it
does not exist) `simpledoc` in the appropriate subdirectory of `texmf` and will
copy the file `simpledoc.sty` to that location.

