--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

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

DROP DATABASE IF EXISTS journey;
--
-- Name: journey; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE journey WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'ru-RU';


ALTER DATABASE journey OWNER TO postgres;

\connect journey

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

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: companion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.companion (
    id bigint NOT NULL,
    name character varying(255),
    description character varying(255)
);


ALTER TABLE public.companion OWNER TO postgres;

--
-- Name: COLUMN companion.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.companion.id IS 'Номер';


--
-- Name: COLUMN companion.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.companion.name IS 'Имя';


--
-- Name: COLUMN companion.description; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.companion.description IS 'Описание';


--
-- Name: companion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.companion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.companion_id_seq OWNER TO postgres;

--
-- Name: companion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.companion_id_seq OWNED BY public.companion.id;


--
-- Name: hotel_service; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hotel_service (
    id bigint NOT NULL,
    uuid character varying(255) DEFAULT (gen_random_uuid())::character varying,
    status_id bigint,
    title character varying(255),
    description character varying(255),
    address character varying(255),
    room_number character varying(255)
);


ALTER TABLE public.hotel_service OWNER TO postgres;

--
-- Name: COLUMN hotel_service.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.hotel_service.id IS 'Номер';


--
-- Name: COLUMN hotel_service.uuid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.hotel_service.uuid IS 'Уникальный идентификатор';


--
-- Name: COLUMN hotel_service.status_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.hotel_service.status_id IS 'Статус';


--
-- Name: COLUMN hotel_service.title; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.hotel_service.title IS 'Название';


--
-- Name: COLUMN hotel_service.description; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.hotel_service.description IS 'Описание';


--
-- Name: COLUMN hotel_service.address; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.hotel_service.address IS 'Адрес';


--
-- Name: COLUMN hotel_service.room_number; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.hotel_service.room_number IS 'Номер номера';


--
-- Name: hotel_service_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hotel_service_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.hotel_service_id_seq OWNER TO postgres;

--
-- Name: hotel_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hotel_service_id_seq OWNED BY public.hotel_service.id;


--
-- Name: journey; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.journey (
    id bigint NOT NULL,
    title character varying(255),
    description character varying(255)
);


ALTER TABLE public.journey OWNER TO postgres;

--
-- Name: COLUMN journey.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.journey.id IS 'Номер';


--
-- Name: COLUMN journey.title; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.journey.title IS 'Название';


--
-- Name: COLUMN journey.description; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.journey.description IS 'Описание';


--
-- Name: journey_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.journey_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.journey_id_seq OWNER TO postgres;

--
-- Name: journey_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.journey_id_seq OWNED BY public.journey.id;


--
-- Name: migration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migration (
    version character varying(180) NOT NULL,
    apply_time integer
);


ALTER TABLE public.migration OWNER TO postgres;

--
-- Name: service_timetable_slot; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.service_timetable_slot (
    id bigint NOT NULL,
    title character varying(255),
    timetable_slot_id bigint,
    service_uuid character varying(255)
);


ALTER TABLE public.service_timetable_slot OWNER TO postgres;

--
-- Name: COLUMN service_timetable_slot.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.service_timetable_slot.id IS 'Идентификатор';


--
-- Name: COLUMN service_timetable_slot.title; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.service_timetable_slot.title IS 'Название';


--
-- Name: COLUMN service_timetable_slot.timetable_slot_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.service_timetable_slot.timetable_slot_id IS 'Слот времени в расписании';


--
-- Name: COLUMN service_timetable_slot.service_uuid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.service_timetable_slot.service_uuid IS 'Уникальный идентификатор услуги';


--
-- Name: service_timetable_slot_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.service_timetable_slot_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.service_timetable_slot_id_seq OWNER TO postgres;

--
-- Name: service_timetable_slot_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.service_timetable_slot_id_seq OWNED BY public.service_timetable_slot.id;


--
-- Name: status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.status (
    id bigint NOT NULL,
    code character varying(255),
    title character varying(255),
    description character varying(255)
);


ALTER TABLE public.status OWNER TO postgres;

--
-- Name: COLUMN status.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.status.id IS 'Числовой идентификатор';


--
-- Name: COLUMN status.code; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.status.code IS 'Символьный идентификатор';


--
-- Name: COLUMN status.title; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.status.title IS 'Название';


--
-- Name: COLUMN status.description; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.status.description IS 'Описание';


--
-- Name: status_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.status_id_seq OWNER TO postgres;

--
-- Name: status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.status_id_seq OWNED BY public.status.id;


--
-- Name: timetable_slot; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.timetable_slot (
    id bigint NOT NULL,
    title character varying(255),
    journey_id bigint,
    companion_id bigint,
    date_start date,
    date_finish date
);


