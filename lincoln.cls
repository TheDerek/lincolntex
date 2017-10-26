\ProvidesClass{lincoln}
%\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}% or whatever
\ProcessOptions\relax
%
\LoadClass[a4paper]{article}
\usepackage[style=authoryear, natbib, hyperref]{biblatex}
\usepackage{fancyhdr}
\usepackage{graphicx}
\usepackage{hyperref}
\usepackage{pdfpages}
\usepackage{tabularx}
\usepackage{ltablex}
\usepackage[british]{babel}

\pagestyle{fancy}
\lhead{CMP3060M Project Proposal}
\rhead{}
\lfoot{SEW13467556 Derek Sewell}
\cfoot{}
\rfoot{\thepage}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}

\renewcommand*{\nameyeardelim}{\addcomma\space}
\renewcommand*{\postnotedelim}{\addcolon}
\DeclareFieldFormat{postnote}{#1}
\DeclareFieldFormat{multipostnote}{#1}

\usepackage{xpatch}
\xpretobibmacro{date+extrayear}{\addperiod\space}{}{}
\xapptobibmacro{date+extrayear}{\nopunct}{}{}

\addbibresource{report.bib}
\DefineBibliographyStrings{english}{%
    urlseen = {Accessed}
}
\DeclareFieldFormat{url}{Available from: \url{#1}}
\DeclareFieldFormat*{citetitle}{#1}
\DeclareFieldFormat*{title}{#1} 
\renewbibmacro{in:}{}
\renewcommand\bibpagespunct{\ifentrytype{article}{\addcomma}{\addcomma}\space}
\renewbibmacro*{volume+number+eid}{%
  \printfield{volume}
  \printfield[parens]{number}%
  \setunit{\addcomma\space}%
  \printfield{eid}}
\DefineBibliographyStrings{english}{%
  page             = {},
  pages            = {},
} 
\endinput