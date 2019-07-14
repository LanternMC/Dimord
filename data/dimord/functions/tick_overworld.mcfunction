# Append dimension name to dimord storage if Dimord state is 0 (loaded and waiting for order)
execute if score dimord.state lantern.const matches 0 run data modify block -30000000 0 8880 Book.tag.dimord append value "Overworld"