ALTER TABLE public.timetable_slot OWNER TO postgres;

--
-- Name: COLUMN timetable_slot.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.timetable_slot.id IS 'Идентификатор';


--
-- Name: COLUMN timetable_slot.title; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.timetable_slot.title IS 'Название';


--
-- Name: COLUMN timetable_slot.journey_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.timetable_slot.journey_id IS 'Поездка';


--
-- Name: COLUMN timetable_slot.companion_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.timetable_slot.companion_id IS 'Участник';


--
-- Name: COLUMN timetable_slot.date_start; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.timetable_slot.date_start IS 'Начало';


--
-- Name: COLUMN timetable_slot.date_finish; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.timetable_slot.date_finish IS 'Окончание';


--
-- Name: transfer_service; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transfer_service (
    id bigint NOT NULL,
    uuid character varying(255) DEFAULT (gen_random_uuid())::character varying,
    status_id bigint,
    title character varying(255),
    description character varying(255),
    seat_number character varying(255)
);


ALTER TABLE public.transfer_service OWNER TO postgres;

--
-- Name: COLUMN transfer_service.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.transfer_service.id IS 'Номер';


--
-- Name: COLUMN transfer_service.uuid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.transfer_service.uuid IS 'Уникальный идентификатор';


--
-- Name: COLUMN transfer_service.status_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.transfer_service.status_id IS 'Статус';


--
-- Name: COLUMN transfer_service.title; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.transfer_service.title IS 'Название';


--
-- Name: COLUMN transfer_service.description; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.transfer_service.description IS 'Описание';


--
-- Name: COLUMN transfer_service.seat_number; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.transfer_service.seat_number IS 'Номер места';


--
-- Name: timetable; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.timetable AS
 SELECT j.title AS journey,
    c.name AS companion,
    COALESCE(ts.title, hs.title, 'нет услуги'::character varying) AS service,
    tsl.date_start,
    tsl.date_finish
   FROM (((((public.service_timetable_slot sts
     JOIN public.timetable_slot tsl ON ((sts.timetable_slot_id = tsl.id)))
     LEFT JOIN public.transfer_service ts ON (((sts.service_uuid)::text = (ts.uuid)::text)))
     LEFT JOIN public.hotel_service hs ON (((sts.service_uuid)::text = (hs.uuid)::text)))
     JOIN public.journey j ON ((tsl.journey_id = j.id)))
     JOIN public.companion c ON ((tsl.companion_id = c.id)))
  ORDER BY j.id, tsl.date_start, tsl.date_finish;


ALTER VIEW public.timetable OWNER TO postgres;

--
-- Name: timetable_slot_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.timetable_slot_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.timetable_slot_id_seq OWNER TO postgres;

--
-- Name: timetable_slot_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.timetable_slot_id_seq OWNED BY public.timetable_slot.id;


--
-- Name: transfer_service_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transfer_service_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transfer_service_id_seq OWNER TO postgres;

--
-- Name: transfer_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transfer_service_id_seq OWNED BY public.transfer_service.id;


--
-- Name: companion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.companion ALTER COLUMN id SET DEFAULT nextval('public.companion_id_seq'::regclass);


--
-- Name: hotel_service id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hotel_service ALTER COLUMN id SET DEFAULT nextval('public.hotel_service_id_seq'::regclass);


--
-- Name: journey id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.journey ALTER COLUMN id SET DEFAULT nextval('public.journey_id_seq'::regclass);


--
-- Name: service_timetable_slot id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_timetable_slot ALTER COLUMN id SET DEFAULT nextval('public.service_timetable_slot_id_seq'::regclass);


--
-- Name: status id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.status ALTER COLUMN id SET DEFAULT nextval('public.status_id_seq'::regclass);


--
-- Name: timetable_slot id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timetable_slot ALTER COLUMN id SET DEFAULT nextval('public.timetable_slot_id_seq'::regclass);


--
-- Name: transfer_service id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transfer_service ALTER COLUMN id SET DEFAULT nextval('public.transfer_service_id_seq'::regclass);


--
-- Data for Name: companion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.companion VALUES (2, 'Иван', NULL);
INSERT INTO public.companion VALUES (3, 'Василий', NULL);
INSERT INTO public.companion VALUES (1, 'Дмитрий', NULL);


