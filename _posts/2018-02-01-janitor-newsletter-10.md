---
layout: post
title:  "Janitor project - Newsletter 10"
date:   2018-02-01 13:00:00
categories: tooling janitor
author: janx
---

{:.postheader}
Jan Keromnes is a Senior Software Engineer working for the Release Management team on tools and automation and is the lead developer for Janitor.<br><br>[Janitor](https://janitor.technology/) offers developer environments as a service for Firefox, Servo and [other open source projects](https://janitor.technology/projects/). It uses [Cloud9 IDE](https://c9.io/) (front-end), [Docker](https://www.docker.com/) servers (back-end), and is 100% web-based so you can jump straight into fresh on-demand environments that are pre-configured and ready for work, without wasting time setting up yet another local checkout or VM.<br><br>This newsletter was initially published on the [Janitor Discourse forum](https://discourse.janitor.technology/t/janitor-news-10/).

Happy 2018 everyone!

We hope you've had a smooth start into the year, and wish you all the best in your life and projects.
This is your recurrent burst of good news about [Janitor](https://janitor.technology).

## First Survey

We have big plans for 2018, and about 500 people now use Janitor to contribute to open source software. We'd love to understand what you're getting out of Janitor, and what we could improve to make your life easier.

[2018 Janitor Survey](https://goo.gl/forms/FGjYPybIpfUN3M0m2) (should take < 3 minutes)

Please help us do our best work this year. In return, we'll publicly share the stats and insights via our [blog](https://janitor.technology/blog/).

## Towards Windows Support

Last month at Mozilla's All Hands in Austin, we announced Windows environments in Janitor for mid-2018. You can watch the [lightning talk](https://www.youtube.com/watch?v=jHomOSa_WEc) and the [slides](https://docs.google.com/presentation/d/1gWu2Q2ejd4eZSuMylHu6W5xuJ89xch3Dve0qek0jlPU/edit?usp=sharing) online.

Since then, we've iterated on a prototype Windows image for Firefox (based on a [Windows 10 VM](https://azuremarketplace.microsoft.com/en-ca/marketplace/apps/Microsoft.Windows10RS3ProNx64-ARM?tab=Overview) in Azure) and we're now looking into using Azure's [REST API](https://docs.microsoft.com/en-ca/rest/api/compute/virtualmachines) to allow Janitor users to spawn and automatically configure new VMs based on our Firefox Windows image. This is similar to spawning and auto-configuring new Docker containers based on our [Linux images](https://janitor.technology/projects/) today.

It's still early days, but if you're excited about Windows support, you can track our progress with the new [Janitor Windows roadmap](https://github.com/JanitorTechnology/janitor/projects/4).

## Announcing Janitor 0.0.10

We've improved, upgraded and extended Janitor in many cool ways. So much that the next release should hopefully take us from Alpha to [Beta](https://github.com/JanitorTechnology/janitor/milestone/2), which will bring even more exciting features, supported open source projects, users, speed, stability and scalability.

Here is what we did since 0.0.9 was released 4 months ago:

- Quick [preview URLs](https://twitter.com/jankeromnes/status/938446519530901504) in the IDE (notriddle)
- Improved [Run scripts](https://github.com/JanitorTechnology/dockerfiles/commit/6d3e7835c90fafe76a2e8463b4d5104ac0a39a9d) for most projects (janx)
- [Enabled](https://github.com/JanitorTechnology/janitor/issues/182) collaborative editing in the IDE (janx)
- New [website design](https://janitor.technology/design/) for Janitor to be released soon (ntim, arshad, notriddle)
- New [containers page](https://janitor.technology/containers-new/) with a cool SSH one-liner (ntim)
- New [blog page](https://janitor.technology/blog-new/) populated directly from our [Discourse](https://discourse.janitor.technology/t/newsletters-composed-in-discourse-and-published-in-janitor/100) (notriddle)
- New [OVH1](https://ovh1.janitor.technology/) Docker server, our most powerful yet (16 CPU, 64GB RAM, 2TB SSD)
- [Added](https://twitter.com/jankeromnes/status/956529784569331712) the [PeerTube](https://github.com/Chocobozzz/PeerTube) project (janx, bnjbvr, Chocobozzz)
- [Added](https://github.com/yuzu-emu/yuzu/issues/35) the [Yuzu Emulator](https://github.com/yuzu-emu/yuzu) project (etiennewan)
- Refactored most of our Node.js modules to async/await
- Tested Janitor on an iPad and [it works!](https://twitter.com/mozhacks/status/941802182860406784) (Flaki)
- Supported UTF-8 in all recent containers
- Supported multiple email addresses per user, allowing imports from GitHub
- Supported validation functions and '*' URL parameters in our [self-testing API system](https://github.com/JanitorTechnology/selfapi)
- Latest LLVM toolchain (clang 6.0, lld 6.0, lldb 6.0)
- Latest Rust toolchain (stable 1.23.0, nightly 1.25.0)
- Latest Git (2.16.1)
- Latest Mercurial (4.4.1)
- Latest Node.js (node 8.9.4, npm 5.6.0, nvm 0.33.8)
- Latest [fd](https://github.com/sharkdp/fd) (6.2.0)
- Latest [rg](https://github.com/BurntSushi/ripgrep) (0.7.1)
- Latest [rr](http://rr-project.org/) (5.1.0)
- Latest Vim 8 + latest Neovim
- Latest Cloud9 SDK and noVNC
- ... plus many more upgrades, bug fixes, stability and performance improvements

And that's a wrap! As always, please feel free to stop by our [IRC channel](https://kiwiirc.com/client/irc.freenode.net/?#janitor) and [Discourse forum](https://discourse.janitor.technology) to learn more about this project. We'd love to meet you.

Thanks for your time!

Team Janitor
