# If Lantern version is compatible, initialize data pack
execute if score lantern lantern.versions matches 1 run function dimord:initialize

# If Dimord failed to initialize, run infinite delayer
execute unless score dimord lantern.versions matches 1 run function dimord:delayer
