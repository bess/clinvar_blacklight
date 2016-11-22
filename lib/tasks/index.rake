$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..'))
require 'clin_var_parser'
require 'clin_var_document'

desc 'Index ClinVar data from XML file into solr'
task :index do
  clinvar_sample_data = File.join(File.dirname(__FILE__), '..', '..','spec','fixtures', 'clinvar_sample.xml')
  # clinvar_sample_data = File.join(File.dirname(__FILE__), '..', '..','spec','fixtures', 'fake.xml')

  cvp = ClinVarParser.new(clinvar_sample_data)
  cvp.parse
end
