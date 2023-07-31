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
    user_id integer NOT NULL,
    best_guess integer DEFAULT 0 NOT NULL
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
    username character varying(22) NOT NULL,
    frequent_games integer DEFAULT 0 NOT NULL
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

INSERT INTO public.games VALUES (148, 43, 304);
INSERT INTO public.games VALUES (149, 43, 757);
INSERT INTO public.games VALUES (150, 44, 271);
INSERT INTO public.games VALUES (151, 44, 821);
INSERT INTO public.games VALUES (152, 43, 642);
INSERT INTO public.games VALUES (153, 43, 376);
INSERT INTO public.games VALUES (154, 43, 528);
INSERT INTO public.games VALUES (155, 45, 436);
INSERT INTO public.games VALUES (156, 45, 630);
INSERT INTO public.games VALUES (157, 46, 327);
INSERT INTO public.games VALUES (158, 46, 489);
INSERT INTO public.games VALUES (159, 45, 460);
INSERT INTO public.games VALUES (160, 45, 797);
INSERT INTO public.games VALUES (161, 45, 556);
INSERT INTO public.games VALUES (189, 70, 805);
INSERT INTO public.games VALUES (190, 70, 227);
INSERT INTO public.games VALUES (191, 71, 897);
INSERT INTO public.games VALUES (192, 71, 166);
INSERT INTO public.games VALUES (193, 70, 26);
INSERT INTO public.games VALUES (194, 70, 675);
INSERT INTO public.games VALUES (195, 70, 775);
INSERT INTO public.games VALUES (196, 72, 217);
INSERT INTO public.games VALUES (197, 72, 457);
INSERT INTO public.games VALUES (198, 73, 725);
INSERT INTO public.games VALUES (199, 73, 47);
INSERT INTO public.games VALUES (200, 72, 129);
INSERT INTO public.games VALUES (201, 72, 98);
INSERT INTO public.games VALUES (202, 72, 645);
INSERT INTO public.games VALUES (203, 74, 913);
INSERT INTO public.games VALUES (204, 74, 256);
INSERT INTO public.games VALUES (205, 75, 147);
INSERT INTO public.games VALUES (206, 75, 511);
INSERT INTO public.games VALUES (207, 74, 388);
INSERT INTO public.games VALUES (208, 74, 294);
INSERT INTO public.games VALUES (209, 74, 687);
INSERT INTO public.games VALUES (210, 76, 609);
INSERT INTO public.games VALUES (211, 76, 371);
INSERT INTO public.games VALUES (212, 77, 603);
INSERT INTO public.games VALUES (213, 77, 538);
INSERT INTO public.games VALUES (214, 76, 607);
INSERT INTO public.games VALUES (215, 76, 776);
INSERT INTO public.games VALUES (216, 76, 131);
INSERT INTO public.games VALUES (217, 78, 368);
INSERT INTO public.games VALUES (218, 78, 372);
INSERT INTO public.games VALUES (219, 79, 303);
INSERT INTO public.games VALUES (220, 79, 42);
INSERT INTO public.games VALUES (221, 78, 379);
INSERT INTO public.games VALUES (222, 78, 325);
INSERT INTO public.games VALUES (223, 78, 41);
INSERT INTO public.games VALUES (224, 80, 522);
INSERT INTO public.games VALUES (225, 80, 692);
INSERT INTO public.games VALUES (226, 81, 471);
INSERT INTO public.games VALUES (227, 81, 677);
INSERT INTO public.games VALUES (228, 80, 144);
INSERT INTO public.games VALUES (229, 80, 764);
INSERT INTO public.games VALUES (230, 80, 597);
INSERT INTO public.games VALUES (231, 82, 113);
INSERT INTO public.games VALUES (232, 82, 170);
INSERT INTO public.games VALUES (233, 83, 213);
INSERT INTO public.games VALUES (234, 83, 326);
INSERT INTO public.games VALUES (235, 82, 615);
INSERT INTO public.games VALUES (236, 82, 415);
INSERT INTO public.games VALUES (237, 82, 763);
INSERT INTO public.games VALUES (238, 84, 676);
INSERT INTO public.games VALUES (239, 84, 58);
INSERT INTO public.games VALUES (240, 85, 260);
INSERT INTO public.games VALUES (241, 85, 904);
INSERT INTO public.games VALUES (242, 84, 533);
INSERT INTO public.games VALUES (243, 84, 205);
INSERT INTO public.games VALUES (244, 84, 733);
INSERT INTO public.games VALUES (245, 86, 212);
INSERT INTO public.games VALUES (246, 86, 979);
INSERT INTO public.games VALUES (247, 87, 984);
INSERT INTO public.games VALUES (248, 87, 967);
INSERT INTO public.games VALUES (249, 86, 933);
INSERT INTO public.games VALUES (250, 86, 748);
INSERT INTO public.games VALUES (251, 86, 525);
INSERT INTO public.games VALUES (252, 88, 238);
INSERT INTO public.games VALUES (253, 88, 94);
INSERT INTO public.games VALUES (254, 89, 189);
INSERT INTO public.games VALUES (255, 89, 785);
INSERT INTO public.games VALUES (256, 88, 422);
INSERT INTO public.games VALUES (257, 88, 872);
INSERT INTO public.games VALUES (258, 88, 608);
INSERT INTO public.games VALUES (259, 90, 344);
INSERT INTO public.games VALUES (260, 90, 483);
INSERT INTO public.games VALUES (261, 91, 831);
INSERT INTO public.games VALUES (262, 91, 320);
INSERT INTO public.games VALUES (263, 90, 301);
INSERT INTO public.games VALUES (264, 90, 660);
INSERT INTO public.games VALUES (265, 90, 257);
INSERT INTO public.games VALUES (266, 92, 196);
INSERT INTO public.games VALUES (267, 92, 765);
INSERT INTO public.games VALUES (268, 93, 592);
INSERT INTO public.games VALUES (269, 93, 519);
INSERT INTO public.games VALUES (270, 92, 142);
INSERT INTO public.games VALUES (271, 92, 380);
INSERT INTO public.games VALUES (272, 92, 280);
INSERT INTO public.games VALUES (273, 94, 340);
INSERT INTO public.games VALUES (274, 94, 339);
INSERT INTO public.games VALUES (275, 95, 770);
INSERT INTO public.games VALUES (276, 95, 131);
INSERT INTO public.games VALUES (277, 94, 329);
INSERT INTO public.games VALUES (278, 94, 575);
INSERT INTO public.games VALUES (279, 94, 257);
INSERT INTO public.games VALUES (280, 96, 840);
INSERT INTO public.games VALUES (281, 96, 403);
INSERT INTO public.games VALUES (282, 97, 956);
INSERT INTO public.games VALUES (283, 97, 243);
INSERT INTO public.games VALUES (284, 96, 14);
INSERT INTO public.games VALUES (285, 96, 977);
INSERT INTO public.games VALUES (286, 96, 760);
INSERT INTO public.games VALUES (287, 98, 232);
INSERT INTO public.games VALUES (288, 98, 316);
INSERT INTO public.games VALUES (289, 99, 170);
INSERT INTO public.games VALUES (290, 99, 242);
INSERT INTO public.games VALUES (291, 98, 836);
INSERT INTO public.games VALUES (292, 98, 356);
INSERT INTO public.games VALUES (293, 98, 555);
INSERT INTO public.games VALUES (294, 100, 195);
INSERT INTO public.games VALUES (295, 100, 551);
INSERT INTO public.games VALUES (296, 101, 717);
INSERT INTO public.games VALUES (297, 101, 720);
INSERT INTO public.games VALUES (298, 100, 821);
INSERT INTO public.games VALUES (299, 100, 106);
INSERT INTO public.games VALUES (300, 100, 284);
INSERT INTO public.games VALUES (301, 102, 964);
INSERT INTO public.games VALUES (302, 102, 642);
INSERT INTO public.games VALUES (303, 103, 533);
INSERT INTO public.games VALUES (304, 103, 178);
INSERT INTO public.games VALUES (305, 102, 88);
INSERT INTO public.games VALUES (306, 102, 746);
INSERT INTO public.games VALUES (307, 102, 303);
INSERT INTO public.games VALUES (308, 104, 849);
INSERT INTO public.games VALUES (309, 104, 512);
INSERT INTO public.games VALUES (310, 105, 296);
INSERT INTO public.games VALUES (311, 105, 816);
INSERT INTO public.games VALUES (312, 104, 39);
INSERT INTO public.games VALUES (313, 104, 439);
INSERT INTO public.games VALUES (314, 104, 561);
INSERT INTO public.games VALUES (315, 106, 334);
INSERT INTO public.games VALUES (316, 106, 36);
INSERT INTO public.games VALUES (317, 107, 836);
INSERT INTO public.games VALUES (318, 107, 559);
INSERT INTO public.games VALUES (319, 108, 246);
INSERT INTO public.games VALUES (320, 108, 479);
INSERT INTO public.games VALUES (321, 107, 409);
INSERT INTO public.games VALUES (322, 107, 767);
INSERT INTO public.games VALUES (323, 107, 193);
INSERT INTO public.games VALUES (324, 109, 968);
INSERT INTO public.games VALUES (325, 109, 847);
INSERT INTO public.games VALUES (326, 110, 773);
INSERT INTO public.games VALUES (327, 110, 547);
INSERT INTO public.games VALUES (328, 109, 899);
INSERT INTO public.games VALUES (329, 109, 32);
INSERT INTO public.games VALUES (330, 109, 455);
INSERT INTO public.games VALUES (331, 111, 93);
INSERT INTO public.games VALUES (332, 111, 900);
INSERT INTO public.games VALUES (333, 112, 806);
INSERT INTO public.games VALUES (334, 112, 215);
INSERT INTO public.games VALUES (335, 111, 797);
INSERT INTO public.games VALUES (336, 111, 490);
INSERT INTO public.games VALUES (337, 111, 273);
INSERT INTO public.games VALUES (338, 113, 142);
INSERT INTO public.games VALUES (339, 113, 562);
INSERT INTO public.games VALUES (340, 114, 198);
INSERT INTO public.games VALUES (341, 114, 588);
INSERT INTO public.games VALUES (342, 113, 165);
INSERT INTO public.games VALUES (343, 113, 111);
INSERT INTO public.games VALUES (344, 113, 767);
INSERT INTO public.games VALUES (345, 115, 464);
INSERT INTO public.games VALUES (346, 115, 138);
INSERT INTO public.games VALUES (347, 116, 1001);
INSERT INTO public.games VALUES (348, 116, 832);
INSERT INTO public.games VALUES (349, 115, 689);
INSERT INTO public.games VALUES (350, 115, 905);
INSERT INTO public.games VALUES (351, 115, 258);
INSERT INTO public.games VALUES (352, 117, 962);
INSERT INTO public.games VALUES (353, 117, 579);
INSERT INTO public.games VALUES (354, 118, 341);
INSERT INTO public.games VALUES (355, 118, 311);
INSERT INTO public.games VALUES (356, 117, 853);
INSERT INTO public.games VALUES (357, 117, 724);
INSERT INTO public.games VALUES (358, 117, 426);
INSERT INTO public.games VALUES (359, 119, 936);
INSERT INTO public.games VALUES (360, 119, 38);
INSERT INTO public.games VALUES (361, 120, 569);
INSERT INTO public.games VALUES (362, 120, 918);
INSERT INTO public.games VALUES (363, 119, 714);
INSERT INTO public.games VALUES (364, 119, 669);
INSERT INTO public.games VALUES (365, 119, 59);
INSERT INTO public.games VALUES (366, 121, 754);
INSERT INTO public.games VALUES (367, 121, 19);
INSERT INTO public.games VALUES (368, 122, 883);
INSERT INTO public.games VALUES (369, 122, 305);
INSERT INTO public.games VALUES (370, 121, 614);
INSERT INTO public.games VALUES (371, 121, 789);
INSERT INTO public.games VALUES (372, 121, 51);
INSERT INTO public.games VALUES (373, 123, 9);
INSERT INTO public.games VALUES (374, 123, 94);
INSERT INTO public.games VALUES (375, 124, 562);
INSERT INTO public.games VALUES (376, 124, 55);
INSERT INTO public.games VALUES (377, 123, 714);
INSERT INTO public.games VALUES (378, 123, 779);
INSERT INTO public.games VALUES (379, 123, 227);
INSERT INTO public.games VALUES (380, 125, 704);
INSERT INTO public.games VALUES (381, 125, 812);
INSERT INTO public.games VALUES (382, 126, 619);
INSERT INTO public.games VALUES (383, 126, 264);
INSERT INTO public.games VALUES (384, 125, 797);
INSERT INTO public.games VALUES (385, 125, 217);
INSERT INTO public.games VALUES (386, 125, 850);
INSERT INTO public.games VALUES (387, 127, 419);
INSERT INTO public.games VALUES (388, 127, 500);
INSERT INTO public.games VALUES (389, 128, 659);
INSERT INTO public.games VALUES (390, 128, 972);
INSERT INTO public.games VALUES (391, 127, 760);
INSERT INTO public.games VALUES (392, 127, 573);
INSERT INTO public.games VALUES (393, 127, 328);
INSERT INTO public.games VALUES (394, 129, 672);
INSERT INTO public.games VALUES (395, 129, 575);
INSERT INTO public.games VALUES (396, 130, 115);
INSERT INTO public.games VALUES (397, 130, 614);
INSERT INTO public.games VALUES (398, 129, 816);
INSERT INTO public.games VALUES (399, 129, 52);
INSERT INTO public.games VALUES (400, 129, 476);
INSERT INTO public.games VALUES (401, 131, 93);
INSERT INTO public.games VALUES (402, 131, 863);
INSERT INTO public.games VALUES (403, 132, 937);
INSERT INTO public.games VALUES (404, 132, 63);
INSERT INTO public.games VALUES (405, 131, 795);
INSERT INTO public.games VALUES (406, 131, 354);
INSERT INTO public.games VALUES (407, 131, 91);
INSERT INTO public.games VALUES (408, 133, 461);
INSERT INTO public.games VALUES (409, 133, 182);
INSERT INTO public.games VALUES (410, 134, 915);
INSERT INTO public.games VALUES (411, 134, 708);
INSERT INTO public.games VALUES (412, 133, 335);
INSERT INTO public.games VALUES (413, 133, 752);
INSERT INTO public.games VALUES (414, 133, 474);
INSERT INTO public.games VALUES (415, 135, 558);
INSERT INTO public.games VALUES (416, 135, 209);
INSERT INTO public.games VALUES (417, 136, 84);
INSERT INTO public.games VALUES (418, 136, 403);
INSERT INTO public.games VALUES (419, 135, 321);
INSERT INTO public.games VALUES (420, 135, 383);
INSERT INTO public.games VALUES (421, 135, 807);
INSERT INTO public.games VALUES (422, 137, 750);
INSERT INTO public.games VALUES (423, 137, 680);
INSERT INTO public.games VALUES (424, 138, 11);
INSERT INTO public.games VALUES (425, 138, 670);
INSERT INTO public.games VALUES (426, 137, 802);
INSERT INTO public.games VALUES (427, 137, 143);
INSERT INTO public.games VALUES (428, 137, 684);
INSERT INTO public.games VALUES (429, 139, 856);
INSERT INTO public.games VALUES (430, 139, 456);
INSERT INTO public.games VALUES (431, 140, 651);
INSERT INTO public.games VALUES (432, 140, 458);
INSERT INTO public.games VALUES (433, 139, 681);
INSERT INTO public.games VALUES (434, 139, 689);
INSERT INTO public.games VALUES (435, 139, 695);
INSERT INTO public.games VALUES (436, 141, 464);
INSERT INTO public.games VALUES (437, 141, 461);
INSERT INTO public.games VALUES (438, 142, 6);
INSERT INTO public.games VALUES (439, 142, 299);
INSERT INTO public.games VALUES (440, 141, 172);
INSERT INTO public.games VALUES (441, 141, 767);
INSERT INTO public.games VALUES (442, 141, 232);
INSERT INTO public.games VALUES (443, 143, 274);
INSERT INTO public.games VALUES (444, 143, 139);
INSERT INTO public.games VALUES (445, 144, 711);
INSERT INTO public.games VALUES (446, 144, 676);
INSERT INTO public.games VALUES (447, 143, 612);
INSERT INTO public.games VALUES (448, 143, 685);
INSERT INTO public.games VALUES (449, 143, 698);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (44, 'user_1690807274060', 2);
INSERT INTO public.users VALUES (43, 'user_1690807274061', 5);
INSERT INTO public.users VALUES (97, 'user_1690807768727', 2);
INSERT INTO public.users VALUES (46, 'user_1690807295105', 2);
INSERT INTO public.users VALUES (45, 'user_1690807295106', 5);
INSERT INTO public.users VALUES (96, 'user_1690807768728', 5);
INSERT INTO public.users VALUES (71, 'user_1690807455100', 2);
INSERT INTO public.users VALUES (122, 'user_1690808281811', 2);
INSERT INTO public.users VALUES (70, 'user_1690807455101', 5);
INSERT INTO public.users VALUES (73, 'user_1690807476392', 2);
INSERT INTO public.users VALUES (99, 'user_1690807784219', 2);
INSERT INTO public.users VALUES (72, 'user_1690807476393', 5);
INSERT INTO public.users VALUES (140, 'user_1690808478134', 2);
INSERT INTO public.users VALUES (75, 'user_1690807491572', 2);
INSERT INTO public.users VALUES (98, 'user_1690807784220', 5);
INSERT INTO public.users VALUES (74, 'user_1690807491573', 5);
INSERT INTO public.users VALUES (121, 'user_1690808281812', 5);
INSERT INTO public.users VALUES (77, 'user_1690807504931', 2);
INSERT INTO public.users VALUES (101, 'user_1690807843966', 2);
INSERT INTO public.users VALUES (76, 'user_1690807504932', 5);
INSERT INTO public.users VALUES (79, 'user_1690807522728', 2);
INSERT INTO public.users VALUES (100, 'user_1690807843967', 5);
INSERT INTO public.users VALUES (78, 'user_1690807522729', 5);
INSERT INTO public.users VALUES (81, 'user_1690807537990', 2);
INSERT INTO public.users VALUES (80, 'user_1690807537991', 5);
INSERT INTO public.users VALUES (103, 'user_1690807872173', 2);
INSERT INTO public.users VALUES (83, 'user_1690807577947', 2);
INSERT INTO public.users VALUES (124, 'user_1690808303713', 2);
INSERT INTO public.users VALUES (82, 'user_1690807577948', 5);
INSERT INTO public.users VALUES (102, 'user_1690807872174', 5);
INSERT INTO public.users VALUES (85, 'user_1690807595219', 2);
INSERT INTO public.users VALUES (139, 'user_1690808478135', 5);
INSERT INTO public.users VALUES (84, 'user_1690807595220', 5);
INSERT INTO public.users VALUES (87, 'user_1690807612789', 2);
INSERT INTO public.users VALUES (105, 'user_1690807886372', 2);
INSERT INTO public.users VALUES (123, 'user_1690808303714', 5);
INSERT INTO public.users VALUES (86, 'user_1690807612790', 5);
INSERT INTO public.users VALUES (89, 'user_1690807626981', 2);
INSERT INTO public.users VALUES (104, 'user_1690807886373', 5);
INSERT INTO public.users VALUES (88, 'user_1690807626983', 5);
INSERT INTO public.users VALUES (106, 'user_1690807959509', 2);
INSERT INTO public.users VALUES (91, 'user_1690807643933', 2);
INSERT INTO public.users VALUES (90, 'user_1690807643934', 4);
INSERT INTO public.users VALUES (93, 'user_1690807683333', 2);
INSERT INTO public.users VALUES (108, 'user_1690807965709', 2);
INSERT INTO public.users VALUES (92, 'user_1690807683334', 5);
INSERT INTO public.users VALUES (126, 'user_1690808352465', 2);
INSERT INTO public.users VALUES (95, 'user_1690807703607', 2);
INSERT INTO public.users VALUES (107, 'user_1690807965710', 5);
INSERT INTO public.users VALUES (94, 'user_1690807703608', 5);
INSERT INTO public.users VALUES (110, 'user_1690808005463', 2);
INSERT INTO public.users VALUES (125, 'user_1690808352466', 5);
INSERT INTO public.users VALUES (109, 'user_1690808005464', 5);
INSERT INTO public.users VALUES (112, 'user_1690808083733', 2);
INSERT INTO public.users VALUES (142, 'user_1690808497252', 2);
INSERT INTO public.users VALUES (111, 'user_1690808083734', 5);
INSERT INTO public.users VALUES (128, 'user_1690808367630', 2);
INSERT INTO public.users VALUES (114, 'user_1690808096336', 2);
INSERT INTO public.users VALUES (113, 'user_1690808096337', 5);
INSERT INTO public.users VALUES (127, 'user_1690808367631', 5);
INSERT INTO public.users VALUES (116, 'user_1690808109053', 2);
INSERT INTO public.users VALUES (141, 'user_1690808497253', 5);
INSERT INTO public.users VALUES (115, 'user_1690808109054', 5);
INSERT INTO public.users VALUES (118, 'user_1690808131554', 2);
INSERT INTO public.users VALUES (130, 'user_1690808390322', 2);
INSERT INTO public.users VALUES (117, 'user_1690808131555', 5);
INSERT INTO public.users VALUES (120, 'user_1690808217330', 2);
INSERT INTO public.users VALUES (129, 'user_1690808390323', 5);
INSERT INTO public.users VALUES (119, 'user_1690808217331', 5);
INSERT INTO public.users VALUES (132, 'user_1690808407650', 2);
INSERT INTO public.users VALUES (144, 'user_1690808514603', 2);
INSERT INTO public.users VALUES (131, 'user_1690808407651', 5);
INSERT INTO public.users VALUES (134, 'user_1690808426035', 2);
INSERT INTO public.users VALUES (143, 'user_1690808514604', 5);
INSERT INTO public.users VALUES (133, 'user_1690808426036', 5);
INSERT INTO public.users VALUES (136, 'user_1690808439023', 2);
INSERT INTO public.users VALUES (135, 'user_1690808439024', 5);
INSERT INTO public.users VALUES (138, 'user_1690808458278', 2);
INSERT INTO public.users VALUES (137, 'user_1690808458279', 5);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 449, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 144, true);


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

