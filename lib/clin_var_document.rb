require 'nokogiri'

class ClinVarDocument < Nokogiri::XML::SAX::Document
  DEBUG_PRINT = Hash.new(true)


  def xmldecl(version, encoding, standalone)
     p [:xmldecl, version, encoding, standalone] if DEBUG_PRINT[:xmldecl]
   end
   def start_document
     p [:start_document]
     @text_stack = []
   end
   def end_document
     p [:end_document]
   end
   def start_element_namespace(name, attrs = [], prefix = nil, uri = nil, ns = [])
     p [:start_element_namespace, name, attrs, prefix, uri, ns] if DEBUG_PRINT[:start_element_namespace]
     @text_stack.push ""
   end
   def end_element_namespace(name, prefix = nil, uri = nil)
     p [:end_element_namespace, name, prefix, uri] if DEBUG_PRINT[:end_element_namespace]
     texts = @text_stack.pop
     p [:end_element_namespace_texts, name, texts] if DEBUG_PRINT[:end_element_namespace_texts]
   end
   def characters(string)
     p [:characters, string] if DEBUG_PRINT[:characters]
     @text_stack.each do |text|
       text << string
     end
   end
   def comment(string)
     p [:comment, string]
   end
   def warning(string)
     p [:warning, string]
   end
   def error(string)
     p [:error, string]
   end
   def cdata_block(string)
     p [:cdata_block, string]
     @text_stack.each do |text|
       text << string
     end
   end
end
