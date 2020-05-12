Gem::Specification.new do |s|
  s.name = 'x4ss'
  s.version = '0.2.0'
  s.summary = 'A wrapper for xfce4-screenshooter and xclip to save screenshots.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/x4ss.rb']
  s.add_runtime_dependency('c32', '~> 0.2', '>=0.2.0') 
  s.signing_key = '../privatekeys/x4ss.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/x4ss'
end
