--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2023-02-12 20:51:25

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3349 (class 1262 OID 16464)
-- Name: movies; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE movies WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Ukrainian_Ukraine.1251';


ALTER DATABASE movies OWNER TO postgres;

\connect movies

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 219 (class 1259 OID 16495)
-- Name: actors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actors (
    actor_id integer NOT NULL,
    actor_l_name character varying(50),
    actor_f_name character varying(50),
    birthday date,
    film_id bigint
);


ALTER TABLE public.actors OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16494)
-- Name: actors_actor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.actors_actor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actors_actor_id_seq OWNER TO postgres;

--
-- TOC entry 3350 (class 0 OID 0)
-- Dependencies: 218
-- Name: actors_actor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.actors_actor_id_seq OWNED BY public.actors.actor_id;


--
-- TOC entry 215 (class 1259 OID 16483)
-- Name: directors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.directors (
    dir_id integer NOT NULL,
    dir_l_name character varying(50),
    dir_f_name character varying(50),
    birthday date,
    films smallint,
    film_id bigint
);


ALTER TABLE public.directors OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16482)
-- Name: directors_dir_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.directors_dir_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directors_dir_id_seq OWNER TO postgres;

--
-- TOC entry 3351 (class 0 OID 0)
-- Dependencies: 214
-- Name: directors_dir_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.directors_dir_id_seq OWNED BY public.directors.dir_id;


--
-- TOC entry 217 (class 1259 OID 16488)
-- Name: films; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.films (
    film_id integer NOT NULL,
    name_film character varying(255),
    imdb numeric,
    release integer,
    dirfname character varying(50),
    dirlname character varying(50),
    dir_id bigint,
    ac_id bigint
);


ALTER TABLE public.films OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16487)
-- Name: films_film_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.films_film_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.films_film_id_seq OWNER TO postgres;

--
-- TOC entry 3352 (class 0 OID 0)
-- Dependencies: 216
-- Name: films_film_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.films_film_id_seq OWNED BY public.films.film_id;


--
-- TOC entry 3185 (class 2604 OID 16498)
-- Name: actors actor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors ALTER COLUMN actor_id SET DEFAULT nextval('public.actors_actor_id_seq'::regclass);


--
-- TOC entry 3183 (class 2604 OID 16486)
-- Name: directors dir_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.directors ALTER COLUMN dir_id SET DEFAULT nextval('public.directors_dir_id_seq'::regclass);


--
-- TOC entry 3184 (class 2604 OID 16491)
-- Name: films film_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films ALTER COLUMN film_id SET DEFAULT nextval('public.films_film_id_seq'::regclass);


--
-- TOC entry 3343 (class 0 OID 16495)
-- Dependencies: 219
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.actors (actor_id, actor_l_name, actor_f_name, birthday, film_id) VALUES (1, 'Pitt', 'Brad', '1963-12-18', 1);
INSERT INTO public.actors (actor_id, actor_l_name, actor_f_name, birthday, film_id) VALUES (2, 'DiCaprio', 'Leonardo', '1974-11-11', 2);
INSERT INTO public.actors (actor_id, actor_l_name, actor_f_name, birthday, film_id) VALUES (3, 'Willis', 'Bruce', '1955-02-19', 3);
INSERT INTO public.actors (actor_id, actor_l_name, actor_f_name, birthday, film_id) VALUES (4, 'Cruise', 'Tom', '1963-07-03', 4);
INSERT INTO public.actors (actor_id, actor_l_name, actor_f_name, birthday, film_id) VALUES (6, 'Hernandez', 'Jay', '1978-02-20', 5);
INSERT INTO public.actors (actor_id, actor_l_name, actor_f_name, birthday, film_id) VALUES (5, 'Booth', 'Lindy', '1979-04-02', 7);
INSERT INTO public.actors (actor_id, actor_l_name, actor_f_name, birthday, film_id) VALUES (7, 'Jackson', 'Samuel L.', '1948-12-21', 6);
INSERT INTO public.actors (actor_id, actor_l_name, actor_f_name, birthday, film_id) VALUES (8, 'Highmore', 'Freddie', '1992-02-14', 9);
INSERT INTO public.actors (actor_id, actor_l_name, actor_f_name, birthday, film_id) VALUES (9, 'Teller', 'Miles', '1987-02-20', 8);


