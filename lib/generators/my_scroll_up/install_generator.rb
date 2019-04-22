module MyScrollUp
  module Generators
    # Default Rails::Generators::Base InstallGenerator
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../../templates', __FILE__)
      desc 'Creates Jem initializer for your application'

      def copy_initializer
        template 'my_scroll_up_initializer.rb', 'config/initializers/my_scroll_up.rb'

        puts 'Install complete.'
      end
    end
  end
end
