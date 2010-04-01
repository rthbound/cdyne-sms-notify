require 'ostruct'
module SmsNotify

  # A lazy class that uses OpenStruct
  # to allow passing in an arbitrary hash
  # of attributes and get a usable object
  # out of it.
  #
  class MessageStatus < OpenStruct
  end

  # Provides the methods that implement each of
  # the operations of the CDYNE SmsNotify! API.
  # API Spec PDF - http://www.cdyne.com/downloads/SPECS_SMS-Notify.pdf
  # API Operations - http://ws.cdyne.com/SmsWS/SMS.asmx
  # API WSDL - http://ws.cdyne.com/SmsWS/SMS.asmx?WSDL
  class Api
    attr_accessor :license_key

    def self.endpoint_host #:nodoc:
      'ws.cdyne.com/SmsWs/SMS.asmx'
    end
    
    def initialize(license_key)
      @license_key = license_key
    end

    # Implements <tt>SendSMSBasic[http://ws.cdyne.com/SmsWS/SMS.asmx?op=SendSMSBasic]</tt>.
    #
    # Example:
    #   @api.send_message('1234567890', 'Hello world')
    #
    # Returns a <tt>MessageStatus</tt> if successfull and an error code if false.
    def send_message(phone_number, message)
      command = Command.new('SendSMSBasic', license_key)
      Response.parse(command.execute({:PhoneNumber => phone_number, :Message => message}))
    end

    def message_status(text_id)
      command = Command.new('GetSMSStatus', license_key)
      Response.parse(command.execute({:TextID => text_id}))
    end
    
    Dir.glob(File.join(File.dirname(__FILE__), '/api/*')).each do |lib|
      require lib
    end
  end
end
