require 'nokogiri'
#doc   = Nokogiri::XML(File.read('Russian_Synodal.xml'))
#xslt  = Nokogiri::XSLT(File.read('xml2xmm.xsl'))
#File.open('Russian_Synodal.xmm', 'w') { |file| file.write(xslt.transform(doc)) }
doc   = Nokogiri::XML(File.read('RST.xml'))
xslt  = Nokogiri::XSLT(File.read('xmltoxmm.xsl'))
File.open('RST.xmm', 'w') { |file| file.write(xslt.transform(doc)) }