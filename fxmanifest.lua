fx_version 'cerulean'
game 'gta5'

name 'whip_media_previews'
author 'Whippy'
description 'whip\'s vehicle, NPC and tattoo pictures, and the emote menu\'s preview videos.'
version '1.0.0'
lua54 'yes'

-- A MEDIA PACK: whip's pictures, videos and map live apart from whip_core, one pack per category, so a change to one
-- is downloaded again for that pack alone (whip_media_clothing_male/fxmanifest.lua says why). The small picture
-- categories share this one. whip_core's shared/assets_index.lua (whip_core/dev/assets_index.mjs) says which pack
-- holds what.
whip_media_pack 'yes'   -- how whip_core's dev tools find the packs, wherever they are in the resources folder

-- Saves pictures for whip_core (the Vehicle Snapshot tool): the same file in every media pack. Server only.
server_script 'server.lua'

files {
    -- Vehicle pictures, one per model: img/vehicles/<model>.webp, made outside the game. (The "no picture"
    -- stand-in, missing.png, stays in whip_core.)
    'img/vehicles/*.webp',

    -- NPC pictures, one per ped model: img/peds/<model>.webp (the Director's world builder, NPCs tab; a glyph
    -- shows until a ped has one). Restart this resource after adding them.
    'img/peds/*.webp',

    -- The character editor's tattoo pictures: each tattoo printed on a flash card, made by 3D Clanker from the
    -- game's own art. img/tattoos/<overlay name, lower case>.webp, one per tattoo in whip_core/shared/tattoo_list.lua
    -- (a male and a female one share a picture).
    'img/tattoos/*.webp',

    -- The emote menu's preview videos, one folder per group, named by the `video` field in
    -- whip_core/shared/emote_list.lua. A new folder needs its own line here.
    'video/emotes/Dances/*.webm',
    'video/emotes/Emotes/*.webm',
    'video/emotes/PropEmotes/*.webm',
    'video/emotes/Walks/*.webm',
}
