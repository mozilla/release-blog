---
layout: post
title:  "Firefox Regional feedback:<br>Let's start with Europe"
date:   2022-11-18 00:00:00
categories: firefox community
author: pascal
---

We work hard as an organization to ship the best browser possible every 4 weeks with about 1000 new patches per release.

We ship new features to make our browser useful and easy to use. We also do platform work to be able to render new sites and web applications while remaining compatible with millions of websites created a decade (or more) ago.

This ongoing work also includes updating our translations in more than 100 languages thanks to our impressive community of localizers.

Yes, we want to make sure that Firefox can be used everywhere by everybody.

**But could we maybe do better with a tighter feedback loop from our local communities?**

Let's give a few examples from our bug tracker:
* If [spellchecking in French makes my browser crash](https://bugzilla.mozilla.org/show_bug.cgi?id=1729232), this is a major bug for French-speakers, but this is an invisible issue for others.
* If the [Estonian e-card system stops working in Firefox](https://bugzilla.mozilla.org/show_bug.cgi?id=1636100), this is a blocking issue that may drive our users in this country to switch browsers.
* If the [keyboard shortcut for Zoom-In stops working on some Japanese keyboards](https://bugzilla.mozilla.org/show_bug.cgi?id=1661895), this is also a bad quality of life regression for some of our users that could have been avoided had we known about it before shipping.
* If we build a new feature on Firefox Nightly which [breaks a major Italian newspaper website](https://bugzilla.mozilla.org/show_bug.cgi?id=1798112), it's good to know it early in the development process to make sure this is fixed before the feature goes live.

Usually, major issues that may impact users in a specific country are fixed before we ship the final release, but occasionally we discover them after shipping and have to ship a fix in a [dot release](https://wiki.mozilla.org/Release_Management/Glossary#Dot_release).

### We talked about significant breakage with a regional impact, but what about papercuts?

Web compatibility, incorrect translations, internationalization issues, PiP subtitles support, certificates… The list of potential problems in a region that may affect our users is long and we may not know about them.

Maybe these issues are discussed in places we don't know about, in languages we don't speak. Maybe these issues are already filed in our bug tracker but don't get prioritized correctly because we don't know about their regional impact. Maybe a handful of specific regional issues are making Firefox hard to use in a specific country and the information is out there. Maybe all we need is somebody who understands these issues to surface these bugs in Bugzilla to our developers.

_In a nutshell, we don't know what we don't know._

That is why I intend to work on studying and setting up basic feedback mechanisms to evaluate the health of Firefox in a few European countries so as to help my team (Release Management) prioritize product fixes for existing bugs which have the highest impact on our users and also to get help identifying regressions on our pre-release channels (Nightly, Beta, Developer Edition).

My very first goal is to make contacts with Mozillians in a handful of European countries (France, Germany, Italy, Poland, Spain) [^1] that could help me identify issues that affect them locally, identify their top web compatibility issues, and maybe relay a general message for community feedback on pre-release channels.

**To that effect, I created a [Local Firefox](https://matrix.to/#/#local-firefox:mozilla.org) room on the Mozilla Matrix instance.**
If you are interested in collaborating with me on this project, you are very welcome to join it and say hello (my nick is _Pascal_). I can speak with you in French and Spanish as well if you don't feel comfortable speaking in English.

Thanks!

Pascal

[^1]: I am focusing on a few European countries for timezone and bandwidth reasons since I'll do that alongside my role as a Firefox Release Manager, but I am open to feedback from other regions as well of course.
