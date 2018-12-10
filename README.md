I am inserting text

D-Lab Git Fundamentals Workshop
===============================

A starting point for discovering the wonderful world of Git and GitHub in the context of Research Workflows.

# Getting ready for today's workshop

 - Zoom: https://berkeley.zoom.us/j/162527059
 - Sign up for [github](https://github.com), and **verify your email**.
 - Live chat for our workshop:
 [![Join the chat at https://gitter.im/dlab-berkeley/git-fundamentals](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/dlab-berkeley/git-fundamentals?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge

## Laptop Installation

**Note:** We'll install git together as a group during today's workshop, however you're welcome to go ahead on your own if you like.

 - Command line tools (you'll need this!):
    - GitHub recommends the [official Git installer](http://git-scm.com/downloads)
    - **I** recommend [homebrew](http://brew.sh) for hackers on OS X
    - And it's easier to use your package manager (apt, yum, ...) for Unix, etc.
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

## Cloud Shell Example

Any time you need quick access to a shell command line somewhere other than your laptop you can use (for free!) Google Cloud Shell: https://cloud.google.com/shell/

Try launching Cloud Shell now in your browser by clicking this link:

https://console.cloud.google.com/home/dashboard?cloudshell=true

Then run these commands in the Cloud Shell window:

```shell
git clone https://github.com/dlab-berkeley/git-fundamentals/
cd git-fundamentals
./rstudio-on-gcp.sh
```
# Our materials for Today

Software Carpentry tutorial: https://swcarpentry.github.io/git-novice/

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
