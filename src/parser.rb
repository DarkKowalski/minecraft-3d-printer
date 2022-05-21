# frozen_string_literal: true

class Parser
  def initialize(filename)
    @filename = filename
  end

  def parse
    triangles = []
    File.open(@filename, 'rb') do |f|
      f.read(80) # Skip header
      size = f.read(4).unpack1('L')
      size.times do
        normal = f.read(12) # skip
        triangles << Triangle.new(parse_vec3(f), parse_vec3(f), parse_vec3(f))
        attributes = f.read(2) # skip
      end
    end
    triangles
  end

  def parse_vec3(f)
    x, y, z = f.read(12).unpack('FFF')
    Vector[x, y, z]
  end
end
