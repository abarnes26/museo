#photograph = Photograph.new({name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})

class Photograph

  attr_reader :name, :artist_id, :museum_id, :year, :id

  def initialize(photo_info)
    @name = photo_info[:name]
    @artist_id = photo_info[:artist_id]
    @museum_id = photo_info[:museum_id]
    @year = photo_info[:year]
    @id = 1
  end
end
