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
    '<a id="scroll-up"><i class="' + MyScrollUp.configuration&.icon || 'icon-chevron-up' + '"></i></a>'
  end
end
