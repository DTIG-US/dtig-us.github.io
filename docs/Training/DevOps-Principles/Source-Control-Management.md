The best (and probably the easiest) way to verify that your CI/CD tool can perform some magic is by integrating with a source control management (SCM) tool. Why do you need source control? Suppose you are developing an application. Whenever you build an application, you are programming—whether you are using Java, Python, C++, Go, Ruby, JavaScript, or any of the gazillion programming languages out there. The programming codes you write are called source codes. In the beginning, especially when you are working alone, it's probably OK to put everything in your local directory. But when the project gets bigger and you invite others to collaborate, you need a way to avoid merge conflicts while effectively sharing the code modifications. You also need a way to recover a previous version—and the process of making a backup and copying-and-pasting gets old. You (and your teammates) want something better.

This is where SCM becomes almost a necessity. A SCM tool helps by storing your code in repositories, versioning your code, and coordinating among project members.

Although there are many SCM tools out there, Git is the standard and rightly so. I highly recommend using Git, but there are other open source options if you prefer.


|||
|--|--|
|Name|License|
|[Git](https://git-scm.com)|GPLv2 & LGPL v2.1|
|[Subversion](https://subversion.apache.org)|Apache 2.0|
|[Concurrent Versions System](http://savannah.nongnu.org/projects/cvs) (CVS)|GNU|
|[Vesta](http://www.vestasys.org)|LGPL|
|[Mercurial](https://www.mercurial-scm.org)|GNU GPL v2+|

Public: Yes
























