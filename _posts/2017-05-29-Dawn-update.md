---
layout: post
title:  "Dawn project - Update on the migration of the aurora populations"
date:   2017-05-30 08:30:23
categories: firefox release
---

[Project Dawn](http://release.mozilla.org/firefox/release/2017/04/17/Dawn-Project-FAQ.html) will change the Firefox release train model by eliminating the Aurora phrase. (See [the Hacks blog](https://hacks.mozilla.org/2017/04/simplifying-firefox-release-channels/) for more). 

We have completed all of the required infrastructure changes and are now ready to migrate the Aurora populations for Firefox Desktop and Firefox for Android. We have different migration paths for these two products as described below.

# Desktop

For Firefox Desktop, the existing Developer Edition (Aurora) users should not notice any change. After the migration their build will still have the Developer Edition branding and the developer specific changes associated with the current Developer Edition build. The technical difference is that the build will be based off our the mozilla-beta branch and, as such, will have the same features and stability as the Beta channel.

We started proposing updates to (Developer Edition clients)[https://www.mozilla.org/firefox/developer/] this week. Clients will automatically be updated within a few days or you can force the update by going to the Help menu and opening the About Firefox window.


# Android

For Firefox for Android, the current Aurora population on Google Play will be merged with our existing Nightly population. This update will change the branding of the product. In order to make this change, we will now be publishing Nightly to Google Play. Technically, the Android application will keep the same application name ((org.mozilla.fennec_aurora)[https://play.google.com/store/apps/details?id=org.mozilla.fennec_aurora]) as we do not have a way to change this without requiring manual intervention by the users of this product.

This change will help with the detection of Android specific issues earlier in the cycle so that we can mitigate the impact to Firefox users.

