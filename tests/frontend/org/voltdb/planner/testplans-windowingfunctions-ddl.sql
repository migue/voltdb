DROP TABLE AAA           IF EXISTS;
DROP TABLE BBB           IF EXISTS;
DROP TABLE AAA_PA        IF EXISTS;
DROP TABLE AAA_PB        IF EXISTS;
DROP TABLE AAA_PC        IF EXISTS;
DROP TABLE AAA_STRING    IF EXISTS;
DROP TABLE AAA_STRING_PA IF EXISTS;

CREATE TABLE AAA (
    A INTEGER,
    B INTEGER,
    C INTEGER,
);

CREATE TABLE BBB (
    A INTEGER,
    B INTEGER,
    C INTEGER,
);

CREATE TABLE AAA_PA (
    A INTEGER NOT NULL,
    B INTEGER NOT NULL,
    C INTEGER NOT NULL,
);
PARTITION TABLE AAA_PA ON COLUMN A;

CREATE TABLE AAA_STRING_PA (
    A VARCHAR NOT NULL,
    B INTEGER NOT NULL,
    C INTEGER NOT NULL,
);
PARTITION TABLE AAA_STRING_PA ON COLUMN A;

CREATE TABLE AAA_TIMESTAMP (
    A TIMESTAMP NOT NULL,
    B INTEGER   NOT NULL,
    C INTEGER   NOT NULL,
);
