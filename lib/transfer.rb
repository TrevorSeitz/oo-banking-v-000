class Transfer
  attr_accessor :balance, :status, :sender, :receiver, :amount
  attr_reader

  @@all = []

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

  def execute_transaction
    unless @@all.include?(self)
      sender.balance -= amount
      receiver.balance += amount
    end
    @status = "complete"
    @@all << self
  end

  def bad_transfer
    "Transaction rejected. Please check your account balance."
  end

end
