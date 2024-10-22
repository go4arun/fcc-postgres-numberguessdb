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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    username character varying(22) NOT NULL,
    guesses integer NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 'Jack', 7);
INSERT INTO public.games VALUES (2, 'Jack', 15);
INSERT INTO public.games VALUES (3, '', 1);
INSERT INTO public.games VALUES (4, 'user_1729602416880', 760);
INSERT INTO public.games VALUES (5, 'user_1729602416880', 248);
INSERT INTO public.games VALUES (6, 'user_1729602416879', 951);
INSERT INTO public.games VALUES (7, 'user_1729602416879', 812);
INSERT INTO public.games VALUES (8, 'user_1729602416880', 330);
INSERT INTO public.games VALUES (9, 'user_1729602416880', 478);
INSERT INTO public.games VALUES (10, 'user_1729602416880', 928);
INSERT INTO public.games VALUES (11, 'user_1729602498978', 806);
INSERT INTO public.games VALUES (12, 'user_1729602498978', 64);
INSERT INTO public.games VALUES (13, 'user_1729602498977', 535);
INSERT INTO public.games VALUES (14, 'user_1729602498977', 802);
INSERT INTO public.games VALUES (15, 'user_1729602498978', 390);
INSERT INTO public.games VALUES (16, 'user_1729602498978', 748);
INSERT INTO public.games VALUES (17, 'user_1729602498978', 305);
INSERT INTO public.games VALUES (18, 'user_1729602620804', 522);
INSERT INTO public.games VALUES (19, 'user_1729602620804', 769);
INSERT INTO public.games VALUES (20, 'user_1729602620803', 418);
INSERT INTO public.games VALUES (21, 'user_1729602620803', 52);
INSERT INTO public.games VALUES (22, 'user_1729602620804', 539);
INSERT INTO public.games VALUES (23, 'user_1729602620804', 781);
INSERT INTO public.games VALUES (24, 'user_1729602620804', 491);
INSERT INTO public.games VALUES (25, 'Boris', 10);
INSERT INTO public.games VALUES (26, 'user_1729603086466', 297);
INSERT INTO public.games VALUES (27, 'user_1729603086466', 710);
INSERT INTO public.games VALUES (28, 'user_1729603086465', 196);
INSERT INTO public.games VALUES (29, 'user_1729603086465', 882);
INSERT INTO public.games VALUES (30, 'user_1729603086466', 604);
INSERT INTO public.games VALUES (31, 'user_1729603086466', 817);
INSERT INTO public.games VALUES (32, 'user_1729603086466', 727);
INSERT INTO public.games VALUES (33, 'user_1729603152436', 128);
INSERT INTO public.games VALUES (34, 'user_1729603152436', 454);
INSERT INTO public.games VALUES (35, 'user_1729603152435', 962);
INSERT INTO public.games VALUES (36, 'user_1729603152435', 378);
INSERT INTO public.games VALUES (37, 'user_1729603152436', 381);
INSERT INTO public.games VALUES (38, 'user_1729603152436', 813);
INSERT INTO public.games VALUES (39, 'user_1729603152436', 940);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 39, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- PostgreSQL database dump complete
--

