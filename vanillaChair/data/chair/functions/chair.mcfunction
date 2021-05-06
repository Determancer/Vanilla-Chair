execute if block ~ ~ ~ #slabs run summon llama ~0.5 ~-1 ~0.5 {NoGravity:1b,NoAI:1b,Silent:1b,Tags:["chair"],Invulnerable:1b,DeathLootTable:"minecraft:empty",Attributes:[{Name:"generic.max_health",Base:0}],ActiveEffects:[{Id:14b,Ambient:0b,Amplifier:0b,Duration:2147483647,ShowParticles:0b,ShowIcon:0b}]}
execute unless block ~ ~ ~ #slabs if block ~ ~-1 ~ #stairs run function chair:stairs
