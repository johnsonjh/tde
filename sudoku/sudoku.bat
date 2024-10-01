::Start a game of Sudoku
@echo off
if [%1]==[] goto new
tde -e sudoku.tdm %1 %2 %3 %4 %5 %6 %7 %8 %9
goto eof
:new
copy /y sudoku.new sudoku.tmp >nul
tde -e sudoku.tdm -c "Sudoku (new game)" sudoku.tmp
:eof