--
-- Data for Name: hotel_service; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.hotel_service VALUES (1, 'd1b7648d-c7af-494d-8c47-9f18f0a55c83', 2, 'Дмитрий МСК1 проживание', NULL, NULL, NULL);
INSERT INTO public.hotel_service VALUES (2, 'be956667-7589-49a8-b9af-ab6d93b9c53d', 2, 'Иван МСК1 проживание', NULL, NULL, NULL);
INSERT INTO public.hotel_service VALUES (3, '275ef2a6-6d82-4325-8da3-d944eb81c303', 2, 'Василий МСК1 проживание', NULL, NULL, NULL);
INSERT INTO public.hotel_service VALUES (4, '63c5be8c-920d-49a8-986c-0ca3768ff20b', 2, 'Дмитрий МСК2 проживание', NULL, NULL, NULL);


--
-- Data for Name: journey; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.journey VALUES (1, 'Три дня в Москве', 'поездка Дмитрия Ивана и Василия');


--
-- Data for Name: migration; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.migration VALUES ('m000000_000000_base', 1748888753);
INSERT INTO public.migration VALUES ('m250602_180943_create_table_journey', 1748899450);
INSERT INTO public.migration VALUES ('m250602_182823_create_table_companion', 1748899450);
INSERT INTO public.migration VALUES ('m250602_184932_create_table_status', 1748899450);
INSERT INTO public.migration VALUES ('m250602_193000_create_table_timetable_slot', 1748899450);
INSERT INTO public.migration VALUES ('m250602_194000_create_table_service_timetable_slot', 1748906873);
INSERT INTO public.migration VALUES ('m250602_195914_create_table_transfer_service', 1748907362);
INSERT INTO public.migration VALUES ('m250602_200707_create_table_hotel_service', 1748907362);
INSERT INTO public.migration VALUES ('m250602_235300_create_view_timetable', 1748908653);


--
-- Data for Name: service_timetable_slot; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.service_timetable_slot VALUES (1, 'Дмитрий поезд СПБ-МСК', 1, 'a8c097de-e4db-4da2-bdb9-2baab9380511');
INSERT INTO public.service_timetable_slot VALUES (2, 'Иван поезд СПБ-МСК', 2, '0c8cc17e-6ef2-4b7b-9e4e-3e4dc3b3b887');
INSERT INTO public.service_timetable_slot VALUES (3, 'Василий самолёт Сочи-Мск', 3, 'e6ea1be4-97dd-4f8f-9507-b5cc72fa6db0');
INSERT INTO public.service_timetable_slot VALUES (4, 'Дмитрий МСК1 проживание', 4, 'd1b7648d-c7af-494d-8c47-9f18f0a55c83');
INSERT INTO public.service_timetable_slot VALUES (5, 'Иван МСК1 проживание', 5, 'be956667-7589-49a8-b9af-ab6d93b9c53d');
INSERT INTO public.service_timetable_slot VALUES (6, 'Василий МСК1 проживание', 6, '275ef2a6-6d82-4325-8da3-d944eb81c303');
INSERT INTO public.service_timetable_slot VALUES (7, 'Иван поезд МСК-СПБ', 7, 'b6c13e58-2782-431d-8c93-753925c6c81a');
INSERT INTO public.service_timetable_slot VALUES (8, 'Василий самолёт МСК-Сочи', 8, '18af0cb9-4bec-4b87-b1cc-ab51519ab772');
INSERT INTO public.service_timetable_slot VALUES (9, 'Дмитрий МСК2 проживание', 9, '63c5be8c-920d-49a8-986c-0ca3768ff20b');
INSERT INTO public.service_timetable_slot VALUES (10, 'Дмитрий самолёт МСК-СПБ', 10, '15ab5654-95df-4599-b9f1-ef6105717c64');


--
-- Data for Name: status; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.status VALUES (1, 'NEW', 'Новая', NULL);
INSERT INTO public.status VALUES (2, 'RESERVATION', 'Бронь', NULL);
INSERT INTO public.status VALUES (3, 'ORGANIZED', 'Оформлено', NULL);
INSERT INTO public.status VALUES (4, 'CANCEL', 'Отменена', NULL);


