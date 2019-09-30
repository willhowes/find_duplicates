require 'find_duplicates'
describe '#find_duplicates' do
  it 'returns an empty array for no duplicates' do
    expect([1].find_duplicates).to eq([])
  end
end
