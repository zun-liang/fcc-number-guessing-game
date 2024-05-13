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
-- Name: number_guess; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.number_guess (
    username character varying(22) NOT NULL,
    guess_count integer NOT NULL,
    play_time timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.number_guess OWNER TO freecodecamp;

--
-- Data for Name: number_guess; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.number_guess VALUES ('zun', 11, '2024-05-13 00:56:27.973421');
INSERT INTO public.number_guess VALUES ('zun', 9, '2024-05-13 00:57:37.307313');
INSERT INTO public.number_guess VALUES ('mi', 9, '2024-05-13 00:59:05.001525');
INSERT INTO public.number_guess VALUES ('user_1715561975202', 350, '2024-05-13 00:59:35.296397');
INSERT INTO public.number_guess VALUES ('user_1715561975202', 700, '2024-05-13 00:59:35.454372');
INSERT INTO public.number_guess VALUES ('user_1715561975201', 809, '2024-05-13 00:59:35.622253');
INSERT INTO public.number_guess VALUES ('user_1715561975201', 146, '2024-05-13 00:59:35.718347');
INSERT INTO public.number_guess VALUES ('user_1715561975202', 784, '2024-05-13 00:59:35.911457');
INSERT INTO public.number_guess VALUES ('user_1715561975202', 964, '2024-05-13 00:59:36.149377');
INSERT INTO public.number_guess VALUES ('user_1715561975202', 430, '2024-05-13 00:59:36.284098');
INSERT INTO public.number_guess VALUES ('user_1715562103594', 106, '2024-05-13 01:01:43.646596');
INSERT INTO public.number_guess VALUES ('user_1715562103594', 853, '2024-05-13 01:01:43.835787');
INSERT INTO public.number_guess VALUES ('user_1715562103593', 946, '2024-05-13 01:01:44.053247');
INSERT INTO public.number_guess VALUES ('user_1715562103593', 156, '2024-05-13 01:01:44.158275');
INSERT INTO public.number_guess VALUES ('user_1715562103594', 85, '2024-05-13 01:01:44.22985');
INSERT INTO public.number_guess VALUES ('user_1715562103594', 329, '2024-05-13 01:01:44.325879');
INSERT INTO public.number_guess VALUES ('user_1715562103594', 431, '2024-05-13 01:01:44.460945');


--
-- PostgreSQL database dump complete
--

