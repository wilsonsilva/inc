# frozen_string_literal: true

require_relative 'inc/version'
require 'zeitwerk'

# Load the gem's files
loader = Zeitwerk::Loader.for_gem
loader.setup

# Encapsulates all the gem's logic
module Inc
end
