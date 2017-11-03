# pppppass's TeX Templates

This is a repository about TeX Templates made by pppppass, including a
personal macro package, a PKU-style paper class, a PKU-style slide
class and a note class.

## License

The following files forms a work under LPPL license:
- `Readme.md`, readme file.
- `psdef.sty`, pppppass' personal macro package.
- `pkupaper.cls`, PKU-style paper (article) class.
- `pkuslide.cls`, PKU-style slide (beamer) class.
- `note.cls`, note class.

This work may be distributed and/or modified under the
conditions of the LaTeX Project Public License, either version 1.3
of this license or (at your option) any later version.
The latest version of this license is in
  http://www.latex-project.org/lppl.txt
and version 1.3 or later is part of all distributions of LaTeX
version 2005/12/01 or later.

This work has the LPPL maintenance status *maintained*.

The Current Maintainer of this work is pppppass (lzh2016p@pku.edu.cn).

This work is derived from several other works (packages) in LPPL.

- `yhmath` package (https://ctan.org/pkg/yhmath): section
` Math accents in yhmath` in `psdef.sty` is directly copied from
`yhmath.sty` to define several math accents including `\widetilde`.
- `ntheorem` package (https://ctan.org/pkg/ntheorem): section
`New theorem styles` in `psdef.sty` is modified from the definitions
of theorem style `plain` and `nonumberplain` in `ntheorem.sty`.
- `cbgreek` package (https://ctan.org/pkg/cbgreek-complete): section
`Upright greek letters from CB Greek fonts` in `psdef.sty` uses the
CB Greek fonts.
- `pkuthss` package (https://ctan.org/pkg/pkuthss): the whole
`pkupaper.cls` is abstracted from `pkuthss.cls`, with slight
modification to adapt to the personal macro package and some added
comment lines.
- `beamer` package (https://ctan.org/pkg/beamer): the color theme in
`pkuslide.cls` is modified from `beamercolorthemecrane.sty`, with all
color tuned to the theme color PKU red; the slide quotes in
`pkuslide.cls` is modified from `beamerouterthemeinfolines.sty`, while
the footline is customized for the quotes.

beamercolorthemecrane.sty

The following files belong to public domain:
- `pkupaperTemplate.tex`, PKU-style paper template.
- `pkuslideTemplate.tex`, PKU-style slide template.
- `noteTemplate.tex`, `noteTemplatePart1.tex`, `noteTemplatePart2.tex`,
note templates.
- `TemplateBibliography.bib`, bibliography file for all templates.
