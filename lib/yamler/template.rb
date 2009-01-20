module Yamler
  
  class Template
    
    attr_accessor :path # :nodoc:
    
    # Takes the path to the YAML file you wish to render.
    def initialize(path)
      self.path = File.expand_path(path)
    end
    
    # Runs the YAML file through ERB using either the current
    # templates <tt>binding</tt> or the specified one. This
    # method returns a string and <i>NOT</i> a YAML object.
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