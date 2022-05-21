# frozen_string_literal: true

require 'rubocop/rake_task'
require 'rake/extensiontask'
require 'rake/testtask'

native_extensions = %w[triangle raster]
native_extensions.each do |ext|
  Rake::ExtensionTask.new(ext) do |e|
    e.ext_dir = "ext/#{ext}"
    e.lib_dir = 'src/native'
  end
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
