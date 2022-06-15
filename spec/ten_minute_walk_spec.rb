require './lib/ten_minute_walk.rb'

describe ".ten_minute_walk?" do
  it "returns false unless the array is exactly 10 characters long" do
    route_1 = ['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w']
    expect(ten_minute_walk?(route_1)).to eq true
  end

  # Does each letter contain the same number of letters as every other letter in the array?
  it 'returns false unless the array contains the exact same number of each letter' do
    route_2 = ['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w']
    ten_minute_walk?(route_2)
    expect(ten_minute_walk?(route_2)).to eq false
  end
end 