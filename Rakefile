# frozen_string_literal: true

require 'rubocop/rake_task'
require 'rake/extensiontask'
require 'rake/testtask'

Rake::ExtensionTask.new('minecraft_3d_printer') do |ext|
  ext.ext_dir = 'ext'
  ext.lib_dir = 'src'
end

Rake::TestTask.new(:test) do |t|
  t.libs << 'src'
  t.libs << 'test'
  t.test_files = FileList['test/**/*_test.rb']
  t.verbose = true
end

RuboCop::RakeTask.new(:rubocop) do |t|
  t.options = ['--display-cop-names']
end

task default: %w[compile]
