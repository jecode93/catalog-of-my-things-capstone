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