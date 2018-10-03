---
layout: post
title:  "Uplift forms get a refresh"
date:   2018-10-03 16:00:00
categories: uplift bugzilla
author: sylvestre
---

Firefox is shipped using a train model. Without going into too much details, this means that we maintain several channel in parallel (Nightly, Beta, Release and ESR). Normal changes happen in Nightly. When a change needs to be cherry-picked from Nightly to another branch, the process is called "Uplift".

Uplift is a key tool in the Firefox release management world. When developers want to apply a patch from Nightly to another branch, they will use Bugzilla, answering some questions in a textarea. Then, release managers will make a risk assessment to accept or reject the uplift.
As an example, release managers will see the following comment:
![Uplift form](/images/posts/uplift-form/old.png "Uplift form"){: .center-image }

The release and quality management team is plugging more and more automation (and Machine Learning in the future) in Bugzilla, and the freeform textarea was making it more difficult (also because developers are free to do anything they want with the prefilled text, even deleting fields).
For this reason, we are moving to a typical form directly in the Bugzilla interface. The change, developed by Kohei who is volunteering as a Bugzilla UX designer, has been deployed yesterday (October 2nd)

A screenshot is a better explanation than words:
![The new uplift form](/images/posts/uplift-form/new.png "The new uplift form"){: .center-image }

Once submitted, the comment will be displayed just like before!

We are planning to move to a similar system for tracking and release notes requests.

As always, don't hesitate to share feedback to release-mgmt@mozilla.com
