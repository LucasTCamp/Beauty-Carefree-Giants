CREATE OR REPLACE VIEW WORD_REL (word, syn_col, ant_col) AS
SELECT s.word_term, s.syn_word, a.ant_word
FROM WORD_SYNONYMS s, WORD_ANTONYMS a
WHERE a.word_id = s.word_id;

SELECT * FROM WORD_REL;

CREATE OR REPLACE VIEW WORD_ANALYSIS (word, syn_col, ant_col, word_length) AS
SELECT word, syn_col, ant_col, LENGTH(word)
FROM WORD_REL;

SELECT * FROM WORD_ANALYSIS;

CREATE OR REPLACE VIEW WORD_SUMMARY (word, syn_col, ant_col) AS
SELECT word, syn_col, ant_col
FROM WORD_REL;

SELECT * FROM WORD_SUMMARY;

SELECT view_name FROM user_views;

-- QUESTION 1

SELECT * FROM WORD_REL;

-- QUESTION 2 

UPDATE WORD_REL
SET SYN_COL = 'blithe'
WHERE WORD = 'insouciant';

-- QUESITON 3 

CREATE OR REPLACE VIEW WORD_REL (word, syn_col, ant_col) AS
SELECT s.word_term, s.syn_word, a.ant_word
FROM WORD_SYNONYMS s, WORD_ANTONYMS a
WHERE a.word_id = s.word_id
WITH READ ONLY;

UPDATE WORD_REL
SET SYN_COL = 'blithe'
WHERE WORD = 'insouciant';

-- QUESTION 4

SELECT * FROM WORD_ANALYSIS;

-- QUESTION 5

SELECT WORD, WORD_LENGTH
FROM (SELECT WORD, WORD_LENGTH FROM WORD_ANALYSIS ORDER BY WORD_LENGTH DESC)
WHERE ROWNUM <= 2;

-- QUESTION 6

DROP VIEW WORD_REL;

CREATE OR REPLACE VIEW WORD_REL (word, syn_col, ant_col) AS
SELECT s.word_term, s.syn_word, a.ant_word
FROM WORD_SYNONYMS s, WORD_ANTONYMS a
WHERE a.word_id = s.word_id;

-- QUESTION 7

SELECT * FROM WORD_SUMMARY;

-- QUESTION 8

SELECT * FROM HOMONYMS;

CREATE OR REPLACE VIEW WORD_HOMONYMS (homonym, meaning) AS
SELECT h.word_term, h.meaning
FROM HOMONYMS h;

SELECT * FROM WORD_HOMONYMS;