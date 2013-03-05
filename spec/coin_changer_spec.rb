require 'coin_changer'

describe CoinChanger do
  [
    [1, [1]],
    [2, [1,1]],
    [3, [1,1,1]],
    [4, [1,1,1,1]],
    [5, [5]],
    [6, [5,1]],
    [7, [5,1,1]],
    [8, [5,1,1,1]],
    [9, [5,1,1,1,1]],
    [10, [10]],
    [11, [10,1]],
    [12, [10,1,1]],
    [15, [10,5]],
    [16, [10,5,1]],
    [20, [10,10]],
    [21, [10,10,1]],
    [24, [10,10,1,1,1,1]],
    [25, [25]],
    [26, [25,1]],
    [99, [25,25,25,10,10,1,1,1,1]]
  ].each do |change,coins|
    it "if I pass in #{change} then it should return #{coins}" do
      subject.changer(change).should == coins
    end
  end
end
