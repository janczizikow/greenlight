package data

import "time"

type Movie struct {
	// Unique integer ID for the movie
	ID int64 `json:"id"`
	// Timestamp for when the move is added to our database
	CreatedAt time.Time `json:"-"`
	// Movie title
	Title string `json:"title"`
	// Movie release year
	Year int32 `json:"year,omitempty"`
	// Movie runtime (in minutes)
	Runtime int32 `json:"runtime,omitempty,string"`
	// Slice of genres for the move (romance, comedy, etc.)
	Genres []string `json:"genres,omitempty"`
	// The version number starts at 1 and will be
	// incremented each time the movie information is updated
	Version int32 `json:"version"`
}
