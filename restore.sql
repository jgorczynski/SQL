use [master]

restore database DBname

from disk = 'C:\path\DBname.bak'

with move 'DBName_data'

to 'C:\path\DBname.mdf',

move 'DBname_Log'

to 'C:\path\DBname.ldf',

replace
