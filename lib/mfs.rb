require 'bundler/setup'
require 'mongoid'

require "mfs/version"
require "mfs/can_be_created_from_files"
require "mfs/entry"
require "mfs/types/certificate"


module Mfs
  ROOT_DIR = "#{File.dirname(File.realpath(__FILE__))}/.."

end
