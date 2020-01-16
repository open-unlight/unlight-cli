# frozen_string_literal: true

module UnlightCLI
  module Commands
    # Stop server
    #
    # @since 0.1.0
    # @api private
    class Stop < Thor::Group
      desc 'Stop server'

      # Stop server
      #
      # @since 0.1.0
      # @api private
      def start
        system 'docker-compose stop'
      end
    end
  end
end
