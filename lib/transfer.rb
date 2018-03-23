class Transfer
  attr_accessor :balance, :status, :amount, :name_to, :sender
  attr_reader

  def initialize(name_to, sender, amount)
    @name_to = name_to
    @sender = sender
    @amount = amount
    @balance = 1000
    @status = "open"
  end


end
