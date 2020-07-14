class Transaction

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(x)
    @balance += x
  end

end
