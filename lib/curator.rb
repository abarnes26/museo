
class Curator

  attr_reader :artists,
              :museums,
              :photographs

  def initialize
    @artists     = []
    @museums     = []
    @photographs = []
  end

  def add_museum(info)
    @museums << Museum.new(info)
  end

  def add_artist(info)
    @artists << Artist.new(info)
  end

  def add_photograph(info)
    @photographs << Photograph.new(info)
  end

  def find_museum(position)
    @museums[position]
  end

  def find_artist(position)
    @artists[position]
  end

end
