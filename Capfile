load 'deploy' if respond_to?(:namespace) # cap2 differentiator
Dir['vendor/plugins/*/recipes/*.rb'].each { |plugin| load(plugin) }

require 'rubygems'
require 'railsless-deploy' # Removes railsisms from Capistrano
load 'config/deploy' # remove this line to skip loading any of the default tasks