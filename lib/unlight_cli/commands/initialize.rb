# frozen_string_literal: true

require 'securerandom'

module UnlightCLI
  module Commands
    # Create OpenUnlight Project
    #
    # @since 0.1.0
    # @api private
    class Initialize < Thor::Group
      include Thor::Actions

      argument :name, default: 'OpenUnlight'
      desc 'Initialize OpenUnlight server'

      # @since 0.1.0
      # @api private
      def self.source_root
        UnlightCLI.root
      end

      # Create default project files
      #
      # @since 0.1.0
      # @api private
      def create_project
        template('templates/env.erb', "#{name}/.env")
        template('templates/docker-compose.yml.erb',
                 "#{name}/docker-compose.yml")
      end

      # Initialize Load
      #
      # @since 0.1.0
      # @api private
      def initialize_load
        Dir.chdir name do
          invoke 'commands:update'
          invoke 'commands:start'
        end
      end

      # Setup finished message
      #
      # @since 0.1.0
      # @api private
      def messages
        puts "The database root password is #{database_password}"
      end

      private

      # Generated Database Password
      #
      # @since 0.1.0
      # @api private
      def database_password
        @database_password ||= SecureRandom.base64(24)
      end
    end
  end
end
