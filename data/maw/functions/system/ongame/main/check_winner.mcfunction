execute if score #maw WolfCount matches ..0 if score #maw VillageCount matches 1.. if score #maw PsychopathCount matches ..0 run function maw:system/finish/winner/villager
execute if score #maw VillageCount matches ..0 if score #maw WolfCount matches 1.. if score #maw PsychopathCount matches ..0 run function maw:system/finish/winner/werewolf
execute if score #maw VillageCount matches ..0 if score #maw WolfCount matches ..0 if score #maw PsychopathCount matches 1.. run function maw:system/finish/winner/psychopath
execute if score #maw VillageCount matches ..0 if score #maw WolfCount matches ..0 if score #maw PsychopathCount matches ..0 run function maw:system/finish/winner/draw
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}},scores={CurrentRole=10,UsedCStick=1..},limit=1] run function maw:system/ongame/role/arsonist/ignite
execute unless entity @a[tag=!Infect,tag=!PlagueDoctor,scores={DeathCount=0}] if score #maw InfectCount matches 0 run function maw:system/finish/winner/plague_doctor