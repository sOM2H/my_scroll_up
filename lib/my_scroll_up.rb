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
    cls = (MyScrollUp.configuration.nil?) ? 'icon-chevron-up' : MyScrollUp.configuration.icon
    scroll = '<a id="scroll-up"><i class="' + cls + '"></i></a>'
    scroll
  end
end
