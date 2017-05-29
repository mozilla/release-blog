---
layout: post
title:  "Dawn project - Update on the migration of the aurora populations"
date:   2017-05-30 08:30:23
categories: firefox release
published: false
---

As we explained in the [post on the Hacks blog](https://hacks.mozilla.org/2017/04/simplifying-firefox-release-channels/) and on [this blog](http://release.mozilla.org/firefox/release/2017/04/17/Dawn-Project-FAQ.html), we have been working at changing the release mechanism of Firefox.

We are now ready migrate the aurora population for Firefox Desktop and Android.

# Desktop

The aurora population will be migrated to the beta channel. Users will keep the Developer Edition branding and specifities. Updates just started to be proposed to users.
Either the current developer edition instance of Firefox will be automatically updated within a few days, any user can force the update by opening the About window of Firefox.
From the technical perspective, we are rebuilding the regular beta builds to generate the beta developer edition version. They are built from the same code.


# Android

In parallel, the current aurora population on Google Play will be upgraded to Nightly.
The Android application will keep the same application name (org.mozilla.fennec_aurora) while
providing Firefox for Android nightly.
This will help detecting Android specific issues earlier in the cycle and mitigating the impact to users.

