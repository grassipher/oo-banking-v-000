class Transfer
  # your code here
  
  def initialize(account1, account2, amount)
    @status = "pending"
  end
  
  def valid?(account1, account2)
    account1.valid? && account2.valid?
  end
  
end
