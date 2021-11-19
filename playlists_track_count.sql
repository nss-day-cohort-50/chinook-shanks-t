select pl.name as Playlist_name, count(plt.playlistId) as number_of_tracks_by_playlist
from PlaylistTrack plt
    join Playlist pl
    on pl.PlayListId = plt.PlayListId
group by pl.name
order by number_of_tracks_by_playlist desc