class Singleton
  @instance = new

  private_class_method :new

  def self.instance
    @instance
  end

  def some_business_logic
    # ...
  end
end

def client_code
  s1 = Singleton.instance
  s2 = Singleton.instance

  if s1.equal? s2
    puts 'Singleton works, both variables contain the same instance.'
  else
    puts 'Singleton failed, variables contain different instances...'
  end
end

def main
  client_code
end

main if $PROGRAM_NAME == __FILE__