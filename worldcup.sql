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
    round character varying(40) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


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
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (56, 2018, 'Final', 4, 2, 404, 405);
INSERT INTO public.games VALUES (57, 2018, 'Third Place', 2, 0, 406, 407);
INSERT INTO public.games VALUES (58, 2018, 'Semi-Final', 2, 1, 405, 407);
INSERT INTO public.games VALUES (59, 2018, 'Semi-Final', 1, 0, 404, 406);
INSERT INTO public.games VALUES (60, 2018, 'Quarter-Final', 3, 2, 405, 408);
INSERT INTO public.games VALUES (61, 2018, 'Quarter-Final', 2, 0, 407, 409);
INSERT INTO public.games VALUES (62, 2018, 'Quarter-Final', 2, 1, 406, 410);
INSERT INTO public.games VALUES (63, 2018, 'Quarter-Final', 2, 0, 404, 411);
INSERT INTO public.games VALUES (64, 2018, 'Eighth-Final', 2, 1, 407, 412);
INSERT INTO public.games VALUES (65, 2018, 'Eighth-Final', 1, 0, 409, 413);
INSERT INTO public.games VALUES (66, 2018, 'Eighth-Final', 3, 2, 406, 414);
INSERT INTO public.games VALUES (67, 2018, 'Eighth-Final', 2, 0, 410, 415);
INSERT INTO public.games VALUES (68, 2018, 'Eighth-Final', 2, 1, 405, 416);
INSERT INTO public.games VALUES (69, 2018, 'Eighth-Final', 2, 1, 408, 417);
INSERT INTO public.games VALUES (70, 2018, 'Eighth-Final', 2, 1, 411, 418);
INSERT INTO public.games VALUES (71, 2018, 'Eighth-Final', 4, 3, 404, 419);
INSERT INTO public.games VALUES (72, 2014, 'Final', 1, 0, 420, 419);
INSERT INTO public.games VALUES (73, 2014, 'Third Place', 3, 0, 421, 410);
INSERT INTO public.games VALUES (74, 2014, 'Semi-Final', 1, 0, 419, 421);
INSERT INTO public.games VALUES (75, 2014, 'Semi-Final', 7, 1, 420, 410);
INSERT INTO public.games VALUES (76, 2014, 'Quarter-Final', 1, 0, 421, 422);
INSERT INTO public.games VALUES (77, 2014, 'Quarter-Final', 1, 0, 419, 406);
INSERT INTO public.games VALUES (78, 2014, 'Quarter-Final', 2, 1, 410, 412);
INSERT INTO public.games VALUES (79, 2014, 'Quarter-Final', 1, 0, 420, 404);
INSERT INTO public.games VALUES (80, 2014, 'Eighth-Final', 2, 1, 410, 423);
INSERT INTO public.games VALUES (81, 2014, 'Eighth-Final', 2, 0, 412, 411);
INSERT INTO public.games VALUES (82, 2014, 'Eighth-Final', 2, 0, 404, 424);
INSERT INTO public.games VALUES (83, 2014, 'Eighth-Final', 2, 1, 420, 425);
INSERT INTO public.games VALUES (84, 2014, 'Eighth-Final', 2, 1, 421, 415);
INSERT INTO public.games VALUES (85, 2014, 'Eighth-Final', 2, 1, 422, 426);
INSERT INTO public.games VALUES (86, 2014, 'Eighth-Final', 1, 0, 419, 413);
INSERT INTO public.games VALUES (87, 2014, 'Eighth-Final', 2, 1, 406, 427);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (404, 'France');
INSERT INTO public.teams VALUES (405, 'Croatia');
INSERT INTO public.teams VALUES (406, 'Belgium');
INSERT INTO public.teams VALUES (407, 'England');
INSERT INTO public.teams VALUES (408, 'Russia');
INSERT INTO public.teams VALUES (409, 'Sweden');
INSERT INTO public.teams VALUES (410, 'Brazil');
INSERT INTO public.teams VALUES (411, 'Uruguay');
INSERT INTO public.teams VALUES (412, 'Colombia');
INSERT INTO public.teams VALUES (413, 'Switzerland');
INSERT INTO public.teams VALUES (414, 'Japan');
INSERT INTO public.teams VALUES (415, 'Mexico');
INSERT INTO public.teams VALUES (416, 'Denmark');
INSERT INTO public.teams VALUES (417, 'Spain');
INSERT INTO public.teams VALUES (418, 'Portugal');
INSERT INTO public.teams VALUES (419, 'Argentina');
INSERT INTO public.teams VALUES (420, 'Germany');
INSERT INTO public.teams VALUES (421, 'Netherlands');
INSERT INTO public.teams VALUES (422, 'Costa Rica');
INSERT INTO public.teams VALUES (423, 'Chile');
INSERT INTO public.teams VALUES (424, 'Nigeria');
INSERT INTO public.teams VALUES (425, 'Algeria');
INSERT INTO public.teams VALUES (426, 'Greece');
INSERT INTO public.teams VALUES (427, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 87, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 33, true);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 33, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 427, true);


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

