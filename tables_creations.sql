--
-- PostgreSQL database dump
--

-- Dumped from database version 16.9
-- Dumped by pg_dump version 17.5

-- Started on 2025-05-19 16:53:01

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 216 (class 1259 OID 16475)
-- Name: clienti; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clienti (
    numero_cliente integer NOT NULL,
    nome character varying(30) NOT NULL,
    cognome character varying(30) NOT NULL,
    anno_di_nascita date DEFAULT '2000-05-19'::date,
    regione_residenza character varying(30)
);


ALTER TABLE public.clienti OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16474)
-- Name: clienti_numero_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clienti_numero_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.clienti_numero_cliente_seq OWNER TO postgres;

--
-- TOC entry 4919 (class 0 OID 0)
-- Dependencies: 215
-- Name: clienti_numero_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clienti_numero_cliente_seq OWNED BY public.clienti.numero_cliente;


--
-- TOC entry 222 (class 1259 OID 16497)
-- Name: fatture; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fatture (
    numero_fattura integer NOT NULL,
    tipologia character varying(30) NOT NULL,
    importo numeric NOT NULL,
    iva numeric NOT NULL,
    id_cliente integer NOT NULL,
    data_fattura date NOT NULL,
    numero_fornitore integer NOT NULL
);


ALTER TABLE public.fatture OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16496)
-- Name: fatture_numero_fattura_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fatture_numero_fattura_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fatture_numero_fattura_seq OWNER TO postgres;

--
-- TOC entry 4920 (class 0 OID 0)
-- Dependencies: 221
-- Name: fatture_numero_fattura_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fatture_numero_fattura_seq OWNED BY public.fatture.numero_fattura;


--
-- TOC entry 220 (class 1259 OID 16490)
-- Name: fornitori; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fornitori (
    numero_fornitore integer NOT NULL,
    denominazione character varying(30) NOT NULL,
    regione_residenza character varying(30) NOT NULL
);


ALTER TABLE public.fornitori OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16489)
-- Name: fornitori_numero_fornitore_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fornitori_numero_fornitore_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fornitori_numero_fornitore_seq OWNER TO postgres;

--
-- TOC entry 4921 (class 0 OID 0)
-- Dependencies: 219
-- Name: fornitori_numero_fornitore_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fornitori_numero_fornitore_seq OWNED BY public.fornitori.numero_fornitore;


--
-- TOC entry 218 (class 1259 OID 16483)
-- Name: prodotti; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prodotti (
    id_prodotto integer NOT NULL,
    descrizione character varying(70) NOT NULL,
    in_produzione boolean NOT NULL,
    in_commercio boolean NOT NULL,
    data_attivazione date NOT NULL,
    data_disattivazione date NOT NULL
);


ALTER TABLE public.prodotti OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16482)
-- Name: prodotti_id_prodotto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.prodotti_id_prodotto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.prodotti_id_prodotto_seq OWNER TO postgres;

--
-- TOC entry 4922 (class 0 OID 0)
-- Dependencies: 217
-- Name: prodotti_id_prodotto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.prodotti_id_prodotto_seq OWNED BY public.prodotti.id_prodotto;


--
-- TOC entry 4750 (class 2604 OID 16478)
-- Name: clienti numero_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clienti ALTER COLUMN numero_cliente SET DEFAULT nextval('public.clienti_numero_cliente_seq'::regclass);


--
-- TOC entry 4754 (class 2604 OID 16500)
-- Name: fatture numero_fattura; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fatture ALTER COLUMN numero_fattura SET DEFAULT nextval('public.fatture_numero_fattura_seq'::regclass);


--
-- TOC entry 4753 (class 2604 OID 16493)
-- Name: fornitori numero_fornitore; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornitori ALTER COLUMN numero_fornitore SET DEFAULT nextval('public.fornitori_numero_fornitore_seq'::regclass);


--
-- TOC entry 4752 (class 2604 OID 16486)
-- Name: prodotti id_prodotto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prodotti ALTER COLUMN id_prodotto SET DEFAULT nextval('public.prodotti_id_prodotto_seq'::regclass);


--
-- TOC entry 4907 (class 0 OID 16475)
-- Dependencies: 216
-- Data for Name: clienti; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clienti (numero_cliente, nome, cognome, anno_di_nascita, regione_residenza) FROM stdin;
\.


--
-- TOC entry 4913 (class 0 OID 16497)
-- Dependencies: 222
-- Data for Name: fatture; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fatture (numero_fattura, tipologia, importo, iva, id_cliente, data_fattura, numero_fornitore) FROM stdin;
\.


--
-- TOC entry 4911 (class 0 OID 16490)
-- Dependencies: 220
-- Data for Name: fornitori; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fornitori (numero_fornitore, denominazione, regione_residenza) FROM stdin;
\.


--
-- TOC entry 4909 (class 0 OID 16483)
-- Dependencies: 218
-- Data for Name: prodotti; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.prodotti (id_prodotto, descrizione, in_produzione, in_commercio, data_attivazione, data_disattivazione) FROM stdin;
\.


--
-- TOC entry 4923 (class 0 OID 0)
-- Dependencies: 215
-- Name: clienti_numero_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clienti_numero_cliente_seq', 1, false);


--
-- TOC entry 4924 (class 0 OID 0)
-- Dependencies: 221
-- Name: fatture_numero_fattura_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fatture_numero_fattura_seq', 1, false);


--
-- TOC entry 4925 (class 0 OID 0)
-- Dependencies: 219
-- Name: fornitori_numero_fornitore_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fornitori_numero_fornitore_seq', 1, false);


--
-- TOC entry 4926 (class 0 OID 0)
-- Dependencies: 217
-- Name: prodotti_id_prodotto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.prodotti_id_prodotto_seq', 1, false);


--
-- TOC entry 4756 (class 2606 OID 16481)
-- Name: clienti clienti_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clienti
    ADD CONSTRAINT clienti_pkey PRIMARY KEY (numero_cliente);


--
-- TOC entry 4762 (class 2606 OID 16504)
-- Name: fatture fatture_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fatture
    ADD CONSTRAINT fatture_pkey PRIMARY KEY (numero_fattura);


--
-- TOC entry 4760 (class 2606 OID 16495)
-- Name: fornitori fornitori_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornitori
    ADD CONSTRAINT fornitori_pkey PRIMARY KEY (numero_fornitore);


--
-- TOC entry 4758 (class 2606 OID 16488)
-- Name: prodotti prodotti_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prodotti
    ADD CONSTRAINT prodotti_pkey PRIMARY KEY (id_prodotto);


-- Completed on 2025-05-19 16:53:02

--
-- PostgreSQL database dump complete
--

