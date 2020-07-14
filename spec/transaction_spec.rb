require 'transaction'

describe Transaction do
  it 'should respond to deposit with integer argument' do
    expect(subject.deposit(1000)).to eq 1000
  end
end
