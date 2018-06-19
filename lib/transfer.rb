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
  end
  
end
