class Transfer
  attr_accessor :balance, :status, :sender, :receiver, :amount
  attr_reader

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
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
