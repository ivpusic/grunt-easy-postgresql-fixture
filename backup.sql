--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Roles; Type: TABLE; Schema: public; Owner: ivpusic; Tablespace: 
--

CREATE TABLE "Roles" (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Roles" OWNER TO ivpusic;

--
-- Name: Roles_id_seq; Type: SEQUENCE; Schema: public; Owner: ivpusic
--

CREATE SEQUENCE "Roles_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Roles_id_seq" OWNER TO ivpusic;

--
-- Name: Roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ivpusic
--

ALTER SEQUENCE "Roles_id_seq" OWNED BY "Roles".id;


--
-- Name: User1s; Type: TABLE; Schema: public; Owner: ivpusic; Tablespace: 
--

CREATE TABLE "User1s" (
    id integer NOT NULL,
    email character varying(255),
    password character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."User1s" OWNER TO ivpusic;

--
-- Name: User1s_id_seq; Type: SEQUENCE; Schema: public; Owner: ivpusic
--

CREATE SEQUENCE "User1s_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."User1s_id_seq" OWNER TO ivpusic;

--
-- Name: User1s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ivpusic
--

ALTER SEQUENCE "User1s_id_seq" OWNED BY "User1s".id;


--
-- Name: Users; Type: TABLE; Schema: public; Owner: ivpusic; Tablespace: 
--

CREATE TABLE "Users" (
    id integer NOT NULL,
    email character varying(255),
    password character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "RoleId" integer
);


ALTER TABLE public."Users" OWNER TO ivpusic;

--
-- Name: Users_id_seq; Type: SEQUENCE; Schema: public; Owner: ivpusic
--

CREATE SEQUENCE "Users_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Users_id_seq" OWNER TO ivpusic;

--
-- Name: Users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ivpusic
--

ALTER SEQUENCE "Users_id_seq" OWNED BY "Users".id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ivpusic
--

ALTER TABLE ONLY "Roles" ALTER COLUMN id SET DEFAULT nextval('"Roles_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ivpusic
--

ALTER TABLE ONLY "User1s" ALTER COLUMN id SET DEFAULT nextval('"User1s_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ivpusic
--

ALTER TABLE ONLY "Users" ALTER COLUMN id SET DEFAULT nextval('"Users_id_seq"'::regclass);


--
-- Data for Name: Roles; Type: TABLE DATA; Schema: public; Owner: ivpusic
--

COPY "Roles" (id, name, "createdAt", "updatedAt") FROM stdin;
2	User	2014-04-27 00:07:26.114626+02	2014-04-27 00:07:26.114626+02
\.


--
-- Name: Roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ivpusic
--

SELECT pg_catalog.setval('"Roles_id_seq"', 2, true);


--
-- Data for Name: User1s; Type: TABLE DATA; Schema: public; Owner: ivpusic
--

COPY "User1s" (id, email, password, "createdAt", "updatedAt") FROM stdin;
1	pusic007@gmail.com	asdfasdf	2014-03-13 20:44:58.131+01	2014-03-13 20:44:58.131+01
2	pusic007@gmail.com	asdfasdf	2014-03-13 21:39:54.317+01	2014-03-13 21:39:54.317+01
3	pusic007@gmail.com	asdfasdf	2014-03-13 21:39:57.806+01	2014-03-13 21:39:57.806+01
4	pusic007@gmail.com	asdfasdf	2014-03-13 23:19:44.574+01	2014-03-13 23:19:44.5+01
\.


--
-- Name: User1s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ivpusic
--

SELECT pg_catalog.setval('"User1s_id_seq"', 1, false);


--
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: ivpusic
--

COPY "Users" (id, email, password, "createdAt", "updatedAt", "RoleId") FROM stdin;
\.


--
-- Name: Users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ivpusic
--

SELECT pg_catalog.setval('"Users_id_seq"', 1, false);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

