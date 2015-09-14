---
title: Git FUN!damentals
subtitle: Remote workflows
minutes:
---

## The Origin

While git is useful to use locally, it is invaluable when there are lots of people contributing to the same project. Generally, when there are lots of people working on the same thing, it is good to have one authoritative source of the thing. In git, this is called the origin (but it could also be called dinosaur or banana, if you like). This origin is usually not in *YOUR* local filesystem (i.e. not in your home directory), but in a place where everyone can read from it, even if they can't write to it.

When you `clone` a repo, git automatically adds the source you cloned from as the remote origin. You can check this for yourself with:

~~~{.input}
git remote -v
~~~

And you should see an output that looks something like this:

~~~{.output}
origin	git@github.com:deniederhut/git-fundamentals.git (fetch)
origin	git@github.com:deniederhut/git-fundamentals.git (push)
~~~

You can get information about that remote with:

~~~{.input}
git remote show origin
~~~

Which, for me, yields this:

~~~{.output}
* remote origin
  Fetch URL: git@github.com:deniederhut/git-fundamentals.git
  Push  URL: git@github.com:deniederhut/git-fundamentals.git
  HEAD branch: master
  Remote branches:
    gh-pages tracked
    master   tracked
  Local branch configured for 'git pull':
    master merges with remote master
  Local ref configured for 'git push':
    master pushes to master (fast-forwardable)
~~~

You can add your own remotes to a project with `git remote add <alias> <url>`. For example, if we wanted to add our home directory as a remote for this repo, we could type:

~~~{.input}
git init ../test
git remote add test ../test
~~~

And now when we run `git remote -v`, we see:

~~~{.output}
test	/home/oski/test/.git (fetch)
test	/home/oski/test/.git (push)
origin	git@github.com:deniederhut/git-fundamentals.git (fetch)
origin	git@github.com:deniederhut/git-fundamentals.git (push)
~~~

This is useful if you have already initialized a git repository in your local directory that you want to live at a URL or server where other people are able to access it. To send our data to that remote, we'll `push` it. Try typing:

~~~{.input}
git push
~~~

What happens? If you're like me, you see:

~~~{.output}
remote: Invalid username or password.
fatal: Authentication failed for 'https://github.com/deniederhut/git-fundmantals.git/'
~~~

This is because if you don't specify the remote, git assumes that you mean `origin` (just like BASH assumes you mean `pwd`), and you don't have write access to my repository. 

The general, best-practices workflow with a remotely hosted git repository looksl ike this:

1. Fetch
2. Merge (we'll talk about this in two bits)
3. Branch (we'll talk about this in a bit)
4. Modify
5. Commit
6. Merge 
7. Push

`Fetch` means to retrieve data from a remote. `Push` means to send data to a remote. Usually, when you retrieve data from a remote, you let git retrieve the data and merge it into your local data automatically - this is done with the `pull` command, like:

~~~{.input}
git pull origin
~~~

After you have modified and commited your changes, you send the changes to the remote with:

~~~{.input}
git push
~~~

Since we haven't specified which remote, git assumes the origin, but sends us a fussy message:

~~~{.output}
warning: push.default is unset; its implicit value is changing in
Git 2.0 from 'matching' to 'simple'. To squelch this message
and maintain the current behavior after the default changes, use:

  git config --global push.default matching

To squelch this message and adopt the new behavior now, use:

  git config --global push.default simple

When push.default is set to 'matching', git will push local branches
to the remote branches that already exist with the same name.

In Git 2.0, Git will default to the more conservative 'simple'
behavior, which only pushes the current branch to the corresponding
remote branch that 'git pull' uses to update the current branch.

See 'git help config' and search for 'push.default' for further information.
(the 'simple' mode was introduced in Git 1.7.11. Use the similar mode
'current' instead of 'simple' if you sometimes use older versions of Git)

Counting objects: 7, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (4/4), done.
Writing objects: 100% (4/4), 477 bytes | 0 bytes/s, done.
Total 4 (delta 3), reused 0 (delta 0)
To git@github.com:dlab-berkeley/cornerstone-2015-unix-FUNdamentals.git
   0022eb6..fef3ee5  master -> master
~~~

It is very important to fetch and merge changes before you start modifying files, because files modified in serial can be merged automatically, but files modified in parallel often require human intervention (more on this later).