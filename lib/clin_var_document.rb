require 'nokogiri'

class ClinVarDocument < Nokogiri::XML::SAX::Document
  def start_element name, attrs = []
    puts "starting: #{name}"
  end

  def end_element name
    puts "ending: #{name}"
  end
end
