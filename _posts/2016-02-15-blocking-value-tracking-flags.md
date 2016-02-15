---
layout: post
title:  "New value in the tracking flags: blocking"
date:   2016-02-14 08:30:23
categories: tracking flags blocking
---

For quite sometime, we, Release management, have been using tracking flags to keep a list of important bugs for the release.
Until now, for tracking, we used the "+" value to achieve this objective. This value carries different meanings:

* critical bug
* important regression
* important bug or issue that release management wants to be fixed

However, just using "+" does not allow us to differentiate between nice-to-have bug fixes vs must-fixes that block the release.
To address this issue, we decided to introduce a new value to the tracking flags list: *blocking*.
For bugs with *tracking-firefoxN* flag set to *blocking*, we will delay or skip a release.

Liz, Ritu & Sylvestre

