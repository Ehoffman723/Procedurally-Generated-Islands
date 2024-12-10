# Treasure Hunter

## Goal

I've always thought that procedural generation was a very cool and interesting part of game creation. So, for this project I decided to tackle implementing a procedurally generated map. In this case it is an island! Each time you play, the map will be different, and the goal is finding the treasure chest that spawns randomly around the map. The treasure chest is supposed to spawn on the tiles that make up the island but sometimes will spawn in the ocean which the player is unable to reach... in this case just restart the game.

## Build Instructions

Unfortunately, Godot 4.3 is having issues with packaging PCK embedding with the game so there is no build in the GitHub. Whoever wants to play will have to clone the project and start the project in Godot. Apologies for the inconvenience this causes.

## What I Learned

Throughout this project I worked a lot with tile map layers and getting a specific object to spawn on the tiles I want. I really struggled with this getting atlas coordinates to work properly while also converting them back to tile map coords. The procedurally generated maps were very enjoyable and satisfying seeing it all come together. Adding randomness enhanced the game a lot making it a lot more enjoyable.

