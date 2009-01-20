module Yamler
  
  class Template
    
    attr_accessor :path
    
    def initialize(path)
      self.path = File.expand_path(path)
    end
    
    def render(b = binding)
      res = ERB.new(File.read(self.path)).result(b)
      res
    end
    
    def require_yaml(path)
      path = File.extname(path) == '' ? "#{path}.yml" : path
      unless File.exists?(path)
        path = File.expand_path(File.join(File.dirname(self.path), path))
      end
      Yamler::Template.new(path).render(binding)
    end
    
    def __FILE__
      self.path
    end
    
  end
  
end