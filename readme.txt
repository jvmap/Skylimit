============================================
============================================
The Sky Is The Limit v1.9rc1
Flyable Planes For MoH:AA
by Jeroen "jv_map" Vrijkorte
============================================
============================================
All content Copyright (c) 2004-2006 Jeroen Vrijkorte a.k.a jv_map
Portions Copyright (c) 2004-2006 by their respective authors.


The Sky Is The Limit v1.9 is dedicated to Duncan Weir a.k.a ScorpioMidget,
without whose pioneering work in MoH modding 'The Sky Is The Limit' would never have got off ground.


==================
1. Introduction
2. Getting Started
3. Yay In Game! Huh? What Do I Do Now?
4. Controls
5. Propeller And Engine Settings
6. Tactics And Hints
7. Terms of Use
8. Credits
9. Contact
==================


In a hurry? Understandably so. Here's the hurry guide: Make sure to read the Getting Started section including the Notes, and familiarize yourself with the controls. You can now start playing. The rest of this file is useful as background material and in case you run into problems.


1. Introduction
===============
The Sky Is The Limit (also called Skylimit) is a project I started near the end of 2004, and after more than a year of work has now met the milestone of this release. With The Sky Is The Limit, you'll be playing MoH:AA in the air, and it isn't any less exciting than on the ground. At this point, 3 maps are included, dm/sl_alamein, dm/sl_sicily, dm/sl_westeurope and their identical counterparts in the obj folder, obj/sl_alamein, obj/sl_sicily, obj/sl_westeurope. There are no supported bots or single player maps yet. Three different gametypes are included:

1) Dogfight / Free-For-All (g_gametype 1)
An individual shootout in the air. Only Fighters allowed. All players spawn in the air and receive new ammo at certain time intervals.

2) Team Dogfight / Team Deathmatch (g_gametype 2)
A team-based dogfight. Only Fighters allowed. Players may spawn in air or on ground. Ammo is replenished at timely intervals, but players may also heal themselves by landing on a friendly airfield and taxiing to a hangar. Airfields are protected by automatic flak guns.

3) Air Assault / Objective (g_gametype 4)
This is the most interesting gametype. Both teams have a limited supply of various plane types, fighters and bombers, and are to destroy the enemy team's air force, either in the air or on the ground. Players usually spawn on the ground. Ammo and health can be replenished by landing at a friendly airfield and taxiing to a hangar. Bombers are vulnerable but can do tremendous damage to enemy forces by bombing runways or hangars. Bombing runways takes the airfield out of service for a few minutes, whereas bombing hangars will destroy all aircraft parked inside. Airfields are protected by automatic flak guns, but in some maps the flak defenses can be severly hindered by destroying the radar station. Although risky, flak guns may also be destroyed directly with any of the onboard weapons.

This said, you should have a general idea of what to expect from The Sky Is The Limit 1.9, and you should be mouthwatering to head on to the next section.

2. Getting Started
==================
Installation of The Sky Is The Limit is very straight forward. See any of the sections below appropriate to your situation. Also see the Note 1 and Note 2 further down.

1) Home PC / LAN / 'Non-dedicated' server
-----------------------------------------
Place the file 'skylimit19.pk3' in the folder called 'main' within your MoH:AA installation, for example 'C:\Program Files\EA Games\Medal of Honor Allied Assault\main'. You can now play The Sky Is The Limit, either by starting a server or joining an existing one.

a) Starting a server
In the main menu, go to Multiplayer -> Start Game. Choose Free For All, Team Deathmatch or Objective. As map, select sl_alamein, sl_sicily or sl_westeurope. Then press 'Start game'.

b) Joining a server
You can join a The Sky Is The Limit server like any other server. Best make your game server finder (Gamespy / ASE / something else) sort servers by map name and look for map names containing 'sl_'.

2) Dedicated server
-----------------------------------------
For dedicated servers, it suffices to upload the smaller file 'skylimit19_server.pk3' to your server's 'main' folder. A good sv_maplist would be 'dm/sl_alamein dm/sl_sicily dm/sl_westeurope' or 'obj/sl_alamein obj/sl_sicily obj/sl_westeurope'. Reboot the server and you're done. Any client that wants to connect needs to have the 'skylimit19.pk3' file in his/her 'main' folder, as described above.

NOTE 1: If you want to play on a LAN or online, first go to Main menu -> Multiplayer -> Multiplayer Options and make sure 'Connection' is set to 'Cable' or better. You will NOT be able to play Skylimit properly on a lower setting.

