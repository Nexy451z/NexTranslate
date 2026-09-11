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

**Complete.** All chapters are translated/reviewed (8,200+ keys):

| Phase | Scope | Status |
|---|---|---|
| 1 | Top-level files (chapter list, chapter groups, reward tables, file title) | done |
| 2 | `welcome` + `tips_and_tricks` (intro quests) | done |
| 3 | Basic chapters (`basic_tools`, `basic_armor`, `basic_power`, `basic_logistics`, ...) | done |
| 4 | Main questline chapters (`achapter_1`, `achapter_2r`, `chapter_2_the_star`, ...) | done |
| 5 | All mod chapters (productive_bees, mekanism, create, draconic_evolution, ...) | done |

Untranslated or missing keys were rewritten, and leftover machine-translation
mistakes (wrong item names, broken amounts, mixed English) were corrected.

Remaining English text is intentional: mod names, units (`512,000mb`), hidden
placeholder entries, and image-only descriptions.

Formatting codes (`&a`, `&#RRGGBB`, `\&`, `{@pagebreak}`, `\n`) are preserved exactly.

## Layout

```
ATM11-Quests/
├─ lang/ja_jp/...    # the translation overlay (only translated keys are touched)
└─ _source/          # local en_us reference snapshot (not committed)
```
