class BankAccount
  attr_reader :balance, :status, :name
  
  def initialize (name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  
  def deposit (amount)
    @balance += amount
  end
  
  def display_balance
    "Your balance is #{self.balance}."  
  end
  
  def close_account
    self.status = "closed"
  end
  
  def valid?
    (self.status == "open") && (self.balance > 0)
  end
  
end
