# borrowed from err who borrowed from topfunky who borrowed from...

# set up test environment
require 'rubygems'
require 'activerecord'
require 'actionpack'
require 'html5'
ActiveRecord::Base.establish_connection(:adapter => 'sqlite3',
                                        :database => ':memory:',
                                        :encoding => 'utf8')
require 'test/unit'
$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')
require File.join(File.dirname(__FILE__), '..', 'init')

# load test schema
load(File.dirname(__FILE__) + "/schema.rb")

require 'action_controller/session/active_record_store'
require 'action_view/helpers/sanitize_helper'
require 'rails_sanitize'
require 'html5lib_sanitize'

# load test models
require File.join(File.dirname(__FILE__), 'models/person')
require File.join(File.dirname(__FILE__), 'models/entry')
require File.join(File.dirname(__FILE__), 'models/comment')
require File.join(File.dirname(__FILE__), 'models/message')
require File.join(File.dirname(__FILE__), 'models/review')
