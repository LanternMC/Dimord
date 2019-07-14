# Dimord state of 0 means dimension tick order is being tracked. Get the number
# of dimensions that executed in the past tick.
execute if score dimord.state lantern.const matches 0 store result score dimord.state lantern.const run data get block -30000000 0 8880 Book.tag.dimord

# Reset order tag if it has 1..2 values, then reset Dimord state to 0.
execute if score dimord.state lantern.const matches 1..2 run data modify block -30000000 0 8880 Book.tag.dimord set value []
execute if score dimord.state lantern.const matches 1..2 run scoreboard players set dimord.state lantern.const 0

# If there is no online player, reset Dimord state to 0, as there needs to be a
# player to send the dimension tick order to.
execute unless entity @a[limit=1] run scoreboard players set dimord.state lantern.const 0

# If order tracking tag has 3.. values, tellraw the first three, then set Dimord
# state to -1 to halt execution.
execute if score dimord.state lantern.const matches 3.. run tellraw @a [{"text":"","color":"green"},{"text":"Dimension Tick Order","color":"aqua"},{"text":"\n 1. ","color":"yellow"},{"nbt":"Book.tag.dimord[0]","block":"-30000000 0 8880"},{"text":"\n 2. ","color":"yellow"},{"nbt":"Book.tag.dimord[1]","block":"-30000000 0 8880"},{"text":"\n 3. ","color":"yellow"},{"nbt":"Book.tag.dimord[2]","block":"-30000000 0 8880"}]
execute if score dimord.state lantern.const matches 3.. run scoreboard players set dimord.state lantern.const -1

# Run every tick so long as Dimord state is 0.
execute if score dimord.state lantern.const matches 0 run schedule function dimord:main 1
