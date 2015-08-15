---
title: Git FUN!damentals
subtitle: History and reverting changes
minutes:
---

## Git history

Git takes care of all these things for you behind the scenes (even branching and merging, which we'll talk about later), but sometimes you need to know what changed and when

~~~{.input}
git log
~~~

This should give you an output that looks something like this:

~~~{.output}
commit a8874aa9d0266a2b0df354b308cfe8bd69ab1114
Author: Dillon Niederhut <dillon.niederhut@gmail.com>
Date:   Fri Aug 14 16:31:27 2015 -0700

    testing gitignore

commit dffe554d91c1a9b8924e0fbb4046b7d99beb8edf
Author: Dillon Niederhut <dillon.niederhut@gmail.com>
Date:   Fri Aug 14 16:08:03 2015 -0700

    something else

commit 07f5ba50c64f25e047bbf3105c1d05b72dcadba2
Author: Dillon Niederhut <dillon.niederhut@gmail.com>
Date:   Fri Aug 14 15:24:36 2015 -0700

    README added

~~~

This shows the entire history of this repository in reverse chronological order

## Finding bugs

Now imagine that someone has issued a bug report for your README file being inaccurate

> You could rewrite it, but that is *WET* and *WET* is *BAD*

Or

> You could find when the accurate README was overwritten and reverting

Have you ever accidentally destroyed something good? Git is the fix for that!

To find when the change occurred, we'll look at the file changes within `log`

~~~{.input}
git log -p
~~~

~~~{.output}
commit dffe554d91c1a9b8924e0fbb4046b7d99beb8edf
Author: Dillon Niederhut <dillon.niederhut@gmail.com>
Date:   Fri Aug 14 16:08:03 2015 -0700

    something else

diff --git a/README b/README
index e69de29..299d09f 100644
--- a/README
+++ b/README
@@ -1 +1 @@
-Temporary git repository
+Something else

commit 07f5ba50c64f25e047bbf3105c1d05b72dcadba2
Author: Dillon Niederhut <dillon.niederhut@gmail.com>
Date:   Fri Aug 14 15:24:36 2015 -0700

    README added

diff --git a/README b/README
new file mode 100644
index 0000000..e69de29
~~~

So we can see that the file was fine before commit `dffe554`, and that it was ruined by some schmuck named `Dillon Niederhut`

## Recovering old files

To get a file back to its old state, call checkout with the commit hash and the file name

>When you do this on your own computers, keep in mind the hash will be different

~~~{.input}
git checkout 07f5ba5 README
~~~

and now if you look at the README file, you'll see it (and it alone!) has gone back to the way it was before the bug

~~~{.output}
Temporary git repository
~~~

*and* we haven't lost any of the other files

~~~{.output}
CITATION	README		script.R
LICENSE		magic.py	test.log
~~~
