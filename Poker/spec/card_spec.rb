require 'rspec'
require 'card'
#suits D,H,S,C
describe "Card" do
  let(:card) {Card.new("D","5")}
  describe "#initialize" do
    it "should create a new card with a value" do
      expect(card.value).to eq("5")
    end
    it "Should create a new card with a suit" do
      expect(card.suit).to eq("D")
    end
  end
end
