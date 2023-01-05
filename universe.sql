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
-- Name: further_information; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.further_information (
    further_information_id integer NOT NULL,
    name character varying(30) NOT NULL,
    importance integer,
    happyness numeric,
    crazyness boolean
);


ALTER TABLE public.further_information OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_of_years integer,
    distance_from_earth numeric,
    has_life boolean,
    is_spherical boolean,
    description text
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
    name character varying(30),
    planet_id integer NOT NULL,
    age_in_million_of_years integer,
    distance_from_earth numeric,
    has_life boolean,
    is_spherical boolean,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    star_id integer NOT NULL,
    age_in_million_of_years integer,
    distance_from_earth numeric,
    has_life boolean,
    is_spherical boolean,
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
    name character varying(30),
    galaxy_id integer NOT NULL,
    age_in_million_of_years integer,
    distance_from_earth numeric,
    has_life boolean,
    is_spherical boolean,
    description text
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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: further_information; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.further_information VALUES (1, 'Aphrodite', 6, 12.3, true);
INSERT INTO public.further_information VALUES (2, 'Sesame Street', 7, 15.9, true);
INSERT INTO public.further_information VALUES (3, 'Tequila', 2, 1, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 10, 100, false, false, 'beautiful');
INSERT INTO public.galaxy VALUES (2, 'Butterfly', 20, 200, true, false, 'Ruled by butteerlflies.');
INSERT INTO public.galaxy VALUES (3, 'Cosmos Redshift', 30, 300, false, false, 'A little Cosmos itself.');
INSERT INTO public.galaxy VALUES (4, 'Eye of Sauron', 15, 150, true, true, 'Well, there are the Hobbits.');
INSERT INTO public.galaxy VALUES (5, 'Harry Potters Wand', 25, 250, false, false, 'Named by yet another fangirl.');
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 40, 400, false, true, 'Ey, ey, ey! Arriva!');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Zeus', 1, 3, 10, false, false, NULL);
INSERT INTO public.moon VALUES (2, 'Hera', 1, 3, 10, false, false, NULL);
INSERT INTO public.moon VALUES (3, 'Aphrodite', 1, 3, 10, false, false, NULL);
INSERT INTO public.moon VALUES (4, 'Flower', 2, 3, 10, false, false, NULL);
INSERT INTO public.moon VALUES (5, 'Warm Wall', 2, 3, 10, false, false, NULL);
INSERT INTO public.moon VALUES (6, 'Lilac', 8, 3, 10, false, false, NULL);
INSERT INTO public.moon VALUES (7, 'Mintgreen', 3, 30, 300, false, false, NULL);
INSERT INTO public.moon VALUES (8, 'Orange', 9, 30, 300, false, false, NULL);
INSERT INTO public.moon VALUES (9, 'Yellow', 9, 30, 300, false, false, NULL);
INSERT INTO public.moon VALUES (10, 'Finn', 4, 15, 150, false, false, NULL);
INSERT INTO public.moon VALUES (11, 'Lea', 4, 15, 150, false, false, NULL);
INSERT INTO public.moon VALUES (12, 'Chui', 10, 15, 150, false, false, NULL);
INSERT INTO public.moon VALUES (13, 'Bird', 5, 15, 150, false, false, NULL);
INSERT INTO public.moon VALUES (14, 'Golden', 5, 15, 150, false, false, NULL);
INSERT INTO public.moon VALUES (15, 'Life', 10, 15, 150, false, false, NULL);
INSERT INTO public.moon VALUES (16, 'Corn', 6, 40, 400, false, false, NULL);
INSERT INTO public.moon VALUES (17, 'Tequila', 12, 40, 400, false, false, NULL);
INSERT INTO public.moon VALUES (18, 'Salsa', 12, 40, 400, false, true, NULL);
INSERT INTO public.moon VALUES (19, 'Ernie', 11, 25, 250, false, false, NULL);
INSERT INTO public.moon VALUES (20, 'Sesame Street', 11, 25, 250, true, false, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Asrael', 1, 3, 10, false, false, 'Like an angel.');
INSERT INTO public.planet VALUES (2, 'Nymphalidae', 2, 20, 200, true, false, '');
INSERT INTO public.planet VALUES (3, 'Green', 3, 30, 300, false, false, 'Like a leaf.');
INSERT INTO public.planet VALUES (4, 'Storm Troopers Home', 4, 15, 150, true, true, '50 000 Settlers there.');
INSERT INTO public.planet VALUES (5, 'Ashes', 5, 25, 250, false, false, '');
INSERT INTO public.planet VALUES (6, 'Cheese', 6, 40, 400, false, true, 'Creamy and tasty.');
INSERT INTO public.planet VALUES (7, 'Judas', 1, 3, 10, false, false, 'Quite an angel.');
INSERT INTO public.planet VALUES (8, 'Headylidae', 2, 20, 200, true, false, 'Only to see by night!');
INSERT INTO public.planet VALUES (9, 'Purple', 3, 30, 300, false, false, 'Well you expected yellow - but its just not.');
INSERT INTO public.planet VALUES (10, 'Wookie Planet', 4, 15, 150, true, true, 'So furry!');
INSERT INTO public.planet VALUES (11, 'Bert', 5, 25, 250, false, false, 'no Ernie.');
INSERT INTO public.planet VALUES (12, 'Poncho', 6, 40, 400, false, true, 'Coulerful and warm.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Kasiopeia', 1, 3, 10, false, false, 'Looks like a turtle.');
INSERT INTO public.star VALUES (2, 'Moth', 2, 20, 200, true, false, 'Butterflies shady Cousin.');
INSERT INTO public.star VALUES (3, 'Blue', 3, 30, 300, false, false, 'Why not?');
INSERT INTO public.star VALUES (4, 'Alderan', 4, 15, 150, true, true, 'I am your father.');
INSERT INTO public.star VALUES (5, 'Phoenix', 5, 25, 250, false, false, 'It was an ingridient in you-know-whose wand too.');
INSERT INTO public.star VALUES (6, 'Tacco', 6, 40, 400, false, true, 'Verry flat earth');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: further_information pk_furth_info; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.further_information
    ADD CONSTRAINT pk_furth_info PRIMARY KEY (further_information_id);


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
-- Name: further_information u_furth_info; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.further_information
    ADD CONSTRAINT u_furth_info UNIQUE (name);


--
-- Name: further_information fk_furth_info; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.further_information
    ADD CONSTRAINT fk_furth_info FOREIGN KEY (name) REFERENCES public.moon(name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


