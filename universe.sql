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
    name character varying,
    type text,
    birth_in_millions_of_years integer NOT NULL,
    measuring_distances integer NOT NULL
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
-- Name: image; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.image (
    image_id integer NOT NULL,
    name character varying NOT NULL,
    filename text NOT NULL
);


ALTER TABLE public.image OWNER TO freecodecamp;

--
-- Name: image_image_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.image_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.image_image_id_seq OWNER TO freecodecamp;

--
-- Name: image_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.image_image_id_seq OWNED BY public.image.image_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying,
    planet_id integer,
    diameter integer NOT NULL,
    numeral integer NOT NULL
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
    name character varying,
    star_id integer,
    days integer NOT NULL,
    mass numeric(10,2),
    radius integer,
    is_gas_giant boolean,
    has_rings boolean
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
    name character varying,
    galaxy_id integer,
    type text NOT NULL,
    temp_in_kelvin integer NOT NULL
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
-- Name: image image_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.image ALTER COLUMN image_id SET DEFAULT nextval('public.image_image_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'via lactea', 'espiral', 13000, 33000);
INSERT INTO public.galaxy VALUES (2, 'galaxia 2', 'espiral', 19000, 123456);
INSERT INTO public.galaxy VALUES (3, 'galaxia 3', 'espiral', 22000, 3456);
INSERT INTO public.galaxy VALUES (4, 'galaxia 4', 'eliptica', 5000, 4000);
INSERT INTO public.galaxy VALUES (5, 'galaxia 5', 'eliptica', 13000, 25000);
INSERT INTO public.galaxy VALUES (6, 'galaxia 6', 'eliptica', 33000, 35000);


--
-- Data for Name: image; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.image VALUES (1, 'imagen 1', 'image1.jpg');
INSERT INTO public.image VALUES (2, 'imagen 2', 'image2.jpg');
INSERT INTO public.image VALUES (3, 'imagen 3', 'image3.jpg');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'estrella 1', 1, 1412, 1);
INSERT INTO public.moon VALUES (2, 'estrella 2', 1, 1412, 2);
INSERT INTO public.moon VALUES (3, 'estrella 3', 1, 1412, 3);
INSERT INTO public.moon VALUES (4, 'estrella 4', 1, 14125, 4);
INSERT INTO public.moon VALUES (5, 'estrella 5', 1, 19625, 5);
INSERT INTO public.moon VALUES (6, 'estrella 6', 2, 2345, 6);
INSERT INTO public.moon VALUES (7, 'estrella 7', 2, 2345, 7);
INSERT INTO public.moon VALUES (8, 'estrella 8', 2, 2345, 9);
INSERT INTO public.moon VALUES (9, 'estrella 9', 2, 2345, 9);
INSERT INTO public.moon VALUES (10, 'estrella 10', 3, 23245, 10);
INSERT INTO public.moon VALUES (11, 'estrella 11', 4, 232245, 11);
INSERT INTO public.moon VALUES (12, 'estrella 12', 4, 192245, 12);
INSERT INTO public.moon VALUES (13, 'estrella 13', 4, 192245, 13);
INSERT INTO public.moon VALUES (14, 'estrella 14', 4, 192245, 14);
INSERT INTO public.moon VALUES (15, 'estrella 15', 4, 192245, 15);
INSERT INTO public.moon VALUES (16, 'estrella 16', 5, 1413135, 16);
INSERT INTO public.moon VALUES (17, 'estrella 17', 5, 1413135, 17);
INSERT INTO public.moon VALUES (18, 'estrella 18', 5, 1413135, 18);
INSERT INTO public.moon VALUES (19, 'estrella 19', 5, 1413135, 19);
INSERT INTO public.moon VALUES (20, 'estrella 20', 5, 1413135, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planeta 1', 1, 365, 1508.22, 123, false, false);
INSERT INTO public.planet VALUES (2, 'planeta 2', 1, 365, 1508.22, 123, false, false);
INSERT INTO public.planet VALUES (3, 'planeta 3', 1, 3165, 15208.22, 1423, true, false);
INSERT INTO public.planet VALUES (4, 'planeta 4', 2, 3165, 15208.22, 1423, true, false);
INSERT INTO public.planet VALUES (5, 'planeta 5', 2, 3165, 15208.22, 1423, true, false);
INSERT INTO public.planet VALUES (6, 'planeta 6', 2, 3165, 98913.52, 155423, true, true);
INSERT INTO public.planet VALUES (7, 'planeta 7', 2, 3165, 98913.52, 155423, true, true);
INSERT INTO public.planet VALUES (8, 'planeta 8', 4, 165, 98913.52, 5423, true, true);
INSERT INTO public.planet VALUES (9, 'planeta 9', 4, 165, 98913.52, 5423, true, true);
INSERT INTO public.planet VALUES (10, 'planeta 10', 5, 999, 1313.52, 1313, false, true);
INSERT INTO public.planet VALUES (11, 'planeta 11', 5, 999, 1313.52, 1313, false, true);
INSERT INTO public.planet VALUES (13, 'planeta 12', 5, 999, 1313.52, 1313, false, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'estrella 1', 1, 'roja', 25608);
INSERT INTO public.star VALUES (2, 'estrella 2', 2, 'roja', 68608);
INSERT INTO public.star VALUES (3, 'estrella 3', 3, 'roja', 95108);
INSERT INTO public.star VALUES (4, 'estrella 4', 4, 'amarilla', 95368);
INSERT INTO public.star VALUES (5, 'estrella 5', 5, 'amarilla', 920450);
INSERT INTO public.star VALUES (7, 'estrella 6', 5, 'verde', 20450);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: image_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.image_image_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: image image_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_name_key UNIQUE (name);


--
-- Name: image image_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (image_id);


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
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
-- PostgreSQL database dump complete
--

