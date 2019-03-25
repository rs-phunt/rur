require "rur/version"

require "pry"
require "rubocop"
require "high_voltage"
require "rur/produce"

module Rur
  require 'railtie' if defined?(Rails)
end
