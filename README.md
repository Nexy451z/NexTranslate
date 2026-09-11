# NexTranslate

Japanese (`ja_jp`) translation resource pack for Minecraft, aimed at All the Mods-style modpacks.

## Packs

| Folder | Minecraft | Target | Status |
|---|---|---|---|
| [`1.21.1/`](1.21.1) | 1.21.1 | ATM10-era mods (~470 mods) | Available |
| [`26.1.2/`](26.1.2) | 26.1.2 | All the Mods 11 (316 namespaces, ~85k keys) | Available |
| [`ATM11-Quests/`](ATM11-Quests) | 26.1.2 | ATM11 FTB Quests (config overlay, 8,200+ keys) | Complete |

## Download / install

Pick the zip for your Minecraft version and put it in `.minecraft/resourcepacks/`, then
enable it in Options → Resource Packs and set the game language to 日本語.

Latest release: https://github.com/Nexy451z/NexTranslate/releases/latest

- 1.21.1: [`1.21.1/NexTr.zip`](1.21.1/NexTr.zip)
- 26.1.2: [`26.1.2/NexTr-ATM11.zip`](26.1.2/NexTr-ATM11.zip)

## FTB Quests translation (ATM11)

FTB Quests loads `ja_jp` text from the instance/server **config**, not from a
resource pack. The full Japanese quest translation overlay lives in
[`ATM11-Quests/lang/ja_jp/`](ATM11-Quests) — copy it to
`config/ftbquests/quests/lang/ja_jp/` (clients receive it from servers automatically).

## Contents

- `assets/<modid>/lang/ja_jp.json` only — no textures or models.
- Keys not present in the pack fall back to each mod's built-in language file, then to English.
- Part of the translations originate from the "Terra Curio" Japanese resource pack; thanks to its author.

## Building the zips

```powershell
# 1.21.1
Compress-Archive -Path .\1.21.1\assets, .\1.21.1\pack.mcmeta, .\1.21.1\pack.png -DestinationPath .\1.21.1\NexTr.zip -Force

# 26.1.2
Compress-Archive -Path .\26.1.2\assets, .\26.1.2\pack.mcmeta, .\26.1.2\pack.png -DestinationPath .\26.1.2\NexTr-ATM11.zip -Force
```

## Contributing

Corrections and additions are welcome — open an issue or a pull request.
