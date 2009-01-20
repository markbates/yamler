require File.join(File.dirname(__FILE__), '..', 'spec_helper')

describe Yamler do

  describe 'load' do
    
    it 'should yield a block and make the contents available in the binding' do
      res = Yamler.load(yml_path('four')) do
        def count(x, y)
          x + y
        end
      end
      res.should be_kind_of(Hash)
      res['four'].should == 4
    end
    
    it 'should parse the file with ERB' do
      res = Yamler.load(yml_path('simple'))
      res.should be_kind_of(Hash)
      res['two'].should == 2
    end
    
  end
  
  describe 'require_yaml' do
    
    it 'should merge the contents of the required yaml file into the current file' do
      res = Yamler.load(yml_path('friends'))
      res.should be_kind_of(Hash)
      res['friends'].should be_include('Ross')
      res['enemies'].should be_include('Khan')
      res['others'].should be_include('Ben')
    end
    
  end

end
