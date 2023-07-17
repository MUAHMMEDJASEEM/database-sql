--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_type text NOT NULL,
    star_numbers numeric,
    galaxy_group character varying
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    sole_moon boolean NOT NULL,
    year_founded numeric(4,0),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    moons integer,
    rings boolean NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: quasar; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.quasar (
    quasar_id integer NOT NULL,
    name character varying NOT NULL,
    quasar_type text NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.quasar OWNER TO freecodecamp;

--
-- Name: quasar_quasar_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.quasar_quasar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quasar_quasar_id_seq OWNER TO freecodecamp;

--
-- Name: quasar_quasar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.quasar_quasar_id_seq OWNED BY public.quasar.quasar_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    star_type text NOT NULL,
    planets integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: quasar quasar_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.quasar ALTER COLUMN quasar_id SET DEFAULT nextval('public.quasar_quasar_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'A', 'B', 50, 'C');
INSERT INTO public.galaxy VALUES (3, 'A1', 'DB', 50, 'C');
INSERT INTO public.galaxy VALUES (5, 'A1A', 'DBS', 50, 'C');
INSERT INTO public.galaxy VALUES (6, 'A1S', 'DBS', 50, 'C');
INSERT INTO public.galaxy VALUES (7, 'ASF1A', 'DBS', 50, 'C');
INSERT INTO public.galaxy VALUES (8, 'ASF1AD', 'DBS', 50, 'C');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'GACSF', true, 1500, 1);
INSERT INTO public.moon VALUES (2, 'ASSFGF', false, 1450, 3);
INSERT INTO public.moon VALUES (3, 'ASSCD', true, 1740, 7);
INSERT INTO public.moon VALUES (4, 'SHADD', false, 1899, 8);
INSERT INTO public.moon VALUES (5, 'GAfCSF', true, 1500, 1);
INSERT INTO public.moon VALUES (6, 'ASSFGdF', false, 1450, 3);
INSERT INTO public.moon VALUES (7, 'ASSvCD', true, 1740, 7);
INSERT INTO public.moon VALUES (8, 'SHADfD', false, 1899, 8);
INSERT INTO public.moon VALUES (9, 'GgAfCSF', true, 1500, 1);
INSERT INTO public.moon VALUES (10, 'gASSFGdF', false, 1450, 3);
INSERT INTO public.moon VALUES (11, 'ASdSvCD', true, 1740, 7);
INSERT INTO public.moon VALUES (12, 'SHAfDfD', false, 1899, 8);
INSERT INTO public.moon VALUES (13, 'GghAfCSF', true, 1500, 1);
INSERT INTO public.moon VALUES (14, 'gASSFGgdF', false, 1450, 3);
INSERT INTO public.moon VALUES (15, 'ASdSvCdD', true, 1740, 7);
INSERT INTO public.moon VALUES (16, 'SHAfDfgD', false, 1899, 8);
INSERT INTO public.moon VALUES (17, 'GgdhAfCSF', true, 1500, 1);
INSERT INTO public.moon VALUES (18, 'ggASSFGgdF', false, 1450, 3);
INSERT INTO public.moon VALUES (19, 'ASdSvCddD', true, 1740, 7);
INSERT INTO public.moon VALUES (20, 'gSHAfDfgD', false, 1899, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'ASF', 5, true, 1);
INSERT INTO public.planet VALUES (2, 'ASSF', 4, false, 3);
INSERT INTO public.planet VALUES (3, 'ASC', 7, true, 7);
INSERT INTO public.planet VALUES (4, 'SAD', 8, false, 8);
INSERT INTO public.planet VALUES (5, 'GASF', 5, true, 1);
INSERT INTO public.planet VALUES (6, 'ASSFF', 4, false, 3);
INSERT INTO public.planet VALUES (7, 'ASSC', 7, true, 7);
INSERT INTO public.planet VALUES (8, 'SADD', 8, false, 8);
INSERT INTO public.planet VALUES (9, 'GACSF', 5, true, 1);
INSERT INTO public.planet VALUES (10, 'ASSFGF', 4, false, 3);
INSERT INTO public.planet VALUES (11, 'ASSCD', 7, true, 7);
INSERT INTO public.planet VALUES (12, 'SHADD', 8, false, 8);


--
-- Data for Name: quasar; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.quasar VALUES (1, 'GgdhAfCSF', 'fd', 1);
INSERT INTO public.quasar VALUES (2, 'ggASSFGgdF', '1450', 3);
INSERT INTO public.quasar VALUES (3, 'ASdSvCddD', '1740', 7);
INSERT INTO public.quasar VALUES (4, 'gSHAfDfgdD', '1899', 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'ASF1AD', 'DBS', 50, 1);
INSERT INTO public.star VALUES (3, 'ASF1AsD', 'DBS', 50, 3);
INSERT INTO public.star VALUES (4, 'ASF1AafdsD', 'DBS', 50, 3);
INSERT INTO public.star VALUES (5, 'ASF1D', 'DBS', 50, 3);
INSERT INTO public.star VALUES (7, 'ASF1Dasdf', 'DBS', 50, 5);
INSERT INTO public.star VALUES (8, 'ASF1Dasdaf', 'DBSdf', 50, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: quasar_quasar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.quasar_quasar_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: quasar quasar_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.quasar
    ADD CONSTRAINT quasar_name_key UNIQUE (name);


--
-- Name: quasar quasar_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.quasar
    ADD CONSTRAINT quasar_pkey PRIMARY KEY (quasar_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: quasar quasar_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.quasar
    ADD CONSTRAINT quasar_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

