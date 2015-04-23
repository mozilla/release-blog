---
layout: post
title:  "38.0 & 38.0.5: An update on the upflits and branches"
date:   2015-04-23 11:23:09
categories: 38 schedule
---

During the 38 cycle, we are going to publish a release between 38 & 39 (called 38.0.5).

In order to continue the development of 38 & 38.0.5 in parallel, we merged mozilla-beta (m-b)
into mozilla-release (m-r).

Before:
*   m-b = 38.0.0 beta
*   m-r = 37.0.2

Now:
*   m-b = 38.0.5 beta (even if we won't build any for now)
*   m-r = 38.0 beta (next one being beta7)

We will do regular m-r => m-b merges to make sure 38.0.5 is up to date.

This does not impact aurora (aka 39). In case we have to make a new 37 dot release, we would use
a relbranch.

The m-b tree is closed avoid any confusion.

Last but not least, uplift requests to 38 should be filled for mozilla-release
38.0.5 would be mozilla-beta. However, release managers and sheriffs will translate the information
if the uplift requests are incorrect.

The <a href="http://release.mozilla.org/planning/2015/01/13/release-schedule.html">schedule</a> has been updated.
