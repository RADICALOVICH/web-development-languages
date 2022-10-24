# frozen_string_literal: true

require 'faker'
require_relative 'functions'
RSpec.describe ChangePositionsOfWords do
  describe '#self_change.words' do
    context '3 words line' do
      let!(:first_word) { Faker::Lorem.word }
      let!(:second_word) { Faker::Lorem.word }
      let!(:third_word) { Faker::Lorem.word }
      let!(:sentence) { "#{first_word} #{second_word} #{third_word}" }
      let!(:result_sentence) { "#{second_word} #{second_word} #{third_word}" }
      it 'then the result is' do
        expect(described_class.change_words(sentence)).to eq(result_sentence)
      end
    end
  end
end
