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
    if valid? and @status == "pending"
      sender.balance -= amount
      receiver.balance += amount
      @status = "complete"
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
    @@all << self
  end

  def reverse_transfer
    if @status == "complete"
      sender.balance += amount
      receiver.balance -= amount
    end
    @status = "reversed"
  end

  # def bad_transfer
  #
  # end

end
