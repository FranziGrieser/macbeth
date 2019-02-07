require 'macbeth_analyzer'

describe MacbethPlay do
  describe "#resolve" do
    it "tests the data type" do
      analyze = MacbethPlay.new
      output = analyze.resolve 
      expect(output).to be_kind_of(Hash)
    end

    it "resolves task" do 
      analyze = MacbethPlay.new
      output = analyze.resolve 

      expect(output["First Witch"]).to eq(62)
      expect(output["Lords"]).to eq(3)
      expect(output["MACBETH"]).to eq(719)    
    end

  end

end


