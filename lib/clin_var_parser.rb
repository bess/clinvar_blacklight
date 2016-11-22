require 'nokogiri'

class ClinVarParser

  attr_reader :clinvar_xml_file
  attr_reader :parser

  def initialize(clinvar_xml_file)
    @clinvar_xml_file = clinvar_xml_file
    @parser = Nokogiri::XML::SAX::Parser.new(ClinVarDocument.new)
  end

  def parse
    puts "parsing... "
    @parser.parse(@clinvar_xml_file)
  end

end
