--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    isalive boolean NOT NULL,
    watchable boolean
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
    name character varying(30) NOT NULL,
    planet_id integer,
    isalive boolean NOT NULL,
    watchable boolean
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
-- Name: multiverses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.multiverses (
    multiverses_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    "numeric" numeric(4,2),
    "integer" integer
);


ALTER TABLE public.multiverses OWNER TO freecodecamp;

--
-- Name: multiverses_multiverse_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.multiverses_multiverse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.multiverses_multiverse_id_seq OWNER TO freecodecamp;

--
-- Name: multiverses_multiverse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.multiverses_multiverse_id_seq OWNED BY public.multiverses.multiverses_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    isalive boolean NOT NULL,
    star_id integer,
    watchable boolean
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    isalive boolean NOT NULL,
    galaxy_id integer,
    watchable boolean
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
-- Name: multiverses multiverses_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.multiverses ALTER COLUMN multiverses_id SET DEFAULT nextval('public.multiverses_multiverse_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Closest galaxy', true, NULL);
INSERT INTO public.galaxy VALUES (3, 'Milky Way', NULL, true, NULL);
INSERT INTO public.galaxy VALUES (4, 'Andromeda', NULL, true, NULL);
INSERT INTO public.galaxy VALUES (5, 'Triangulum', NULL, true, NULL);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', NULL, true, NULL);
INSERT INTO public.galaxy VALUES (7, 'Sombrero', NULL, false, NULL);
INSERT INTO public.galaxy VALUES (8, 'Whirlpool', NULL, false, NULL);
INSERT INTO public.galaxy VALUES (9, 'Pinwheel', NULL, true, NULL);
INSERT INTO public.galaxy VALUES (10, 'Antennae', NULL, true, NULL);
INSERT INTO public.galaxy VALUES (11, 'Cartwheel', NULL, false, NULL);
INSERT INTO public.galaxy VALUES (12, 'Cigar', NULL, true, NULL);
INSERT INTO public.galaxy VALUES (13, 'Bodes', NULL, false, NULL);
INSERT INTO public.galaxy VALUES (14, 'Canes Venatici I', NULL, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'dd', NULL, true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lua', 1, true, NULL);
INSERT INTO public.moon VALUES (2, 'Luna', 10, false, NULL);
INSERT INTO public.moon VALUES (3, 'Phobos', 9, false, NULL);
INSERT INTO public.moon VALUES (4, 'Deimos', 12, false, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 12, false, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4, false, NULL);
INSERT INTO public.moon VALUES (7, 'Io', 3, false, NULL);
INSERT INTO public.moon VALUES (8, 'Titan', 10, false, NULL);
INSERT INTO public.moon VALUES (9, 'Callisto', 1, false, NULL);
INSERT INTO public.moon VALUES (10, 'Enceladus', 12, false, NULL);
INSERT INTO public.moon VALUES (11, 'Triton', 5, false, NULL);
INSERT INTO public.moon VALUES (12, 'Titania', 10, false, NULL);
INSERT INTO public.moon VALUES (13, 'Rhea', 5, false, NULL);
INSERT INTO public.moon VALUES (14, 'Iapetus', 2, false, NULL);
INSERT INTO public.moon VALUES (15, 'Dione', 2, false, NULL);
INSERT INTO public.moon VALUES (16, 'Oberon', 2, false, NULL);
INSERT INTO public.moon VALUES (17, 'Miranda', 6, false, NULL);
INSERT INTO public.moon VALUES (18, 'Ariel', 7, false, NULL);
INSERT INTO public.moon VALUES (19, 'Umbriel', 5, false, NULL);
INSERT INTO public.moon VALUES (20, 'Charon', 10, false, NULL);
INSERT INTO public.moon VALUES (21, 'Iapetus', 7, false, NULL);
INSERT INTO public.moon VALUES (22, 'Dione', 4, false, NULL);
INSERT INTO public.moon VALUES (23, 'Oberon', 12, false, NULL);
INSERT INTO public.moon VALUES (24, 'Miranda', 9, false, NULL);
INSERT INTO public.moon VALUES (25, 'Ariel', 10, false, NULL);
INSERT INTO public.moon VALUES (26, 'Umbriel', 12, false, NULL);
INSERT INTO public.moon VALUES (27, 'Charon', 5, false, NULL);


--
-- Data for Name: multiverses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.multiverses VALUES (1, 'a', 12, NULL, NULL);
INSERT INTO public.multiverses VALUES (2, 'W', 13, NULL, NULL);
INSERT INTO public.multiverses VALUES (3, 'we', 98, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Terra', true, 2, NULL);
INSERT INTO public.planet VALUES (2, 'Mercury', true, 2, NULL);
INSERT INTO public.planet VALUES (3, 'Venus', true, 2, NULL);
INSERT INTO public.planet VALUES (4, 'Earth', true, 2, NULL);
INSERT INTO public.planet VALUES (5, 'Mars', true, 2, NULL);
INSERT INTO public.planet VALUES (6, 'Jupiter', true, 2, NULL);
INSERT INTO public.planet VALUES (7, 'Saturn', true, 2, NULL);
INSERT INTO public.planet VALUES (8, 'Uranus', true, 2, NULL);
INSERT INTO public.planet VALUES (9, 'Neptune', true, 2, NULL);
INSERT INTO public.planet VALUES (10, 'Pluto', false, 2, NULL);
INSERT INTO public.planet VALUES (11, 'Eris', false, 2, NULL);
INSERT INTO public.planet VALUES (12, 'Haumea', false, 2, NULL);
INSERT INTO public.planet VALUES (13, 'Makemake', false, 2, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Maria Julieta', true, 2, NULL);
INSERT INTO public.star VALUES (2, 'Sun', true, 2, NULL);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', true, 2, NULL);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', true, 2, NULL);
INSERT INTO public.star VALUES (5, 'Alpha Centauri B', true, 2, NULL);
INSERT INTO public.star VALUES (6, 'Sirius', true, 2, NULL);
INSERT INTO public.star VALUES (7, 'Betelgeuse', false, 2, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 14, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 27, true);


--
-- Name: multiverses_multiverse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.multiverses_multiverse_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: multiverses multiverses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.multiverses
    ADD CONSTRAINT multiverses_pkey PRIMARY KEY (multiverses_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_id UNIQUE (galaxy_id);


--
-- Name: moon unique_id_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_id_moon UNIQUE (moon_id);


--
-- Name: multiverses unique_id_multiverses; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.multiverses
    ADD CONSTRAINT unique_id_multiverses UNIQUE (multiverses_id);


--
-- Name: planet unique_id_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_id_planet UNIQUE (planet_id);


--
-- Name: star unique_id_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_id_star UNIQUE (star_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
