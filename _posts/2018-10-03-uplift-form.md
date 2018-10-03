---
layout: post
title:  "Uplift forms get a refresh"
date:   2018-10-03 8:00:00
categories: tooling bugzilla
author: sylvestre
---

Firefox is shipped using a train model. Without going into too much details, this means that we maintain several channel in parallel (Nightly, Beta, Release and ESR). Normal changes happen in Nightly. When a change needs to be cherry-picked from Nightly to another branch, the process is called "Uplift".

Uplifting is a key tool in the Firefox release management world. When developers want to apply a patch from Nightly to another branch, they will use Bugzilla, answering some questions in a textarea. Then, release managers will make a risk assessment to accept or reject the uplift.
As an example, release managers will see the following comment:

![Uplift form](/images/posts/uplift-form/old.png "Uplift form"){: .center-image }

The release and quality management team is plugging more and more automation (and Machine Learning in the future) in Bugzilla, and the freeform textarea was making it more difficult (also because developers are free to do anything they want with the prefilled text, even deleting fields).
For this reason, we are moving to a typical form directly in the Bugzilla interface. [The change](https://github.com/mozilla-bteam/bmo/pull/756), developed by [Kohei](https://mozillians.org/u/kohei.yoshino) who is volunteering as a [Bugzilla UX](https://twitter.com/BugzillaUX) designer, [has been deployed yesterday](https://dylan.hardison.net/2018/10/02/happy-bmo-push-day-mojolicious-edition/) (October 2nd)

A screenshot is a better explanation than words:

![The new uplift form](/images/posts/uplift-form/new.png "The new uplift form"){: .center-image }

Once submitted, the comment will be displayed just like before!

We are planning to move to a similar system for tracking and release notes requests.

As always, don't hesitate to share feedback to release-mgmt@mozilla.com
