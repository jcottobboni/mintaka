require 'active_support/core_ext/string'
require 'active_support/core_ext/module/attribute_accessors'

require 'mintaka/configuration'
require 'mintaka/constraints/root_route'
require "mintaka/page"
require "mintaka/page_collector"
require 'mintaka/page_finder'
require 'mintaka/route_drawers/default'
require 'mintaka/route_drawers/root'
require 'mintaka/version'

module Mintaka
  extend Configuration
  require 'mintaka/engine' if defined?(Rails)
end