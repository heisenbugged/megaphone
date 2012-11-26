module Megaphone
  module Generators
    class InstallGenerator < Rails::Generators::Base

      def add_migrations
        run 'bundle exec rake railties:install:migrations FROM=megaphone'
      end

    end
  end
end
