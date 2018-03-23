class Transfer
  attr_accessor :balance, :status, :amount, :sender, :receiver
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
