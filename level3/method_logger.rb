class MethodLogger
  def self.log_method(klass, method_name)
    klass.class_eval do
      alias_method "#{method_name}_original", method_name
      define_method method_name do |*args|
        puts "LOGGER: #{Time.now}: called #{method_name} with args: #{args}"
        send "#{method_name}_original", *args
      end
    end
  end
end