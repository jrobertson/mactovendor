#!/usr/bin/env ruby

# file: mactovendor.rb

# desc: Returns the name of a vendor for a give mac address
#       Snapshot (2020-08-22) taken of the file http://standards.ieee.org/develop/regauth/oui/oui.txt


# Code used to download the file
# 
# require 'open_uri_redirections'
# 
# url = "http://standards.ieee.org/develop/regauth/oui/oui.txt"
# r = open(url, :allow_redirections => :all)
# s = r.read


class MacToVendor

  class << self

    def find(mac_address)

      s = File.read File.join(File.dirname(__FILE__), '..', 'data', 'oui.txt')

      mac = mac_address.upcase.split(':').take(3).join('-')

      r = s.lines.find do |line|
        if /\s*(.*?)\s*\(hex\)\t*(.*?)\n/ =~ line  then
          #puts 'checking...' + ($1).inspect
          mac == $1
        end
      end

      r[/\t(\w.*)\r/,1] if r

    end
  end

end


