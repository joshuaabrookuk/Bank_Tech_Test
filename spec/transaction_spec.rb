require 'transaction'

describe Transaction do

  it 'should respond to deposit with integer argument' do
    transaction = Transaction.new
    expect(transaction.deposit(1000)).to eq 1000
  end


  it 'should add the and return the sum of deposits' do
    transaction = Transaction.new
    transaction.deposit(1000)
    transaction.deposit(2000)
    expect(transaction.balance).to eq 3000
  end

end
