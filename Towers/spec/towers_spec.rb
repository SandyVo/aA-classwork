require 'rspec'
require 'towers'


describe "Tower" do
  let(:tower) { Towers.new }
  describe "#initialize" do
    it "initializes the game with 3 towers" do
      expect(tower.board).to eq([[3, 2, 1], [], []])
    end
  end

  describe "#move" do
    let(:tower) { Towers.new }

    context "Ensure move is valid?" do
      it "Raises an error if a bigger disc is moved over a smaller disc" do

        expect do
          tower.move(0, 1)
          tower.move(0, 1)
        end.to raise_error("Can't put bigger disc on smaller disc!")
      end

      it "Raise an error if moving from an empty tower" do
        expect do
          tower.move(1, 2)
        end.to raise_error("No disc in this tower!")
      end
    end
  end

  describe "#won?" do
    let(:tower) { Towers.new }

    it "Declares winner if all discs have correctly moved to another tower" do
      tower.move(0,1)
      tower.move(0,2)
      tower.move(1,2)
      tower.move(0,1)
      tower.move(2,0)
      tower.move(2,1)
      tower.move(0,1)
      expect(tower.board).to eq([[],[3,2,1],[]])
    end
  end
end
