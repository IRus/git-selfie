# Git Selfie

## Requirements:

- GNU/Linux
- Git 2.9+
- fswebcam package

## Setup

Install fswebcam package (in case of debian-like):

```bash
apt-get install fswebcam
```

Check your git version:

```bash
git --version
```

Here [ppa](https://launchpad.net/~git-core/+archive/ubuntu/ppa) for latest git (Ubuntu).

Clone this repository as `~/.git_hooks`:

```bash
git clone git@github.com:IRus/git-selfie.git ~/.git_hooks
```

Run in console:

```bash
git config --global core.hooksPath ~/.git_hooks/
```

Make sure that `webcam.sh` and `post-commit` can be executed:

```bash
chmod u+x ~/.git_hooks/webcam.sh ~/.git_hooks/post-commit
```

## Usage

just `git commit ...` in any repo! and see photos in `~/Pictures/Commits`

## WTF! My hooks stop work!

Yes, because we assign global hookPath.

So you have two ways:

1. Copy commit-hook in every repository.
2. Assign hookPath globally and overwrite it in specific repos:

    ```bash
    git config core.hooksPath ./.git/hooks/
    ```
