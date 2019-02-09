require 'macbeth_analyzer'

describe MacbethPlay do
  describe "#resolve" do
    it "tests the data type" do
      character_lines = Hash.new 
      expect(character_lines).to be_kind_of(Hash)
    end

    it "resolves task" do 
      analyze = MacbethPlay.new
      output = analyze.resolve 
      expect(output[0]).to eq(["MACBETH", 719])
      expect(output[1]).to eq(["LADY MACBETH", 265])
      expect(output[2]).to eq(["MALCOLM", 212])
      expect(output[39]).to eq(["Soldiers", 1])
    end

    it "ignores speaker all" do
      IGNORE_SPEAKERS = "ALL"
      analyze = MacbethPlay.new
      output = analyze.resolve 
      expect(output).to_not include(IGNORE_SPEAKERS)
    end

  end
end


