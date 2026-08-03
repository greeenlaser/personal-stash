# dlm

dlm - aka download media - is a simple shell script that wraps around yt-dlp with simplified flags and best available video/music quality. Flags and urls can be in any order, dlm supports multiple urls.

## Flags

| Flag | Description |
|------|-------------|
| `--q` | yt-dlp errors only, cannot be used together with `--d` |
| `--d` | debug/verbose yt-dlp output, cannot be used together with `--q` |
| `--b` | which browser to get cookies from, if not used then no cookies are used |
| `--t` | embed thumbnail (audio only, ignored if using `--v`) |
| `--m` | embed metadata |
| `--v` | download best video + audio as mkv (otherwise audio-only as opus) |
| `--o` | output directory, it must exist |
| `--h\|--help\|-h` | prints all flags and their info |
