--       _________ __                 __                               
--      /   _____//  |_____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \ 
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/            \/ 
--  ______________________                           ______________________
--                        T H E   W A R   B E G I N S
--         Stratagus - A free fantasy real time strategy game engine
--
--      missiles.lua - Define the used missiles.
--
--      (c) Copyright 1998-2004 by Lutz Sammer, Fabrice Rossi,
--                                 Jimmy Salmon and Crestez Leonard
--
--      This program is free software; you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation; either version 2 of the License, or
--      (at your option) any later version.
--  
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--  
--      You should have received a copy of the GNU General Public License
--      along with this program; if not, write to the Free Software
--      Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--
--      $Id: missiles.lua 1253 2005-07-03 14:48:14Z jsalmon3 $


Load("scripts/terran/missiles.lua")


DefineMissileType("missile-small-fire",
  { File = "missiles/small_fire.png", Size = {32, 48}, Frames = 6, NumDirections = 1,
  DrawLevel = 45, Class = "missile-class-fire", Sleep = 8, Speed = 16, Range = 1 } )

DefineMissileType("missile-big-fire",
  { File = "missiles/big_fire.png", Size = {48, 48}, Frames = 10, NumDirections = 1,
  DrawLevel = 45, Class = "missile-class-fire", Sleep = 8, Speed = 16, Range = 1 } )

DefineMissileType("missile-impact",
  { File = "missiles/ballista-catapult_impact.png", Size = {48, 48}, Frames = 10, NumDirections = 1,
  DrawLevel = 50, Class = "missile-class-stay", Sleep = 1, Speed = 16, Range = 1 } )

DefineMissileType("missile-explosion",
  { File = "missiles/explosion.png", Size = {64, 64}, Frames = 20, NumDirections = 1,
  DrawLevel = 50, Class = "missile-class-stay", Sleep = 1, Speed = 16, Range = 1 } )

DefineMissileType("missile-small-cannon",
  { File = "missiles/cannon.png", Size = {32, 32}, Frames = 15, NumDirections = 5,
  DrawLevel = 50, ImpactSound = "explosion",
  Class = "missile-class-parabolic", Sleep = 1, Speed = 16, Range = 1,
  ImpactMissile = "missile-cannon-explosion" } )

DefineMissileType("missile-cannon-explosion",
  { File = "missiles/cannon_explosion.png", Size = {32, 32}, Frames = 4, NumDirections = 1,
  DrawLevel = 50, Class = "missile-class-stay", Sleep = 1, Speed = 16, Range = 1 } )

DefineMissileType("missile-green-cross",
  { File = "missiles/green_cross.png", Size = {32, 32}, Frames = 4, NumDirections = 1,
  DrawLevel = 150, Class = "missile-class-cycle-once", Sleep = 1, Speed = 16, Range = 1 } )

DefineMissileType("missile-red-cross",
  { File = "missiles/red_cross.png", Size = {32, 32}, Frames = 4, NumDirections = 1,
  DrawLevel = 5, Class = "missile-class-cycle-once", Sleep = 1, Speed = 16, Range = 1 } )

DefineMissileType("missile-none",
  { Size = {32, 32}, DrawLevel = 50,
  Class = "missile-class-none", Sleep = 1, Speed = 16, Range = 1 } )

DefineMissileType("missile-hit",
  { Size = {15, 15}, DrawLevel = 150,
  Class = "missile-class-hit", Sleep = 1, Speed = 1, Range = 16 } )

DefineBurningBuilding(
  {"percent", 0, "missile", "missile-big-fire"},
  {"percent", 50, "missile", "missile-small-fire"},
  {"percent", 75 } -- no missile
)
