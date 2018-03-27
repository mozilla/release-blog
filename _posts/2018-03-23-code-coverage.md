---
layout: post
title:  "Zero coverage report"
date:   2018-03-23 07:00:00
categories: tooling codecoverage
author: marco
---

One of the nice things we can do with code coverage data is looking at which files are completely not covered by any test.

<aside>This article was initially published on Marco Casteluccio's <a href="https://marco-c.github.io/2018/03/27/zero-coverage-reports.html">blog</a>.</aside>

These files might be interesting for two reasons. Either they are:
<ol style="list-style-type:lower-alpha; list-style-position: inside;">
  <li>dead code;</li>
  <li>code that is not tested at all.</li>
</ol>
Dead code can obviously be removed, bringing a lot of advantages for developers and users alike:
* Improve maintainability (no need to update the code in case of refactorings in the case of dead code);
* Reduce build time for developers and CI;
* Reduce the attack surface;
* Decrease the size of the resulting binary which can have effects on performance, installation duration, etc.

Untested code, instead, can be really problematic. Changes to this code can take more time to be verified, require more QA resources, and so on. In summary, we can’t trust them as we trust code that is properly tested.

A study from [Google Test Automation Conference 2016](https://www.youtube.com/watch?v=NKEptA3KP08) showed that an uncovered line (or method) is twice as likely to have a bug fix than a covered line (or method).
On top of that, testing a feature prevents unexpected behavior changes.

Using these reports, we have managed to [remove a good amount of code](https://bugzilla.mozilla.org/show_bug.cgi?id=1415819) from mozilla-central, so far around 60 files with thousands of lines of code. We are confident that there’s even more code that we could remove or conditionally compile only if needed.

As any modern software, Firefox relies a lot on third party libraries. Currently, most (all?) the content of these libraries is built by default. For example,~400 files are untested in the gfx/skia/ directory).

Reports (updated weekly) can be seen at [https://marco-c.github.io/code-coverage-reports/](https://marco-c.github.io/code-coverage-reports/).
It allows filtering by language (C/C++, JavaScript), filtering out third-party code or header files, showing completely uncovered files only or all files which have uncovered functions (sorted by number of uncovered functions).

![uncovered code](/images/posts/codecoverage/uncovered_files.png "Uncovered Files"){: .center-image }


Currently there are 2730 uncovered files (2627 C++, 103 JavaScript), 557 if ignoring third party files. As our regular code coverage reports on [codecov.io](https://codecov.io/gh/marco-c/gecko-dev), these reports are restricted to Windows and Linux platforms.

