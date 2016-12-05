--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.6.1



--
-- TOC entry 185 (class 1259 OID 24960)
-- Name: survey; Type: TABLE; Schema: public; Owner: eloporras
--

CREATE TABLE survey (
    id int NOT NULL,
    title character varying(100),
    sections  int[]
);




--
-- TOC entry 3028 (class 0 OID 24960)
-- Dependencies: 185
-- Data for Name: survey; Type: TABLE DATA; Schema: public; Owner: eloporras
--

INSERT INTO survey (id, title, sections) VALUES
(0, 'CDC Test Survey 1','{1,2,3}'),
(1,	'CDC Test 2','{1}'),
(2, 'CDC Test 3','{2}');

ALTER TABLE  survey
    ADD  PRIMARY KEY (id);

--
-- TOC entry 2913 (class 2606 OID 24967)
-- Name: survey survey_pkey; Type: CONSTRAINT; Schema: public; Owner: eloporras
--


-- Completed on 2016-12-03 01:03:47

--
-- PostgreSQL database dump complete
--

