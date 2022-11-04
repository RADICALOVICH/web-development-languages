# frozen_string_literal: true

require_relative 'definitive_integral_using_formula'
RSpec.describe DefinitiveIntegralUsingFormula do
  include DefinitiveIntegralUsingFormula
  describe 'intprg' do
    context 'when function is e**x/(x+1)' do
      let!(:first_limit) { 0 }
      let!(:second_limit) { 1 }
      let!(:number_of_slices) { 20_000 }
      let!(:real_result) { 1.12538608308327 }
      it 'result is' do
        expect(described_class.intprg(first_limit, second_limit, number_of_slices) { |x| Math.exp(x) / (x + 1) })
          .to be_within(10**-4).of(real_result)
      end
    end
    context 'when function is x(x-1)' do
      let!(:first_limit) { 0 }
      let!(:second_limit) { 2 }
      let!(:number_of_slices) { 10_000 }
      let!(:real_result) { 0.6666666666666667 }
      it 'result is' do
        expect(described_class.intprg(first_limit, second_limit, number_of_slices) { |x| x * (x - 1) })
          .to be_within(10**-4).of(real_result)
      end
    end
  end
end
