rm presentation.pdf

pandoc -t beamer a.md -V theme:Warsaw -o presentation.pdf

okular presentation.pdf &
