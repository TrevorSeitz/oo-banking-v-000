class Transfer
  attr_accessor :balance, :status, :amount, :name_to, :name_from
  attr_reader

  def initialize(name_to, name_from, amount)
    @name_to = name_to
    @name_from = name_from
    @amount = amount
    @balance = 1000
    @status = "open"
  end
end
