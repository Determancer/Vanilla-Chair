scoreboard players set @a[scores={chairMode=1,chairCST=1..},predicate=!chair:sit] chair 1
scoreboard players set @a[scores={chairMode=1,chairCST=1..},predicate=chair:sit] chairRemove 1
scoreboard players enable @a chairMode
scoreboard players set @a chairCST 0
execute as @a[scores={chair=1}] at @s align xyz run function chair:chair
scoreboard players set @a chair 0
scoreboard players enable @a chair
execute as @a[scores={chairRemove=1},predicate=chair:sit] at @s positioned ~ ~-0.9029 ~ run kill @e[type=llama,distance=..0.4,limit=1,sort=nearest,tag=chair]
scoreboard players set @a chairRemove 0
scoreboard players enable @a chairRemove
execute as @a[tag=chair_sit,predicate=!chair:sit] at @s run tp ~-0 ~1.5 ~-0
tag @a[tag=chair_sit] remove chair_sit
tag @a[predicate=chair:sit] add chair_sit
execute as @e[type=llama,tag=chair] at @s unless block ~ ~1 ~ #slabs unless block ~ ~1 ~ #stairs unless block ~-0.1 ~1 ~-0.1 #stairs run kill @s
