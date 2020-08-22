Gem::Specification.new do |s|
  s.name = 'mactovendor'
  s.version = '0.1.0'
  s.summary = 'Returns the vendor name for a given MAC address.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/mactovendor.rb', 'data/oui.txt']
  s.signing_key = '../privatekeys/mactovendor.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/mactovendor'
end
