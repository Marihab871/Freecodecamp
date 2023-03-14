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
-- Name: brightest_star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.brightest_star (
    brightest_star_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    existe boolean NOT NULL,
    distance integer,
    discovery_year integer,
    size numeric(6,2)
);


ALTER TABLE public.brightest_star OWNER TO freecodecamp;

--
-- Name: brightest_star_brightest_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.brightest_star_brightest_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brightest_star_brightest_star_id_seq OWNER TO freecodecamp;

--
-- Name: brightest_star_brightest_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.brightest_star_brightest_star_id_seq OWNED BY public.brightest_star.brightest_star_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    existe boolean NOT NULL,
    distance integer,
    discovery_year integer,
    size numeric(6,2)
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
    description text,
    existe boolean NOT NULL,
    distance integer,
    discovery_year integer,
    size numeric(6,2),
    planet_id integer NOT NULL
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
    description text,
    existe boolean NOT NULL,
    distance integer,
    discovery_year integer,
    size numeric(6,2),
    star_id integer NOT NULL
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
    name character varying NOT NULL,
    description text,
    existe boolean NOT NULL,
    distance integer,
    discovery_year integer,
    size numeric(6,2),
    galaxy_id integer NOT NULL
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
-- Name: brightest_star brightest_star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.brightest_star ALTER COLUMN brightest_star_id SET DEFAULT nextval('public.brightest_star_brightest_star_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: brightest_star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.brightest_star VALUES (1, 'sun', 'The star at the center of the Solar System', true, 1, -2000, 696.34);
INSERT INTO public.brightest_star VALUES (2, 'sirius', 'Sirius is the brightest star in the night sky', true, 1, -2000, 696.34);
INSERT INTO public.brightest_star VALUES (3, 'canopus', 'i dont know', true, 309, -9800, 49.40);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Andromeda is the closest big galaxy to the Milky Way', true, 39, 600, 9.80);
INSERT INTO public.galaxy VALUES (2, 'Condor', 'The largest known spiral galaxy', true, 378, -123, 149.38);
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', 'This is the fourth-largest galaxy in the Local Group', true, 7989, -690, 989.40);
INSERT INTO public.galaxy VALUES (4, 'Cosmos Redshift 7', 'Galaxy Cosmos Redshift 7 is reported to be the brightest of distant galaxies (z > 6) and to contain some of the earliest first stars', true, 3809, -600, 49.40);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 'From recent research, may not be part of the Milky Way system of satellites at all', true, 7699, -1000, 789.31);
INSERT INTO public.galaxy VALUES (6, 'Comet', 'The comet effect is caused by tidal stripping by its galaxy cluster, Abell 2667', true, 385, 1400, 34.36);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (63, 'Phobos', 'Surement une planete bouree de froussards', true, 890, -2000, 654.77, 44);
INSERT INTO public.moon VALUES (64, 'moon', 'La lune.', true, 190, 1987, 432.36, 45);
INSERT INTO public.moon VALUES (65, 'Callisto', 'Un satellite ', true, 699, 1965, 965.23, 46);
INSERT INTO public.moon VALUES (66, 'Charon', 'Le fils bien aime de pluto', true, 700, 1400, 19.23, 47);
INSERT INTO public.moon VALUES (67, 'Rhea', 'Eren elle est encore en vie. Elle a meme creer une planete en son nom.', true, 497, 2002, 250.41, 48);
INSERT INTO public.moon VALUES (68, 'Puck', 'Planete des fee', true, 390, -2004, 48.67, 49);
INSERT INTO public.moon VALUES (69, 'Titan', 'Saturne Version 3', true, 365, -2001, 877.56, 50);
INSERT INTO public.moon VALUES (70, 'Obero', 'Pour info my surname is habero', true, 360, 1987, 989.43, 51);
INSERT INTO public.moon VALUES (71, 'Pich', 'Une autre invention', false, 2022, -1000, 220.40, 52);
INSERT INTO public.moon VALUES (72, 'Titania', 'Ce nom me dit quelque chose. Ah je men souvient cest Herza', true, 755, 1999, 867.77, 53);
INSERT INTO public.moon VALUES (73, 'Mimas', 'Encore un sat de saturne', true, 900, 2000, 543.30, 54);
INSERT INTO public.moon VALUES (74, 'Ganymede', 'Jupiter 3', true, 875, 2012, 345.25, 46);
INSERT INTO public.moon VALUES (75, 'Hyperion', 'Encore personnage de la mythologie grec. Decidement vous avez vendu votre creativite au diable', true, 83, 2011, 876.91, 44);
INSERT INTO public.moon VALUES (76, 'Japet', 'Encore un autre satelite de saturne', true, 53, 2005, 121.62, 44);
INSERT INTO public.moon VALUES (77, 'Tethys', 'A ne pas confondre avec thetis', true, 78, 2005, 345.88, 46);
INSERT INTO public.moon VALUES (78, 'Miranda', 'Encore un amoureux qui offre une planete a sa cherie', true, 968, 2012, 890.99, 47);
INSERT INTO public.moon VALUES (79, 'Europe', 'Mon voisin habite chez moi.', true, 376, 2004, 424.68, 49);
INSERT INTO public.moon VALUES (80, 'Nereide', 'Neree tes filles ont habitent sur Neree', true, 557, 2009, 515.24, 48);
INSERT INTO public.moon VALUES (81, 'Ariel', 'Dites . Ariel est masculin ou feminin.', true, 3, 1991, 645.46, 50);
INSERT INTO public.moon VALUES (82, 'Dactyl', 'Planete des dactylos', true, 379, 2002, 783.90, 51);
INSERT INTO public.moon VALUES (83, 'Umbriel', 'Troisieme satellite de ur...', true, 39, 2019, 946.80, 54);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (44, 'Earth', 'Notre planette', true, 8978, 8900, 49.40, 3);
INSERT INTO public.planet VALUES (45, 'Mars', 'Cherche pas a savoir', true, 3432, -10000, 49.40, 4);
INSERT INTO public.planet VALUES (46, 'Ida', 'Tu te rappele de ida dans MHA', true, 8754, 1995, 49.40, 5);
INSERT INTO public.planet VALUES (47, 'Jupiter', 'Par Jupiter !', true, 1926, 1800, 49.40, 6);
INSERT INTO public.planet VALUES (48, 'Saturne', 'Designe le plomb. Comment on peut donner ca come nom a une planette', true, 1938, 1900, 49.40, 7);
INSERT INTO public.planet VALUES (49, 'Uranus', 'Ur quoi?', true, 1984, 1484, 49.40, 8);
INSERT INTO public.planet VALUES (50, 'Neptune', 'Une planete geante glacee composee surtout de glace', true, 73, 1650, 49.40, 8);
INSERT INTO public.planet VALUES (51, 'Pluto', 'Jerry tell me. Is pluto a planete?', true, 9846, 1980, 49.40, 8);
INSERT INTO public.planet VALUES (52, 'Venus', 'Deuxieme planete la plus proche du soleil', true, 754, 1505, 49.40, 8);
INSERT INTO public.planet VALUES (53, 'Mercure', 'Jespere quil ne fait pas la taile dune mercure', true, 9272, 1990, 49.40, 8);
INSERT INTO public.planet VALUES (54, 'Vegeta', 'La planet des sayens', false, 775, 2022, 49.40, 8);
INSERT INTO public.planet VALUES (55, 'Namek', 'La planet des picolos', false, 890, 2022, 49.40, 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'Sirius', 'Premiere etoile du blablabla', true, 3709, -2500, 49.40, 1);
INSERT INTO public.star VALUES (4, 'Canopus', 'Let talk about canopus', true, 5794, 3500, 49.40, 2);
INSERT INTO public.star VALUES (5, 'Arcturus', 'Does this name refer to actur in merlin ?', true, 9475, -4000, 49.40, 3);
INSERT INTO public.star VALUES (6, 'Vega', 'Encore appelee alpha lyrae', true, 7483, -8500, 49.40, 4);
INSERT INTO public.star VALUES (7, 'Rigel', 'Une etoile bleue', true, 3985, -7000, 49.40, 5);
INSERT INTO public.star VALUES (8, 'Achemar', 'Huitieme planete la plus brillante', true, 2586, -550000, 49.40, 6);


--
-- Name: brightest_star_brightest_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.brightest_star_brightest_star_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 83, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 55, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: brightest_star brightest_star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.brightest_star
    ADD CONSTRAINT brightest_star_pkey PRIMARY KEY (brightest_star_id);


--
-- Name: brightest_star brightest_star_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.brightest_star
    ADD CONSTRAINT brightest_star_unique_name UNIQUE (name);


--
-- Name: planet description_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT description_unique UNIQUE (description);


--
-- Name: galaxy galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_unique UNIQUE (description);


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
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

