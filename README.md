# dotfiles

My terminal, shell, and Git configs — reproducible across machines.

## What's tracked

| Folder | File | Purpose |
|--------|------|---------|
| `bash/` | `.bashrc` | Shell config, aliases, prompt |
| `git/` | `.gitconfig` | Git identity, signing key, pull/rebase behavior |

## Usage

On a fresh machine:

```bash
git clone https://github.com/stephcloud/dotfiles.git
cd dotfiles
./install.sh
```

This symlinks each tracked file into your home directory.

## Notes

- `.gitconfig` uses `~`-relative paths for `signingkey` and `allowedSignersFile`, so it works across machines/usernames without editing. On a new machine, still generate a fresh signing key and register it with GitHub (see `operations-lab` Module 01, Lab 04) — the config will pick it up automatically as long as it lives at the same `~/.ssh/` filenames.
- This repo is public. Never add real secrets (API keys, tokens) directly into `.bashrc` or any tracked file. Keep secrets in an untracked file (e.g. `~/.secrets`, listed in `.gitignore`) and `source` it from `.bashrc` instead.
