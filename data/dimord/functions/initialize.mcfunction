# Dimord version 1
scoreboard players set dimord lantern.versions 1

# Set Dimord state to 0 to indicate that dimension tick order should be tracked
scoreboard players set dimord.state lantern.const 0

# Create an array to store dimension names in order
data modify block -30000000 0 8880 Book.tag.dimord set value []

# Reset the infinite delayer
schedule function dimord:delayer 1

# Start the main loop
schedule function dimord:main 1
