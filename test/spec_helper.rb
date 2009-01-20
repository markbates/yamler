require 'rubygems'
require 'spec'

require File.join(File.dirname(__FILE__), '..', 'lib', 'yamler')


def yml_path(name)
  File.expand_path(File.join(File.dirname(__FILE__), "#{name}.yml"))
end