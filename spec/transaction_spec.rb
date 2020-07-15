require 'transaction'

describe Transaction do
  # before(:each) do
  #   transaction = Transaction.new
  # end

  it 'should respond to deposit with integer argument' do
    transaction = Transaction.new
    transaction.deposit(1000)
    expect(transaction.balance).to eq 1000
  end

  it 'should add and return the sum of deposits' do
    transaction = Transaction.new
    transaction.deposit(1000)
    transaction.deposit(2000)
    expect(transaction.balance).to eq 3000
  end

  it 'should subtract and return the sum of deposits' do
    transaction = Transaction.new
    transaction.deposit(1000)
    transaction.deposit(2000)
    transaction.withdrawal(500)
    expect(transaction.balance).to eq 2500
  end

  # xit 'print method should print header' do
  #   transaction = Transaction.new
  #   expect(transaction.print_out).to include 'date || credit || debit || balance'
  # end
  # This text works if I 'p @header' in my method but oviously outputs with sting which I don't want, would like feedback / guidance on this.

  it 'print method should print header' do
    transaction = Transaction.new
    transaction.print_out
    expect(transaction.transact[0]).to eq 'date || credit || debit || balance'
  end

  it 'print method should show transaction' do
    transaction = Transaction.new
    transaction.deposit(1000)
    transaction.print_out
    expect(transaction.transact[1]).to eq "#{transaction.created_at} || 1000.00 || || 1000.00"
  end

  it 'print method should show most recent transcation first' do
    transaction = Transaction.new
    transaction.deposit(1000)
    transaction.deposit(2000)
    transaction.print_out
    expect(transaction.transact[1]).to eq "#{transaction.created_at} || 2000.00 || || 3000.00"
  end

  it 'print method should have correctly formatted withdrawal method' do
    transaction = Transaction.new
    transaction.deposit(1000)
    transaction.deposit(2000)
    transaction.withdrawal(500)
    transaction.print_out
    expect(transaction.transact[1]).to eq "#{transaction.created_at} || || 500.00 || 2500.00"
  end

end
