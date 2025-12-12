SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict r8U2fr3QgRcR3srk2d0gAwpmhBuH2JzFY5Ya7kzAa2JZrZDDG8DwbxIoDX6MW3H

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

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
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: esc_entries; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."esc_entries" ("id", "country", "year", "artist", "song_title") VALUES
        (1, 'Albania', 2025, 'Shkodra Elektronike', '"Zjerm"'),
        (2, 'Armenia', 2025, 'Parg', '"Survivor"'),
        (3, 'Australia', 2025, 'Go-Jo', '"Milkshake Man"'),
        (4, 'Austria', 2025, 'JJ', '"Wasted Love"'),
        (5, 'Azerbaijan', 2025, 'Mamagama', '"Run with U"'),
        (6, 'Belgium', 2025, 'Red Sebastian', '"Strobe Lights"'),
        (7, 'Croatia', 2025, 'Marko Bošnjak', '"Poison Cake"'),
        (8, 'Cyprus', 2025, 'Theo Evan', '"Shh"'),
        (9, 'Czechia', 2025, 'Adonxs', '"Kiss Kiss Goodbye"'),
        (10, 'Denmark', 2025, 'Sissal', '"Hallucination"'),
        (11, 'Estonia', 2025, 'Tommy Cash', '"Espresso Macchiato"'),
        (12, 'Finland', 2025, 'Erika Vikman', '"Ich komme"'),
        (13, 'France', 2025, 'Louane', '"Maman"'),
        (14, 'Georgia', 2025, 'Mariam Shengelia', '"Freedom"'),
        (15, 'Germany', 2025, 'Abor & Tynna', '"Baller"'),
        (16, 'Greece', 2025, 'Klavdia', '"Asteromata"(Αστερομάτα)'),
        (17, 'Iceland', 2025, 'Væb', '"Róa"'),
        (18, 'Ireland', 2025, 'Emmy', '"Laika Party"'),
        (19, 'Israel', 2025, 'Yuval Raphael', '"New Day Will Rise"'),
        (20, 'Italy', 2025, 'Lucio Corsi', '"Volevo essere un duro"'),
        (21, 'Latvia', 2025, 'Tautumeitas', '"Bur man laimi"'),
        (22, 'Lithuania', 2025, 'Katarsis', '"Tavo akys"'),
        (23, 'Luxembourg', 2025, 'Laura Thorn', '"La poupée monte le son"'),
        (24, 'Malta', 2025, 'Miriana Conte', '"Serving"'),
        (25, 'Montenegro', 2025, 'Nina Žižić', '"Dobrodošli"(Добродошли)'),
        (26, 'Netherlands', 2025, 'Claude', '"C''est la vie"'),
        (27, 'Norway', 2025, 'Kyle Alessandro', '"Lighter"'),
        (28, 'Poland', 2025, 'Justyna Steczkowska', '"Gaja"'),
        (29, 'Portugal', 2025, 'Napa', '"Deslocado"'),
        (30, 'San Marino', 2025, 'Gabry Ponte[f]', '"Tutta l''Italia"'),
        (31, 'Serbia', 2025, 'Princ', '"Mila"(Мила)'),
        (32, 'Slovenia', 2025, 'Klemen', '"How Much Time Do We Have Left"'),
        (33, 'Spain', 2025, 'Melody', '"Esa diva"'),
        (34, 'Sweden', 2025, 'KAJ', '"Bara bada bastu"'),
        (35, 'Switzerland', 2025, 'Zoë Më', '"Voyage"'),
        (36, 'Ukraine', 2025, 'Ziferblat', '"Bird of Pray"'),
        (37, 'United Kingdom', 2025, 'Remember Monday', '"What the Hell Just Happened?"'),
        (39, 'Albania', 2024, 'Besa', '"Titan"'),
        (40, 'Armenia', 2024, 'Ladaniva', '"Jako"(Ժակո)'),
        (41, 'Australia', 2024, 'Electric Fields', '"OneMilkali(One Blood)"'),
        (42, 'Austria', 2024, 'Kaleen', '"We Will Rave"'),
        (43, 'Azerbaijan', 2024, 'Fahreefeat.Ilkin Dovlatov', '"Özünlə apar"'),
        (44, 'Belgium', 2024, 'Mustii', '"Before the Party''s Over"'),
        (45, 'Croatia', 2024, 'Baby Lasagna', '"Rim Tim Tagi Dim"'),
        (46, 'Cyprus', 2024, 'Silia Kapsis', '"Liar"'),
        (47, 'Czechia', 2024, 'Aiko', '"Pedestal"'),
        (48, 'Denmark', 2024, 'Saba', '"Sand"'),
        (49, 'Estonia', 2024, '5miinustandPuuluup', '"(Nendest) narkootikumidest ei tea me (küll) midagi"'),
        (50, 'Finland', 2024, 'Windows95man[d]', '"No Rules!"'),
        (51, 'France', 2024, 'Slimane', '"Mon amour"'),
        (52, 'Georgia', 2024, 'Nutsa Buzaladze', '"Firefighter"'),
        (53, 'Germany', 2024, 'Isaak', '"Always on the Run"'),
        (54, 'Greece', 2024, 'Marina Satti', '"Zari"(Ζάρι)'),
        (55, 'Iceland', 2024, 'Hera Björk', '"Scared of Heights"'),
        (56, 'Ireland', 2024, 'Bambie Thug', '"Doomsday Blue"'),
        (57, 'Israel', 2024, 'Eden Golan', '"Hurricane"'),
        (58, 'Italy', 2024, 'Angelina Mango', '"La noia"'),
        (59, 'Latvia', 2024, 'Dons', '"Hollow"'),
        (60, 'Lithuania', 2024, 'Silvester Belt', '"Luktelk"'),
        (61, 'Luxembourg', 2024, 'Tali', '"Fighter"'),
        (62, 'Malta', 2024, 'Sarah Bonnici', '"Loop"'),
        (63, 'Moldova', 2024, 'Natalia Barbu', '"In the Middle"'),
        (64, 'Netherlands', 2024, 'Joost Klein', '"Europapa"'),
        (65, 'Norway', 2024, 'Gåte', '"Ulveham"'),
        (66, 'Poland', 2024, 'Luna', '"The Tower"'),
        (67, 'Portugal', 2024, 'Iolanda', '"Grito"'),
        (68, 'San Marino', 2024, 'Megara', '"11:11"'),
        (69, 'Serbia', 2024, 'Teya Dora', '"Ramonda"(Рамонда)'),
        (70, 'Slovenia', 2024, 'Raiven', '"Veronika"'),
        (71, 'Spain', 2024, 'Nebulossa', '"Zorra"'),
        (72, 'Sweden', 2024, 'Marcus & Martinus', '"Unforgettable"'),
        (73, 'Switzerland', 2024, 'Nemo', '"The Code"'),
        (74, 'Ukraine', 2024, 'Alyona AlyonaandJerry Heil', '"Teresa & Maria"'),
        (75, 'United Kingdom', 2024, 'Olly Alexander', '"Dizzy"'),
        (76, 'Albania', 2023, 'Albinaand Familja Kelmendi', '"Duje"'),
        (77, 'Armenia', 2023, 'Brunette', '"Future Lover"'),
        (78, 'Australia', 2023, 'Voyager', '"Promise"'),
        (79, 'Austria', 2023, 'TeyaandSalena', '"Who the Hell Is Edgar?"'),
        (80, 'Azerbaijan', 2023, 'TuralTuranX', '"Tell Me More"'),
        (81, 'Belgium', 2023, 'Gustaph', '"Because of You"'),
        (82, 'Croatia', 2023, 'Let 3', '"Mama ŠČ!"'),
        (83, 'Cyprus', 2023, 'Andrew Lambrou', '"Break a Broken Heart"'),
        (84, 'Czechia', 2023, 'Vesna', '"My Sister''s Crown"'),
        (85, 'Denmark', 2023, 'Reiley', '"Breaking My Heart"'),
        (86, 'Estonia', 2023, 'Alika', '"Bridges"'),
        (87, 'Finland', 2023, 'Käärijä', '"Cha Cha Cha"'),
        (88, 'France', 2023, 'La Zarra', '"Évidemment"'),
        (89, 'Georgia', 2023, 'Iru', '"Echo"'),
        (90, 'Germany', 2023, 'Lord of the Lost', '"Blood & Glitter"'),
        (91, 'Greece', 2023, 'Victor Vernicos', '"What They Say"'),
        (92, 'Iceland', 2023, 'Diljá', '"Power"'),
        (93, 'Ireland', 2023, 'Wild Youth', '"We Are One"'),
        (94, 'Israel', 2023, 'Noa Kirel', '"Unicorn"'),
        (95, 'Italy', 2023, 'Marco Mengoni', '"Due vite"'),
        (96, 'Latvia', 2023, 'Sudden Lights', '"Aijā"'),
        (97, 'Lithuania', 2023, 'Monika Linkytė', '"Stay"'),
        (98, 'Malta', 2023, 'The Busker', '"Dance (Our Own Party)"'),
        (99, 'Moldova', 2023, 'Pasha Parfeni', '"Soarele și luna"'),
        (100, 'Netherlands', 2023, 'Mia NicolaiandDion Cooper', '"Burning Daylight"'),
        (101, 'Norway', 2023, 'Alessandra', '"Queen of Kings"'),
        (102, 'Poland', 2023, 'Blanka', '"Solo"'),
        (103, 'Portugal', 2023, 'Mimicat', '"Ai coração"'),
        (104, 'Romania', 2023, 'Theodor Andrei', '"D.G.T. (Off and On)"'),
        (105, 'San Marino', 2023, 'Piqued Jacks', '"Like an Animal"'),
        (106, 'Serbia', 2023, 'Luke Black', '"Samo mi se spava"(Само ми се спава)'),
        (107, 'Slovenia', 2023, 'Joker Out', '"Carpe Diem"'),
        (108, 'Spain', 2023, 'Blanca Paloma', '"Eaea"'),
        (109, 'Sweden', 2023, 'Loreen', '"Tattoo"'),
        (110, 'Switzerland', 2023, 'Remo Forrer', '"Watergun"'),
        (111, 'Ukraine', 2023, 'Tvorchi', '"Heart of Steel"'),
        (112, 'United Kingdom', 2023, 'Mae Muller', '"I Wrote a Song"');


