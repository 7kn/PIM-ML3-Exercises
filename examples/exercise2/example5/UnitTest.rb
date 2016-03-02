# encoding: utf-8
#require "test_utils"
#require "spec_helper"
require 'logstash/devutils/rspec/spec_helper'
# Single conf file
#file = "example4/index.conf"
#@@configuration = String.new
#@@configuration << File.read(file)

files = Dir['example4/*.conf']
@@configuration = String.new
files.sort.each { |file|
  @@configuration << File.read(file)
}

describe "Test event" do 
  #extend LogStash::RSpec

  config(@@configuration)

  message = %(127.0.0.1 - - [11/Dec/2013:00:01:45 -0800] \"GET /xampp/status.php HTTP/1.1\" 200 3891 \"http://cadenza/xampp/navi.php\" \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:25.0) Gecko/20100101 Firefox/25.0\")

#  sample("message" => message, "type" => "test") do
  sample("message" => message, "host" => "juggernaut.monitor.now" ) do 
    insist { subject["message"] } == "127.0.0.1_-_-_[11/Dec/2013:00:01:45_-0800]_\"GET_/xampp/status.php_HTTP/1.1\"_200_3891_\"http://cadenza/xampp/navi.php\"_\"Mozilla/5.0_(Macintosh;_Intel_Mac_OS_X_10.9;_rv:25.0)_Gecko/20100101_Firefox/25.0\"" 
    insist { subject["clientip"] } == "127.0.0.1"
    insist { subject["ident"] } == "-"
    insist { subject["auth"] } == "-"
    insist { subject["timestamp"] } == "11/Dec/2013:00:01:45 -0800"
    insist { subject["verb"] } == "GET"
    insist { subject["request"] } == "/xampp/status.php"
    insist { subject["httpversion"] } == "1.1"
    insist { subject["response"] } == "200"
    insist { subject["bytes"] } == "3891"
    insist { subject["referrer"] } == "\"http://cadenza/xampp/navi.php\""
    insist { subject["agent"] } == "\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:25.0) Gecko/20100101 Firefox/25.0\""
  end 

end
