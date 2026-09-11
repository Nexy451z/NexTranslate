# NexTr 26.1.2 — ATM11 translation pack

Japanese (`ja_jp`) translation resource pack for **All the Mods 11** (Minecraft 26.1.2).

## Install

1. Download `NexTr-ATM11.zip`
2. Put it in `.minecraft/resourcepacks/`
3. Enable it in Options → Resource Packs, then set the game language to 日本語

## Structure

```
assets/
├─ minecraft/lang/ja_jp.json      # vanilla overrides (optional)
└─ <modid>/lang/ja_jp.json        # one file per mod (= mod id)
```

Only language files are included — no textures or models. Keys that are not present in
this pack fall back to the mod's built-in language file, then to English.

## Coverage

- 316 namespaces (all mods in the ATM11 mod list)
- ~85,000 translation keys
- Untranslated keys (still English) are mostly item/block names in a few large content
  mods; the rest falls back to each mod's built-in Japanese when available.

## Notes

- Minecraft 26.1.2 uses resource pack format **84.0** (`min_format` / `max_format`).
- Part of the translations originate from the "Terra Curio" Japanese resource pack;
  thanks to its author.
- `generate-lang-stubs.ps1` recreates empty stubs for every mod in a mods folder
  (existing files are never overwritten).

## Build the zip

```powershell
Compress-Archive -Path .\assets, .\pack.mcmeta, .\pack.png -DestinationPath .\NexTr-ATM11.zip -Force
```
