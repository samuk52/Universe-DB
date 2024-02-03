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
-- Name: cosmic_events; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cosmic_events (
    cosmic_events_id integer NOT NULL,
    description text,
    event_date date,
    location character varying(30),
    name character varying(30) NOT NULL
);


ALTER TABLE public.cosmic_events OWNER TO freecodecamp;

--
-- Name: cosmic_events_cosimic_events_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cosmic_events_cosimic_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cosmic_events_cosimic_events_id_seq OWNER TO freecodecamp;

--
-- Name: cosmic_events_cosimic_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cosmic_events_cosimic_events_id_seq OWNED BY public.cosmic_events.cosmic_events_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    galaxy_types character varying(30),
    number_of_star_in_billion integer
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
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric
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
    name character varying(30) NOT NULL,
    star_id integer,
    description text,
    has_life boolean,
    age_in_millions_of_year integer,
    distance_from_earth numeric
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
    galaxy_id integer,
    description text,
    age_in_millions_of_year integer
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
-- Name: cosmic_events cosmic_events_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cosmic_events ALTER COLUMN cosmic_events_id SET DEFAULT nextval('public.cosmic_events_cosimic_events_id_seq'::regclass);


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
-- Data for Name: cosmic_events; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cosmic_events VALUES (1, 'Explosive death of a massive star, releasing an immense amount of energy.', '2022-01-15', 'Andromeda Galaxy', 'Supernova SN2022A');
INSERT INTO public.cosmic_events VALUES (2, 'Celestial event where Mercury passes directly between the Earth and the Sun.', '2022-05-09', 'Solar System', 'Transit of Mercury');
INSERT INTO public.cosmic_events VALUES (3, 'Annual meteor shower caused by debris from Comet Swift-Tuttle.', '2022-08-12', 'Earth orbit', 'Perseid Meteor Shower');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Spiral galaxy located 2.5 million light-years away from Earth.', 'Spiral', 400);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'Our home galaxy, a barred spiral with a diameter of about 100,000 light-years.', 'Barred Spiral', 300);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Small spiral galaxy in the Local Group, third-largest galaxy after Milky Way and Andromeda.', 'Spiral', 40);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Elliptical galaxy in the Virgo Cluster, known for containing a supermassive black hole.', 'Elliptical', 100);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Spiral galaxy with a bright nucleus and a large central bulge, resembling a sombrero hat.', 'Spiral', 800);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'Interacting grand-design spiral galaxy located in the constellation Canes Venatici.', 'Spiral', 300);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, 'Earth natural satellite, known for influencing tides and lunar phases.', false, 4500, 0.384);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 'One of the two moons of Mars, irregularly shaped and thought to be a captured asteroid.', false, 100, 9.378);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 'The smaller and outermost moon of Mars, with a smooth surface and a relatively low gravity.', false, 100, 23.460);
INSERT INTO public.moon VALUES (4, 'Titan', 2, 'Largest moon of Saturn, with a thick atmosphere and lakes of liquid hydrocarbons on its surface.', true, 4500, 1.272);
INSERT INTO public.moon VALUES (5, 'Ganymede', 7, 'Largest moon of Jupiter and the Solar System, with a magnetic field and a diverse surface.', true, 4500, 6.70);
INSERT INTO public.moon VALUES (6, 'Europa', 7, 'Moon of Jupiter, known for its icy surface with subsurface oceans that may harbor life.', true, 4500, 4.40);
INSERT INTO public.moon VALUES (7, 'Callisto', 7, 'Moon of Jupiter, heavily cratered with a relatively thin atmosphere.', false, 4500, 7.41);
INSERT INTO public.moon VALUES (8, 'Enceladus', 2, 'Moon of Saturn, with a subsurface ocean and geysers of water vapor erupting from its south pole.', true, 100, 1.272);
INSERT INTO public.moon VALUES (9, 'Io', 7, 'Volcanically active moon of Jupiter, with intense geologic activity and a colorful surface.', false, 4500, 4.22);
INSERT INTO public.moon VALUES (10, 'Triton', 8, 'Moon of Neptune, with geysers erupting nitrogen gas and a retrograde orbit.', false, 4500, 30.40);
INSERT INTO public.moon VALUES (11, 'Charon', 9, 'Largest moon of Pluto, with a reddish-brown color and a nearly tidally locked orbit with Pluto.', false, 100, 39.45);
INSERT INTO public.moon VALUES (12, 'Oberon', 10, 'Moon of Uranus, with a heavily cratered surface and dark patches of unknown origin.', false, 100, 2.29);
INSERT INTO public.moon VALUES (13, 'Tethys', 2, 'Moon of Saturn, with a prominent impact crater called Odysseus and a relatively low density.', false, 100, 1.272);
INSERT INTO public.moon VALUES (14, 'Rhea', 2, 'Second-largest moon of Saturn, known for its bright and heavily cratered surface.', false, 100, 1.272);
INSERT INTO public.moon VALUES (15, 'Iapetus', 2, 'Moon of Saturn, exhibiting a two-tone coloration with one hemisphere much darker than the other.', false, 100, 1.272);
INSERT INTO public.moon VALUES (16, 'Miranda', 11, 'Moon of Uranus, with a chaotic and varied terrain, suggesting a complex geological history.', false, 100, 4.42);
INSERT INTO public.moon VALUES (17, 'Titania', 10, 'Largest moon of Uranus, with a relatively low density and a complex system of fault lines.', false, 100, 2.29);
INSERT INTO public.moon VALUES (18, 'Dione', 2, 'Moon of Saturn, known for its bright icy surface and mysterious wispy features.', false, 100, 1.272);
INSERT INTO public.moon VALUES (19, 'Ariel', 10, 'Moon of Uranus, with a relatively smooth surface and a mysterious system of bright rings.', false, 100, 2.29);
INSERT INTO public.moon VALUES (20, 'Proteus', 8, 'Largest moon of Neptune, irregularly shaped with a heavily cratered surface.', false, 100, 29.46);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 3, 'The third planet from the Sun, known for its diverse ecosystems and life forms.', true, 4500, 1.000);
INSERT INTO public.planet VALUES (2, 'Mars', 3, 'The fourth planet from the Sun, often called the Red Planet.', false, 4500, 1.524);
INSERT INTO public.planet VALUES (3, 'Pandora', 2, 'A moon orbiting a gas giant in the Alpha Centauri A system, featured in the movie Avatar.', false, 100, 4.367);
INSERT INTO public.planet VALUES (4, 'Venus', 3, 'The second planet from the Sun, known for its thick atmosphere and extreme temperatures.', false, 4500, 0.723);
INSERT INTO public.planet VALUES (5, 'Alderaan', 2, 'A fictional planet in the Star Wars universe, destroyed by the Death Star.', false, 1000, 10.000);
INSERT INTO public.planet VALUES (6, 'Tatooine', 3, 'A fictional desert planet in the Star Wars universe, known for its binary star system.', false, 1000, 8.500);
INSERT INTO public.planet VALUES (7, 'Pandora II', 2, 'Another moon in the Alpha Centauri A system, also featured in the movie Avatar.', false, 80, 4.200);
INSERT INTO public.planet VALUES (8, 'Mars II', 3, 'A hypothetical second moon orbiting Mars, explored in science fiction scenarios.', false, 100, 1.200);
INSERT INTO public.planet VALUES (9, 'Oceanus', 1, 'A water-rich exoplanet orbiting Andromeda A, potential candidate for extraterrestrial life.', true, 300, 2.500);
INSERT INTO public.planet VALUES (10, 'Triangulum Prime', 5, 'A planet in the Triangulum Galaxy, characterized by diverse landscapes and climates.', false, 200, 7.800);
INSERT INTO public.planet VALUES (11, 'Proxima b', 6, 'An exoplanet in the habitable zone of Proxima Centauri, potentially suitable for life.', true, 100, 4.246);
INSERT INTO public.planet VALUES (12, 'Aqua-5', 1, 'A water-covered planet orbiting Andromeda A, with unique aquatic ecosystems.', true, 150, 3.200);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Centauri A', 2, 'Binary star system in the Milky Way, similar to our Sun.', 6000);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 2, 'Red supergiant in the Orion constellation, one of the brightest stars in the night sky.', 8);
INSERT INTO public.star VALUES (3, 'Sirius', 2, 'Brightest star in Earth night sky, part of the Canis Major constellation.', 200);
INSERT INTO public.star VALUES (4, 'Andromeda A', 1, 'Massive blue supergiant in the Andromeda Galaxy.', 25);
INSERT INTO public.star VALUES (5, 'Triangulum Beta', 3, 'Binary star system in the Triangulum Galaxy.', 300);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 2, 'Red dwarf star, the closest known star to the Sun.', 4200);


--
-- Name: cosmic_events_cosimic_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cosmic_events_cosimic_events_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: cosmic_events cosmic_events_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cosmic_events
    ADD CONSTRAINT cosmic_events_name_key UNIQUE (name);


--
-- Name: cosmic_events cosmic_events_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cosmic_events
    ADD CONSTRAINT cosmic_events_pkey PRIMARY KEY (cosmic_events_id);


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
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_key UNIQUE (name);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

