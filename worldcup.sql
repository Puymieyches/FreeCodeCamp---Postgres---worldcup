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
    round character varying(50) NOT NULL,
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
    name character varying(50) NOT NULL
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

INSERT INTO public.games VALUES (33, 2018, 'Final', 94, 95, 4, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 96, 97, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 95, 97, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 94, 96, 1, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 95, 98, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 97, 99, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 96, 100, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 94, 101, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 97, 102, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 99, 103, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 96, 104, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 100, 105, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 95, 106, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 98, 107, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 101, 108, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 94, 109, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 110, 109, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 111, 100, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 109, 111, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 110, 100, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 111, 112, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 109, 96, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 100, 102, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 110, 94, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 100, 113, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 102, 101, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 94, 114, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 110, 115, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 111, 105, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 112, 116, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 109, 103, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 96, 117, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (94, 'France');
INSERT INTO public.teams VALUES (95, 'Croatia');
INSERT INTO public.teams VALUES (96, 'Belgium');
INSERT INTO public.teams VALUES (97, 'England');
INSERT INTO public.teams VALUES (98, 'Russia');
INSERT INTO public.teams VALUES (99, 'Sweden');
INSERT INTO public.teams VALUES (100, 'Brazil');
INSERT INTO public.teams VALUES (101, 'Uruguay');
INSERT INTO public.teams VALUES (102, 'Colombia');
INSERT INTO public.teams VALUES (103, 'Switzerland');
INSERT INTO public.teams VALUES (104, 'Japan');
INSERT INTO public.teams VALUES (105, 'Mexico');
INSERT INTO public.teams VALUES (106, 'Denmark');
INSERT INTO public.teams VALUES (107, 'Spain');
INSERT INTO public.teams VALUES (108, 'Portugal');
INSERT INTO public.teams VALUES (109, 'Argentina');
INSERT INTO public.teams VALUES (110, 'Germany');
INSERT INTO public.teams VALUES (111, 'Netherlands');
INSERT INTO public.teams VALUES (112, 'Costa Rica');
INSERT INTO public.teams VALUES (113, 'Chile');
INSERT INTO public.teams VALUES (114, 'Nigeria');
INSERT INTO public.teams VALUES (115, 'Algeria');
INSERT INTO public.teams VALUES (116, 'Greece');
INSERT INTO public.teams VALUES (117, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 117, true);


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
-- Name: games fk_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

