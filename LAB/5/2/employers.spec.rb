# frozen_string_literal: true

require_relative 'functions'
RSpec.describe Employers do
  describe '#self_find_2_max' do
    context 'length is 2' do
      let!(:names) { ['Ягмуров', 'Полубояров'] }
      let!(:salaries) { [1000, 1600] }
      it 'result is array' do
        expect(described_class.find_2_max(names, salaries)).to eq(["Полубояров", "Ягмуров"])
      end
    end
  end
end
