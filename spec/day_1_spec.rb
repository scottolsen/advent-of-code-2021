require_relative '../day_1'
RSpec.describe Day_1 do
  describe '.part_1' do
    it 'returns 7 for the example data' do
      actual = described_class.part_1('day_1_example.txt')

      expect(actual).to eq(7)
    end
  end

  describe '.part_2' do
    it 'returns 5 for the example data' do
      actual = described_class.part_2('day_1_example.txt')

      expect(actual).to eq(5)
    end
  end
end
