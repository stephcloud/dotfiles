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

- `.gitconfig` references absolute paths (e.g. `/home/skinzy/.ssh/...`) tied to this specific machine's signing key. On a new machine, generate a fresh signing key (see `operations-lab` Module 01, Lab 04) and update the `signingkey` and `allowedSignersFile` paths accordingly.
