class Transfer
  attr_accessor :balance, :status, :amount, :receiver, :sender
  attr_reader

  def initialize(receiver, sender, amount)
    @receiver = receiver.name
    @sender = sender
    @amount = amount
    # @balance = 1000
    @status = "pending"
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def executed
    sender.balance -= amount
    receiver.balance += amount
  end

end
