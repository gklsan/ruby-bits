class LibraryManager
  def self.make_available(klass, user)
    klass.class_eval do
      puts "inside class_eval for self= #{self}, user= #{user}"
      def lend_to_#{user}
      end
    end
  end
end