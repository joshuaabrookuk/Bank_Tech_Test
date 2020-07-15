class Transaction

  attr_reader :balance, :header, :transact, :created_at

  def initialize
    @balance = 0
    @header = 'date || credit || debit || balance'
    @transact = []
    @created_at = Time.now.strftime("%d/%m/%Y")
  end

  def deposit(add_ammount)
    @balance += add_ammount
    add_ammount_converted = '%.2f' % add_ammount
    balance_converted = '%.2f' % @balance

    # trans = "#{Time.now.strftime("%d/%m/%Y")} || #{'%.2f' % add_ammount} || || #{'%.2f' % @balance}"
    trans = "#{@created_at} || #{add_ammount_converted} || || #{balance_converted}"

    # @transaction << [Time.now.strftime("%d %m %Y"),"||",'%.2f' % add_ammount]
    @transact << trans
  end

  def withdrawal(subtract_ammount)
    @balance -= subtract_ammount
  end

  def print_out
    puts @transact.unshift(@header)
  end
end
