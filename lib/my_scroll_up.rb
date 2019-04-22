require 'my_scroll_up/version'
require 'my_scroll_up/engine'

# Main module
module MyScrollUp
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  # Configuration class
  class Configuration
    attr_accessor :icon

    def initialize
      @icon = 'icon-chevron-up'
    end
  end

  def self.render
    scroll = '<a id="scroll-up"><i'
    if MyScrollUp.configuration.icon.nil?
      scroll << ' class="icon-chevron-up">'
    else
      scroll << ' class="'
      scroll << MyScrollUp.configuration.icon.to_s
      scroll << '">'
    end
    scroll << '</i></a>'
    scroll
  end
end
