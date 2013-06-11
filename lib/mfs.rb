require 'bundler/setup'
require 'mongoid'

require "mfs/version"
require "mfs/loader"
require "mfs/entry"



module Mfs
  ROOT_DIR = "#{File.dirname(File.realpath(__FILE__))}/.."

end
