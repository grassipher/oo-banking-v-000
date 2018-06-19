class Transfer
  # your code here
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  
  
  def initialize(account1, account2, amount)
    @sender = account1
    @receiver = account2
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    self.sender.valid? && self.receiver.valid?
  end
  
  def execute_transaction
    if self.valid? && self.status == "pending"
      self.sender.balance -= self.amount
      self.receiver.balance += self.amount
      self.status = "complete"
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
    
  end
  
end
