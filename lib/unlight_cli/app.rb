# frozen_string_literal: true

require 'thor'
require 'thor/group'

require 'unlight_cli/commands/initialize'

module UnlightCLI
  # The main CLI command
  #
  # @since 0.1.0
  # @api private
  class App < Thor
    register Commands::Initialize,
             'init', 'init', 'Initialize OpenUnlight Server'
  end
end
