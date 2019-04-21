# MyScrollUp
Primitive scroll up for monolith projects.
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'my_scroll_up'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install my_scroll_up

Add this code to your body

Haml:
```haml
 %a#return-to-top{:href => "javascript:"}
    %i.icon-chevron-up
```
Erb:
```erb
<a id="return-to-top" href="javascript:">
  <i class="icon-chevron-up"></i>
</a>
```