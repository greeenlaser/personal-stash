# mf

mf - aka move file - is a simple shell script that handles file movement with ease. Flags can be in any order, --t can be repeated for multiple targets.

## Flags

| Flag | Description |
|------|-------------|
| `--f` | origin path where file or directory is taken from |
| `--t` | target output directory or full file path, renames if current dir and target dir are same |
| `--m` | move instead of copy, applies to all targets |
| `--o` | overwrite target, applies to all targets |
| `--d` | dry run, show what would happen without executing |
| `--h\|--help\|-h` | prints all flags and their info |
