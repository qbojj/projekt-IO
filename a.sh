# rm presentation.pdf

# pandoc -t beamer './Koncepcja wykonania systemu.md' -V theme:Warsaw -o presentation.pdf
#
#
pandoc  './Koncepcja wykonania systemu.md'  -o presentation.pdf

okular presentation.pdf &


