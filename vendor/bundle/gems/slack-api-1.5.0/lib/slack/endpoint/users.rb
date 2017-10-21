# This file was auto-generated by lib/generators/tasks/generate.rb

module Slack
  module Endpoint
    module Users
      #
      # This method allows the user to delete their profile image. It will clear whatever image is currently set.
      #
      # @see https://api.slack.com/methods/users.deletePhoto
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/users.deletePhoto.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/users.deletePhoto.json
      def users_deletePhoto(options={})
        post("users.deletePhoto", options)
      end

      #
      # This method lets you find out information about a user's presence.
      # Consult the presence documentation for more details.
      #
      # @option options [Object] :user
      #   User to get presence info on. Defaults to the authed user.
      # @see https://api.slack.com/methods/users.getPresence
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/users.getPresence.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/users.getPresence.json
      def users_getPresence(options={})
        throw ArgumentError.new("Required arguments :user missing") if options[:user].nil?
        post("users.getPresence", options)
      end

      #
      # After your Slack app is awarded an identity token through Sign in with Slack, use this method to retrieve a user's identity.
      #
      # @see https://api.slack.com/methods/users.identity
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/users.identity.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/users.identity.json
      def users_identity(options={})
        post("users.identity", options)
      end

      #
      # This method returns information about a team member.
      #
      # @option options [Object] :user
      #   User to get info on
      # @see https://api.slack.com/methods/users.info
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/users.info.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/users.info.json
      def users_info(options={})
        throw ArgumentError.new("Required arguments :user missing") if options[:user].nil?
        post("users.info", options)
      end

      #
      # This method returns a list of all users in the team. This includes deleted/deactivated users.
      #
      # @option options [Object] :presence
      #   Whether to include presence data in the output
      # @see https://api.slack.com/methods/users.list
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/users.list.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/users.list.json
      def users_list(options={})
        post("users.list", options)
      end

      #
      # This method is used to set the profile information for a user.
      #
      # @option options [Object] :user
      #   ID of user to change. This argument may only be specified by team admins on paid teams.
      # @option options [Object] :profile
      #   Collection of key:value pairs presented as a URL-encoded JSON hash.
      # @option options [Object] :name
      #   Name of a single key to set. Usable only if profile is not passed.
      # @option options [Object] :value
      #   Value to set a single key to. Usable only if profile is not passed.
      # @see https://api.slack.com/methods/users.profile
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/users.profile.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/users.profile.json
      def users_profile(options={})
        post("users.profile", options)
      end

      #
      # This method lets the slack messaging server know that the authenticated user
      # is currently active. Consult the presence documentation for
      # more details.
      #
      # @see https://api.slack.com/methods/users.setActive
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/users.setActive.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/users.setActive.json
      def users_setActive(options={})
        post("users.setActive", options)
      end

      #
      # This method allows the user to set their profile image. The caller can pass image data via image.
      #
      # @option options [Object] :image
      #   File contents via multipart/form-data.
      # @option options [Object] :crop_x
      #   X coordinate of top-left corner of crop box
      # @option options [Object] :crop_y
      #   Y coordinate of top-left corner of crop box
      # @option options [Object] :crop_w
      #   Width/height of crop box (always square)
      # @see https://api.slack.com/methods/users.setPhoto
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/users.setPhoto.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/users.setPhoto.json
      def users_setPhoto(options={})
        throw ArgumentError.new("Required arguments :image missing") if options[:image].nil?
        post("users.setPhoto", options)
      end

      #
      # This method lets you set the calling user's manual presence.
      # Consult the presence documentation for more details.
      #
      # @option options [Object] :presence
      #   Either auto or away
      # @see https://api.slack.com/methods/users.setPresence
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/users.setPresence.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/users.setPresence.json
      def users_setPresence(options={})
        throw ArgumentError.new("Required arguments :presence missing") if options[:presence].nil?
        post("users.setPresence", options)
      end

    end
  end
end
