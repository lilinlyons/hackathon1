CREATE TABLE main (
    id serial PRIMARY KEY,
    item varchar(256) NOT NULL,
    date_of_completion date,
    completed_by varchar(100),
    link text,
    is_completed bool NOT NULL default false 
);

INSERT INTO main (item, date_of_completion, completed_by, link, status)
        VALUES ('', , '', '', '');



