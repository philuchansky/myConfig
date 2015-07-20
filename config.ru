require 'rubygems'
require 'bundler'
Bundler.require

# Models
require './models/post.rb'

# Controllers
require './app'

# allow for other HTTP Verbs
use Rack::MethodOverride

run MyConfig