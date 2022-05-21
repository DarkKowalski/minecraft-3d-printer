# frozen_string_literal: true

require_relative 'test_helper'
require 'digest'
require 'fileutils'

class McfunctionMd5Test < Minitest::Test
  def setup
    @entrypoint = 'src/main.rb'
    @input = 'stl/3DBenchy.stl'
    @output = 'tmp/3dbenchy.mcfunction'
    system "ruby #{@entrypoint} #{@input} #{@output} concrete"
  end

  def teardown
    FileUtils.rm @output
  end

  def test_same_md5_of_3dbenchy_mcfunction
    expected_md5 = 'aa96dff1f858e586a96f93788fbce82a'
    md5 = Digest::MD5.hexdigest(File.read(@output))
    assert_equal(expected_md5, md5)
  end
end
