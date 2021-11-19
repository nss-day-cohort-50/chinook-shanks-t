select a.title as album_name, g.name as genre, mt.name as media_type
from InvoiceLine i
    join Track t
    on i.trackId = t.trackId
    join MediaType mt 
    on t.mediaTypeId = mt.mediaTypeId
    join Genre g 
    on t.genreId = g.genreId
    join Album a 
    on t.albumId = t.AlbumId
