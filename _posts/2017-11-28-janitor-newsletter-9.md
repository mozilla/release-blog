---
layout: post
title:  "Janitor project - Newsletter #9"
date:   2017-11-29 13:00:00
categories: tooling janitor
author: janx
---

{:.postheader}
Jan Keromnes is a Senior Software Engineer working for the Release Management team on tools and automation and is the lead developer for Janitor.<br><br>[Janitor](https://janitor.technology/) offers developer environments as a service for [big open source projects](https://janitor.technology/projects/) like Firefox and Servo. It uses [Cloud9 IDE](https://c9.io/) (front-end), multiple [Docker](https://www.docker.com/) servers (back-end), and is 100% web-based so it can be used to do software development from any inexpensive computer, tablet or phone.<br><br>This newsletter was initially published on the [Janitor blog](https://janitor.technology/blog/#janitor-news-9). You can contact the Janitor community on their [Discourse forum](https://discourse.janitor.technology/).

Hi there,

This is your recurrent burst of good news about the [Janitor](https://janitor.technology/).
Thank you ever so much for being part of this community. It really means a lot.

### 1) Announcing Windows Environments

Janitor is great for quickly fixing platform-specific bugs in your projects, especially if you don't normally develop on that platform. Today, we only provide Linux containers (Ubuntu 16.04) but many of you asked for native Windows environments on Janitor, so that's exactly what we plan to give you.

We want to make it easy for you to work on all operating systems, without the hassle of setting up a VM or maintaining a dual boot. In fact, you won't even need to install anything other than a good web browser (like [Firefox Quantum](https://www.mozilla.org/en-US/firefox/new/)) because our Windows environments will be accessible from the web, with a graphical VNC environment, just like our current Linux containers.

We're looking into Windows VMs on Azure and TaskCluster workers on AWS. If Mozilla plays along, you should see Windows environments for Firefox on Janitor within just a few months. (If you can help us get there faster, please let us know [here](https://github.com/JanitorTechnology/janitor/issues/3), [here](https://discourse.janitor.technology/t/windows-container-support-would-be-really-really-cool/85) or [here](https://kiwiirc.com/client/irc.freenode.net/?#janitor).)

### 2) Announcing Janitor 0.0.9

So much has happened this year that it was hard to find time to write about our progress. This version bump was long overdue.

Here is a quick rundown of what we did since July:
- Now serving Cloud9 directly from Janitor ([c9.io](https://c9.io) account no longer required)
- Made both IDE and VNC load much faster (thanks to better browser caching)
- Improved Docker proxy allows working in multiple containers at the same time
- Added the [Discourse](https://www.discourse.org/) open source project to Janitor (thanks notriddle)
- Added [janitor.json](https://github.com/JanitorTechnology/dockerfiles/blob/master/firefox/janitor-hg.json) configuration files to automate your project's workflows on Janitor (thanks ntim)
- Added a "Reviews" IDE sidebar with code review comments you need to address (thanks ntim)
- Added two new Docker servers to our cluster (thanks IRILL for the much needed sponsorship upgrade)
- Now pulling automated Docker image builds (thanks to Docker Hub and CircleCI)
- Expanded our [API](https://janitor.technology/reference/api#containers) to manage Docker containers (to create / inspect / delete containers and image layers)
- Created a Docker administration page to efficiently manage our container farm
- Cleaner UI and more controls in our "Projects" and "Containers" pages (thanks ntim, Coder206 and fbeaufort)
- Dropped the "The" in "The Janitor" because it's cleaner (thanks arshad)
- Refreshed Firefox, Servo and Chromium project logos (thanks Coder206, arshad and ntim)
- Switched Firefox (hg) from mozilla-central to mozilla-unified (thanks ntim)
- Upgraded to Git 2.15.0
- Upgraded to Mercurial 4.4.1
- Upgraded to Clang 5.0 and replaced Gold with LLD (links Firefox [2x faster](https://twitter.com/jankeromnes/status/935804934087421952))
- Upgraded to Rust 1.22.1 / 1.23.0-nightly (installed via rustup 1.7.0)
- Upgraded to Node.js 8.9.1 and npm 5.5.1 (now installed via nvm 0.33.6)
- Upgraded to Ninja 1.8.2 (now with bash completion)
- Upgraded to rr 5.0.0
- Upgraded to the latest Vim 8 _and_ Neovim
- Installed the latest valgrind (for nbp)
- Installed the latest tmux (for Paul Rouget)
- … and many more improvements and bug fixes.

### 3) Our Cluster Just Got Bigger

Janitor is now used by over 400 developers and our hardware was starting to feel small, so IRILL upgraded their sponsorship, growing our cluster to a total of 6 servers (4 Docker hosts, including 3 at IRILL in Versaille and 1 at Mozilla in California, as well as 2 VPS web app hosts at OVH in Gravelines). This means that Janitor now runs on 42 CPUs, 120 GB RAM and 4 TB disk space.

Here is a [picture](https://photos.app.goo.gl/QwHhLG56VY5mXy732) of EtienneWan and I manually installing the new servers in IRILL's data center near Paris.

You can really thank IRILL and Sylvestre for keeping us going! In the future we'll make it much simpler for anyone to join our cluster, in order to accept many more open source projects and developers to Janitor.

### 4) Janitor Around the World

Here are some events we went to, or plan to attend:
- Watch how Coder206 [presented Janitor](https://youtu.be/OzbGW9unFdo) to Sudbury's Google Developer Group, with a cool side-by-side comparison hacking on Servo.
- Come see two Janitor lightning talks at Mozilla's All Hands in Austin this December, in the [Firefox Lightning Talks](https://austinyallhands2017.sched.com/event/Cx7t/firefox-lightning-talks) and [Power tools for open source](https://austinyallhands2017.sched.com/event/CwSj/28-lighting-talks-power-tools-for-open-source) tracks.
- Come hack on open source software with Janitor at INSA Lyon or 42 in Paris in just a few months (two hackathons to be announced).

### 5) Last Stretch to Beta

2017 has been such a wild ride. We significantly lowered the barrier to new contributions for several major open source projects, allowing many people to contribute for the first time to Firefox, Chromium, Servo, Thunderbird (and [more](https://janitor.technology/projects/)), and we proved that it was possible to modernize software development at scale. Now we just need to finish a [few more things](https://github.com/JanitorTechnology/janitor/issues/166) before we can call our Alpha a resounding success.

In 2018, Janitor Beta will get us to the next level, with Windows environments (and maybe MacOS too); massive Docker scaling improvements; an open build farm that anyone can join; new open source partnerships; and more radical automation to make software development faster and more fun. More on that very soon.

And that's a wrap for today. How is everything going? We'd love to know! Also our [Discourse](https://discourse.janitor.technology) and [IRC channel](https://kiwiirc.com/client/irc.freenode.net/?#janitor) are great resources to ask questions and learn more about this project.

Stay safe,
Team Janitor

P.S. One more thing: Here is a [sneak peek](https://matrix.org/_matrix/media/v1/download/matrix.org/mTRLzIQmEEdMtlNXIbQiKGIP) at the beautiful new design that ntim, arshad and notriddle are working on for Janitor.
