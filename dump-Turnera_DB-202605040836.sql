--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2026-05-04 08:36:29

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
-- TOC entry 215 (class 1259 OID 16405)
-- Name: especialidades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.especialidades (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);


ALTER TABLE public.especialidades OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16408)
-- Name: estados_turno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estados_turno (
    id integer NOT NULL,
    descripcion character varying(50) NOT NULL
);


ALTER TABLE public.estados_turno OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16411)
-- Name: profesionales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profesionales (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    apellido character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    id_especialidad integer NOT NULL
);


ALTER TABLE public.profesionales OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16414)
-- Name: turnos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.turnos (
    id integer NOT NULL,
    id_usuario integer NOT NULL,
    id_profesional integer NOT NULL,
    fecha date NOT NULL,
    hora time without time zone NOT NULL,
    id_estado integer NOT NULL
);


ALTER TABLE public.turnos OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16417)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    apellido character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    telefono character varying(20)
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 4792 (class 0 OID 16405)
-- Dependencies: 215
-- Data for Name: especialidades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.especialidades (id, nombre) FROM stdin;
\.


--
-- TOC entry 4793 (class 0 OID 16408)
-- Dependencies: 216
-- Data for Name: estados_turno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estados_turno (id, descripcion) FROM stdin;
\.


--
-- TOC entry 4794 (class 0 OID 16411)
-- Dependencies: 217
-- Data for Name: profesionales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profesionales (id, nombre, apellido, email, id_especialidad) FROM stdin;
\.


--
-- TOC entry 4795 (class 0 OID 16414)
-- Dependencies: 218
-- Data for Name: turnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.turnos (id, id_usuario, id_profesional, fecha, hora, id_estado) FROM stdin;
\.


--
-- TOC entry 4796 (class 0 OID 16417)
-- Dependencies: 219
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (id, nombre, apellido, email, telefono) FROM stdin;
\.


-- Completed on 2026-05-04 08:36:29

--
-- PostgreSQL database dump complete
--

