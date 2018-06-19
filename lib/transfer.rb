class Transfer
  # your code here
  attr_reader :sender, :receiver, :amount, :status
  
  
  def initialize(account1, account2, amount)
    @sender = account1
    @receiver = account2
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    account1.valid? && account2.valid?
  end
  
end
