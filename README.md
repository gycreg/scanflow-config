# Scanflow Configuration Repository

Version-controlled configuration files for the Scanflow event registration system.

## What's Inside

### Scanflow Configuration Files
- **event.toml** - Event configuration (name, meals, card fields, extra scans)
  - Symlinked to: `scanflow/scanflow_data/event.toml`
- **printers.toml** - Printer IP addresses
  - Symlinked to: `scanflow/scanflow_data/printers.toml`
- **label.zpl** - Badge template (Zebra Programming Language)
  - Symlinked to: `scanflow/scanflow_data/label.zpl`
- **quotes.json** - Inspirational quotes for check-in page
  - Symlinked to: `scanflow/scanflow_data/quotes.json`

### RegFox Sync Configuration Files
- **config.toml** - RegFox sync service settings (API config, form IDs, sync intervals)
  - Symlinked to: `scanflow/scanflow-regfox-sync/configs/config.toml`
- **countries.toml** - Country code to display name mappings for badges
  - Symlinked to: `scanflow/scanflow-regfox-sync/configs/countries.toml`

## Setup on New Computer

1. Clone this repo and the main scanflow repo:
   ```bash
   cd ~/Documents/Code
   git clone https://github.com/gycreg/scanflow-config.git
   git clone https://github.com/gycreg/scanflow.git
   ```

2. Create symbolic links:
   ```bash
   # Scanflow main configs
   cd scanflow/scanflow_data
   ln -s ../../scanflow-config/event.toml event.toml
   ln -s ../../scanflow-config/printers.toml printers.toml
   ln -s ../../scanflow-config/label.zpl label.zpl
   ln -s ../../scanflow-config/quotes.json quotes.json

   # RegFox sync configs
   cd ../scanflow-regfox-sync/configs
   ln -s ../../../scanflow-config/config.toml config.toml
   ln -s ../../../scanflow-config/countries.toml countries.toml
   ```

3. Run scanflow - it will automatically use these configs via the symlinks

## Updating Configs

Edit the files in this repository, commit, and push. Changes will be reflected immediately in scanflow through the symbolic links.

## More Information

For detailed documentation about scanflow and configuration options, see the [main scanflow repository](https://github.com/gycreg/scanflow).
