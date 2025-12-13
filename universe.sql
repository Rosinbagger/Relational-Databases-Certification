--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(40) NOT NULL,
    galaxy_type character varying(40) NOT NULL,
    distance_from_earth numeric,
    size_in_light_years numeric
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
    name character varying(40) NOT NULL,
    is_sphere boolean DEFAULT true NOT NULL,
    planet_id integer NOT NULL,
    description text
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
-- Name: moon_planet_pairs; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon_planet_pairs (
    moon_planet_pairs_id integer NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.moon_planet_pairs OWNER TO freecodecamp;

--
-- Name: moon_planet_pairs_moon_planet_pair_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_pairs_moon_planet_pair_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_pairs_moon_planet_pair_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_pairs_moon_planet_pair_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_pairs_moon_planet_pair_id_seq OWNED BY public.moon_planet_pairs.moon_planet_pairs_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_type character varying(40) NOT NULL,
    evidence_of_life boolean DEFAULT false NOT NULL,
    star_id integer NOT NULL,
    age_in_billions integer,
    description text
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
    name character varying(40) NOT NULL,
    star_type character varying(40) NOT NULL,
    galaxy_id integer NOT NULL,
    age_in_billions integer
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
-- Name: moon_planet_pairs moon_planet_pairs_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_planet_pairs ALTER COLUMN moon_planet_pairs_id SET DEFAULT nextval('public.moon_planet_pairs_moon_planet_pair_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'spiral', 0, 87000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'spiral', 2500000, 152000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'spiral', 3200000, 61120);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 'spiral', 163000, 32200);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 'spiral', 200000, 18900);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 'ring', 500000000, 188200);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', true, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Europa', true, 8, NULL);
INSERT INTO public.moon VALUES (3, 'Io', true, 8, NULL);
INSERT INTO public.moon VALUES (4, 'Ganymede', true, 8, NULL);
INSERT INTO public.moon VALUES (5, 'Callisto', true, 8, NULL);
INSERT INTO public.moon VALUES (6, 'Amalthea', false, 8, NULL);
INSERT INTO public.moon VALUES (7, 'Sinope', true, 8, NULL);
INSERT INTO public.moon VALUES (8, 'Carme', false, 8, NULL);
INSERT INTO public.moon VALUES (9, 'Lysithea', false, 8, NULL);
INSERT INTO public.moon VALUES (10, 'Euporie', false, 8, NULL);
INSERT INTO public.moon VALUES (11, 'Adrastea', false, 8, NULL);
INSERT INTO public.moon VALUES (12, 'Kallichore', false, 8, NULL);
INSERT INTO public.moon VALUES (13, 'Himalia', false, 8, NULL);
INSERT INTO public.moon VALUES (14, 'Elara', true, 8, NULL);
INSERT INTO public.moon VALUES (15, 'Thebe', false, 8, NULL);
INSERT INTO public.moon VALUES (16, 'Orthosie', true, 8, NULL);
INSERT INTO public.moon VALUES (17, 'Erinome', false, 8, NULL);
INSERT INTO public.moon VALUES (18, 'Kalyke', false, 8, NULL);
INSERT INTO public.moon VALUES (19, 'Sponde', false, 8, NULL);
INSERT INTO public.moon VALUES (20, 'Jupiter LII', true, 8, NULL);


--
-- Data for Name: moon_planet_pairs; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon_planet_pairs VALUES (1, 1, 1, NULL);
INSERT INTO public.moon_planet_pairs VALUES (2, 2, 8, NULL);
INSERT INTO public.moon_planet_pairs VALUES (3, 3, 8, NULL);
INSERT INTO public.moon_planet_pairs VALUES (4, 4, 8, NULL);
INSERT INTO public.moon_planet_pairs VALUES (5, 5, 8, NULL);
INSERT INTO public.moon_planet_pairs VALUES (6, 6, 8, NULL);
INSERT INTO public.moon_planet_pairs VALUES (7, 7, 8, NULL);
INSERT INTO public.moon_planet_pairs VALUES (8, 8, 8, NULL);
INSERT INTO public.moon_planet_pairs VALUES (9, 9, 8, NULL);
INSERT INTO public.moon_planet_pairs VALUES (10, 10, 8, NULL);
INSERT INTO public.moon_planet_pairs VALUES (11, 11, 8, NULL);
INSERT INTO public.moon_planet_pairs VALUES (12, 12, 8, NULL);
INSERT INTO public.moon_planet_pairs VALUES (13, 13, 8, NULL);
INSERT INTO public.moon_planet_pairs VALUES (14, 14, 8, NULL);
INSERT INTO public.moon_planet_pairs VALUES (15, 15, 8, NULL);
INSERT INTO public.moon_planet_pairs VALUES (16, 16, 8, NULL);
INSERT INTO public.moon_planet_pairs VALUES (17, 17, 8, NULL);
INSERT INTO public.moon_planet_pairs VALUES (18, 18, 8, NULL);
INSERT INTO public.moon_planet_pairs VALUES (19, 19, 8, NULL);
INSERT INTO public.moon_planet_pairs VALUES (20, 20, 8, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'terrestrial', true, 1, 5, NULL);
INSERT INTO public.planet VALUES (2, 'Mercury', 'terrestrial', false, 1, 5, NULL);
INSERT INTO public.planet VALUES (3, 'Venus', 'terrestrial', false, 1, 5, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 'terrestrial', true, 1, 5, NULL);
INSERT INTO public.planet VALUES (5, 'Saturn', 'gas giant', false, 1, 5, NULL);
INSERT INTO public.planet VALUES (6, 'Uranus', 'ice giant', false, 1, 5, NULL);
INSERT INTO public.planet VALUES (7, 'Neptune', 'ice giant', false, 1, 5, NULL);
INSERT INTO public.planet VALUES (8, 'Jupiter', 'gas giant', false, 1, 5, NULL);
INSERT INTO public.planet VALUES (9, 'Planet B', 'gas giant', false, 10, 5, NULL);
INSERT INTO public.planet VALUES (10, 'TRAPPIST-1b', 'terrestrial', false, 11, 8, NULL);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1c', 'terrestrial', false, 11, 8, NULL);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1d', 'terrestrial', false, 11, 8, NULL);
INSERT INTO public.planet VALUES (13, 'TRAPPIST-1e', 'terrestrial', false, 11, 8, NULL);
INSERT INTO public.planet VALUES (14, 'TRAPPIST-1f', 'terrestrial', false, 11, 8, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'yellow dwarf', 1, 5);
INSERT INTO public.star VALUES (2, 'Vega', 'a-type', 1, 1);
INSERT INTO public.star VALUES (6, 'Sirius A', 'main sequence', 1, 2);
INSERT INTO public.star VALUES (7, 'Sirius B', 'white dwarf', 1, 2);
INSERT INTO public.star VALUES (8, 'Canopus', 'blue loop', 1, 0);
INSERT INTO public.star VALUES (9, 'Rigel', 'blue supergiant', 1, 0);
INSERT INTO public.star VALUES (10, 'Epsilon Eridani', 'main sequence', 1, 0);
INSERT INTO public.star VALUES (11, 'TRAPPIST-1', 'main sequence', 1, 7);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: moon_planet_pairs_moon_planet_pair_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_pairs_moon_planet_pair_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon_planet_pairs moon_planet_pair_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_planet_pairs
    ADD CONSTRAINT moon_planet_pair_id UNIQUE (moon_planet_pairs_id);


--
-- Name: moon_planet_pairs moon_planet_pairs_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_planet_pairs
    ADD CONSTRAINT moon_planet_pairs_pkey PRIMARY KEY (moon_planet_pairs_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


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
-- Name: moon_planet_pairs moon_planet_pairs_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_planet_pairs
    ADD CONSTRAINT moon_planet_pairs_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: moon_planet_pairs moon_planet_pairs_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_planet_pairs
    ADD CONSTRAINT moon_planet_pairs_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

