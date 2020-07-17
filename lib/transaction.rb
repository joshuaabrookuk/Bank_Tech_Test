class Transaction
  attr_reader :balance, :header, :transaction_list, :created_at

  def initialize
    @balance = 0
    @header = 'date || credit || debit || balance'
    @transaction_list = []
    @created_at = Time.now.strftime('%d/%m/%Y')
  end

  def deposit(add_amount)
    @balance += add_amount
    add_amount_converted = '%.2f' % add_amount
    balance_converted = '%.2f' % @balance
    @transaction_list << "#{@created_at} || #{add_amount_converted} || || #{balance_converted}"
  end

  def withdrawal(subtract_amount)
    @balance -= subtract_amount
    subtract_amount_converted = '%.2f' % subtract_amount
    balance_converted = '%.2f' % @balance
    @transaction_list << "#{@created_at} || || #{subtract_amount_converted} || #{balance_converted}"
  end

  def print_out
    @transaction_list.reverse!
    puts @transaction_list.unshift(@header)
  end
end
