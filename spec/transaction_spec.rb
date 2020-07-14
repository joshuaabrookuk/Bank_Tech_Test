require 'transaction'



describe Transaction do

  it 'should respond to deposit with integer argument' do
    transaction = Transaction.new
    expect(transaction.deposit(1000)).to eq 1000
  end
end
