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
    name character varying(30) NOT NULL,
    description text,
    age_in_billions_of_years numeric(5,3),
    has_life boolean,
    is_spherical boolean,
    population integer,
    orbit integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_billions_of_years numeric(5,3),
    has_life boolean,
    is_spherical boolean,
    population integer,
    orbit integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_billions_of_years numeric(5,3),
    has_life boolean,
    is_spherical boolean,
    population integer,
    orbit integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_billions_of_years numeric(5,3),
    has_life boolean,
    is_spherical boolean,
    population integer,
    orbit integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Milky Way', 4.000, true, false, 123, 0);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'Milky Way', 4.000, true, false, 123, 0);
INSERT INTO public.galaxy VALUES (3, 'Milky Way', 'Milky Way', 4.000, true, false, 123, 0);
INSERT INTO public.galaxy VALUES (4, 'Milky Way', 'Milky Way', 4.000, true, false, 123, 0);
INSERT INTO public.galaxy VALUES (5, 'Milky Way', 'Milky Way', 4.000, true, false, 123, 0);
INSERT INTO public.galaxy VALUES (6, 'Milky Way', 'Milky Way', 4.000, true, false, 123, 0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 'The Moon', 4.000, false, true, 0, 1);
INSERT INTO public.moon VALUES (2, 'The Moon', 'The Moon', 4.000, false, true, 0, 1);
INSERT INTO public.moon VALUES (3, 'The Moon', 'The Moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'The Moon', 'The Moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'The Moon', 'The Moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'The Moon', 'The Moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'The Moon', 'The Moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'The Moon', 'The Moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'The Moon', 'The Moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'The Moon', 'The Moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'The Moon', 'The Moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'The Moon', 'The Moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'The Moon', 'The Moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'The Moon', 'The Moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'The Moon', 'The Moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'The Moon', 'The Moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'The Moon', 'The Moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'The Moon', 'The Moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'The Moon', 'The Moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'The Moon', 'The Moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'The Moon', 'The Moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'The Moon', 'The Moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'The Moon', 'The Moon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'The Moon', 'The Moon', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Earth', 4.000, true, true, 1, 1);
INSERT INTO public.planet VALUES (2, 'Planet', 'Planet', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Planet', 'Planet', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Planet', 'Planet', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Planet', 'Planet', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Planet', 'Planet', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Planet', 'Planet', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Planet', 'Planet', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Planet', 'Planet', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Planet', 'Planet', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Planet', 'Planet', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Planet', 'Planet', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'Sat1', 'Satellite 01');
INSERT INTO public.satellite VALUES (2, 'Sat2', 'Satellite 02');
INSERT INTO public.satellite VALUES (3, 'Sat3', 'Satellite 03');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 'The Sun', 4.000, false, true, 0, 1, 1);
INSERT INTO public.star VALUES (2, 'The Sun', 'The Sun', 4.000, false, true, 0, 1, 1);
INSERT INTO public.star VALUES (3, 'The Sun', 'The Sun', 4.000, false, true, 0, 1, 1);
INSERT INTO public.star VALUES (4, 'The Sun', 'The Sun', 4.000, false, true, 0, 1, 1);
INSERT INTO public.star VALUES (5, 'The Sun', 'The Sun', 4.000, false, true, 0, 1, 1);
INSERT INTO public.star VALUES (6, 'The Sun', 'The Sun', 4.000, false, true, 0, 1, 1);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 24, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 2, true);


--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: satellite satellite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_name_key UNIQUE (name);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: planet fk_moon_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_moon_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: galaxy fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_star_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

