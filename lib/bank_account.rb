class BankAccount

  attr_accessor :name, :balance, :open

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
end
