require 'soap/wsdlDriver'

class SoapRequest
  attr_reader :wsdlURI
  def serviceObject
    @soapObject
  end
  @@soapService = Hash.new
  def initialize(uri)
    @wsdlURI = uri
  end
  
  def doOperation(name, map)
    if @soapObject.nil?
      @@soapService[name] = SOAP::WSDLDriverFactory.new(@wsdlURI).create_rpc_driver if @@soapService[name].nil?
      @soapObject = @@soapService[name]
      @soapObject.wiredump_file_base="arr"
    end
    
    response = @soapObject.send(name, map)
    @soapObject.reset_stream
    response
  end
end