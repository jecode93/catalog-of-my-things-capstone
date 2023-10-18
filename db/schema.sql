CREATE TABLE
    books(
        id SERIAL primary key,
				publish_date DATE,
        publisher VARCHAR(50),
        cover_state VARCHAR(50),
        Item_id INTEGER REFERENCES item(id),
    )

CREATE TABLE
    labels(
        id SERIAL primary key,
				title varchar(50),
        color varchar(50)
    )

CREATE INDEX books_id ON books(id);
CREATE INDEX item_label_id ON item(id);

-- Create Music Albums table
CREATE TABLE IF NOT EXISTS music_albums (
  id INT GENERATED ALWAYS AS IDENTITY
  on_spotify BOOLEAN NOT NULL,
  genre VARCHAR(100) REFERENCES genres(name),
  author VARCHAR(100) REFERENCES authors(first_name),
  label VARCHAR(100) REFERENCES labels(title),
  publish_date DATE,
  archived BOOLEAN,
  PRIMARY KEY(id)
);

-- Create Genres table
CREATE TABLE IF NOT EXISTS genres (
  id INT GENERATED ALWAYS AS IDENTITY
  name VARCHAR(100),
  items INT REFERENCES (books, music_albums, games),
  PRIMARY KEY(id, items)
);

CREATE INDEX music_albums_id ON music_albums(id);
CREATE INDEX genre_id ON genre(id);