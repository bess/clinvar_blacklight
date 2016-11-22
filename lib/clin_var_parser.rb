require 'nokogiri'

class ClinVarParser

  attr_reader :clinvar_xml_file

  def initialize(clinvar_xml_file)
    @clinvar_xml_file = clinvar_xml_file
  end

  def parse
    puts "parsing... "
    reader = Nokogiri::XML::Reader(File.open(@clinvar_xml_file, "r"))
    while reader.read
      if reader.name == 'Title' && reader.node_type == Nokogiri::XML::Reader::TYPE_ELEMENT
        puts reader.inner_xml.inspect # TODO xml decode this, if necessary.
      end
    end
  end



end
