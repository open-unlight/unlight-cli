# frozen_string_literal: true

module UnlightCLI
  module Commands
    # Start server
    #
    # @since 0.1.0
    # @api private
    class Start < Thor::Group
      desc 'Start server'

      # Start server as daemon
      #
      # @since 0.1.0
      # @api private
      def start
        system 'docker-compose up -d'
      end
    end
  end
end
