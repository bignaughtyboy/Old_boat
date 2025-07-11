execute as @e[type=item,nbt={Item:{id:"minecraft:oak_boat"}}] at @s run summon minecraft:item ~1 ~0.5 ~ {Item:{id:"minecraft:oak_planks",count:1}}
execute as @e[type=item,nbt={Item:{id:"minecraft:oak_boat"}}] at @s run summon minecraft:item ~ ~0.5 ~1 {Item:{id:"minecraft:oak_planks",count:1}}
execute as @e[type=item,nbt={Item:{id:"minecraft:oak_boat"}}] at @s run summon minecraft:item ~1 ~0.5 ~ {Item:{id:"minecraft:oak_planks",count:1}}
execute as @e[type=item,nbt={Item:{id:"minecraft:oak_boat"}}] at @s run summon minecraft:item ~ ~0.5 ~1 {Item:{id:"minecraft:stick",count:1}}
execute as @e[type=item,nbt={Item:{id:"minecraft:oak_boat"}}] at @s run summon minecraft:item ~1 ~0.5 ~ {Item:{id:"minecraft:stick",count:1}}
execute as @e[type=item,nbt={Item:{id:"minecraft:oak_boat"}}] at @s run kill @s

execute as @e[type=boat] at @s positioned ~0.7 ~ ~ unless block ~ ~ ~ minecraft:water run scoreboard players add @s boat1damage 1
execute as @e[type=boat] at @s positioned ~-0.7 ~ ~ unless block ~ ~ ~ minecraft:water run scoreboard players add @s boat1damage 1
execute as @e[type=boat] at @s positioned ~ ~ ~-0.7 unless block ~ ~ ~ minecraft:water run scoreboard players add @s boat1damage 1
execute as @e[type=boat] at @s positioned ~ ~ ~0.7 unless block ~ ~ ~ minecraft:water run scoreboard players add @s boat1damage 1

execute as @e[scores={boat1damage=5..}] at @s run damage @s 2 minecraft:in_wall
execute as @e[scores={boat1damage=5..}] at @s run playsound minecraft:item.axe.strip master @p ~ ~ ~ 100 0.9 1
execute as @e[scores={boat1damage=5..}] at @s run scoreboard players reset @s boat1damage