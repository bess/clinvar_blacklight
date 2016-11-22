$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..'))
require 'spec_helper'
require 'clin_var_parser'

describe 'ClinVarParser' do
  before(:each) do
    @clinvar_sample_data = File.join(File.dirname(__FILE__), '..', 'fixtures', 'clinvar_sample.xml')
  end
  it "has a clinvar xml file" do
    cvp = ClinVarParser.new(@clinvar_sample_data)
    expect(cvp.clinvar_xml_file).to eql(@clinvar_sample_data)
  end
end
