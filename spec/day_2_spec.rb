require_relative '../day_2'
RSpec.describe Day_2 do
  describe '.part_1' do
    it 'returns 150 for the example data' do
      actual = described_class.part_1('day_2_example.txt')

      expect(actual).to eq(150)
    end
  end

  describe '.part_2' do
    it 'returns 900 for the example data' do
      actual = described_class.part_2('day_2_example.txt')

      expect(actual).to eq(900)
    end
  end
end
