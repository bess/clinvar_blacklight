require 'nokogiri'
require 'clin_var_set'

class ClinVarParser

  attr_reader :clinvar_xml_file
  attr_reader :clin_var_set

  def initialize(clinvar_xml_file)
    @clinvar_xml_file = clinvar_xml_file
  end

  def parse
    puts "parsing... "
    reader = Nokogiri::XML::Reader(File.open(@clinvar_xml_file, "r"))
    while reader.read

      # When we encounter a ClinVarSet, make a new ClinVarSet object and populate it
      if reader.name == 'ClinVarSet' && reader.node_type == Nokogiri::XML::Reader::TYPE_ELEMENT
        @clin_var_set = ClinVarSet.new(reader.attribute('ID'))
        # TODO: Then immediately get the current status
      end
      if reader.name == 'Title' && reader.node_type == Nokogiri::XML::Reader::TYPE_ELEMENT
        @clin_var_set.title = reader.inner_xml.to_s
        # @clin_var_set.replaces = reader.read.read.read.value
        # puts reader.inner_xml.inspect # TODO xml decode this, if necessary.
      end
      if reader.name == 'Replaces' && reader.node_type == Nokogiri::XML::Reader::TYPE_ELEMENT
        @clin_var_set.replaces = reader.inner_xml.to_s
      end
    end
  end



end
