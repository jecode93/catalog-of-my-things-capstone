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

    CREATE TABLE
    game(
        id SERIAL primary key,
				publish_date DATE,
        multiplayer VARCHAR(50),
        last_played_at DATE,
        Item_id INTEGER REFERENCES item(id),
    )
 CREATE TABLE
    author(
        id SERIAL primary key,
				first_name VARCHAR(50),
        last_name VARCHAR(50),
    )
CREATE INDEX books_id ON books(id);
CREATE INDEX item_label_id ON item(id);
CREATE INDEX author_id ON author(id);
CREATE INDEX item_game_id ON item(id);