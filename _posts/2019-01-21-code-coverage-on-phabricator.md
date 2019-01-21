---
layout: post
title:  "Code Coverage on Phabricator"
date:   2019-01-21 00:00:00
categories: tooling codecoverage
author: marco
---

We have recently implemented a solution to integrate code coverage results into Phabricator.

<aside>This article was initially published on Marco Casteluccio's <a href="https://marco-c.github.io/2019/01/21/code-coverage-phabricator.html">blog</a>.</aside>

Coverage information is uploaded either automatically for revisions after they are landed in mozilla-central (for example for release managers when looking at uplift requests), or on-demand for in-progress revisions.

For revisions under review, in order to upload coverage you just need to trigger a try push containing code coverage builds and tests, e.g. by using:
<pre style="background-color:black;color:white;">
$ mach try fuzzy --full
</pre>
and selecting the relevant ccov builds and test suites. In the future, we will also likely automatically trigger coverage try builds for revisions we deem to be risky, alongside the on-demand option.

Here is an example of a [try build](https://treeherder.mozilla.org/#/jobs?repo=try&revision=38213b49dc00cd108dfa9a246045ed677c34de91) which produced the coverage information for [my revision](https://phabricator.services.mozilla.com/D14758):

<figure>
  <img src="/images/posts/codecoverage_phabricator/code-coverage-on-phabricator-try-build.png" alt="Try build which produced the coverage information" />

  <figcaption><b>Figure 1:</b> Try build which produced the coverage information.</figcaption>
</figure>
<br>

Once the try build and linked tests finish, the coverage artifacts get parsed and uploaded to the Phabricator revisions corresponding to the commits in the try push. The analysis works on *all* commits in the try push that are linked to Phabricator revisions. Stacks of revisions are supported as well.

The coverage information is shown on Phabricator both at a high-level view, in the *Revision Contents* section, and at a detailed view in the *Diff* section.

The *Revision Contents* section contains a list of the files modified by the revision, showing both the coverage percentage of the whole file and the coverage percentage of touched lines. Here's the screenshot of the section from my revision:

<figure>
  <img src="/images/posts/codecoverage_phabricator/code-coverage-on-phabricator-revision-contents.png" alt="Code coverage summary in the 'Revision Contents' section on Phabricator" />

  <figcaption><b>Figure 2:</b> Code coverage summary in the 'Revision Contents' section on Phabricator.</figcaption>
</figure>
<br>

The *Diff* section instead shows the coverage line per line, coloring the bar on the right-hand side. <span style="color:#d86">**Orange**</span> corresponds to <span style="color:#d86">**uncovered lines**</span>, <span style="color:#def">**light blue**</span> corresponds to <span style="color:#def">**non-executable lines**</span> (e.g. a comment, a definition, and so on), <span style="color:#6bf">**dark blue**</span> corresponds to <span style="color:#6bf">**covered lines**</span>. When hovering the bar, the corresponding line is highlighted in the same color.
The following screenshots show excerpts of my revision, with covered, uncovered and non-executable lines:

<figure>
  <img src="/images/posts/codecoverage_phabricator/code-coverage-on-phabricator-covered-line.png" alt="Example of an added line which was covered by tests" />

  <figcaption><b>Figure 3:</b> Example of an added line which was covered by tests.</figcaption>
</figure>
<br>
<figure>
  <img src="/images/posts/codecoverage_phabricator/code-coverage-on-phabricator-uncovered-line.png" alt="Example of a line which was not covered by tests" />

  <figcaption><b>Figure 4:</b> Example of a line which was not covered by tests.</figcaption>
</figure>
