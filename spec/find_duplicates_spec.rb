require 'find_duplicates'
describe '#find_duplicates' do
  it 'returns an empty array for no duplicates' do
    expect(["a"].find_duplicates).to eq([])
  end

  it 'returns a duplicate where there are no other elements' do
    expect(["a", "a"].find_duplicates).to eq(["a"])
  end

  it 'returns a duplicate item where there are other elements' do
    expect(["alpha", "beta", "beta", "charlie"].find_duplicates).to eq(["beta"])
  end
end
