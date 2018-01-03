---
title: Git FUN!damentals
subtitle: Common Workflow
---

## Common workflow for GitHub without branching

If you do not have the repository locally yet:

~~~
$ git clone https://github.com/PATH/TO/REPO.git
~~~

This will download the entire repository to your current working directory.

If you already have the repository locally and you want to merge in any changes people may have made since the last time you worked on it, first `cd` into the repository, then:

~~~
$ git pull
~~~

This will merge all changes from the remote master repository on GitHub into your local version.

Now that you are up to date with the master, go ahead and get some work done!

---

When your session is done, or you want to update the remote master on GitHub, first `add` everything to track and pick up new files or a restructured tree:

~~~
$ git add file1
~~~

*NB*: `git add -A` will add everything to be staged, including new, modified, and deleted files. `git add .` will add new and modified files. While these commands can save you a lot of time, if you're working on a large project with others, it is much safer to add your new, modified, or deleted files one at a time.

If you accidentally added a file you didn't want to, you can run `$ git reset` to undo an `add -A` or `add .`. Once you have the right files added, which can be checked with a quick `$ git status`, you can `commit`, with a message describing what you've just updated.

~~~
$ git commit -m "just fixed that annoying bug"
~~~

To `push` your new commit to GitHub:

~~~
$ git push
~~~

