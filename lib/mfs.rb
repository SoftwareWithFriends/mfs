require 'bundler/setup'
require 'mongoid'

require "mfs/version"
require "mfs/loader"
require "mfs/entry"



module Mfs
  ROOT_DIR = "#{File.dirname(File.realpath(__FILE__))}/.."
  ENV["MONGOID_ENV"] ||= 'development'
  Mongoid.load!("#{ROOT_DIR}/config/mongoid.yml")
end
