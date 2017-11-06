+++
title = "Testing"
date = 2017-11-05T14:52:09+08:00
description = "Thank you for choosing After Dark."
draft = true
toc = false
categories = ["technology"]
tags = ["hello", "world"]
images = [
  "https://source.unsplash.com/category/technology/1600x900"
] # overrides the site-wide open graph image
+++

<a itemprop="url" href="/home"><span itemprop="name">Home</span></a>
<a itemprop="url" href="/home"><span itemprop="name">Home</span></a>
<a itemprop="url" href="/home">Home</a>

**Strong**
*Emphasis*
_Emphasis_

# h1
## h2
### h3
#### h4
##### h5
###### h6

{{< blockquote cite="https://bitly.is/2mkxskj" citelink="https://bitly.is/2mkxskj" >}}
  <p>When you create your own Branded Short Domain, you can expect to see up to a 34% increase in CTR when compared to standard bit.ly links.</p>
{{< /blockquote >}}

{{< highlight html >}}
<section id="main">
  <div>
    <h1 id="title">{{ .Title }}</h1>
    {{ range .Data.Pages }}
      {{ .Render "summary"}}
    {{ end }}
  </div>
</section>
{{< /highlight >}}

```html
<section id="main">
  <div>
    <h1 id="title">{{ .Title }}</h1>
    {{ range .Data.Pages }}
      {{ .Render "summary"}}
    {{ end }}
  </div>
</section>
```

Before you continue, please take a moment to configure your archetypes.

Archetypes are located in the `archetypes` directory in the source of your site. To learn more about archetypes, visit [Archetypes](https://gohugo.io/content-management/archetypes/) on the Hugo website. And when you're ready, check out the [Customizing](https://comfusion.github.io/after-dark/#customizing) section of the After Dark documentation for additional options.

<!--more-->
This information appears below the [Summary Split](https://gohugo.io/content-management/summaries/).

After Dark supports the `bpg` file format. Here's an example animation rendered using BPG:

<img src="/bpg/cinemagraph-6.bpg" alt="BPG file format example">

The above file is `48KB`, **97% smaller** than the equivalent GIF. Seriously.

See the <a href="https://github.com/comfusion/after-dark/blob/master/README.md" target="_blank" rel="noopener nofollow">After Dark `README`</a> for more info.
