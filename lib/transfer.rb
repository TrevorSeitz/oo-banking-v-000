require "pry"

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
    binding.pry
    if valid? and @status == "pending"
      sender.balance -= amount
      receiver.balance += amount
      @status = "complete"
    else
    "Transaction rejected. Please check your account balance."
      @status = "rejected"
    end
  end

  def reverse_transfer
    if @status == "complete"
      sender.balance += amount
      receiver.balance -= amount
    end
    @status = "reversed"
  end

end
