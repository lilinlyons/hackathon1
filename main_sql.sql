CREATE TABLE main (
    id serial PRIMARY KEY,
    item varchar(100) NOT NULL,
    date_of_completion DATE NOT NULL,
    completed_by varchar(100) NOT NULL,
    link text,
    status text NOT NULL DEFAULT 'pending'
);

INSERT INTO todos (item, date_of_completion, completed_by, link, status)
        VALUES ('', , '', '', '');

