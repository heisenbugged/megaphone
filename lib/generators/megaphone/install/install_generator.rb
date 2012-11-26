module Megaphone
  module Generators
    class InstallGenerator < Rails::Generators::Base

      def add_migrations
        run 'bundle exec rake megaphone_engine:install:migrations'
      end

    end
  end
end
