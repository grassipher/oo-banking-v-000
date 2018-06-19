class BankAccount
  attr_reader :status, :name
  
  def initialize (name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  
  def deposit (amount)
    @balance += amount
  end
  
  def display_balance
    @balance  
  end
  
  def close_account
    self.status = "closed"
  end
  
end
