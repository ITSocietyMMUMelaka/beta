+++
title = "New Site!"
date = 2017-11-16T02:28:56+08:00
description = "" 
draft = false
toc = true
category = "Announcement"
tags = ["announcement"]
images = [
] 
+++

Hi all!

I have spent the past few weeks prototyping the `beta` version of the ITSOC website, which is currently available here: https://beta.itsociety.club/

We have a lot more things need to be done **but** before proceeding, I **sincerely** need _feedbacks_ from you guys 🙏🙏🙏 

Visit and poke around the site, don't feel shy to voice out your opinions or suggestions - no matter it's good or bad (like the site is utterly ugly 👎 or the design is a pile of rubbish 🗑️ etc), it's better to say it out so that we can at least make improvements 😁

<!--more-->

## Beta site 101:

### 1. Why new site?

The development of the current itsoc website is somehow stalled as the original devs (@lyner @tim) are quite busy (they are taking FYP), and the development workflow is not smooth enough for everyone else to take over. As the site is self-developed, we don't have sophisticated back-end for easily adding new content/updating existing content/etc. So I decided to start a new site, which hopefully resolve some of the problems above.

{{% hackcss-alert type="info" %}}
_Some technical details:_

The new site is built automagically using Travis CI and deployed via sftp, that means everyone (even the public) can contribute and we can easily merge in their contributions.
{{% /hackcss-alert %}}

### 2. Why no xxxxx (insert any CMS like Wordpress)

Wordpress is easy to use but it's also easy to misuse. For other reason, ask @lyner 😂😂😂

{{% hackcss-alert type="info" %}}
_PS: Personally I'm also not a fan of Wordpress/etc_
{{% /hackcss-alert %}}

... and by the way, the beta site is a `static` site as compared to `dynamic` site that uses wordpress etc. `static` site is website without dynamic content, that means no database/no complex back-end/etc, which means **it's easier to maintain** and easier to develop (and harder to get the config wrong)

### 3. Why no xxxxxx (insert any website builder like Wix)

{{% hackcss-card header="TLDR;" %}}
{{< hackcss-alert type="error" text="NO. DONT ASK." />}}
{{% /hackcss-card %}}
<hr>
We wanted everyone to engage in the process of actually writing a website, so we went for the manual way (which is also the original intent of @lyner replacing the previous version of itsoc website). 

{{% hackcss-alert type="success" %}}
... and because we are IT Society right? At least we need to know how to do something that others need someone else to do 😁
{{% /hackcss-alert %}}

{{% hackcss-alert type="info" %}}
_Some technical details:_

The beta site uses `Hugo` (https://gohugo.io/), an easy to use static site generator. The documentation (https://gohugo.io/about/) are well-written and the templating syntax is super simple: `{{ .Title }}` So be sure to check it out!
{{% /hackcss-alert %}}

### 4. _Why_ this theme?

{{% hackcss-card header="TLDR;" %}}
{{% hackcss-alert type="info" %}}
I can't do design. **So we need your help!**
{{% /hackcss-alert %}}
{{% /hackcss-card %}}
<hr>
For some reason, I like code-related stuff (the theme is using `markdown` styling, which is another easy-to-learn document formatting language) and thus I selected this theme 😂

... btw the theme used is a customized version of the original `after-dark` hugo theme, check it out here: https://github.com/ITSocietyMMUMelaka/after-dark
It's based on another minimal framework called `hack.css` https://hackcss.egoist.moe/

### 5. Ok good. Any prerequisites for using the site (like posting new stuff)?

{{% hackcss-card header="TLDR;" %}}
{{% hackcss-alert type="info" %}}
Yes and no.
{{% /hackcss-alert %}}
{{% /hackcss-card %}}
<hr>
Yes because you need to at least have a GitHub account and some knowledge on `markdown`.
No because you can create a new GitHub account in seconds and `markdown` is even easier than html to learn (you can even use WYSIWYG editor provided by github)

{{% hackcss-alert type="success" %}}
PS: if you know how to do this kind of thing in Whatsapp: **bold** _italics_ ~~strikethrough~~ `monospace`, you are **already** using `markdown` (well, at least a flavour of `markdown`). 

Easy right?
For more `markdown`, check out this `markdown cheatsheet` https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
{{% /hackcss-alert %}}

To actually help developing the website, you need one extra thing: `git`
(Which is very very very useful for your IT-related career). 
But learning it is not a problem as there are so many GUI for Git: GitKraken (https://www.gitkraken.com/) is the one that I used on daily basis.

### 6. Ok, I'm interested in developing the site, what can I do?

Register a GitHub account (https://github.com/), ping me your `username` and I will add you to itsoc's organization on github: https://github.com/ITSocietyMMUMelaka

You can also get more information about the website on the its repository: https://github.com/ITSocietyMMUMelaka/beta

## What we want to achieve?
1. Everyone can post something at the itsoc website instead of posting on Facebook (Or we can post link to itsoc website on Facebook)
2. Everything can be updated easily via a centralize site (which is mainly GitHub)
3. Everyone can participate in the development of the website
4. Everyone can at least learn new things (`Hugo`, `GitHub`, `Git`, `markdown`, etc - almost all of them are **required** for you to secure an IT-related job in the future)

{{% hackcss-alert type="warning" %}}
Long story short: 

Please give your feedback about the beta site (https://beta.itsociety.club/), and if your are interested in learning new things: please join the development (https://github.com/ITSocietyMMUMelaka/beta).
{{% /hackcss-alert %}}

Thanks 😁

_GaryNg_

_This message is originally posted on WhatsApp group_
