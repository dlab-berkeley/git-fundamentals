---
title: Git FUN!damentals
subtitle: Github-based workflow
minutes:
---

## Enter the OctoCat

![Here's lookin' at you, cat](https://octodex.github.com/images/privateinvestocat.jpg)

While git is useful to use locally, it is invaluable when there are lots of people contributing to the same project. Github works by being a remote server that stands outside of your local file directory. The basic GitHub workflow looks like:

1. Pull
2. Branch
3. Modify
4. Commit
5. Push

## Your first GitHub account

* Go to [https://github.com/join](https://github.com/join)
* Follow instructions!
* A free/student account is fine
* You'll want to use the same email address that you used for git locally
* Choose a strong password!

![But not this one](http://imgs.xkcd.com/comics/password_strength.png)

## Enhancing your GitHub account

GitHub offers account upgrades for current students, that you can apply for at [https://education.github.com/](https://education.github.com/)

The education upgrade comes with:
* Free upgrade to a Micro account on GitHub (for writing code)
* Free Travis CI account (for testing code)
* Free SendGrid account (automated email API)
* 15USD in Amazon Web Services credits (for deploying code)
* 50USD in Digital Ocean credits (for deploying code)
* No transaction fees for your first 1000USD in sales via Stripe

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