--
-- Data for Name: esc_real_scores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."esc_real_scores" ("id", "entry_id", "is_final", "jury", "televote", "place", "running_order") VALUES
        (2, 17, false, NULL, 97, 6, 1),
        (3, 17, true, 0, 33, 25, 10),
        (4, 28, false, NULL, 85, 7, 2),
        (5, 28, true, 17, 139, 14, 15),
        (6, 32, false, NULL, 23, 13, 3),
        (7, 11, false, NULL, 113, 5, 4),
        (8, 11, true, 98, 258, 3, 3),
        (9, 36, false, NULL, 137, 1, 5),
        (10, 36, true, 60, 158, 9, 7),
        (11, 34, false, NULL, 118, 4, 6),
        (12, 34, true, 126, 195, 4, 23),
        (13, 29, false, NULL, 56, 9, 7),
        (14, 29, true, 37, 13, 21, 21),
        (15, 27, false, NULL, 82, 8, 8),
        (16, 27, true, 22, 67, 18, 1),
        (17, 6, false, NULL, 23, 14, 9),
        (18, 5, false, NULL, 7, 15, 10),
        (19, 30, false, NULL, 46, 10, 11),
        (20, 30, true, 9, 18, 26, 25),
        (21, 1, false, NULL, 122, 2, 12),
        (22, 1, true, 45, 173, 8, 26),
        (23, 26, false, NULL, 121, 3, 13),
        (24, 26, true, 133, 42, 12, 12),
        (25, 7, false, NULL, 28, 12, 14),
        (26, 8, false, NULL, 44, 11, 15),
        (27, 3, false, NULL, 41, 11, 1),
        (28, 25, false, NULL, 12, 16, 2),
        (29, 18, false, NULL, 28, 13, 3),
        (30, 21, false, NULL, 130, 2, 4),
        (31, 21, true, 116, 42, 13, 11),
        (32, 2, false, NULL, 51, 10, 5),
        (33, 2, true, 42, 30, 20, 18),
        (34, 4, false, NULL, 104, 5, 6),
        (35, 4, true, 258, 178, 1, 9),
        (36, 16, false, NULL, 112, 4, 7),
        (37, 16, true, 105, 126, 6, 17),
        (38, 22, false, NULL, 103, 6, 8),
        (39, 22, true, 34, 62, 16, 5),
        (40, 24, false, NULL, 53, 9, 9),
        (41, 24, true, 83, 8, 17, 20),
        (42, 14, false, NULL, 28, 15, 10),
        (43, 10, false, NULL, 61, 8, 11),
        (44, 10, true, 45, 2, 23, 22),
        (45, 9, false, NULL, 29, 12, 12),
        (46, 23, false, NULL, 62, 7, 13),
        (47, 23, true, 23, 24, 22, 2),
        (48, 19, false, NULL, 203, 1, 14),
        (49, 19, true, 60, 297, 2, 4),
        (50, 31, false, NULL, 28, 14, 15),
        (51, 12, false, NULL, 115, 3, 16),
        (52, 12, true, 88, 108, 11, 13),
        (53, 33, true, 27, 10, 24, 6),
        (54, 37, true, 88, 0, 19, 8),
        (55, 20, true, 159, 97, 5, 14),
        (56, 15, true, 77, 74, 15, 16),
        (57, 35, true, 214, 0, 10, 19),
        (58, 13, true, 180, 50, 7, 24),
        (59, 46, false, NULL, 67, 6, 1),
        (60, 46, true, 34, 44, 15, 20),
        (61, 69, false, NULL, 47, 10, 2),
        (62, 69, true, 22, 32, 17, 16),
        (63, 60, false, NULL, 119, 4, 3),
        (64, 60, true, 32, 58, 14, 7),
        (65, 56, false, NULL, 124, 3, 4),
        (66, 56, true, 142, 136, 6, 10),
        (67, 74, false, NULL, 173, 2, 5),
        (68, 74, true, 146, 307, 3, 2),
        (69, 66, false, NULL, 35, 12, 6),
        (70, 45, false, NULL, 177, 1, 7),
        (71, 45, true, 210, 337, 2, 23),
        (72, 55, false, NULL, 3, 15, 8),
        (73, 70, false, NULL, 51, 9, 9),
        (74, 70, true, 15, 12, 23, 22),
        (75, 50, false, NULL, 59, 7, 10),
        (76, 50, true, 7, 31, 19, 17),
        (77, 63, false, NULL, 20, 13, 11),
        (78, 43, false, NULL, 11, 14, 12),
        (79, 41, false, NULL, 41, 11, 13),
        (80, 67, false, NULL, 58, 8, 14),
        (81, 67, true, 139, 13, 10, 18),
        (82, 61, false, NULL, 117, 5, 15),
        (83, 61, true, 83, 20, 13, 4),
        (84, 62, false, NULL, 13, 16, 1),
        (85, 39, false, NULL, 14, 15, 2),
        (86, 54, false, NULL, 86, 5, 3),
        (87, 54, true, 41, 85, 11, 12),
        (88, 73, false, NULL, 132, 4, 4),
        (89, 73, true, 365, 226, 1, 21),
        (90, 47, false, NULL, 38, 11, 5),
        (91, 42, false, NULL, 46, 9, 6),
        (92, 42, true, 19, 5, 24, 26),
        (93, 48, false, NULL, 36, 12, 7),
        (94, 40, false, NULL, 137, 3, 8),
        (95, 40, true, 101, 82, 8, 19),
        (96, 59, false, NULL, 72, 7, 9),
        (97, 59, true, 36, 28, 16, 11),
        (98, 68, false, NULL, 16, 14, 10),
        (99, 52, false, NULL, 54, 8, 11),
        (100, 52, true, 15, 19, 21, 24),
        (101, 44, false, NULL, 18, 13, 12),
        (102, 49, false, NULL, 79, 6, 13),
        (103, 49, true, 4, 33, 20, 9),
        (104, 57, false, NULL, 194, 1, 14),
        (105, 57, true, 52, 323, 5, 6),
        (106, 65, false, NULL, 43, 10, 15),
        (107, 65, true, 12, 4, 25, 14),
        (108, 64, false, NULL, 182, 2, 16),
        (109, 64, true, NULL, NULL, NULL, 5),
        (110, 72, true, 125, 49, 9, 1),
        (111, 53, true, 99, 18, 12, 3),
        (112, 71, true, 19, 11, 22, 8),
        (113, 75, true, 46, 0, 18, 13),
        (114, 58, true, 164, 104, 7, 15),
        (115, 51, true, 218, 227, 4, 25),
        (116, 101, false, NULL, 102, 6, 1),
        (117, 101, true, 52, 216, 5, 20),
        (118, 98, false, NULL, 3, 15, 2),
        (119, 106, false, NULL, 37, 10, 3),
        (120, 106, true, 14, 16, 24, 5),
        (121, 96, false, NULL, 34, 11, 4),
        (122, 103, false, NULL, 74, 9, 5),
        (123, 103, true, 43, 16, 23, 2),
        (124, 93, false, NULL, 10, 12, 6),
        (125, 82, false, NULL, 76, 8, 7),
        (126, 82, true, 11, 112, 13, 25),
        (127, 110, false, NULL, 97, 7, 8),
        (128, 110, true, 61, 31, 20, 3),
        (129, 94, false, NULL, 127, 3, 9),
        (130, 94, true, 177, 185, 3, 23),
        (131, 99, false, NULL, 109, 5, 10),
        (132, 99, true, 20, 76, 18, 18),
        (133, 109, false, NULL, 135, 2, 11),
        (134, 109, true, 340, 243, 1, 9),
        (135, 80, false, NULL, 4, 14, 12),
        (136, 84, false, NULL, 110, 4, 13),
        (137, 84, true, 94, 35, 10, 14),
        (138, 100, false, NULL, 7, 13, 14),
        (139, 87, false, NULL, 177, 1, 15),
        (140, 87, true, 150, 376, 2, 13),
        (141, 85, false, NULL, 6, 14, 1),
        (142, 77, false, NULL, 99, 6, 2),
        (143, 77, true, 69, 53, 14, 17),
        (144, 104, false, NULL, 0, NULL, 3),
        (145, 86, false, NULL, 74, 10, 4),
        (146, 86, true, 146, 22, 8, 12),
        (147, 81, false, NULL, 90, 8, 5),
        (148, 81, true, 127, 55, 7, 16),
        (149, 83, false, NULL, 94, 7, 6),
        (150, 83, true, 68, 58, 12, 7),
        (151, 92, false, NULL, 44, 11, 7),
        (152, 91, false, NULL, 14, 13, 8),
        (153, 102, false, NULL, 124, 3, 9),
        (154, 102, true, 12, 81, 19, 4),
        (155, 107, false, NULL, 103, 5, 10),
        (156, 107, true, 33, 45, 21, 24),
        (157, 89, false, NULL, 33, 12, 11),
        (158, 105, false, NULL, 0, NULL, 12),
        (159, 79, false, NULL, 137, 2, 13),
        (160, 79, true, 104, 16, 15, 1),
        (161, 76, false, NULL, 83, 9, 14),
        (162, 76, true, 17, 59, 22, 10),
        (163, 97, false, NULL, 110, 4, 15),
        (164, 97, true, 81, 46, 11, 22),
        (165, 78, false, NULL, 149, 1, 16),
        (166, 78, true, 130, 21, 9, 15),
        (167, 88, true, 54, 50, 16, 6),
        (168, 108, true, 95, 5, 17, 8),
        (169, 95, true, 176, 174, 4, 11),
        (170, 111, true, 54, 189, 6, 19),
        (171, 90, true, 3, 15, 26, 21),
        (172, 112, true, 15, 9, 25, 26);


