D-Lab Git Fundamentals Workshop
===============================

A starting point for discovering the wonderful world of Git and GitHub in the context of Research Workflows.

# Getting ready for today's workshop

 - Sign up for [github](https://github.com), and **and check for the verification email**.
 - Install git on your laptop: https://git-scm.com/downloads

# Our materials for Today

We'll be walking through a standard tutorial together. We won't cover all the material, but enough to get you started with the fundamentals and use this as a way to work through your workflow and answer questions that you have:

Software Carpentry tutorial: https://swcarpentry.github.io/git-novice/



# Git in the Cloud

To simulate a collaborative research workflow, we will also be using a remote cloud environment in addition to your laptop.

## Cloud Shell Example

Any time you need quick access to a shell command line somewhere other than your laptop you can use (for free!) Google Cloud Shell.

Try launching Cloud Shell now in your browser by clicking this link:

https://console.cloud.google.com/home/dashboard?cloudshell=true

Then run these commands in the Cloud Shell window:

```shell
git clone https://github.com/dlab-berkeley/git-fundamentals/
cd git-fundamentals
./rstudio-on-gcp.sh
```

## Other GUI tools for your laptop

**Note:** The tools below are other interesting and useful tools that you may wish to explore, however they are *NOT REQUIRED* for this workshop. The only install that is required is the the [official Git installer](http://git-scm.com/downloads).

 - Command line tools:
    - For OS X, install the [homebrew](http://brew.sh) package manager
    - For Windows install the [chocolatey](https://chocolatey.org/) package manager
 - GUI tools
    - [GitHub Desktop App](https://desktop.github.com/)
    - [SourceTree](http://www.sourcetreeapp.com/)
    - Many [others](http://git-scm.com/downloads/guis) are available, and you
      can search for even more!
 - Integration for your text editor!
	- [Atom](https://atom.io/)
    - Vim [fugitive](https://github.com/tpope/vim-fugitive)
    - Emacs [Magit](https://github.com/magit/magit/wiki)
    - [Sublime Text 2](https://github.com/kemayo/sublime-text-git)
    
  - To choose a default editor to use with git:
```
Atom	$ git config --global core.editor "atom --wait"
nano	$ git config --global core.editor "nano -w"
```

# Awesome resources

 - [Basic commands cheat sheet(s)](http://git-scm.com/docs) (Note the links to
   other cheat sheets!)
 - [Gamified git](http://pcottle.github.io/learnGitBranching/)
 - GitHub sponsors [this](http://try.github.io/).
 - Where does "help" go from GitHub? [Here](https://help.github.com/).
 - [Linux commands cheat sheet](http://www.pixelbeat.org/cmdline.html) (also
   mostly works for OS X command line).
 - [git - the simple guide](http://rogerdudler.github.io/git-guide/)
 - [The visual git guide](http://marklodato.github.io/visual-git-guide/index-en.html)

## What to do when you run into TROUBLE?!?!

  - Read the [Flight rules for Git](https://github.com/k88hudson/git-flight-rules#readme), a guide for using Git and what to do when things go wrong.

Flight Rules are the hard-earned body of knowledge recorded in manuals that list, step-by-step, what to do if X occurs, and why. Essentially, they are extremely detailed, scenario-specific standard operating procedures.

## Local Git expositors at UC Berkeley

 - A problem-focused exploration of git features is available in @jkitzes' [Data
   Science Lessons](http://jkitzes.github.io/datasci-lessons/)
 - [An IPython
   notebook](https://github.com/fperez/reprosw/blob/master/Version%20Control.ipynb)
   (of course!) from @fperez.
