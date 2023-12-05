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
    round character varying(30) NOT NULL,
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
    name character varying(50) NOT NULL,
    team_id integer NOT NULL
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

INSERT INTO public.games VALUES (33, 2018, 'Final', 145, 146, 4, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 147, 148, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 146, 148, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 145, 147, 1, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 146, 149, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 148, 150, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 147, 151, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 145, 152, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 148, 153, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 150, 154, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 147, 155, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 151, 156, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 146, 157, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 149, 158, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 152, 159, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 145, 160, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 161, 160, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 162, 151, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 160, 162, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 161, 151, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 162, 163, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 160, 147, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 151, 153, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 161, 145, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 151, 164, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 153, 152, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 145, 165, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 161, 166, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 162, 156, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 163, 167, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 160, 154, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 147, 168, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 145);
INSERT INTO public.teams VALUES ('Croatia', 146);
INSERT INTO public.teams VALUES ('Belgium', 147);
INSERT INTO public.teams VALUES ('England', 148);
INSERT INTO public.teams VALUES ('Russia', 149);
INSERT INTO public.teams VALUES ('Sweden', 150);
INSERT INTO public.teams VALUES ('Brazil', 151);
INSERT INTO public.teams VALUES ('Uruguay', 152);
INSERT INTO public.teams VALUES ('Colombia', 153);
INSERT INTO public.teams VALUES ('Switzerland', 154);
INSERT INTO public.teams VALUES ('Japan', 155);
INSERT INTO public.teams VALUES ('Mexico', 156);
INSERT INTO public.teams VALUES ('Denmark', 157);
INSERT INTO public.teams VALUES ('Spain', 158);
INSERT INTO public.teams VALUES ('Portugal', 159);
INSERT INTO public.teams VALUES ('Argentina', 160);
INSERT INTO public.teams VALUES ('Germany', 161);
INSERT INTO public.teams VALUES ('Netherlands', 162);
INSERT INTO public.teams VALUES ('Costa Rica', 163);
INSERT INTO public.teams VALUES ('Chile', 164);
INSERT INTO public.teams VALUES ('Nigeria', 165);
INSERT INTO public.teams VALUES ('Algeria', 166);
INSERT INTO public.teams VALUES ('Greece', 167);
INSERT INTO public.teams VALUES ('United States', 168);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 168, true);


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
-- Name: games fk_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

