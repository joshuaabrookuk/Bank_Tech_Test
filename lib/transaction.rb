class Transaction

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(add_ammount)
    @balance += add_ammount
  end

  def withdrawal(subtract_ammount)
    @balance -= subtract_ammount
  end

end