NOTE 2: The Sky Is The Limit will not cause any interference with other installed mods or the normal game. It is safe to have The Sky Is The Limit maps in a rotation with stock maps (or other custom maps). Other installed mods (particularly those named 'user-___.pk3', 'zzz-____.pk3') may however cause The Sky Is The Limit to malfunction, so if you're having problems make sure to check if server or client have other mods installed that could cause the trouble. Note that cheat scanners installed on some servers may consider 'skylimit19.pk3' a cheat (but it obviously is not). If this happens on a regular server, it's best to temporarily remove the 'skylimit19.pk3' from your 'main' folder and put it back in place some other time.

3. Yay In Game! Huh? What Do I Do Now?
======================================
As soon as you have connected to a Skylimit server, you will be asked to join a team. If you do not want to join either team immediately, press ESC. In some cases, MoH:AA's weapon selection screen may pop up. If this happens, just select any of the weapons (doesn't matter which) and it won't show up again. Once you have joined a team, a message will appear on screen saying whether you are allowed to (re)spawn or not. Click fire to (re)spawn. You will now be in the hangar. This is where you can select an aircraft type. You can use your left/right buttons (a,d) to switch between different plane types. You can also use forward/back (w,s) to immediately go to the next main variant and skip all the subvariants. Press fire when you've made your choice.

4. Controls
===========
It is important to know ALL the controls, if you want to have a chance in combat. Especially know how to work with the different views.

Between parentheses the default keys are shown. Actual keys may differ depending on your settings.

Primary Flight Controls
-----------------------
Pitch Up   - Backward (s)
Pitch Down - Forward (w)
Roll Left  - Left (a)
Roll Right - Right (d)

You can move the mouse up/down to more smoothly adjust pitch, or move the mouse left/right to use the rudder (yaw). If the default mouse settings are not to your liking, they can be adjusted in the Options -> Controls screen.

Secondary Flight Controls
-------------------------
Start Engine      - Jump (space) [hold briefly, then release]
Increase Throttle - Jump (space) [hold]
Decrease Throttle - Crouch (ctrl) [hold]
Cutoff Fuel		  - Crouch (ctrl) [press] (*)
Brake             - Use (e) [hold]
Landing Gear      - Holster (q) [press] (**)
Reverse Thrust    - Lean Left (z) [hold] (***)

When you are on the ground, you can move your mouse left/right to steer.

(*) Fuel can only be cutoff when throttle has been reduced to Idle.

(**) It is important to retract the landing gear as soon as you take off, so you can build up sufficient speed. The landing gear will not retract automatically unless your speed exceeds 180 knots (it will take a very long time to achieve this speed with gear down). The landing gear can not be lowered above 180 knots, you first need to use your brakes if you want it down.

(***) Reverse Thrust can only be used when on the ground. Reverse thrust will be engaged automatically when you are on the ground at high speed while idling or using the brake.

NOTE: Not all aircraft have retractable landing gears.

Armament Controls
-----------------
Fire Primary Weapons			- Fire (lmb) (*)
Toggle Secondary Weapon / Item 	- Next Weapon / Previous Weapon (mousewheel) (**)
Fire Secondary Weapon / Item	- Secondary Fire (rmb)

(*) Primary weapons are displayed on the left on your HUD. All primary weapons will be fired simultaneously, they cannot be individually selected.
(**) Secondary Weapons / Items are displayed on the right on your HUD. Not all aircraft have secondary weapons or items. If your mouse doesn't have a mousewheel, bind keys to Next Weapon / Previous Weapon in Options -> Controls.

Camera Controls
---------------
Toggle 1st Person / 3rd Person  - Lean Right (c)
Freelook						- Walk (shift) (*)
Spectate Another Object			- Use (e) (**)

(*) Use the mouse to look around the plane in any direction. Freelook is only possible in 3rd person mode. If 'Always Run' is toggled OFF, you'll be in Freelook mode by default and have to hold the Walk (shift) key to be in the normal view mode. It is therefore recommended to have 'Always Run' set to ON (Options -> Controls -> 'Always Run' checkbox).
(**) Only possible when you're a Spectator or dead and last flown aircraft has been destroyed. Free spectate (moving around freely) is not possible.

