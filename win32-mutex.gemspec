require 'rubygems'

Gem::Specification.new do |spec|
  spec.name      = 'win32-mutex'
  spec.version   = '0.3.2'
  spec.author    = 'Daniel J. Berger'
  spec.license   = 'Artistic 2.0'
  spec.email     = 'djberg96@gmail.com'
  spec.homepage  = 'http://www.rubyforge.org/projects/win32utils'
  spec.summary   = 'Interface to MS Windows Mutex objects.'
  spec.test_file = 'test/test_win32_mutex.rb'
  spec.files     = Dir['**/*'].reject{ |f| f.include?('git') }

  spec.rubyforge_project = 'win32utils'
  spec.extra_rdoc_files  = ['README', 'CHANGES', 'MANIFEST']

  spec.add_dependency('win32-ipc', '>= 0.5.0')
   
  spec.add_development_dependency('test-unit', '>= 2.0.3')
  spec.add_development_dependency('win32-process', '>= 0.6.1')
  spec.add_development_dependency('win32-mmap', '>= 0.2.2')

  spec.description = <<-EOF
    The win32-mutex library provides an interface for creating mutex objects
    on MS Windows. A mutex object is a synchronization object whose state
    is set to signaled when it is not owned by any thread, and non-signaled
    when it is owned.
  EOF
end
