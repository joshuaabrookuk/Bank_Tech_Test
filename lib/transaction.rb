class Transaction

  attr_reader :balance, :header

  def initialize
    @balance = 0
    @header = 'date || credit || debit || balance'
    @transaction = []
    @created_at = Time.now.strftime("%d/%m/%Y")
  end

  def deposit(add_ammount)
    @balance += add_ammount
    add_ammount_converted = '%.2f' % add_ammount
    balance_converted = '%.2f' % @balance

    # trans = "#{Time.now.strftime("%d/%m/%Y")} || #{'%.2f' % add_ammount} || || #{'%.2f' % @balance}"
    trans = "#{@created_at} || #{add_ammount_converted} || || #{balance_converted}"

    # @transaction << [Time.now.strftime("%d %m %Y"),"||",'%.2f' % add_ammount]
    @transaction << trans
  end

  def withdrawal(subtract_ammount)
    @balance -= subtract_ammount
  end

  def print_out
    # @header
    # @transaction.each do |x|
    #   puts x
    end
  end

  # private

  # def time
  #   @created_at = Time.now.strftime("%d/%m/%Y")
  # end

# end
