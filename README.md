# Dotfiles

Dotfiles for my personal Windows installation.

## Requirements

- git
- dploy

## Installation

### PowerShell

```ps1
git clone git@github.com:JaronZ/dotfiles.git
Set-Location dotfiles
```

```ps1
dploy stow . $HOME
```

### Command Prompt

```bat
git clone git@github.com:JaronZ/dotfiles.git
cd dotfiles
```

```bat
dploy stow . %HOMEDRIVE%%HOMEPATH%
```