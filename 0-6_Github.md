---
title: Git FUN!damentals
subtitle: Git-based workflow
minutes:
---

## Enter the OctoCat

![Here's lookin' at you, cat](https://octodex.github.com/images/privateinvestocat.jpg)

While git is useful to use locally, it is invaluable when there are lots of people contributing to the same project. Github works by being a remote server that stands outside of your local file directory. The basic GitHub workflow looks like:

1. Pull
2. Modify
3. Commit
4. Push

## Your first GitHub account

* Go to [https://github.com/join](https://github.com/join)
* Follow instructions!
* A free/student account is fine
* You'll want to use the same email address that you used for git locally
* Choose a strong password!

![But not this one](http://imgs.xkcd.com/comics/password_strength.png)

## Creating repos on GitHub

* Go to your homepage
* Press the `+` in the upper righthand corner
* Select repository

GitHub initializes your repo for you, and can also create a LICENSE, README, and .gitignore with common non-comitted files

## Cloning a repo from GitHub

* Many workshops at the D-Lab develop and distribute materials via GitHub
* The process of copying one of these repositories to your local directory is called `cloning`

As an example, let's go to the repository for this class:
  [https://github.com/dlab-berkeley/git-fundamentals](https://github.com/dlab-berkeley/git-fundamentals)

On the righthand side of the page, you'll see a `clone URL` -- copy this

Then open a terminal, and enter `git clone https://github.com/dlab-berkeley/git-fundamentals.git`
