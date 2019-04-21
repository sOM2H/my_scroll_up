# MyScrollUp
Primitive scroll up for monolith projects.
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'my_scroll_up'
gem 'jquery-rails'
```

And then execute:

    $ bundle

`app/views/layouts/application.html.erb`

Haml:
```haml
 %a#scroll-up{:href => "javascript:"}
    %i.icon-chevron-up
```
Erb:
```erb
<a id="scroll-up" href="javascript:">
  <i class="icon-chevron-up"></i>
</a>
```
`app/assets/javascripts/application.js`

``` js
  ...
  //= require jquery
  //= require my_scroll_up
  ...
```