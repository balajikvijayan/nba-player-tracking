SET shortseason=2013
SET /A shortyear=%shortseason%+1
SET season=%shortseason%-%shortyear%

CD ..
MD "data\stats\%season%\speed"
MD "data\stats\%season%\touches"
MD "data\stats\%season%\passing"
MD "data\stats\%season%\defense"
MD "data\stats\%season%\rebounding"
MD "data\stats\%season%\drives"
MD "data\stats\%season%\catch-shoot"
MD "data\stats\%season%\pull-up"
MD "data\stats\%season%\shooting"

CD "data\stats\%season%\speed"
wget "http://stats.nba.com/js/data/sportvu/%shortseason%/speedData.json"
CD ..\touches
wget "http://stats.nba.com/js/data/sportvu/%shortseason%/touchesData.json"
CD ..\passing
wget "http://stats.nba.com/js/data/sportvu/%shortseason%/passingData.json"
CD ..\defense
wget "http://stats.nba.com/js/data/sportvu/%shortseason%/defenseData.json"
CD ..\rebounding
wget "http://stats.nba.com/js/data/sportvu/%shortseason%/reboundingData.json"
CD ..\drives
wget "http://stats.nba.com/js/data/sportvu/%shortseason%/drivesData.json"
CD ..\catch-shoot
wget "http://stats.nba.com/js/data/sportvu/%shortseason%/catchShootData.json"
CD ..\pull-up
wget "http://stats.nba.com/js/data/sportvu/%shortseason%/pullUpShootData.json"
CD ..\shooting
wget "http://stats.nba.com/js/data/sportvu/%shortseason%/shootingData.json"
