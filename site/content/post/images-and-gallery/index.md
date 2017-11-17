+++
title = "Images and Gallery"
date = 2017-11-16T17:26:20+08:00
description = "Testing images and gallery." 
author = "GaryNg"
draft = false
toc = false
category = "tutorial"
tags = []
images = [
    "/post/images-and-gallery/00.png"
] 
+++

This is a simple test of using [hugo-easy-gallery](https://github.com/liwenyip/hugo-easy-gallery).

<!--more-->

## Loading photoswipe

> `lp`

You must use the shortcode `{{</* load-photoswipe */>}}` to load photoswipe.

{{< load-photoswipe >}}

## Figure

> `fg` snippet for basic options
> 
> `fga` snippet for all options

{{< figure link="00.png" caption="Testing" caption-position="bottom" caption-effect="slide" >}}

{{< figure link="01.png" caption="Bla" caption-position="bottom" caption-effect="slide" >}}

{{< figure src="00.png" caption="Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae, explicabo amet! In deserunt nesciunt suscipit impedit accusamus delectus harum aspernatur, voluptate minima neque earum dolorem sit soluta corrupti dolorum totam dicta provident, a officiis dolor vero. Distinctio unde veritatis exercitationem." caption-effect="slide" caption-position="bottom" >}}
{{< figure src="00.png" caption="Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae, explicabo amet! In deserunt nesciunt suscipit impedit accusamus delectus harum aspernatur, voluptate minima neque earum dolorem sit soluta corrupti dolorum totam dicta provident, a officiis dolor vero. Distinctio unde veritatis exercitationem." caption-effect="slide" caption-position="center" >}}
{{< figure src="00.png" caption="lorem lorem lorem lorem lorem lokjansdkjansdkjna sjkdn a" caption-effect="slide" caption-position="none" >}}
{{< figure src="00.png" caption="lorem lorem lorem lorem lorem lokjansdkjansdkjna sjkdn a" caption-effect="fade" caption-position="bottom" >}}

## Gallery

> `g` snippet for basic options
>
> `ga` snippet for all options

### Create a gallery from a directory

The images must be stored along with the content, for example:

We have a post at `content/post/images-and-gallery/index.md`, so all the images must be stored inside the directory `content/post/images-and-gallery/`. The caption of each image is inferred from its filename (using `humanize`).

```
{{</* gallery dir="content/post/images-and-gallery/" */>}}
```

{{< gallery dir="content/post/images-and-gallery/" />}}

### Create a gallery from a collection `figure`

{{< gallery >}}
    {{< figure src="00.png" caption="Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae, explicabo amet! In deserunt nesciunt suscipit impedit accusamus delectus harum aspernatur, voluptate minima neque earum dolorem sit soluta corrupti dolorum totam dicta provident, a officiis dolor vero. Distinctio unde veritatis exercitationem." caption-effect="slide" caption-position="bottom" >}}
    {{< figure src="01.png" caption="Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae, explicabo amet! In deserunt nesciunt suscipit impedit accusamus delectus harum aspernatur, voluptate minima neque earum dolorem sit soluta corrupti dolorum totam dicta provident, a officiis dolor vero. Distinctio unde veritatis exercitationem." caption-effect="slide" caption-position="center" >}}
    {{< figure src="02.png" caption="lorem lorem lorem lorem lorem lokjansdkjansdkjna sjkdn a" caption-effect="slide" caption-position="none" >}}
    {{< figure src="03.png" caption="lorem lorem lorem lorem lorem lokjansdkjansdkjna sjkdn a" caption-effect="fade" caption-position="bottom" >}}
{{< /gallery >}}

## See Also

[Hugo Easy Gallery](https://www.liwen.id.au/heg/) for more demo on the usage of `gallery`.