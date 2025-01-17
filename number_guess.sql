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
    number_guess integer NOT NULL,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 15, 6);
INSERT INTO public.games VALUES (2, 298, 7);
INSERT INTO public.games VALUES (3, 525, 7);
INSERT INTO public.games VALUES (4, 681, 8);
INSERT INTO public.games VALUES (5, 265, 8);
INSERT INTO public.games VALUES (6, 498, 7);
INSERT INTO public.games VALUES (7, 881, 7);
INSERT INTO public.games VALUES (8, 990, 7);
INSERT INTO public.games VALUES (9, 810, 9);
INSERT INTO public.games VALUES (10, 628, 9);
INSERT INTO public.games VALUES (11, 347, 10);
INSERT INTO public.games VALUES (12, 868, 10);
INSERT INTO public.games VALUES (13, 850, 9);
INSERT INTO public.games VALUES (14, 630, 9);
INSERT INTO public.games VALUES (15, 87, 9);
INSERT INTO public.games VALUES (16, 957, 11);
INSERT INTO public.games VALUES (17, 984, 11);
INSERT INTO public.games VALUES (18, 997, 12);
INSERT INTO public.games VALUES (19, 960, 12);
INSERT INTO public.games VALUES (20, 966, 11);
INSERT INTO public.games VALUES (21, 436, 11);
INSERT INTO public.games VALUES (22, 967, 11);
INSERT INTO public.games VALUES (23, 822, 13);
INSERT INTO public.games VALUES (24, 232, 13);
INSERT INTO public.games VALUES (25, 517, 14);
INSERT INTO public.games VALUES (26, 992, 14);
INSERT INTO public.games VALUES (27, 867, 13);
INSERT INTO public.games VALUES (28, 248, 13);
INSERT INTO public.games VALUES (29, 17, 13);
INSERT INTO public.games VALUES (30, 414, 15);
INSERT INTO public.games VALUES (31, 133, 15);
INSERT INTO public.games VALUES (32, 674, 16);
INSERT INTO public.games VALUES (33, 485, 16);
INSERT INTO public.games VALUES (34, 448, 15);
INSERT INTO public.games VALUES (35, 48, 15);
INSERT INTO public.games VALUES (36, 673, 15);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1730809564427');
INSERT INTO public.users VALUES (2, 'user_1730809564426');
INSERT INTO public.users VALUES (3, 'Pavi');
INSERT INTO public.users VALUES (4, 'user_1730810553844');
INSERT INTO public.users VALUES (5, 'user_1730810553843');
INSERT INTO public.users VALUES (6, 'varsh');
INSERT INTO public.users VALUES (7, 'user_1730810690686');
INSERT INTO public.users VALUES (8, 'user_1730810690685');
INSERT INTO public.users VALUES (9, 'user_1730810721887');
INSERT INTO public.users VALUES (10, 'user_1730810721886');
INSERT INTO public.users VALUES (11, 'user_1730810997165');
INSERT INTO public.users VALUES (12, 'user_1730810997164');
INSERT INTO public.users VALUES (13, 'user_1730811114331');
INSERT INTO public.users VALUES (14, 'user_1730811114330');
INSERT INTO public.users VALUES (15, 'user_1730811154675');
INSERT INTO public.users VALUES (16, 'user_1730811154674');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 36, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 16, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

