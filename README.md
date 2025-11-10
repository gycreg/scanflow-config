# Scanflow Configuration Repository

Version-controlled configuration files for the Scanflow event registration system.

## What's Inside

- **event.toml** - Event configuration (name, meals, card fields, extra scans)
- **printers.toml** - Printer IP addresses
- **label.zpl** - Badge template (Zebra Programming Language)
- **quotes.json** - Inspirational quotes for check-in page

## Setup on New Computer

1. Clone this repo and the main scanflow repo:
   ```bash
   cd ~/Documents/Code
   git clone https://github.com/gycreg/scanflow-config.git
   git clone https://github.com/gycreg/scanflow.git
   ```

2. Create symbolic links from scanflow's data directory to these configs:
   ```bash
   cd scanflow/scanflow_data
   ln -s ../../scanflow-config/event.toml event.toml
   ln -s ../../scanflow-config/printers.toml printers.toml
   ln -s ../../scanflow-config/label.zpl label.zpl
   ln -s ../../scanflow-config/quotes.json quotes.json
   ```

3. Run scanflow - it will automatically use these configs via the symlinks

## Updating Configs

Edit the files in this repository, commit, and push. Changes will be reflected immediately in scanflow through the symbolic links.

## More Information

For detailed documentation about scanflow and configuration options, see the [main scanflow repository](https://github.com/gycreg/scanflow).
