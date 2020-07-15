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

  it 'print method should print header' do
    transaction = Transaction.new
    expect(transaction.print_out).to include 'date || credit || debit || balance'
  end

  # it 'should respond to print method' do
  #   transaction = Transaction.new
  #   expect(transaction.header).to include 'date || credit || debit || balance'
  # end

  # it 'should print first transaction' do
  #   transaction = Transaction.new
  #   transaction.deposit(1000)
  #   expect(transaction.print_out).to eq @header
  # end
  

end
