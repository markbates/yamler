module Yamler
  
  class << self
    
    # Mimics <tt>YAML#load</tt>, except that it creates a new <tt>Yamler::Template</tt>
    # class and calls the <tt>render</tt> method on <tt>Yamler::Template</tt>.
    # 
    # If a block is passed in the contents of that block will be made available to
    # ERB when the rendering occurs.
    # 
    # Examples:
    #   # Renders said file through ERB, and then through YAML.load:
    #   Yamler.load('/path/to/file.yml')
    # 
    #   Does the same as above but makes a method called say_hi
    #   available to the binding of the Yamler::Template instance.
    #   Yamler.load('/path/to/file.yml') do
    #     def say_hi
    #       'hi'
    #     end
    #   end
    def load(path, &block)
      template = Yamler::Template.new(path) 
      if block_given?
        template.instance_eval(&block)
      end
      YAML.load(template.render)
    end
    
  end
  
end