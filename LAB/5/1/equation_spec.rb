# frozen_string_literal: true

require_relative 'calc_a'
RSpec.describe Equation do
  include Equation
  describe '#calc_a' do
    context 'when parameters are equal' do
      let!(:first_parameter) { rand(100) }
      let!(:second_parameter) { first_parameter }
      it 'result is 1' do
        expect(calc_a(first_parameter,second_parameter)).to eq(1)
      end
    end
  end
end
