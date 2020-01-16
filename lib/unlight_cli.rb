# frozen_string_literal: true

require 'pathname'

require 'unlight_cli/version'
require 'unlight_cli/app'

# The OpenUnlight CLI tool
module UnlightCLI
  def self.root
    @root ||= Pathname.new(File.dirname(__dir__))
  end
end
