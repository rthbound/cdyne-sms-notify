module SmsNotify #:nodoc:
  module Version #:nodoc:
    MAJOR = 1
    MINOR = 0
    TINY  = 4

    STRING = [MAJOR, MINOR, TINY].join('.')

    def self.to_s
      STRING
    end
  end
end
