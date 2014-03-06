require './make_change.rb'

describe MakeChange do

  before do
    #give you an instance of MakeChange
    @make_change = MakeChange.new
  end

  it 'should be an instance of MakeChange' do
    expect(@make_change).to be_instance_of MakeChange
  end

  #Penny Testing!
  it 'should return a hash of coins' do
    expect(@make_change.change(1)).to eq({1 => 1, 5 => 0, 10 => 0, 25 => 0})
  end

  it 'should return the right number of pennies' do
    expect(@make_change.change(3)).to eq({1 => 3, 5 => 0, 10 => 0, 25 => 0})
  end

  #Nickel Testing!
  it 'should return a nickel if five cents' do
    expect(@make_change.change(5)).to eq({1 => 0, 5 => 1, 10 => 0, 25 => 0})
  end

  it 'should return nickels and pennies' do
    expect(@make_change.change(8)).to eq({1 => 3, 5 => 1, 10 => 0, 25 => 0})
  end

  #Dime Testing!
  it 'should return the right number of dimes' do
    expect(@make_change.change(10)).to eq({1 => 0, 5 => 0, 10 => 1, 25 => 0})
  end

  it 'should return dimes, nickels and pennies' do
    expect(@make_change.change(18)).to eq({1 => 3, 5 => 1, 10 => 1, 25 => 0})
  end

  #Quarter Testing!
  it 'should return the right number of dimes' do
    expect(@make_change.change(25)).to eq({1 => 0, 5 => 0, 10 => 0, 25 => 1})
  end

  it 'should return all the monies' do
    expect(@make_change.change(43)).to eq({1 => 3, 5 => 1, 10 => 1, 25 => 1})
  end


end
