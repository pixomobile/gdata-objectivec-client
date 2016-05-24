Pod::Spec.new do |s|
  s.name     = 'GData'
  s.version  = '1.12.0.20160321'
  s.license  = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }
  s.summary  = "The Google data APIs provide a simple protocol for reading and "\
               "writing data on the web. Many Google services provide a Google data API."
  s.homepage = 'https://github.com/pixomobile/gdata-objectivec-client'
  s.author   = { 'The Google Data APIs team' => 'https://code.google.com/p/gdata-objectivec-client' }
  s.source   = { :git => 'https://github.com/pixomobile/gdata-objectivec-client', :tag => 'v1.12.0.20160321' }
  s.dependency 'gtm-oauth2'
  s.requires_arc = false
  s.prefix_header_contents = '#define GDATA_REQUIRES_ARC 1'
  s.subspec 'Core' do |gdc|
    gdc.source_files   = 'Source/ACL/*.{h,m}', 'Source/BaseClasses/*.{h,m}', 'Source/Elements/*.{h,m}',
                         'Source/Geo/*.{h,m}', 'Source/Introspection/*.{h,m}',
                         'Source/Media/*.{h,m}', 'Source/Networking/*.{h,m}',
                         'Source/XMLSupport/*.{h,m}', 'Source/*.{h,m}','Source/Clients/**/*.{h,m}'
    #gdc.requires_arc = false
    #gdc.compiler_flags = '-Wno-format-extra-args', '-Wno-format-invalid-specifier', '-Wno-incompatible-pointer-types'
    gdc.libraries      = 'xml2'
    gdc.xcconfig       = { 'HEADER_SEARCH_PATHS' => '"$(SDKROOT)/usr/include/libxml2"' }
  end
  
  s.subspec 'XMLNode' do |gdxml|
    gdxml.source_files = 'Source/XMLSupport/*.{h,m}'
    gdxml.libraries    = 'xml2'
    gdxml.xcconfig     = { 'HEADER_SEARCH_PATHS' => '"$(SDKROOT)/usr/include/libxml2"' }
  end

end