--
-- TOC entry 3339 (class 0 OID 16483)
-- Dependencies: 215
-- Data for Name: directors; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.directors (dir_id, dir_l_name, dir_f_name, birthday, films, film_id) VALUES (1, 'Tarantin', 'Quentin', '1963-03-27', 22, 1);
INSERT INTO public.directors (dir_id, dir_l_name, dir_f_name, birthday, films, film_id) VALUES (2, 'Besson', 'Luc', '1959-03-18', 33, 3);
INSERT INTO public.directors (dir_id, dir_l_name, dir_f_name, birthday, films, film_id) VALUES (3, 'Abrams', 'J.J.', '1966-06-27', 19, 4);
INSERT INTO public.directors (dir_id, dir_l_name, dir_f_name, birthday, films, film_id) VALUES (4, 'Roth', 'Eli', '1972-04-18', 18, 5);
INSERT INTO public.directors (dir_id, dir_l_name, dir_f_name, birthday, films, film_id) VALUES (5, 'Schmidt', 'Rob', '1965-09-25', 16, 7);
INSERT INTO public.directors (dir_id, dir_l_name, dir_f_name, birthday, films, film_id) VALUES (6, 'Kosinski', 'Joseph', '1974-05-03', 11, 8);


--
-- TOC entry 3341 (class 0 OID 16488)
-- Dependencies: 217
-- Data for Name: films; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.films (film_id, name_film, imdb, release, dirfname, dirlname, dir_id, ac_id) VALUES (5, 'Hostel', 5.9, 2005, 'Eli', 'Roth', 4, NULL);
INSERT INTO public.films (film_id, name_film, imdb, release, dirfname, dirlname, dir_id, ac_id) VALUES (1, 'Inglourious Basterds', 8.3, 2009, 'Quentin', 'Tarantino', 1, 1);
INSERT INTO public.films (film_id, name_film, imdb, release, dirfname, dirlname, dir_id, ac_id) VALUES (2, 'Once Upon a Time in Hollywood', 7.6, 2019, 'Quentin', 'Tarantino', 1, 2);
INSERT INTO public.films (film_id, name_film, imdb, release, dirfname, dirlname, dir_id, ac_id) VALUES (3, 'The Fifth Element', 7.6, 1997, 'Luc', 'Besson', 2, 3);
INSERT INTO public.films (film_id, name_film, imdb, release, dirfname, dirlname, dir_id, ac_id) VALUES (4, 'Mission: Impossible 3', 6.9, 2006, 'J.J.', 'Abrams', 3, 4);
INSERT INTO public.films (film_id, name_film, imdb, release, dirfname, dirlname, dir_id, ac_id) VALUES (6, 'Pulp Fiction', 8.9, 1994, 'Quentin', 'Tarantino', 1, NULL);
INSERT INTO public.films (film_id, name_film, imdb, release, dirfname, dirlname, dir_id, ac_id) VALUES (7, 'Wrong Turn', 6.1, 2003, 'Rob', 'Schmidt', 5, NULL);
INSERT INTO public.films (film_id, name_film, imdb, release, dirfname, dirlname, dir_id, ac_id) VALUES (8, 'Top Gun: Maverick', 8.3, 2022, 'Joseph', 'Kosinski', 6, NULL);
INSERT INTO public.films (film_id, name_film, imdb, release, dirfname, dirlname, dir_id, ac_id) VALUES (9, 'Arthur et les Minimoys', 6.0, 2006, 'Luc', 'Besson', 2, NULL);


--
-- TOC entry 3353 (class 0 OID 0)
-- Dependencies: 218
-- Name: actors_actor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.actors_actor_id_seq', 9, true);


--
-- TOC entry 3354 (class 0 OID 0)
-- Dependencies: 214
-- Name: directors_dir_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.directors_dir_id_seq', 6, true);


--
-- TOC entry 3355 (class 0 OID 0)
-- Dependencies: 216
-- Name: films_film_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.films_film_id_seq', 9, true);


--
-- TOC entry 3191 (class 2606 OID 16529)
-- Name: actors actors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_pkey PRIMARY KEY (actor_id);


--
-- TOC entry 3187 (class 2606 OID 16527)
-- Name: directors directors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.directors
    ADD CONSTRAINT directors_pkey PRIMARY KEY (dir_id);


--
-- TOC entry 3189 (class 2606 OID 16525)
-- Name: films films_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films
    ADD CONSTRAINT films_pkey PRIMARY KEY (film_id);


--
-- TOC entry 3195 (class 2606 OID 16540)
-- Name: actors actors_film_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_film_id_fkey FOREIGN KEY (film_id) REFERENCES public.films(film_id);


--
-- TOC entry 3192 (class 2606 OID 16545)
-- Name: directors directors_film_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.directors
    ADD CONSTRAINT directors_film_id_fkey FOREIGN KEY (film_id) REFERENCES public.films(film_id);


--
-- TOC entry 3193 (class 2606 OID 16535)
-- Name: films films_ac_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films
    ADD CONSTRAINT films_ac_id_fkey FOREIGN KEY (ac_id) REFERENCES public.actors(actor_id);


--
-- TOC entry 3194 (class 2606 OID 16530)
-- Name: films films_dir_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films
    ADD CONSTRAINT films_dir_id_fkey FOREIGN KEY (dir_id) REFERENCES public.directors(dir_id);


-- Completed on 2023-02-12 20:51:26

--
-- PostgreSQL database dump complete
--

