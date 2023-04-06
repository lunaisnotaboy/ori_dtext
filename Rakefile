# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rake/extensiontask'
require 'rake/testtask'

Rake::ExtensionTask.new 'dtext' do |ext|
  # This goes here to ensure ragel runs *before* the extension is compiled
  task :compile => %w[ext/dtext/dtext.cpp ext/dtext/rb_dtext.cpp]

  ext.lib_dir = 'lib/dtext'
end

CLEAN.include %w[bin/cdtext.exe lib/dtext/dtext.so]
CLOBBER.include %w[ext/dtext/dtext.cpp]

file 'ext/dtext/dtext.cpp' => Dir['ext/dtext/dtext.{cpp.rl,h}', 'Rakefile'] do
  sh 'ragel -G2 ext/dtext/dtext.cpp.rl -o ext/dtext/dtext.cpp'
end

task test: :compile
Rake::TestTask.new(:test) do |t|
  t.test_files = FileList['test/**/test_*.rb']
end

task bench: :compile do
  require_relative 'test/bench_dtext.rb'
end

task default: :test
