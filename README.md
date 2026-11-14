# whip_media_previews

Vehicle, NPC and tattoo pictures, and the emote menu's preview videos, for
[WHIP](https://github.com/WHIPFX/txAdmin-recipe).

It's one of WHIP's five media packs, which hold the pictures, videos and map that `whip_core` shows. They're kept apart
from whip_core so its updates stay small: a player downloads each pack once, and again only when that pack changes.

## What's in it

| Folder | What | Shown in |
| --- | --- | --- |
| `img/vehicles` | 930 vehicle pictures, `<model>.webp` | Garages and the `/whip` panel |
| `img/peds` | 881 NPC pictures, `<model>.webp` | The Director's world builder |
| `img/tattoos` | 1,492 tattoo pictures, `<overlay>.webp` | The character editor's tattoos |
| `video/emotes` | 996 preview videos (WebM), in `Dances`, `Emotes`, `PropEmotes` and `Walks` | The emote menu |

## Installation

WHIP's txAdmin recipe installs it in `resources/[assets]/[media]`.

By hand, put the `whip_media_previews` folder in `resources/[assets]/[media]` and make sure `server.cfg` has
`ensure [assets]`. The packs start in any order, before or after `whip_core`. If one is missing or not started,
whip_core's setup report says so: type `whipsetup` in the server console.

On GTA V Enhanced, `set sv_resourceFileDownloadTimeout 600000` gives players on slow connections time to download
the packs. WHIP's Enhanced recipe writes it.

## Adding pictures

Name a new picture as the others in its folder, then restart this pack to send it to players. For a vehicle, restart
`whip_core` too: it checks which cars have a picture when it starts. A new emote folder needs its own line in
`fxmanifest.lua`.

When you update the pack, copy out any pictures you added before you replace the folder.

## License

The pictures and videos are made from Grand Theft Auto V and are Rockstar Games' material, used under the Cfx.re
Creator Platform License Agreement. WHIP's licence doesn't cover them. The code (`fxmanifest.lua`, `server.lua`) is
WHIP's, under the GNU LGPL 3.0 (whip_core's `LICENSE`). See `NOTICE.md`, and whip_core's `NOTICE.md` for the full
notice.

WHIP is not affiliated with, endorsed or sponsored by Rockstar Games or Take-Two Interactive.
