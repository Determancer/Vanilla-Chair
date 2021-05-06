execute as @a[scores={chair=1..},predicate=!chair:sit] at @s align xyz run function chair:chair
execute as @a[scores={chair=1..},predicate=chair:sit] at @s positioned ~ ~-0.9029 ~ run function chair:remove
execute as @a[tag=chair_sit,predicate=!chair:sit] at @s run tp ~ ~1.5 ~
tag @a[tag=chair_sit] remove chair_sit
tag @a[predicate=chair:sit] add chair_sit