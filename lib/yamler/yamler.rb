module Yamler
  
  class << self
    
    def load(path, &block)
      template = Yamler::Template.new(path) 
      if block_given?
        template.instance_eval(&block)
      end
      YAML.load(template.render)
    end
    
  end
  
end