require "megaphone/version"

module Megaphone
  class Engine < Rails::Engine; end

  module Notifiable
    extend ActiveSupport::Concern

    included do
      has_many :messages, class_name: "Megaphone::Message", as: :notifiable

      class_eval do

        # Public: Returns if the model has unread messages or not.
        #
        # Examples
        #
        #   User.last.has_unread_messages?
        #   # => true
        #
        # Returns true if the model has unread messages, false otherwise.
        def has_unread_messages?
          unread_messages_count > 0
        end

        # Public: Count the number of unread messages associated
        # to this model.
        #
        # Examples
        #
        #   User.last.unread_messages_count
        #   # => 5
        #
        # Returns the ammount of unread messages
        def unread_messages_count
          @unread_messages_count ||= messages.unread.count
        end
      end

    end # included

  end # module Notifiabled
end
