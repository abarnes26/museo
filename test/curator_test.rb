require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/curator'

class CuratorTest < Minitest::Test

  def test_it_instantiates
    curator = Curator.new

    assert_instance_of Curator, curator
  end

  def test_it_has_attributes
    curator = Curator.new

    assert_equal [], curator.artists
    assert_equal [], curator.museums
    assert_equal [], curator.photographs
  end

  def test_it_can_add_museums
    curator = Curator.new
    curator.add_museum({name: "MoMA"})

    assert_instance_of Museum, curator.museums.first
    assert_equal 1, curator.museums.count
  end

  def test_it_can_take_artists
    curator = Curator.new
    curator.add_artist({name: "Ansel Adams",
                        born: 1902,
                        died: 1984,
                        country: "United States"})

    assert_instance_of Artist, curator.artists.first
    assert_equal 1, curator.artists.count
  end

  def test_it_can_take_photographs
    curator = Curator.new
    curator.add_photograph({name: "Moonrise, Hernandez",
                            artist_id: 1,
                            museum_id: 1,
                            year: 1941})

    assert_instance_of Photograph, curator.photographs.first
    assert_equal 1, curator.photographs.count
  end

  def test_it_can_find_museums
    curator = Curator.new
    curator.add_museum({name: "Museo de Arte Moderno"})
    museum = curator.find_museum(0)

    assert_equal "Museo de Arte Moderno", museum.name
  end

  def test_it_can_find_artists
    curator = Curator.new
    curator.add_artist({name: "Ansel Adams",
                        born: 1902,
                        died: 1984,
                        country: "United States"})
    artist = curator.find_artist(0)

    assert_equal "Ansel Adams", artist.name
  end
  
end
