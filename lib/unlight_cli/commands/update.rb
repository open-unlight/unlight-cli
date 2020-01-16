# frozen_string_literal: true

module UnlightCLI
  module Commands
    # Update game data
    #
    # @since 0.1.0
    # @api private
    class Update < Thor::Group
      desc 'Update server data'

      # Ensure server is stopped
      #
      # @since 0.1.0
      # @api private
      def stop_server
        system 'docker-compose stop'
      end

      # Start reload database
      #
      # @since 0.1.0
      # @api private
      def update
        # TODO: Prevent use `auth_server` as default
        system 'docker-compose run auth_server update'
        system 'docker-compose rm -f auth_server'
      end
    end
  end
end
