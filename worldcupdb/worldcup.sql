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
    name text NOT NULL
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

INSERT INTO public.games VALUES (372, 2018, 'Final', 400, 401, 4, 2);
INSERT INTO public.games VALUES (373, 2018, 'Third Place', 402, 403, 2, 0);
INSERT INTO public.games VALUES (374, 2018, 'Semi-Final', 401, 403, 2, 1);
INSERT INTO public.games VALUES (375, 2018, 'Semi-Final', 400, 402, 1, 0);
INSERT INTO public.games VALUES (376, 2018, 'Quarter-Final', 401, 404, 3, 2);
INSERT INTO public.games VALUES (377, 2018, 'Quarter-Final', 403, 405, 2, 0);
INSERT INTO public.games VALUES (378, 2018, 'Quarter-Final', 402, 406, 2, 1);
INSERT INTO public.games VALUES (379, 2018, 'Quarter-Final', 400, 407, 2, 0);
INSERT INTO public.games VALUES (380, 2018, 'Eighth-Final', 403, 408, 2, 1);
INSERT INTO public.games VALUES (381, 2018, 'Eighth-Final', 405, 409, 1, 0);
INSERT INTO public.games VALUES (382, 2018, 'Eighth-Final', 402, 410, 3, 2);
INSERT INTO public.games VALUES (383, 2018, 'Eighth-Final', 406, 411, 2, 0);
INSERT INTO public.games VALUES (384, 2018, 'Eighth-Final', 401, 412, 2, 1);
INSERT INTO public.games VALUES (385, 2018, 'Eighth-Final', 404, 413, 2, 1);
INSERT INTO public.games VALUES (386, 2018, 'Eighth-Final', 407, 414, 2, 1);
INSERT INTO public.games VALUES (387, 2018, 'Eighth-Final', 400, 415, 4, 3);
INSERT INTO public.games VALUES (388, 2014, 'Final', 416, 415, 1, 0);
INSERT INTO public.games VALUES (389, 2014, 'Third Place', 417, 406, 3, 0);
INSERT INTO public.games VALUES (390, 2014, 'Semi-Final', 415, 417, 1, 0);
INSERT INTO public.games VALUES (391, 2014, 'Semi-Final', 416, 406, 7, 1);
INSERT INTO public.games VALUES (392, 2014, 'Quarter-Final', 417, 418, 1, 0);
INSERT INTO public.games VALUES (393, 2014, 'Quarter-Final', 415, 402, 1, 0);
INSERT INTO public.games VALUES (394, 2014, 'Quarter-Final', 406, 408, 2, 1);
INSERT INTO public.games VALUES (395, 2014, 'Quarter-Final', 416, 400, 1, 0);
INSERT INTO public.games VALUES (396, 2014, 'Eighth-Final', 406, 419, 2, 1);
INSERT INTO public.games VALUES (397, 2014, 'Eighth-Final', 408, 407, 2, 0);
INSERT INTO public.games VALUES (398, 2014, 'Eighth-Final', 400, 420, 2, 0);
INSERT INTO public.games VALUES (399, 2014, 'Eighth-Final', 416, 421, 2, 1);
INSERT INTO public.games VALUES (400, 2014, 'Eighth-Final', 417, 411, 2, 1);
INSERT INTO public.games VALUES (401, 2014, 'Eighth-Final', 418, 422, 2, 1);
INSERT INTO public.games VALUES (402, 2014, 'Eighth-Final', 415, 409, 1, 0);
INSERT INTO public.games VALUES (403, 2014, 'Eighth-Final', 402, 423, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (400, 'France');
INSERT INTO public.teams VALUES (401, 'Croatia');
INSERT INTO public.teams VALUES (402, 'Belgium');
INSERT INTO public.teams VALUES (403, 'England');
INSERT INTO public.teams VALUES (404, 'Russia');
INSERT INTO public.teams VALUES (405, 'Sweden');
INSERT INTO public.teams VALUES (406, 'Brazil');
INSERT INTO public.teams VALUES (407, 'Uruguay');
INSERT INTO public.teams VALUES (408, 'Colombia');
INSERT INTO public.teams VALUES (409, 'Switzerland');
INSERT INTO public.teams VALUES (410, 'Japan');
INSERT INTO public.teams VALUES (411, 'Mexico');
INSERT INTO public.teams VALUES (412, 'Denmark');
INSERT INTO public.teams VALUES (413, 'Spain');
INSERT INTO public.teams VALUES (414, 'Portugal');
INSERT INTO public.teams VALUES (415, 'Argentina');
INSERT INTO public.teams VALUES (416, 'Germany');
INSERT INTO public.teams VALUES (417, 'Netherlands');
INSERT INTO public.teams VALUES (418, 'Costa Rica');
INSERT INTO public.teams VALUES (419, 'Chile');
INSERT INTO public.teams VALUES (420, 'Nigeria');
INSERT INTO public.teams VALUES (421, 'Algeria');
INSERT INTO public.teams VALUES (422, 'Greece');
INSERT INTO public.teams VALUES (423, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 403, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 423, true);


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

