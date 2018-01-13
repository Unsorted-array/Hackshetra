--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.10
-- Dumped by pg_dump version 9.5.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: attendee; Type: TABLE; Schema: public; Owner: pd
--

CREATE TABLE attendee (
    id integer NOT NULL,
    a_emailid character varying(100) NOT NULL,
    fname character varying(50),
    lname character varying(50)
);


ALTER TABLE attendee OWNER TO pd;

--
-- Name: attendee_id_seq; Type: SEQUENCE; Schema: public; Owner: pd
--

CREATE SEQUENCE attendee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE attendee_id_seq OWNER TO pd;

--
-- Name: attendee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pd
--

ALTER SEQUENCE attendee_id_seq OWNED BY attendee.id;


--
-- Name: event; Type: TABLE; Schema: public; Owner: pd
--

CREATE TABLE event (
    event_id integer NOT NULL,
    agenda character varying(50),
    organiser_id character varying(100),
    location character varying(50),
    latitude double precision,
    longitude double precision,
    date character varying(20),
    start_time character varying(20),
    duration integer,
    presenter_id character varying(100),
    no_of_attendees integer,
    description character varying(250)
);


ALTER TABLE event OWNER TO pd;

--
-- Name: event_event_id_seq; Type: SEQUENCE; Schema: public; Owner: pd
--

CREATE SEQUENCE event_event_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE event_event_id_seq OWNER TO pd;

--
-- Name: event_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pd
--

ALTER SEQUENCE event_event_id_seq OWNED BY event.event_id;


--
-- Name: going; Type: TABLE; Schema: public; Owner: pd
--

CREATE TABLE going (
    a_emailid character varying(100) NOT NULL,
    event_id integer NOT NULL
);


ALTER TABLE going OWNER TO pd;

--
-- Name: organiser; Type: TABLE; Schema: public; Owner: pd
--

CREATE TABLE organiser (
    id integer NOT NULL,
    emailid character varying(100) NOT NULL,
    fname character varying(50),
    lname character varying(50),
    password character varying(70)
);


ALTER TABLE organiser OWNER TO pd;

--
-- Name: organiser_id_seq; Type: SEQUENCE; Schema: public; Owner: pd
--

CREATE SEQUENCE organiser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE organiser_id_seq OWNER TO pd;

--
-- Name: organiser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pd
--

ALTER SEQUENCE organiser_id_seq OWNED BY organiser.id;


--
-- Name: presenter; Type: TABLE; Schema: public; Owner: pd
--

CREATE TABLE presenter (
    id integer NOT NULL,
    p_emailid character varying(100) NOT NULL,
    fname character varying(50),
    lname character varying(50),
    phoneno integer,
    role character varying(50)
);


ALTER TABLE presenter OWNER TO pd;

--
-- Name: presenter_id_seq; Type: SEQUENCE; Schema: public; Owner: pd
--

CREATE SEQUENCE presenter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE presenter_id_seq OWNER TO pd;

--
-- Name: presenter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pd
--

ALTER SEQUENCE presenter_id_seq OWNED BY presenter.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pd
--

ALTER TABLE ONLY attendee ALTER COLUMN id SET DEFAULT nextval('attendee_id_seq'::regclass);


--
-- Name: event_id; Type: DEFAULT; Schema: public; Owner: pd
--

ALTER TABLE ONLY event ALTER COLUMN event_id SET DEFAULT nextval('event_event_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pd
--

ALTER TABLE ONLY organiser ALTER COLUMN id SET DEFAULT nextval('organiser_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pd
--

ALTER TABLE ONLY presenter ALTER COLUMN id SET DEFAULT nextval('presenter_id_seq'::regclass);


--
-- Data for Name: attendee; Type: TABLE DATA; Schema: public; Owner: pd
--

COPY attendee (id, a_emailid, fname, lname) FROM stdin;
\.


--
-- Name: attendee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pd
--

SELECT pg_catalog.setval('attendee_id_seq', 1, false);


--
-- Data for Name: event; Type: TABLE DATA; Schema: public; Owner: pd
--

COPY event (event_id, agenda, organiser_id, location, latitude, longitude, date, start_time, duration, presenter_id, no_of_attendees, description) FROM stdin;
\.


--
-- Name: event_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pd
--

SELECT pg_catalog.setval('event_event_id_seq', 1, false);


--
-- Data for Name: going; Type: TABLE DATA; Schema: public; Owner: pd
--

COPY going (a_emailid, event_id) FROM stdin;
\.


--
-- Data for Name: organiser; Type: TABLE DATA; Schema: public; Owner: pd
--

COPY organiser (id, emailid, fname, lname, password) FROM stdin;
\.


--
-- Name: organiser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pd
--

SELECT pg_catalog.setval('organiser_id_seq', 1, false);


--
-- Data for Name: presenter; Type: TABLE DATA; Schema: public; Owner: pd
--

COPY presenter (id, p_emailid, fname, lname, phoneno, role) FROM stdin;
\.


--
-- Name: presenter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pd
--

SELECT pg_catalog.setval('presenter_id_seq', 1, false);


--
-- Name: attendee_pkey; Type: CONSTRAINT; Schema: public; Owner: pd
--

ALTER TABLE ONLY attendee
    ADD CONSTRAINT attendee_pkey PRIMARY KEY (a_emailid);


--
-- Name: event_pkey; Type: CONSTRAINT; Schema: public; Owner: pd
--

ALTER TABLE ONLY event
    ADD CONSTRAINT event_pkey PRIMARY KEY (event_id);


--
-- Name: going_pkey; Type: CONSTRAINT; Schema: public; Owner: pd
--

ALTER TABLE ONLY going
    ADD CONSTRAINT going_pkey PRIMARY KEY (a_emailid, event_id);


--
-- Name: organiser_pkey; Type: CONSTRAINT; Schema: public; Owner: pd
--

ALTER TABLE ONLY organiser
    ADD CONSTRAINT organiser_pkey PRIMARY KEY (emailid);


--
-- Name: presenter_pkey; Type: CONSTRAINT; Schema: public; Owner: pd
--

ALTER TABLE ONLY presenter
    ADD CONSTRAINT presenter_pkey PRIMARY KEY (p_emailid);


--
-- Name: event_organiser_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pd
--

ALTER TABLE ONLY event
    ADD CONSTRAINT event_organiser_id_fkey FOREIGN KEY (organiser_id) REFERENCES organiser(emailid);


--
-- Name: event_presenter_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pd
--

ALTER TABLE ONLY event
    ADD CONSTRAINT event_presenter_id_fkey FOREIGN KEY (presenter_id) REFERENCES presenter(p_emailid);


--
-- Name: going_a_emailid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pd
--

ALTER TABLE ONLY going
    ADD CONSTRAINT going_a_emailid_fkey FOREIGN KEY (a_emailid) REFERENCES attendee(a_emailid);


--
-- Name: going_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pd
--

ALTER TABLE ONLY going
    ADD CONSTRAINT going_event_id_fkey FOREIGN KEY (event_id) REFERENCES event(event_id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

