$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..'))
require 'spec_helper'
require 'clin_var_parser'
require 'clin_var_document'

describe 'ClinVarParser' do
  before(:each) do
    @clinvar_sample_data = File.join(File.dirname(__FILE__), '..', 'fixtures', 'clinvar_sample.xml')
  end
  it "has a clinvar xml file" do
    cvp = ClinVarParser.new(@clinvar_sample_data)
    expect(cvp.clinvar_xml_file).to eql(@clinvar_sample_data)
  end
  it "has a parser" do
    cvp = ClinVarParser.new(@clinvar_sample_data)
    expect(cvp.parser).to be_kind_of(Nokogiri::XML::SAX::Parser)
  end
  it "can parse" do
    cvp = ClinVarParser.new(@clinvar_sample_data)
    expect{cvp.parse}.not_to raise_error
  end
end
