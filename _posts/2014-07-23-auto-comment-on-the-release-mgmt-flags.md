---
layout: post
title:  "Auto-comment on the Release Management flags"
date:   2014-07-23 15:46:14
categories: bugzilla flags
---


Implemented in <a href="https://bugzilla.mozilla.org/show_bug.cgi?id=853108">bug 853108</a> by the bmo team, using the tracking flags will automatically updated the comment field with some templates.
The goal is to reduce back and forth in Bugzilla on bug tracking. We also hope that is going to improve our response time.


For example, for the tracking requests (<em>tracking-firefoxNN</em>, <em>tracking-firefox-esrNN</em> or <em>blocking-b2g</em>), the user will see the text added into the Bugzilla comment field:

    [Tracking Requested - why for this release]:


With this change, we hope to simplify the decision process for the release team.

For the <em>relnotes-*</em> flags:<br />

    Release Note Request (optional, but appreciated)
    [Why is this notable]:
    [Suggested wording]:
    [Links (documentation, blog post, etc)]:

This change aims to simplify the process of release notes writing. In some cases, it can be hard for release manager to translate a bug into a new feature description.


Flags on which this option is enabled are:
<ul>
   <li>relnote-firefox</li>
   <li>relnote-b2g</li>
   <li>tracking-firefoxNN</li>
   <li>tracking-firefox-esrNN</li>
  <li>blocking-b2g</li>
</ul>

Finally, we reported <a href="https://bugzilla.mozilla.org/show_bug.cgi?id=1041964">bug 1041964</a> to discuss about a potential auto-focus on the comment area.
