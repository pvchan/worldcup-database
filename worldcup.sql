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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (160, 2018, 'Final', 1498, 1499, 4, 2);
INSERT INTO public.games VALUES (161, 2018, 'Third Place', 1500, 1501, 2, 0);
INSERT INTO public.games VALUES (162, 2018, 'Semi-Final', 1499, 1501, 2, 1);
INSERT INTO public.games VALUES (163, 2018, 'Semi-Final', 1498, 1500, 1, 0);
INSERT INTO public.games VALUES (164, 2018, 'Quarter-Final', 1499, 1502, 3, 2);
INSERT INTO public.games VALUES (165, 2018, 'Quarter-Final', 1501, 1503, 2, 0);
INSERT INTO public.games VALUES (166, 2018, 'Quarter-Final', 1500, 1504, 2, 1);
INSERT INTO public.games VALUES (167, 2018, 'Quarter-Final', 1498, 1505, 2, 0);
INSERT INTO public.games VALUES (168, 2018, 'Eighth-Final', 1501, 1506, 2, 1);
INSERT INTO public.games VALUES (169, 2018, 'Eighth-Final', 1503, 1507, 1, 0);
INSERT INTO public.games VALUES (170, 2018, 'Eighth-Final', 1500, 1508, 3, 2);
INSERT INTO public.games VALUES (171, 2018, 'Eighth-Final', 1504, 1509, 2, 0);
INSERT INTO public.games VALUES (172, 2018, 'Eighth-Final', 1499, 1510, 2, 1);
INSERT INTO public.games VALUES (173, 2018, 'Eighth-Final', 1502, 1511, 2, 1);
INSERT INTO public.games VALUES (174, 2018, 'Eighth-Final', 1505, 1512, 2, 1);
INSERT INTO public.games VALUES (175, 2018, 'Eighth-Final', 1498, 1513, 4, 3);
INSERT INTO public.games VALUES (176, 2014, 'Final', 1514, 1513, 1, 0);
INSERT INTO public.games VALUES (177, 2014, 'Third Place', 1515, 1504, 3, 0);
INSERT INTO public.games VALUES (178, 2014, 'Semi-Final', 1513, 1515, 1, 0);
INSERT INTO public.games VALUES (179, 2014, 'Semi-Final', 1514, 1504, 7, 1);
INSERT INTO public.games VALUES (180, 2014, 'Quarter-Final', 1515, 1516, 1, 0);
INSERT INTO public.games VALUES (181, 2014, 'Quarter-Final', 1513, 1500, 1, 0);
INSERT INTO public.games VALUES (182, 2014, 'Quarter-Final', 1504, 1506, 2, 1);
INSERT INTO public.games VALUES (183, 2014, 'Quarter-Final', 1514, 1498, 1, 0);
INSERT INTO public.games VALUES (184, 2014, 'Eighth-Final', 1504, 1517, 2, 1);
INSERT INTO public.games VALUES (185, 2014, 'Eighth-Final', 1506, 1505, 2, 0);
INSERT INTO public.games VALUES (186, 2014, 'Eighth-Final', 1498, 1518, 2, 0);
INSERT INTO public.games VALUES (187, 2014, 'Eighth-Final', 1514, 1519, 2, 1);
INSERT INTO public.games VALUES (188, 2014, 'Eighth-Final', 1515, 1509, 2, 1);
INSERT INTO public.games VALUES (189, 2014, 'Eighth-Final', 1516, 1520, 2, 1);
INSERT INTO public.games VALUES (190, 2014, 'Eighth-Final', 1513, 1507, 1, 0);
INSERT INTO public.games VALUES (191, 2014, 'Eighth-Final', 1500, 1521, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1498, 'France');
INSERT INTO public.teams VALUES (1499, 'Croatia');
INSERT INTO public.teams VALUES (1500, 'Belgium');
INSERT INTO public.teams VALUES (1501, 'England');
INSERT INTO public.teams VALUES (1502, 'Russia');
INSERT INTO public.teams VALUES (1503, 'Sweden');
INSERT INTO public.teams VALUES (1504, 'Brazil');
INSERT INTO public.teams VALUES (1505, 'Uruguay');
INSERT INTO public.teams VALUES (1506, 'Colombia');
INSERT INTO public.teams VALUES (1507, 'Switzerland');
INSERT INTO public.teams VALUES (1508, 'Japan');
INSERT INTO public.teams VALUES (1509, 'Mexico');
INSERT INTO public.teams VALUES (1510, 'Denmark');
INSERT INTO public.teams VALUES (1511, 'Spain');
INSERT INTO public.teams VALUES (1512, 'Portugal');
INSERT INTO public.teams VALUES (1513, 'Argentina');
INSERT INTO public.teams VALUES (1514, 'Germany');
INSERT INTO public.teams VALUES (1515, 'Netherlands');
INSERT INTO public.teams VALUES (1516, 'Costa Rica');
INSERT INTO public.teams VALUES (1517, 'Chile');
INSERT INTO public.teams VALUES (1518, 'Nigeria');
INSERT INTO public.teams VALUES (1519, 'Algeria');
INSERT INTO public.teams VALUES (1520, 'Greece');
INSERT INTO public.teams VALUES (1521, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 191, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1521, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

