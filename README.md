# NexTranslate

Japanese (`ja_jp`) translation resource pack for Minecraft, aimed at All the Mods-style modpacks.

## Packs

| Folder | Minecraft | Target | Status |
|---|---|---|---|
| [`1.21.1/`](1.21.1) | 1.21.1 | ATM10-era mods (~470 mods) | Available |
| `26.1.2/` | 26.1.2 | All the Mods 11 | Work in progress (not published yet) |

## Download / install

1. Download `1.21.1/NexTr.zip`
2. Put it in `.minecraft/resourcepacks/`
3. Enable it in Options → Resource Packs, then set the game language to 日本語

## Contents

- `assets/<modid>/lang/ja_jp.json` only — no textures or models.
- Unknown or newly added keys fall back to each mod's built-in language file.
- Part of the translations originate from the "Terra Curio" Japanese resource pack; thanks to its author.

## Building the zip

```powershell
Compress-Archive -Path .\1.21.1\assets, .\1.21.1\pack.mcmeta, .\1.21.1\pack.png -DestinationPath .\1.21.1\NexTr.zip -Force
```

## Contributing

Corrections and additions are welcome — open an issue or a pull request.
