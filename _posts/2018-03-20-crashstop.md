---
layout: post
title:  "Crash-Stop, an extension to help handle crashes on Bugzilla"
date:   2018-03-20 07:00:00
categories: events fosdem
author: calixte
---
<b>Crash-stop</b> is a webextension I wrote for Bugzilla to display crash stats by builds and patch information.

The goal is to have enough information to be able to decide if a patch helped (hence its name) and, if needed, uplift it to the Beta/ESR/Release trains as appropriate.

This project was initially meant to assist release-managers but it’s been useful for developers who fix/monitor crashes or for folks doing bug triage.

A screen snapshot of crash-top from [bug 1432409](https://bugzilla.mozilla.org/1432409) (in the “Details” section):

![Crash stop table](/images/posts/crashstop/bug1432409.png "Crash stop table"){: .center-image }

## How to read the data in the table above?
* The patches landed in beta on the 2018-02-20 at 23:40
* The buildid of b12 is 20180222170353 and of b11 is 20180219114835
* The first beta build containing the patches is b12.
* The builds which don't contain the patches are shown in pink
* The builds that contain the patch are shown in green.

As you can see from the example above, the patches had a very positive effect for the first 2 signatures.

For release channel, the builds are shown in light yellow because no patches were found for that channel (the addon reads all the comments to try to find the push urls). As is obvious in this example, the reassuring data from Beta channel makes for a strong case to request an uplift to release channel.

Recently, I added stuff to show startup crashes, for example in [bug 1435779](https://bugzilla.mozilla.org/1435779):

![Crash stop table](/images/posts/crashstop/bug1435779.png "Crash stop table"){: .center-image }


## Recent updates:
* The cells are colored in red when more than 50% of the crashes have the flag startup_crash set to true (on each number in _Crashes_ rows there is a tooltip with the percentage of startup_crash == true).
* I added icons for impacted platforms.
* Click on signatures or versions to get more information from [Socorro](https://crash-stats.mozilla.com/).

All feedback is welcome and appreciated! If you want to request features or more data, or report an error, please feel free to file a bug on github (see [3]).


## Source Code and extension download

The extension can be [installed from AMO](https://addons.mozilla.org/firefox/addon/bugzilla-crash-stop/) and the development is done on [GitHub](https://github.com/mozilla/crashstop), pull requests are also welcome!
