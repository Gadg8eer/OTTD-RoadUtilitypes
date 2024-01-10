@ECHO OFF
@RD /S /Q ".\.nmlcache"
@RD /S /Q ".\backups"
@DEL /S /Q ".\urs.grf"
:start
python nml_patcher.py -f "urs.pnml" -o "urs.nml" -b 1 -v 1
nmlc --grf urs.grf urs.nml
PAUSE