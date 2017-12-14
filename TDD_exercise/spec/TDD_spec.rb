require "rspec"
require "TDD"

describe "#my_uniq" do
  a = [2, 8, 1, 2, 5]
  it "removes duplicates from an array" do
    result = my_uniq(a)
    expect(result).to eq([2, 8, 1, 5])
  end
end

describe "#two_sum" do
  arr = [-1, 0, 2, -2, 1]
  it "finds all pairs of positions that sum to zero" do
    result = two_sum(arr)
    expect(result).to eq([[0,4], [2,3]])
  end
end

describe "#my_transpose" do
  arr = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]
  it "Switches the rows and columns in a 2-D array" do
    result = my_transpose(arr)
    expect(result).to eq([[0,3,6],[1,4,7],[2,5,8]])
  end
end

describe "#stock_picker" do
  stock_arr = [5, 12, 2, 8, 20]
  it "calclates best pair of days to buy and sell stock" do
    result = stock_picker(stock_arr)
    expect(result).to eq([2, 4])
  end
end
