class Transaction

  attr_reader :balance, :header

  def initialize
    @balance = 0
    @header = 'date || credit || debit || balance'
    @transaction = []
  end

  def deposit(add_ammount)
    @balance += add_ammount
  end

  def withdrawal(subtract_ammount)
    @balance -= subtract_ammount
  end

  def print_out
    @transaction << @header
  end

end
