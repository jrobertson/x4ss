Gem::Specification.new do |s|
  s.name = 'x4ss'
  s.version = '0.1.1'
  s.summary = 'A wrapper for xfce4-screenshooter and xclip to save screenshots.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/x4ss.rb']
  s.signing_key = '../privatekeys/x4ss.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/x4ss'
end
