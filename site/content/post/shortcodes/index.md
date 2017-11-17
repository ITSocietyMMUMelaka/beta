+++
title = "Shortcodes"
date = 2017-11-15T18:08:54+08:00
description = "How to use shortcodes in a Hugo site" 
draft = false
toc = false
category = "Tutorial"
tags = ["hugo", "shortcode", "vscode"]
+++

Documentation on shortcode can be found here: <https://gohugo.io/content-management/shortcodes/#readout>

Some example shortcodes: 

```
{{</* simple shortcode */>}}

{{</* shortcode */>}}
    With body
{{</* /shortcode */>}}

{{%/* mdshortcode */%}}
    Stuff to `process` in the *center*.
{{%/* /mdshortcode */%}}
```
<!--more-->
## Visual Studio Code Snippets

Almost all of the shortcodes provided by `hugo` and `after-dark` (the theme) has its own snippets in Visual Studio Code for your convenience. You can import and use the code snippets via:

### Installing extension

Install the [Project Snippets](https://github.com/rebornix/vscode-project-snippet) extension to use the snippets defined for all the shortcode listed below. 

### Importing the code snippets directly into Visual Studio Code (recommended)

1. Ctrl + Shift + P > Search for `Open user snippets` > `markdown`
2. Copy the content of `.vscode\snippets\markdown.json` into the file
3. Save

## All shortcodes and their corresponding code snippet

### figure

> `fg`

{{< figure src="https://source.unsplash.com/random/800x600" caption="Random image from unsplash" title="Random Image" link="https://source.unsplash.com/random/800x600" >}}

### blockquote

> `bq`

{{< blockquote cite="Gary Ng" >}}
Testing without `citelink`
{{< /blockquote >}}

{{< blockquote cite="Gary Ng" citelink="http://www.google.com" >}}
Testing with `citelink`
{{< /blockquote >}}

> use markdown `>` for blockquote without `cite`

### GitHub Gists

> `gist`

{{< gist spf13 7896402 "img.html" >}}

### Hightlight

> `h`

{{< highlight html>}}
<section id="main">
  <div>
   <h1 id="title">{{ .Title }}</h1>
    {{ range .Data.Pages }}
        {{ .Render "summary"}}
    {{ end }}
  </div>
</section>
{{< /highlight >}}

### Instagram

> `ig`

{{< instagram BWNjjyYFxVx hidecaption >}}

### `ref` and `relref`

> `ref` and `relref`

Go to [blockquote]({{< relref "index.md#blockquote" >}})

### Twitter

> `tweet`

{{< tweet 877500564405444608 >}}

### Vimeo

> `vimeo`

{{< vimeo 146022717 >}}

### YouTube

> `youtube`

{{< youtube id="w7Ft2ymGmfc" >}}

## hack.css `alert` components

### Simple (Inline text)

> `alert`

{{< hackcss-alert type="success" text="Success" />}}
{{< hackcss-alert type="info" text="Info" />}}
{{< hackcss-alert type="warning" text="Warning" />}}
{{< hackcss-alert type="error" text="Error" />}}

### With multi-line text

> `alertm`

{{< hackcss-alert type="success" >}}
This is a success message
Line 2
{{< /hackcss-alert>}}
{{< hackcss-alert type="info" >}}
This is a info message
Line 2
{{< /hackcss-alert>}}
{{< hackcss-alert type="warning" >}}
This is a warning message
Line 2
{{< /hackcss-alert>}}
{{< hackcss-alert type="error" >}}
This is a error message <br>
Line 2 only if you use &lt;br&gt;
{{< /hackcss-alert>}}

{{< hackcss-alert type="info" text="Lol, whitespace is not preserved" />}}

### Markdown-enabled

> `alertmd`

{{% hackcss-alert type="success"  %}}
Some _markdown_ **here**!  
More text here
{{% /hackcss-alert %}}
{{% hackcss-alert type="info"  %}}
Some _markdown_ **here**!  
More text here
{{% /hackcss-alert %}}
{{% hackcss-alert type="warning"  %}}
Some _markdown_ **here**!  
More text here
{{% /hackcss-alert %}}
{{% hackcss-alert type="error"  %}}
Some _markdown_ **here**!  
More text here
{{% /hackcss-alert %}}

## hack.css `button` components

### Simple

> `button`

{{< hackcss-button text="default" type="default" />}}
{{< hackcss-button text="primary" type="primary" />}}
{{< hackcss-button text="success" type="success" />}}
{{< hackcss-button text="info" type="info" />}}
{{< hackcss-button text="warning" type="warning" />}}
{{< hackcss-button text="error" type="error" />}}
{{< hackcss-button text="Ghost" type="default" isghost="true" />}}
{{< hackcss-button text="Block" type="default" isblock="true" />}}

### Multiline

> `buttonm`

{{< hackcss-button type="default" isghost="true" isblock="true" >}}
Some content
{{< /hackcss-button >}}

### Multiline with markdown

> `buttonmd`

{{% hackcss-button type="default" isghost="true" isblock="true" %}}
Some _markdown_
{{% /hackcss-button %}}

## hack.css `button group`

> `buttongroup`

{{< hackcss-buttongroup >}}
    {{< hackcss-button text="Left" type="default" isghost="true" />}}
    {{< hackcss-button text="Middle" type="default" isghost="true" />}}
    {{< hackcss-button text="Right" type="default" isghost="true" />}}
{{< /hackcss-buttongroup >}}

## hack.css `card`

### Simple

> `card`

{{< hackcss-card header="Title" text="Inner text" />}}

### Multiline

> `cardm`

{{< hackcss-card header="Title" >}}
Some inner content
{{< /hackcss-card >}}

{{< hackcss-card header="Breaking News" >}}
    {{< blockquote cite="Unknown" citelink="Dummy" >}}
    The news is real!
    {{< /blockquote >}}
    {{< hackcss-button text="OK" type="primary" isblock="true"/>}}
{{< /hackcss-card >}}

### Multiline with markdown

> `cardmd`

{{% hackcss-card header="Title" %}}
Some _markdown_ **here**  
~~Hi!~~
{{% /hackcss-card %}}

## hack.css `progress bar`

> `progressbar`

{{< hackcss-progress value="40" >}}
<br>
{{< hackcss-progress value="30" showpercent="false" >}}
<br>
{{< hackcss-progress value="70" showpercent="true" filltext="pemuatan" >}}

## hack.css `loading`

> `loading`

{{< hackcss-throbber >}}

{{< hackcss-button type="default" isblock="true">}}
Loading ... {{< hackcss-throbber >}}
{{< /hackcss-button >}}

## See also

`markdown.json` located inside `.vscode\snippets`