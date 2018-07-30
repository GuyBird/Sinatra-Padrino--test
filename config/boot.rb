# Defines our constants
RACK_ENV = ENV['RACK_ENV'] ||= 'development' unless defined?(RACK_ENV)
PADRINO_ROOT = File.expand_path('../..', __FILE__) unless defined?(PADRINO_ROOT)

require 'bundler/setup'
Bundler.require(:default, RACK_ENV)

Padrino.before_load do
end

Padrino.after_load do
end

Padrino.load!