5. Propeller And Engine Settings
================================
Although in real aircraft of the time they were usually a nuisance, Skylimit automatically adjust engine settings so that you usually have nothing to bother about. Nevertheless, some info for the curious reader. Like most real aircraft, aircraft in Skylimit are fitted with variable pitch, constant speed propellers. This means that the propeller will (automatically) adjust its blade angles such that the RPM remains constant (to please the engine). Consequently, if you use a very low throttle setting, the propeller will act like a windmill and slow down the aircraft. Skylimit uses the following Propeller / Engine settings:

TX - Taxi     : Low RPM
CR - Cruise   : Medium (optimum) RPM
CL - Climb    : High RPM
TO - Take Off : Very high RPM
R  - Reverse (*)
F  - Feathered (**)

(*) Reverse is not a constant speed but a constant incidence setting.
(**) Feathered is a constant pitch setting: the blades are rotated such that the propeller just vanes in the flow. This setting is applied when you shut off the engine.

6. Tactics And Hints
====================
My wise thoughts about air combat :).. might not be the most original ones.

1. Have a wingman.
2. Beware of the ground, but do not lose sight of the enemy.
3. Never try to outturn an aircraft with a smaller turn circle.
4. If you're fast, you're a hunter. If you're slow, you're the prey.
5. Get that damn gear in.
6. Don't climb when the enemy is near (see 4).
7. If you try to attack head-on, you will collide with the enemy.
8. Flak hurts.

Tips on how to use weapons properly:
- Machineguns will jam if fired continuously.
- Always lead a fast target (aim well before him).
- When firing sidewards from bombers, compensate for your own velocity (aim back a little).
- Ground targets are best attacked in shallow dives.
- When using internally stored weapons, release early because the bomb bay doors need a few moments to open.
- When using torpedoes, employ from far away and aim them well ahead of the target ship.

NOTE: Torpedoes may be shot out of the water.

7. Terms Of Use
===============
Do not use any of The Sky Is The Limit content for:
- Any commercial purposes (this includes attempts to sell it on auction sites).
- Control system for nuclear facilities.

I do not accept any responsibility for cost, damage, or lack of income arising from the use of The Sky Is The Limit. Use at own risk.

All content Copyright (c) 2004-2006 Jeroen Vrijkorte a.k.a jv_map
Portions Copyright (c) 2004-2006 by their respective authors.

Any of my content is free to anyone's use and redistribution as long as said use and distribution is not commercial in any way, and explicit credit is given.
My content is: Scripting, Sounds, MOHPiler.

If you wish to use and redistribute Maps, Models or Skins then, additionally, permission from the respective original author is required. Contact me for details.

The file skylimit19_sdk.zip contains all source files used in the creation of The Sky Is The Limit, including MOHPiler, a Java-based script optimization program. All content in skylimit19_sdk.zip is subject to the same Terms Of Use as mentioned above.

8. Credits
==========

Project Lead
------------
Jeroen Vrijkorte a.k.a jv_map

Scripting
---------
Jeroen Vrijkorte a.k.a jv_map

Mapping
-------
Jeroen Vrijkorte a.k.a jv_map
Tim Verbeek a.k.a At0miC

Modeling
--------
Jeroen Vrijkorte a.k.a jv_map
Bjarne Grönnevik a.k.a. Bjarne BZR
Mainframe
psychotic_chiken

Skinning
--------
Jeroen Vrijkorte a.k.a jv_map
Mainframe
psychotic_chiken

Sounds
------
Jeroen Vrijkorte a.k.a jv_map
Herr_Kruger

MOHPiler
--------
Jeroen Vrijkorte a.k.a jv_map

Testing
-------
Cobra {sfx}
At0miC
Herr_Kruger
Nightcommando
Elgan {sfx}
Viper {sfx}
Floyd
Runt
Iceman
And Many Others! Thanks!

Special Thanks
--------------
Cobra {sfx}
At0miC
Nightcommando
Josh
Simon Tan a.k.a SIMpleONe

Thanks To Our Sponsors
----------------------
http://www.mods-r-us.net
http://www.game-serve.co.uk

The Sky Is The Limit is still in progress! We need ever more people! Interested in helping out with Mapping, Modeling or Skinning? Contact me!

9. Contact
==========

Me:
Jeroen "jv_map" Vrijkorte
jv_map@planetmedalofhonor.com
http://www.planetmedalofhonor.com/freebrief/
From: The Netherlands

Or leave a message at one of those cosy forums I frequent:
http://www.planetmedalofhonor.com/map/
http://www.modtheater.com
http://www.mods-r-us.net