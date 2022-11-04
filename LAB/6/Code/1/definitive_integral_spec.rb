# frozen_string_literal: true

require_relative 'definitive_integral'

RSpec.describe DefinitiveIntegral do
  include DefinitiveIntegral
  describe '#calculate_definitive_integral' do
    context 'when accuracy is 10**-3' do
      let!(:accuracy) { 10**-3 }
      let!(:real_result) { 0.3862943611199 }
      it 'result is correct' do
        expect(DefinitiveIntegral.calculate_definitive_integral(accuracy)).to be_within(accuracy).of(real_result)
      end
    end
    context 'when accuracy is 10**-4' do
      let!(:accuracy) { 10**-4 }
      let!(:real_result) { 0.3862943611199 }
      it 'result is correct' do
        expect(DefinitiveIntegral.calculate_definitive_integral(accuracy)).to be_within(accuracy).of(real_result)
      end
    end
  end
end
