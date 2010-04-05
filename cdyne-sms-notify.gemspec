# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{cdyne-sms-notify}
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sean Kibler"]
  s.date = %q{2010-04-05}
  s.email = %q{github@skiblerspot.net}
  s.extra_rdoc_files = [
    "History.txt",
     "License.txt"
  ]
  s.files = [
    ".gitignore",
     "History.txt",
     "License.txt",
     "README.textile",
     "Rakefile",
     "cdyne-sms-notify.gemspec",
     "lib/sms_notify.rb",
     "lib/sms_notify/api.rb",
     "lib/sms_notify/api/command.rb",
     "lib/sms_notify/message_response.rb",
     "lib/sms_notify/message_status.rb",
     "lib/sms_notify/response.rb",
     "lib/sms_notify/version.rb",
     "spec/api_spec.rb",
     "spec/message_response_spec.rb",
     "spec/message_status_spec.rb",
     "spec/response_spec.rb",
     "spec/sms_notify_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://cdyne-sms-notify.github.com}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Ruby interface to the CDYNE SMSNotify! service.}
  s.test_files = [
    "spec/spec_helper.rb",
     "spec/api_spec.rb",
     "spec/message_status_spec.rb",
     "spec/response_spec.rb",
     "spec/message_response_spec.rb",
     "spec/sms_notify_spec.rb",
     "spec/base_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

