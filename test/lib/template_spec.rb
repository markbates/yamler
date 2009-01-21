require File.join(File.dirname(__FILE__), '..', 'spec_helper')

describe Yamler::Template do
  
  describe 'render' do
    
    it 'should parse the file with ERB' do
      template = Yamler::Template.new(yml_path('simple'))
      res = template.render
      res.should == 'two: 2'
    end
    
  end
  
  describe 'require_yaml' do
    
    it 'should merge the contents of the required yaml file into the current file' do
      template = Yamler::Template.new(yml_path('friends'))
      res = template.render
      res.should == %{
friends:
  - Ross
  - Rachel
  - Joey
  - Phoebe
  - Monica
  - Chandler

enemies:
  - Syler
  - Khan
  - Darth Vader

two: 2

others:
  - Ben
}.strip
    end
    
  end
  
  describe '__FILE__' do
    
    it 'should return the yml file it is run on' do
      template = Yamler::Template.new(yml_path('friends'))
      template.__FILE__.should == yml_path('friends')
    end
    
  end
  
  describe 'locals' do
    
    it 'should make :locals in the options hash appear as local methods' do
      template = Yamler::Template.new(yml_path('locals_test'), {:locals => {:username => 'markbates', :password => '123456'}, :foo => :bar})
      res = template.render
      res.should == %{
username: markbates
password: 123456
foo: bar
}.strip
    end
    
  end

end
