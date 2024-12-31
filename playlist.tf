resource "spotify_playlist" "Hollywood" {
  name = "Hollywood"
  tracks = ["0lx2cLdOt3piJbcaXIV74f"]
}

data "spotify_search_track" "Sunidhi_chauhan" {
  artist = "Sunidhi Chauhan"
}

/*resource "spotify_playlist" "artist" {
  name = "Sunidhi Chauhan"
  tracks = [data.spotify_search_track.Sunidhi_chauhan.tracks[*].id,
  data.spotify_search_track.Sunidhi_chauhan.tracks[1].id, 
  data.spotify_search_track.Sunidhi_chauhan.tracks[2].id]
}*/


resource "spotify_playlist" "artist" {
  name = "Sunidhi Chauhan"

  tracks = flatten([
    data.spotify_search_track.Sunidhi_chauhan.tracks[*].id
  ])
}

output "tracks_count" {
  value = length(data.spotify_search_track.Sunidhi_chauhan.tracks)
}
