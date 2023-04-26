require 'spec_helper'
require_relative '../substrings'

RSpec.describe 'Substrings Project' do

    describe 'one word' do
        it 'work with one word' do
            dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
            result = {"below"=>1, "low"=>1}
            word = "below"
            expect(substrings(word, dictionary)).to eq result
          end
    end

   
    describe 'several words' do
        it 'work with several words' do
            dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
            result = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
            words = "Howdy partner, sit down! How's it going?"
            expect(substrings(words, dictionary)).to eq result
          end
    end 
end