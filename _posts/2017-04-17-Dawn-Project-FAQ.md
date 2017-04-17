---
layout: post
title:  "Dawn project or the end of Aurora"
date:   2017-04-17 08:30:23
categories: firefox release
---

As described in the [post on the Hacks blog](https://hacks.mozilla.org/2017/04/simplifying-firefox-release-channels/), we are changing the release mechanism of Firefox.

# What

In order to address the complexity and cycle length issues, the release management team, in coordination with Firefox product management and engineering, is going to remove the Aurora stabilization phase from the cycle.

# When

On April 18th, Firefox 55 will remain on Nightly. This means Firefox 55 will remain on Nightly for two full cycles. On June 13th, Firefox 55 will migrate directly from Nightly to Beta.

# Why

As originally intended, Aurora was to be the first stabilization channel having a user base 10x the size of Nightly so as to provide additional user feedback. This original intent never materialized.

The release cycle time has required that we subvert the model regularly over the years by uplifting new features to meet market requirements.


# How

The stabilization cycle from Nightly to Release will be shortened by 6-8 weeks.

A staged rollout mechanism, similar to what we do today with Release, will be used for the first weeks of Beta.

Our engineering and release workflow will continue to have additional checks and balances rolled out to ensure we ship a high quality release.

We will focus on finding and fixing regressions during the Nightly cycle and alleviate time pressure to ship to reduce the 400-600 patches currently uplifted to Aurora.

A new feature will merge from Nightly to Beta only when it's deemed ready, based on pre-established criteria determined by engineering, product, and product integrity.

Tooling such as static analysis, linters, and code coverage will be integrated into the development process

![Dawn planning](/images/posts/dawn-planning.png "Dawn planning")

# FAQ


## What will happen to the Aurora population on Desktop?
The Aurora population will be migrated to the Beta update channel in April 2017. We plan to keep them on a separate “pre-beta” update channel as compared to the rest of the Beta population. We will use this pre-beta audience to test and improve the stability and quality of initial Beta builds until we are ready to push to 100% of beta population. Because we presented Aurora as a stable product in the past, the beta channel is the closest in terms of stability and quality.

From the next merge (April 18th), users running 54 Aurora will remain on the Aurora channel but updates will be turned off. In case of critical security issues, we might push new updates to these aurora channel users. Aurora channel users will be migrated to Beta channel in April ‘17. For this to happen, we need to make sure that the Developer Edition features are working the same way on the Beta update channel (theme, profile, etc).

##  What will happen to the Aurora population on Android?
Because Google play doesn't allow the migration of a population from an application to another, the fennec population on aurora will be migrated to the nightly application. For now, we are planning to reuse the current [Google play aurora application](https://play.google.com/store/apps/details?id=org.mozilla.fennec_aurora) and replace it by Nightly to preserve the current population.

## Why are we taking different approaches with the Desktop and Android Aurora populations?
Aurora channel on Desktop has been around for a long time and has a substantial end-user base that Beta channel will benefit from.

Fennec Aurora on Google Play is a recent addition and we believe merging this audience with Nightly makes more sense. It also simplifies implementation.

## I am running Developer Edition, what will happen to me?
Developer Edition, currently based off Aurora, will be updated to get builds from the Beta branch. There is nothing Developer Edition users need to do, they will automatically to  the Beta build keeping the Developer Edition themes, tools, and preferences as well as  the existing profile.

## Will I still be able to test add-ons with Developer Edition?
You can continue to test unsigned add-ons on Nightly builds or [load WebExtensions temporarily](https://blog.mozilla.org/addons/2015/12/23/loading-temporary-add-ons/) in Beta and Release builds. 

We are also continuing to provide [unbranded builds](https://wiki.mozilla.org/Add-ons/Extension_Signing#Unbranded_Builds) of the beta and release branches which are able to run unsigned add-ons - including bootstrapped - for development and experimentation. These versions will not be verified by QE, but will receive updates , which is an improvement to the [unbranded builds we currently provide](https://wiki.mozilla.org/Add-ons/Extension_Signing#Unbranded_Builds) for add-on development..

## How will you mitigate the quality risk from cutting 6-8 weeks of stabilization from the cycle?
Instead of pushing to 100 % of the beta population at once, we will use a staged rollout mechanism to push to a subset of the beta population. 
For the first phase, we will be pushing to the former aurora population. As a second phase, we will be targeting specific populations (Operating system, graphic card, etc)

In parallel, QE will also do preliminary nightly sign off to detect early new potential issues. Release management will be much more aggressive in term of feature deactivation.

Last but not least, the aurora cycle was used to finalize some features. Instead, feature stabilization will be performed during the nightly cycle.

## What are we doing to improve Nightly quality?
To improve the overall quality of nightly, a few initiatives will help.

### Nightly merge criteria
New end-user facing features landing in Nightly builds should meet Beta-readiness criteria before they can be pushed to Beta channel.

### Static analyzers
In order to detect issues at review phase, static analyzers will be integrated as part of the workflow. They will be able to identify potential defects but also limit the technological debt.

### Code coverage
Code coverage results are going to be used to analyze the quality of the testsuite and the risk introduced by the change.

### Risk assessment
By correlating various data sources (VCS, Bugzilla, etc), we believe we can identify the potential risks carried by changes before they even land. The idea is to identify the functions where a modification has more chance to induce a regression.

## How often will Beta builds be updated?
We will continue to push two Beta builds for Desktop and one Fennec build each week of the Beta cycle.

## Will Developer Edition continue to have a separate profile?
Yes.  The Developer Edition separate profile feature is a requirement for transition.  If for whatever reason this feature cannot be completed by the end of the year we will need to return to creating rebuilds of Developer Edition as previously done to ensure those users are not cast away.


## What will happen to the Aurora branch after Firefox 54 moves to Beta?
Updates on aurora channel will be disabled on April 18th. The desktop and aurora populations will be migrated as described above. 


## What criteria will be used to assess feature readiness to move to Beta?
We will be monitoring crash rates, QE's sign offs, telemetry data and new regressions to determine overall Nightly quality and feature readiness to merge to Beta.

## How and who will determine whether a feature is ready to move to Beta?
End-user facing features will be reviewed for beta-readiness before they are pushed to Beta channel. Following is a list of criteria that will be used to evaluate feature readiness to merge to Beta:

* No significant stability Issues
* Missing Test Plans
* Insufficient Testing
* Feature is not Code Complete
* Too Many Open Bugs

More detailed criteria defined in [this document](https://docs.google.com/document/d/1r_-nEBwRIYexBDdCuLqVwkjlF4TQDDaf8XRAsge2e_g/edit).


## Are there any changes to Release or ESR channel?
No changes are planned for Release or ESR channel users. 

## Does this change how frequently we push mainline builds to Release channel?
No, but changes added in Nightly can make it into a Release build about 6-8 weeks sooner than they do now.

## What will happen for l10n process when we remove Aurora?
Focus for localization will move from mozilla-aurora to mozilla-central. Localization tools (Pootle and Pontoon) will read en-US strings from a special mozilla-central clone: l10n-drivers will review patches with strings landing in the official mozilla-central repository, provide feedback to devs if necessary, and land updates every 2-3 days in this special repository. Localized content will be pushed to l10n-central repositories. 

There are no changes for developers working on Firefox: Nightly and mozilla-central remain open to string changes, including the extra six weeks that Firefox 55 will spend in Nightly, while Beta is still considered string frozen, and requests to uplift changes affecting strings are evaluated case by case.

Users interested in helping with localization should download Nightly in their language.

## What will happen for l10n process by the end of year?
For Firefox and Firefox for Android we will shift to a model with a single repository for all channels for each locale. This change will be reflected in localization tools, allowing localizers to make a change to a string and see that update applied across all channels at once.

## How does Dawn impact engineering planning for landing features?
The biggest shift is that features will have to be completed before merge day. Developers will not be able to finalize feature development during the next branch cycle (as Aurora is used currently). See also “How and who will determine whether a feature is ready to move to Beta?”.

## How will bug fixes and features not tracked by project management be impacted by Dawn? 
Landing bug fixes in Nightly repository continues as before. Development on features that are not directly end-user visible and not tracked by EPMs, release management continues as before.

If Nightly quality and stability is negatively impacted by these untracked features or bug fixes, we will discuss potential mitigation options such as: back outs, stabilizing quality issues before continuing new feature development work, delaying Merge date, imposing code freeze in Nightly until blocking issues are resolved, etc.

