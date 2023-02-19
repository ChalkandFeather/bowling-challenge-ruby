require 'game_repository'


RSpec.describe GameRepository do
  context "bowling commences" do
    it "displays score from one frame to create to initialise running scorecard." do
      score = GameRepository.new
      score.add(8)
      expect(score.score_card).to eq(8)
    end
  end

  it "displays score from 2 frames and no bonus. Results added to scorecard." do
    score = GameRepository.new
    score.add(8)
    score.add(1) 
    score.add(3) 
    score.add(5)
    expect(score.score_card).to eq(17)
  end

context "introduces spare" do
  it " adds  spare bonus. Results added to scorecard." do
    score = GameRepository.new
    score.add(8)
    score.add(2) 
    score.add(3) 
    17.times{score.add(0)}
    expect(score.score_card).to eq(16)
  end
end

  it "displays a zero score when initial frame returns a score of zeros." do
    score = GameRepository.new
    score.add(0)
    expect(score.score_card).to eq(0)
  end
  
end