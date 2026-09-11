# NexTr — ATM11 Quest Translation (FTB Quests)

Japanese (`ja_jp`) translation **overhaul** for the FTB Quests content of
**All the Mods 11** (Minecraft 26.1.2).

## Important: this is not a resource pack

FTB Quests reads quest translations from the instance/server **config**, not from
resource packs:

```
<instance>/config/ftbquests/quests/lang/ja_jp/<chapter>.json5
```

So this folder is distributed as a config overlay, not as a `resourcepacks/*.zip`.

## Install (single-player)

1. Download / copy the `lang/ja_jp` folder
2. Put it into `.minecraft/config/ftbquests/quests/lang/` (overwrite `ja_jp`)
3. Reload the quest book (restart the world, or run `/ftbquests reload` on a server)

## Install (server)

Copy the files to the server's `config/ftbquests/quests/lang/ja_jp/`; clients receive
the translations from the server automatically.

## Status

The bundled ATM11 Japanese quest text is largely low-quality machine translation.
This project rewrites it chapter by chapter:

| Phase | Scope | Status |
|---|---|---|
| 1 | Top-level files (chapter list, chapter groups, reward tables, file title) | done |
| 2 | `welcome` + `tips_and_tricks` (intro quests) | done |
| 3 | Basic chapters (`basic_tools`, `basic_armor`, `basic_power`, `basic_logistics`, ...) | planned |
| 4 | Main questline chapters (`achapter_1..4`, `chapter_2/3`) | planned |
| 5 | Mod chapters (alphabetical, biggest first) | planned |

Formatting codes (`&a`, `&#RRGGBB`, `\&`, `{@pagebreak}`, `\n`) are preserved exactly.

## Layout

```
ATM11-Quests/
├─ lang/ja_jp/...    # the translation overlay (only translated keys are touched)
└─ _source/          # local en_us reference snapshot (not committed)
```
