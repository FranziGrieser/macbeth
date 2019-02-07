require 'nokogiri'
require 'open-uri'

class MacbethPlay
  attr_reader :doc

  IGNORE_SPEAKERS = "ALL"

  def initialize
    @doc = Nokogiri::XML(open("http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml"))
  end

  def resolve
    character_lines = Hash.new(0)
    speakers = doc.xpath("//SPEAKER")
    speakers.map do |speaker|
      unless IGNORE_SPEAKERS.include? speaker.text
        character_lines[speaker.text] += speaker.xpath("..//LINE").count
      end
    end  
    printer = character_lines.sort {|value, key| -(value[1] <=> key[1])}
    printer.each do |key, value|
     puts "#{value} #{key.capitalize}"
    end
  end
end

analyze = MacbethPlay.new
result = analyze.resolve
  
