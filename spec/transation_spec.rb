require 'transaction'

describe 'Transaction' do
  it 'should respond to deposit' do
    expect(subject).to respond_to(:deposit)
  end
end