--
-- Data for Name: pze_entries; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: iceberg_namespaces; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: iceberg_tables; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: prefixes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: esc_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."esc_entries_id_seq"', 112, true);


--
-- Name: esc_real_scores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."esc_real_scores_id_seq"', 172, true);


--
-- Name: pze_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."pze_entries_id_seq"', 1, false);


-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: esc_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."esc_entries_id_seq"', 112, true);


--
-- Name: esc_real_scores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."esc_real_scores_id_seq"', 172, true);


--
-- Name: pze_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."pze_entries_id_seq"', 1, false);




--
-- Name: esc_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."esc_entries_id_seq"', 112, true);


--
-- Name: esc_real_scores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."esc_real_scores_id_seq"', 172, true);


--
-- Name: pze_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."pze_entries_id_seq"', 1, false);


-- Name: esc_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."esc_entries_id_seq"', 112, true);


--
-- Name: esc_real_scores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."esc_real_scores_id_seq"', 172, true);


--
-- Name: pze_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."pze_entries_id_seq"', 1, false);



--
-- Name: esc_real_scores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."esc_real_scores_id_seq"', 172, true);


--
-- Name: pze_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."pze_entries_id_seq"', 1, false);


-- Name: esc_real_scores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."esc_real_scores_id_seq"', 172, true);


--
-- Name: pze_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."pze_entries_id_seq"', 1, false);



--
-- Name: pze_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."pze_entries_id_seq"', 1, false);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--
-- Name: pze_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."pze_entries_id_seq"', 1, false);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--
--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);



--
-- PostgreSQL database dump complete
--

-- \unrestrict r8U2fr3QgRcR3srk2d0gAwpmhBuH2JzFY5Ya7kzAa2JZrZDDG8DwbxIoDX6MW3H

RESET ALL;