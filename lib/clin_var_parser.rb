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
        @clin_var_set.record_status = reader.read.read.read.value
        @clin_var_set.replaces = reader.read.read.read.value
        @clin_var_set.title = reader.read.read.read.value

        # puts reader.inner_xml.inspect # TODO xml decode this, if necessary.
      end
    end
  end



end
