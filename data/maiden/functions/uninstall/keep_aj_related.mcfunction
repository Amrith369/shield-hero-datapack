#Project generated by Animated Java (https://animated-java.dev/)

execute if score #uninstall aj.i4 matches 0 run tellraw @a [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"Uninstall not in-progress. Please run","color":"gray"},"\n",{"text":" function maiden:uninstall","color":"red"},"\n",{"text":" to start the uninstallation process.","color":"gray"}]
execute if score #uninstall aj.i4 matches 1 run function maiden:uninstall/zzz/execute/0