--
-- Data for Name: timetable_slot; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.timetable_slot VALUES (1, 'Дмитрий поезд СПБ-МСК', 1, 1, '2025-06-01', '2025-06-02');
INSERT INTO public.timetable_slot VALUES (2, 'Иван поезд СПБ-МСК', 1, 2, '2025-06-01', '2025-06-02');
INSERT INTO public.timetable_slot VALUES (3, 'Василий самолёт Сочи-Мск', 1, 3, '2025-06-02', '2025-06-02');
INSERT INTO public.timetable_slot VALUES (4, 'Дмитрий МСК1 проживание', 1, 1, '2025-06-02', '2025-06-04');
INSERT INTO public.timetable_slot VALUES (5, 'Иван МСК1 проживание', 1, 2, '2025-06-02', '2025-06-04');
INSERT INTO public.timetable_slot VALUES (6, 'Василий МСК1 проживание', 1, 3, '2025-06-02', '2025-06-04');
INSERT INTO public.timetable_slot VALUES (7, 'Иван поезд МСК-СПБ', 1, 2, '2025-06-04', '2025-06-06');
INSERT INTO public.timetable_slot VALUES (8, 'Василий самолёт МСК-Сочи', 1, 3, '2025-06-04', '2025-06-04');
INSERT INTO public.timetable_slot VALUES (9, 'Дмитрий МСК2 проживание', 1, 1, '2025-06-04', '2025-06-06');
INSERT INTO public.timetable_slot VALUES (10, 'Дмитрий самолёт МСК-СПБ', 1, 1, '2025-06-06', '2025-06-06');


--
-- Data for Name: transfer_service; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.transfer_service VALUES (1, 'a8c097de-e4db-4da2-bdb9-2baab9380511', 2, 'Дмитрий поезд СПБ-МСК', NULL, NULL);
INSERT INTO public.transfer_service VALUES (2, '0c8cc17e-6ef2-4b7b-9e4e-3e4dc3b3b887', 2, 'Иван поезд СПБ-МСК', NULL, NULL);
INSERT INTO public.transfer_service VALUES (3, 'e6ea1be4-97dd-4f8f-9507-b5cc72fa6db0', 2, 'Василий самолёт Сочи-Мск', NULL, NULL);
INSERT INTO public.transfer_service VALUES (4, 'b6c13e58-2782-431d-8c93-753925c6c81a', 2, 'Иван поезд МСК-СПБ', NULL, NULL);
INSERT INTO public.transfer_service VALUES (5, '18af0cb9-4bec-4b87-b1cc-ab51519ab772', 2, 'Василий самолёт МСК-Сочи', NULL, NULL);
INSERT INTO public.transfer_service VALUES (6, '15ab5654-95df-4599-b9f1-ef6105717c64', 2, 'Дмитрий самолёт МСК-СПБ', NULL, NULL);


--
-- Name: companion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.companion_id_seq', 3, true);


--
-- Name: hotel_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hotel_service_id_seq', 4, true);


--
-- Name: journey_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.journey_id_seq', 1, true);


--
-- Name: service_timetable_slot_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.service_timetable_slot_id_seq', 10, true);


--
-- Name: status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.status_id_seq', 4, true);


--
-- Name: timetable_slot_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.timetable_slot_id_seq', 10, true);


--
-- Name: transfer_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transfer_service_id_seq', 6, true);


--
-- Name: companion companion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.companion
    ADD CONSTRAINT companion_pkey PRIMARY KEY (id);


--
-- Name: hotel_service hotel_service_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hotel_service
    ADD CONSTRAINT hotel_service_pkey PRIMARY KEY (id);


--
-- Name: journey journey_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.journey
    ADD CONSTRAINT journey_pkey PRIMARY KEY (id);


--
-- Name: migration migration_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migration
    ADD CONSTRAINT migration_pkey PRIMARY KEY (version);


--
-- Name: service_timetable_slot service_timetable_slot_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_timetable_slot
    ADD CONSTRAINT service_timetable_slot_pkey PRIMARY KEY (id);


--
-- Name: status status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.status
    ADD CONSTRAINT status_pkey PRIMARY KEY (id);


--
-- Name: timetable_slot timetable_slot_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timetable_slot
    ADD CONSTRAINT timetable_slot_pkey PRIMARY KEY (id);


--
-- Name: transfer_service transfer_service_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transfer_service
    ADD CONSTRAINT transfer_service_pkey PRIMARY KEY (id);


--
-- Name: service_timetable_slot_timetable_slot_id_ux; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX service_timetable_slot_timetable_slot_id_ux ON public.service_timetable_slot USING btree (timetable_slot_id);


--
-- Name: status_code_ux; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX status_code_ux ON public.status USING btree (code);


--
-- Name: hotel_service hotel_service_status_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hotel_service
    ADD CONSTRAINT hotel_service_status_id_fk FOREIGN KEY (status_id) REFERENCES public.status(id);


--
-- Name: service_timetable_slot service_timetable_slot_timetable_slot_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_timetable_slot
    ADD CONSTRAINT service_timetable_slot_timetable_slot_id FOREIGN KEY (timetable_slot_id) REFERENCES public.timetable_slot(id);


--
-- Name: transfer_service transfer_service_status_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transfer_service
    ADD CONSTRAINT transfer_service_status_id_fk FOREIGN KEY (status_id) REFERENCES public.status(id);


--
-- PostgreSQL database dump complete
--

