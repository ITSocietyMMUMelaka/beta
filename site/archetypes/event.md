+++
title = "{{ replace (replaceRE "^(?:.*(?:/|\\\\))(.*)(?:/|\\\\)$" "$1" .File.Dir) "-" " " | title }}"
date = {{ .Date }}
description = "" 
draft = true
category = "event"
tags = []
images = [
]
+++

{{< is-past-event />}}

{{< is-future-event />}}

<!--more-->

# Details
