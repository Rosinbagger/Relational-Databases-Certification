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
    name character varying(40) NOT NULL
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

INSERT INTO public.games VALUES (65, 2018, 'Final', 462, 463, 4, 2);
INSERT INTO public.games VALUES (66, 2018, 'Third Place', 464, 465, 2, 0);
INSERT INTO public.games VALUES (67, 2018, 'Semi-Final', 463, 465, 2, 1);
INSERT INTO public.games VALUES (68, 2018, 'Semi-Final', 462, 464, 1, 0);
INSERT INTO public.games VALUES (69, 2018, 'Quarter-Final', 463, 466, 3, 2);
INSERT INTO public.games VALUES (70, 2018, 'Quarter-Final', 465, 467, 2, 0);
INSERT INTO public.games VALUES (71, 2018, 'Quarter-Final', 464, 468, 2, 1);
INSERT INTO public.games VALUES (72, 2018, 'Quarter-Final', 462, 469, 2, 0);
INSERT INTO public.games VALUES (73, 2018, 'Eighth-Final', 465, 470, 2, 1);
INSERT INTO public.games VALUES (74, 2018, 'Eighth-Final', 467, 471, 1, 0);
INSERT INTO public.games VALUES (75, 2018, 'Eighth-Final', 464, 472, 3, 2);
INSERT INTO public.games VALUES (76, 2018, 'Eighth-Final', 468, 473, 2, 0);
INSERT INTO public.games VALUES (77, 2018, 'Eighth-Final', 463, 474, 2, 1);
INSERT INTO public.games VALUES (78, 2018, 'Eighth-Final', 466, 475, 2, 1);
INSERT INTO public.games VALUES (79, 2018, 'Eighth-Final', 469, 476, 2, 1);
INSERT INTO public.games VALUES (80, 2018, 'Eighth-Final', 462, 477, 4, 3);
INSERT INTO public.games VALUES (81, 2014, 'Final', 478, 477, 1, 0);
INSERT INTO public.games VALUES (82, 2014, 'Third Place', 479, 468, 3, 0);
INSERT INTO public.games VALUES (83, 2014, 'Semi-Final', 477, 479, 1, 0);
INSERT INTO public.games VALUES (84, 2014, 'Semi-Final', 478, 468, 7, 1);
INSERT INTO public.games VALUES (85, 2014, 'Quarter-Final', 479, 480, 1, 0);
INSERT INTO public.games VALUES (86, 2014, 'Quarter-Final', 477, 464, 1, 0);
INSERT INTO public.games VALUES (87, 2014, 'Quarter-Final', 468, 470, 2, 1);
INSERT INTO public.games VALUES (88, 2014, 'Quarter-Final', 478, 462, 1, 0);
INSERT INTO public.games VALUES (89, 2014, 'Eighth-Final', 468, 481, 2, 1);
INSERT INTO public.games VALUES (90, 2014, 'Eighth-Final', 470, 469, 2, 0);
INSERT INTO public.games VALUES (91, 2014, 'Eighth-Final', 462, 482, 2, 0);
INSERT INTO public.games VALUES (92, 2014, 'Eighth-Final', 478, 483, 2, 1);
INSERT INTO public.games VALUES (93, 2014, 'Eighth-Final', 479, 473, 2, 1);
INSERT INTO public.games VALUES (94, 2014, 'Eighth-Final', 480, 484, 2, 1);
INSERT INTO public.games VALUES (95, 2014, 'Eighth-Final', 477, 471, 1, 0);
INSERT INTO public.games VALUES (96, 2014, 'Eighth-Final', 464, 485, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (462, 'France');
INSERT INTO public.teams VALUES (463, 'Croatia');
INSERT INTO public.teams VALUES (464, 'Belgium');
INSERT INTO public.teams VALUES (465, 'England');
INSERT INTO public.teams VALUES (466, 'Russia');
INSERT INTO public.teams VALUES (467, 'Sweden');
INSERT INTO public.teams VALUES (468, 'Brazil');
INSERT INTO public.teams VALUES (469, 'Uruguay');
INSERT INTO public.teams VALUES (470, 'Colombia');
INSERT INTO public.teams VALUES (471, 'Switzerland');
INSERT INTO public.teams VALUES (472, 'Japan');
INSERT INTO public.teams VALUES (473, 'Mexico');
INSERT INTO public.teams VALUES (474, 'Denmark');
INSERT INTO public.teams VALUES (475, 'Spain');
INSERT INTO public.teams VALUES (476, 'Portugal');
INSERT INTO public.teams VALUES (477, 'Argentina');
INSERT INTO public.teams VALUES (478, 'Germany');
INSERT INTO public.teams VALUES (479, 'Netherlands');
INSERT INTO public.teams VALUES (480, 'Costa Rica');
INSERT INTO public.teams VALUES (481, 'Chile');
INSERT INTO public.teams VALUES (482, 'Nigeria');
INSERT INTO public.teams VALUES (483, 'Algeria');
INSERT INTO public.teams VALUES (484, 'Greece');
INSERT INTO public.teams VALUES (485, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 485, true);


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
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey1 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

