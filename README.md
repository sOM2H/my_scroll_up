# MyScrollUp
Primitive scroll up for monolith projects.
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'my_scroll_up'
gem 'jquery-rails'
```

And then execute:

    $ gem install my_scroll_up 
    $ bundle install

If you don't use bootsrap, then add to your head:

```html
...
<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
...
```


Add this code to your body:

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
Add requires to js and css:

`app/assets/javascripts/application.js`

``` js
  ...
  //= require jquery
  //= require my_scroll_up
  ...
```

`app/assets/stylesheets/application.css`

```css
  ...
  *= require my_scroll_up
  ...
```
