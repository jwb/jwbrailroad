require 'soap_request'
class Enrollment < ActiveRecord::Base
  @@soapService = SoapRequest.new('http://ws.plastyc.demo18.dataart.com/Upside.asmx?WSDL')
  
  def before_create
  soapMapping = {'request' => {'PromotionID' => 70, 
    'CardholderInfo' => {
      'CPID' => 0,
      'FirstName' => first_name,
      'LastName' => last_name,
      'Birthdate' => birthdate,
      'Gender' => gender,
      'Zip' => zip,
      'State' => state,
      'City' => city,
      'Address' => address,
      'Phone' => phone,
      'EMail' => email}, 
    'CardholderSSN' => social_security, 
    'CardSubprogramID' => 510251, 
    'CardGraphicsID' => card_option
    }
    }
    result = @@soapService.doOperation :CardholderEnrollment4, soapMapping
    result = result['CardholderEnrollment4Result']
    self[:response_code] = result['ResponseCode']
    self[:response_description] = result['ResponseDescription']
    self[:cardholder] = result['CardholderID']
    self[:dda_routing_number] = result['DDARoutingNumber']
    self[:dda_account_number] = result['DDAAccountNumber']
  end
end
