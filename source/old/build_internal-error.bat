@ECHO OFF
@RD /S /Q ".\.nmlcache"
@RD /S /Q ".\backups"
@DEL /S /Q ".\urs.grf"
@DEL /S /Q ".\urs.nml"
:start
python nml_patcher.py -f "urs.pnml" -o "urs.nml" -b 1 -v 1
python C:\TTDTools\NML\nmlc -s C:\TTDTools\GRFs\Utility_Roadtype_Set\source\urs.nml
PAUSE