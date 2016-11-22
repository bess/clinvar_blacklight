require 'nokogiri'

class ClinVarParser

  attr_reader :clinvar_xml_file

  def initialize(clinvar_xml_file)
    @clinvar_xml_file = clinvar_xml_file

  end

end
