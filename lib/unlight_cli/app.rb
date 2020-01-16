# frozen_string_literal: true

require 'thor'
require 'thor/group'

require 'unlight_cli/commands/initialize'
require 'unlight_cli/commands/update'
require 'unlight_cli/commands/start'
require 'unlight_cli/commands/stop'

module UnlightCLI
  # The main CLI command
  #
  # @since 0.1.0
  # @api private
  class App < Thor
    register Commands::Initialize,
             'init', 'init', 'Initialize OpenUnlight Server'
    register Commands::Update, 'update', 'update', 'Update server'
    register Commands::Start, 'start', 'start', 'Start server'
    register Commands::Stop, 'stop', 'stop', 'Stop server'
  end
end
