require 'nokogiri'

class ClinVarParser

  attr_reader :clinvar_xml_file
  attr_reader :parser

  def initialize(clinvar_xml_file)
    @clinvar_xml_file = clinvar_xml_file
    # @parser = Nokogiri::XML::SAX::Parser.new(ClinVarDocument.new)
  end

  def parse
    puts "parsing... "
    # @parser.parse(File.open(@clinvar_xml_file, "r"))
    reader = Nokogiri::XML::Reader(File.open(@clinvar_xml_file, "r"))
    while reader.read
      if reader.name == 'Title' && reader.node_type == Nokogiri::XML::Reader::TYPE_ELEMENT
        puts reader.inner_xml.inspect # TODO xml decode this, if necessary.
      end
    end
  end



end
