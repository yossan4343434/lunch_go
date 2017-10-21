# This file was auto-generated by lib/generators/tasks/generate.rb

module Slack
  module Endpoint
    module Presence
      #
      # Manually set user presence
      #
      # @option options [Object] :presence
      #   Either `active` or `away`
      # @see https://api.slack.com/methods/presence.set
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/presence.set.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/presence.set.json
      def presence_set(options={})
        throw ArgumentError.new("Required arguments :presence missing") if options[:presence].nil?
        post("presence.set", options)
      end

    end
  end
end
