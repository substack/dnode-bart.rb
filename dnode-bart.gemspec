Gem::Specification.new do |s|
    s.name = 'dnode-bart'
    s.version = '0.0.0'
    s.summary = 'BART data as a dnode service'
    s.files = [ 'server.rb' ]
    
    s.authors = ['James Halliday']
    s.date = '2011-11-06'
    s.email = 'mail@substack.net'
    s.extra_rdoc_files = [ 'LICENSE' ]
    s.homepage = 'http://github.com/substack/dnode-bart.rb'
    s.add_dependency 'dnode'
end
