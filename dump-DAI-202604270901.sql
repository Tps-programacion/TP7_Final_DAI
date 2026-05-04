--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2026-04-27 09:01:30

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
-- TOC entry 218 (class 1259 OID 16464)
-- Name: beneficios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.beneficios (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL,
    id_comercio integer,
    descripcion_corta character varying(150),
    descuento smallint,
    activo boolean
);


ALTER TABLE public.beneficios OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16474)
-- Name: beneficios_usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.beneficios_usuarios (
    id integer NOT NULL,
    id_beneficio integer NOT NULL,
    id_usuario integer NOT NULL,
    fecha timestamp without time zone NOT NULL
);


ALTER TABLE public.beneficios_usuarios OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16450)
-- Name: comercios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comercios (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL,
    descripcion character varying,
    telefono_principal character varying(75),
    comercio_datoscontacto character varying(150),
    url character varying(512),
    email character varying(320),
    activo boolean
);


ALTER TABLE public.comercios OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16406)
-- Name: provincias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.provincias (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL,
    orden integer,
    activo boolean NOT NULL
);


ALTER TABLE public.provincias OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16416)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nombre character varying(75) NOT NULL,
    apellido character varying(75),
    fecha_nacimiento date,
    id_provincia integer
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 4809 (class 0 OID 16464)
-- Dependencies: 218
-- Data for Name: beneficios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.beneficios (id, nombre, id_comercio, descripcion_corta, descuento, activo) FROM stdin;
\.


--
-- TOC entry 4810 (class 0 OID 16474)
-- Dependencies: 219
-- Data for Name: beneficios_usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.beneficios_usuarios (id, id_beneficio, id_usuario, fecha) FROM stdin;
\.


--
-- TOC entry 4808 (class 0 OID 16450)
-- Dependencies: 217
-- Data for Name: comercios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comercios (id, nombre, descripcion, telefono_principal, comercio_datoscontacto, url, email, activo) FROM stdin;
\.


--
-- TOC entry 4806 (class 0 OID 16406)
-- Dependencies: 215
-- Data for Name: provincias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.provincias (id, nombre, orden, activo) FROM stdin;
\.


--
-- TOC entry 4807 (class 0 OID 16416)
-- Dependencies: 216
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (id, nombre, apellido, fecha_nacimiento, id_provincia) FROM stdin;
\.


--
-- TOC entry 4656 (class 2606 OID 16468)
-- Name: beneficios beneficios_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.beneficios
    ADD CONSTRAINT beneficios_pk PRIMARY KEY (id);


--
-- TOC entry 4658 (class 2606 OID 16478)
-- Name: beneficios_usuarios beneficios_usuarios_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.beneficios_usuarios
    ADD CONSTRAINT beneficios_usuarios_pk PRIMARY KEY (id);


--
-- TOC entry 4654 (class 2606 OID 16456)
-- Name: comercios comercios_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comercios
    ADD CONSTRAINT comercios_pk PRIMARY KEY (id);


--
-- TOC entry 4650 (class 2606 OID 16410)
-- Name: provincias provincias_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provincias
    ADD CONSTRAINT provincias_pk PRIMARY KEY (id);


--
-- TOC entry 4652 (class 2606 OID 16420)
-- Name: usuarios usuarios_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pk PRIMARY KEY (id);


--
-- TOC entry 4660 (class 2606 OID 16469)
-- Name: beneficios beneficios_comercios_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.beneficios
    ADD CONSTRAINT beneficios_comercios_fk FOREIGN KEY (id_comercio) REFERENCES public.comercios(id);


--
-- TOC entry 4661 (class 2606 OID 16484)
-- Name: beneficios_usuarios beneficios_usuarios_beneficios_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.beneficios_usuarios
    ADD CONSTRAINT beneficios_usuarios_beneficios_fk FOREIGN KEY (id_beneficio) REFERENCES public.beneficios(id);


--
-- TOC entry 4662 (class 2606 OID 16479)
-- Name: beneficios_usuarios beneficios_usuarios_usuarios_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.beneficios_usuarios
    ADD CONSTRAINT beneficios_usuarios_usuarios_fk FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id);


--
-- TOC entry 4659 (class 2606 OID 16421)
-- Name: usuarios usuarios_provincias_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_provincias_fk FOREIGN KEY (id_provincia) REFERENCES public.provincias(id);


-- Completed on 2026-04-27 09:01:31

--
-- PostgreSQL database dump complete
--

