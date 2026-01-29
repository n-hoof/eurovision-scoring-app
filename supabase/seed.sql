SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict L08XCF82Dfd0hw4EPEKB4QcfawO5eCO9BQuEEf79W4oi5bwZf2yLz7L2ybn12er

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
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
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
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."countries" ("id", "country", "iso_2", "flag_url") VALUES
	(1, 'Albania', 'AL', 'https://upload.wikimedia.org/wikipedia/commons/3/36/Flag_of_Albania.svg'),
	(2, 'Andorra', 'AD', 'https://upload.wikimedia.org/wikipedia/commons/1/19/Flag_of_Andorra.svg'),
	(3, 'Armenia', 'AM', 'https://upload.wikimedia.org/wikipedia/commons/2/2f/Flag_of_Armenia.svg'),
	(4, 'Austria', 'AT', 'https://upload.wikimedia.org/wikipedia/commons/4/41/Flag_of_Austria.svg'),
	(5, 'Australia', 'AU', 'https://upload.wikimedia.org/wikipedia/commons/b/b9/Flag_of_Australia.svg'),
	(6, 'Azerbaijan', 'AZ', 'https://upload.wikimedia.org/wikipedia/commons/d/dd/Flag_of_Azerbaijan.svg'),
	(7, 'Bosnia and Herzegovina', 'BA', 'https://upload.wikimedia.org/wikipedia/commons/b/bf/Flag_of_Bosnia_and_Herzegovina.svg'),
	(8, 'Belgium', 'BE', 'https://upload.wikimedia.org/wikipedia/commons/6/65/Flag_of_Belgium.svg'),
	(9, 'Bulgaria', 'BG', 'https://upload.wikimedia.org/wikipedia/commons/9/9a/Flag_of_Bulgaria.svg'),
	(10, 'Belarus', 'BY', 'https://upload.wikimedia.org/wikipedia/commons/8/85/Flag_of_Belarus.svg'),
	(11, 'Switzerland', 'CH', 'https://upload.wikimedia.org/wikipedia/commons/f/f3/Flag_of_Switzerland.svg'),
	(12, 'Cyprus', 'CY', 'https://upload.wikimedia.org/wikipedia/commons/d/d4/Flag_of_Cyprus.svg'),
	(13, 'Czech Republic', 'CZ', 'https://upload.wikimedia.org/wikipedia/commons/c/cb/Flag_of_the_Czech_Republic.svg'),
	(14, 'Czechia', 'CZ', 'https://upload.wikimedia.org/wikipedia/commons/c/cb/Flag_of_the_Czech_Republic.svg'),
	(15, 'Germany', 'DE', 'https://upload.wikimedia.org/wikipedia/commons/b/ba/Flag_of_Germany.svg'),
	(16, 'Denmark', 'DK', 'https://upload.wikimedia.org/wikipedia/commons/9/9c/Flag_of_Denmark.svg'),
	(17, 'Estonia', 'EE', 'https://upload.wikimedia.org/wikipedia/commons/8/8f/Flag_of_Estonia.svg'),
	(18, 'Spain', 'ES', 'https://upload.wikimedia.org/wikipedia/commons/9/9a/Flag_of_Spain.svg'),
	(19, 'European Union', 'EU', 'https://upload.wikimedia.org/wikipedia/commons/b/b7/Flag_of_Europe.svg'),
	(20, 'Finland', 'FI', 'https://upload.wikimedia.org/wikipedia/commons/b/bc/Flag_of_Finland.svg'),
	(21, 'France', 'FR', 'https://upload.wikimedia.org/wikipedia/commons/c/c3/Flag_of_France.svg'),
	(22, 'United Kingdom', 'GB', 'https://upload.wikimedia.org/wikipedia/commons/8/83/Flag_of_the_United_Kingdom_%283-5%29.svg'),
	(23, 'Georgia', 'GE', 'https://upload.wikimedia.org/wikipedia/commons/0/0f/Flag_of_Georgia.svg'),
	(24, 'Greece', 'GR', 'https://upload.wikimedia.org/wikipedia/commons/5/5c/Flag_of_Greece.svg'),
	(25, 'Croatia', 'HR', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Flag_of_Croatia.svg'),
	(26, 'Hungary', 'HU', 'https://upload.wikimedia.org/wikipedia/commons/c/c1/Flag_of_Hungary.svg'),
	(27, 'Iceland', 'IS', 'https://upload.wikimedia.org/wikipedia/commons/c/ce/Flag_of_Iceland.svg'),
	(28, 'Ireland', 'IE', 'https://upload.wikimedia.org/wikipedia/commons/4/45/Flag_of_Ireland.svg'),
	(29, 'Israel', 'IL', 'https://upload.wikimedia.org/wikipedia/commons/d/d4/Flag_of_Israel.svg'),
	(30, 'Italy', 'IT', 'https://upload.wikimedia.org/wikipedia/commons/0/03/Flag_of_Italy.svg'),
	(31, 'Latvia', 'LV', 'https://upload.wikimedia.org/wikipedia/commons/8/84/Flag_of_Latvia.svg'),
	(32, 'Lithuania', 'LT', 'https://upload.wikimedia.org/wikipedia/commons/1/11/Flag_of_Lithuania.svg'),
	(33, 'Luxembourg', 'LU', 'https://upload.wikimedia.org/wikipedia/commons/d/da/Flag_of_Luxembourg.svg'),
	(34, 'Malta', 'MT', 'https://upload.wikimedia.org/wikipedia/commons/7/73/Flag_of_Malta.svg'),
	(35, 'Moldova', 'MD', 'https://upload.wikimedia.org/wikipedia/commons/2/27/Flag_of_Moldova.svg'),
	(36, 'Monaco', 'MC', 'https://upload.wikimedia.org/wikipedia/commons/e/ea/Flag_of_Monaco.svg'),
	(37, 'Montenegro', 'ME', 'https://upload.wikimedia.org/wikipedia/commons/6/64/Flag_of_Montenegro.svg'),
	(38, 'Morocco', 'MA', 'https://upload.wikimedia.org/wikipedia/commons/2/2c/Flag_of_Morocco.svg'),
	(39, 'Netherlands', 'NL', 'https://upload.wikimedia.org/wikipedia/commons/2/20/Flag_of_the_Netherlands.svg'),
	(40, 'North Macedonia', 'MK', 'https://upload.wikimedia.org/wikipedia/commons/7/79/Flag_of_North_Macedonia.svg'),
	(41, 'Macedonia', 'MK', 'https://upload.wikimedia.org/wikipedia/commons/7/79/Flag_of_North_Macedonia.svg'),
	(42, 'Norway', 'NO', 'https://upload.wikimedia.org/wikipedia/commons/d/d9/Flag_of_Norway.svg'),
	(43, 'Poland', 'PL', 'https://upload.wikimedia.org/wikipedia/commons/1/12/Flag_of_Poland.svg'),
	(44, 'Portugal', 'PT', 'https://upload.wikimedia.org/wikipedia/commons/5/5c/Flag_of_Portugal.svg'),
	(45, 'Romania', 'RO', 'https://upload.wikimedia.org/wikipedia/commons/7/73/Flag_of_Romania.svg'),
	(46, 'Russia', 'RU', 'https://upload.wikimedia.org/wikipedia/commons/f/f3/Flag_of_Russia.svg'),
	(47, 'San Marino', 'SM', 'https://upload.wikimedia.org/wikipedia/commons/b/b1/Flag_of_San_Marino.svg'),
	(48, 'Serbia', 'RS', 'https://upload.wikimedia.org/wikipedia/commons/f/ff/Flag_of_Serbia.svg'),
	(49, 'Serbia and Montenegro', NULL, 'https://upload.wikimedia.org/wikipedia/commons/3/3e/Flag_of_Serbia_and_Montenegro_%281992%E2%80%932006%29.svg'),
	(50, 'Slovakia', 'SK', 'https://upload.wikimedia.org/wikipedia/commons/e/e6/Flag_of_Slovakia.svg'),
	(51, 'Slovenia', 'SI', 'https://upload.wikimedia.org/wikipedia/commons/f/f0/Flag_of_Slovenia.svg'),
	(52, 'Sweden', 'SE', 'https://upload.wikimedia.org/wikipedia/commons/4/4c/Flag_of_Sweden.svg'),
	(53, 'Turkey', 'TR', 'https://upload.wikimedia.org/wikipedia/commons/b/b4/Flag_of_Turkey.svg'),
	(54, 'Ukraine', 'UA', 'https://upload.wikimedia.org/wikipedia/commons/4/49/Flag_of_Ukraine.svg'),
	(55, 'Yugoslavia', NULL, 'https://upload.wikimedia.org/wikipedia/commons/6/61/Flag_of_Yugoslavia_%281946-1992%29.svg');


--
-- Data for Name: esc_entries; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."esc_entries" ("id", "year", "artist", "song_title", "country_id") VALUES
	(1198, 2022, 'Ronela Hajati', 'Sekret', 1),
	(1199, 2022, 'Rosa Linn', 'Snap', 3),
	(1200, 2022, 'Sheldon Riley', 'Not the Same', 5),
	(1201, 2022, 'Lumix feat. Pia Maria', 'Halo', 4),
	(1202, 2022, 'Nadir Rustamli', 'Fade to Black', 6),
	(1203, 2022, 'Jérémie Makiese', 'Miss You', 8),
	(1204, 2022, 'Intelligent Music Project', 'Intention', 9),
	(1205, 2022, 'Mia Dimšić', 'Guilty Pleasure', 25),
	(1206, 2022, 'Andromache', 'Ela (Έλα)', 12),
	(1207, 2022, 'We Are Domi', 'Lights Off', 13),
	(1208, 2022, 'Reddi', 'The Show', 16),
	(1209, 2022, 'Stefan', 'Hope', 17),
	(1210, 2022, 'The Rasmus', 'Jezebel', 20),
	(1211, 2022, 'Alvan and Ahez', 'Fulenn', 21),
	(1212, 2022, 'Circus Mircus', 'Lock Me In', 23),
	(1213, 2022, 'Malik Harris', 'Rockstars', 15),
	(1214, 2022, 'Amanda Georgiadi Tenfjord', 'Die Together', 24),
	(1215, 2022, 'Systur', 'Með hækkandi sól', 27),
	(1216, 2022, 'Brooke', 'That''s Rich', 28),
	(1217, 2022, 'Michael Ben David', 'I.M', 29),
	(1218, 2022, 'Mahmood and Blanco', 'Brividi', 30),
	(1219, 2022, 'Citi Zēni', 'Eat Your Salad', 31),
	(1220, 2022, 'Monika Liu', 'Sentimentai', 32),
	(1221, 2022, 'Emma Muscat', 'I Am What I Am', 34),
	(1222, 2022, 'Zdob și Zdub and Advahov Brothers', 'Trenulețul', 35),
	(1223, 2022, 'Vladana', 'Breathe', 37),
	(1224, 2022, 'S10', 'De diepte', 39),
	(1225, 2022, 'Andrea', 'Circles', 40),
	(1226, 2022, 'Subwoolfer', 'Give That Wolf a Banana', 42),
	(1227, 2022, 'Ochman', 'River', 43),
	(1228, 2022, 'Maro', 'Saudade, saudade', 44),
	(1229, 2022, 'Wrs', 'Llámame', 45),
	(1230, 2022, 'Achille Lauro', 'Stripper', 47),
	(1231, 2022, 'Konstrakta', 'In corpore sano', 48),
	(1232, 2022, 'LPS', 'Disko', 51),
	(1233, 2022, 'Chanel', 'SloMo', 18),
	(1234, 2022, 'Cornelia Jakobs', 'Hold Me Closer', 52),
	(1235, 2022, 'Marius Bear', 'Boys Do Cry', 11),
	(1236, 2022, 'Kalush Orchestra', 'Stefania (Стефанія)', 54),
	(1237, 2022, 'Sam Ryder', 'Space Man', 22),
	(1238, 2023, 'Albina and Familja Kelmendi', 'Duje', 1),
	(1239, 2023, 'Brunette', 'Future Lover', 3),
	(1240, 2023, 'Voyager', 'Promise', 5),
	(1241, 2023, 'Teya and Salena', 'Who the Hell Is Edgar?', 4),
	(1242, 2023, 'TuralTuranX', 'Tell Me More', 6),
	(1243, 2023, 'Gustaph', 'Because of You', 8),
	(1244, 2023, 'Let 3', 'Mama ŠČ!', 25),
	(1245, 2023, 'Andrew Lambrou', 'Break a Broken Heart', 12),
	(1246, 2023, 'Vesna', 'My Sister''s Crown', 14),
	(1247, 2023, 'Reiley', 'Breaking My Heart', 16),
	(1248, 2023, 'Alika', 'Bridges', 17),
	(1249, 2023, 'Käärijä', 'Cha Cha Cha', 20),
	(1250, 2023, 'La Zarra', 'Évidemment', 21),
	(1251, 2023, 'Iru', 'Echo', 23),
	(1252, 2023, 'Lord of the Lost', 'Blood & Glitter', 15),
	(1253, 2023, 'Victor Vernicos', 'What They Say', 24),
	(1254, 2023, 'Diljá', 'Power', 27),
	(1255, 2023, 'Wild Youth', 'We Are One', 28),
	(1256, 2023, 'Noa Kirel', 'Unicorn', 29),
	(1257, 2023, 'Marco Mengoni', 'Due vite', 30),
	(1258, 2023, 'Sudden Lights', 'Aijā', 31),
	(1259, 2023, 'Monika Linkytė', 'Stay', 32),
	(1260, 2023, 'The Busker', 'Dance (Our Own Party)', 34),
	(1261, 2023, 'Pasha Parfeni', 'Soarele și luna', 35),
	(1262, 2023, 'Mia Nicolai and Dion Cooper', 'Burning Daylight', 39),
	(1263, 2023, 'Alessandra', 'Queen of Kings', 42),
	(1264, 2023, 'Blanka', 'Solo', 43),
	(1265, 2023, 'Mimicat', 'Ai coração', 44),
	(1266, 2023, 'Theodor Andrei', 'D.G.T. (Off and On)', 45),
	(1267, 2023, 'Piqued Jacks', 'Like an Animal', 47),
	(1268, 2023, 'Luke Black', 'Samo mi se spava (Само ми се спава)', 48),
	(1269, 2023, 'Joker Out', 'Carpe Diem', 51),
	(1270, 2023, 'Blanca Paloma', 'Eaea', 18),
	(1271, 2023, 'Loreen', 'Tattoo', 52),
	(1272, 2023, 'Remo Forrer', 'Watergun', 11),
	(1273, 2023, 'Tvorchi', 'Heart of Steel', 54),
	(1274, 2023, 'Mae Muller', 'I Wrote a Song', 22),
	(1275, 2024, 'Besa', 'Titan', 1),
	(1276, 2024, 'Ladaniva', 'Jako (Ժակո)', 3),
	(1277, 2024, 'Electric Fields', 'OneMilkali (One Blood)', 5),
	(1278, 2024, 'Kaleen', 'We Will Rave', 4),
	(1279, 2024, 'Fahree feat. Ilkin Dovlatov', 'Özünlə apar', 6),
	(1280, 2024, 'Mustii', 'Before the Party''s Over', 8),
	(1281, 2024, 'Baby Lasagna', 'Rim Tim Tagi Dim', 25),
	(1282, 2024, 'Silia Kapsis', 'Liar', 12),
	(1283, 2024, 'Aiko', 'Pedestal', 14),
	(1284, 2024, 'Saba', 'Sand', 16),
	(1285, 2024, '5miinust and Puuluup', ' (Nendest) narkootikumidest ei tea me (küll) midagi', 17),
	(1286, 2024, 'Windows95man', 'No Rules!', 20),
	(1287, 2024, 'Slimane', 'Mon amour', 21),
	(1288, 2024, 'Nutsa Buzaladze', 'Firefighter', 23),
	(1289, 2024, 'Isaak', 'Always on the Run', 15),
	(1290, 2024, 'Marina Satti', 'Zari (Ζάρι)', 24),
	(1291, 2024, 'Hera Björk', 'Scared of Heights', 27),
	(1292, 2024, 'Bambie Thug', 'Doomsday Blue', 28),
	(1293, 2024, 'Eden Golan', 'Hurricane', 29),
	(1294, 2024, 'Angelina Mango', 'La noia', 30),
	(1295, 2024, 'Dons', 'Hollow', 31),
	(1296, 2024, 'Silvester Belt', 'Luktelk', 32),
	(1297, 2024, 'Tali', 'Fighter', 33),
	(1298, 2024, 'Sarah Bonnici', 'Loop', 34),
	(1299, 2024, 'Natalia Barbu', 'In the Middle', 35),
	(1300, 2024, 'Joost Klein', 'Europapa', 39),
	(1301, 2024, 'Gåte', 'Ulveham', 42),
	(1302, 2024, 'Luna', 'The Tower', 43),
	(1303, 2024, 'Iolanda', 'Grito', 44),
	(1304, 2024, 'Megara', '11:11', 47),
	(1305, 2024, 'Teya Dora', 'Ramonda (Рамонда)', 48),
	(1306, 2024, 'Raiven', 'Veronika', 51),
	(1307, 2024, 'Nebulossa', 'Zorra', 18),
	(1308, 2024, 'Marcus & Martinus', 'Unforgettable', 52),
	(1309, 2024, 'Nemo', 'The Code', 11),
	(1310, 2024, 'Alyona Alyona and Jerry Heil', 'Teresa & Maria', 54),
	(1311, 2024, 'Olly Alexander', 'Dizzy', 22),
	(1312, 2025, 'Shkodra Elektronike', 'Zjerm', 1),
	(1313, 2025, 'Parg', 'Survivor', 3),
	(1314, 2025, 'Go-Jo', 'Milkshake Man', 5),
	(1315, 2025, 'JJ', 'Wasted Love', 4),
	(1316, 2025, 'Mamagama', 'Run with U', 6),
	(1317, 2025, 'Red Sebastian', 'Strobe Lights', 8),
	(1318, 2025, 'Marko Bošnjak', 'Poison Cake', 25),
	(1319, 2025, 'Theo Evan', 'Shh', 12),
	(1320, 2025, 'Adonxs', 'Kiss Kiss Goodbye', 14),
	(1321, 2025, 'Sissal', 'Hallucination', 16),
	(1322, 2025, 'Tommy Cash', 'Espresso Macchiato', 17),
	(1323, 2025, 'Erika Vikman', 'Ich komme', 20),
	(1324, 2025, 'Louane', 'Maman', 21),
	(1325, 2025, 'Mariam Shengelia', 'Freedom', 23),
	(1326, 2025, 'Abor & Tynna', 'Baller', 15),
	(1327, 2025, 'Klavdia', 'Asteromata (Αστερομάτα)', 24),
	(1328, 2025, 'Væb', 'Róa', 27),
	(1329, 2025, 'Emmy', 'Laika Party', 28),
	(1330, 2025, 'Yuval Raphael', 'New Day Will Rise', 29),
	(1331, 2025, 'Lucio Corsi', 'Volevo essere un duro', 30),
	(1332, 2025, 'Tautumeitas', 'Bur man laimi', 31),
	(1333, 2025, 'Katarsis', 'Tavo akys', 32),
	(1334, 2025, 'Laura Thorn', 'La poupée monte le son', 33),
	(1335, 2025, 'Miriana Conte', 'Serving', 34),
	(1336, 2025, 'Nina Žižić', 'Dobrodošli (Добродошли)', 37),
	(1337, 2025, 'Claude', 'C''est la vie', 39),
	(1338, 2025, 'Kyle Alessandro', 'Lighter', 42),
	(1339, 2025, 'Justyna Steczkowska', 'Gaja', 43),
	(1340, 2025, 'Napa', 'Deslocado', 44),
	(1341, 2025, 'Gabry Ponte', 'Tutta l''Italia', 47),
	(1342, 2025, 'Princ', 'Mila (Мила)', 48),
	(1343, 2025, 'Klemen', 'How Much Time Do We Have Left', 51),
	(1344, 2025, 'Melody', 'Esa diva', 18),
	(1345, 2025, 'KAJ', 'Bara bada bastu', 52),
	(1346, 2025, 'Zoë Më', 'Voyage', 11),
	(1347, 2025, 'Ziferblat', 'Bird of Pray', 54),
	(1348, 2025, 'Remember Monday', 'What the Hell Just Happened?', 22);


--
-- Data for Name: esc_real_scores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."esc_real_scores" ("id", "entry_id", "jury", "televote", "place", "running_order", "round") VALUES
	(716, 1198, 12, 46, 12, 1, 1),
	(717, 1219, 39, 16, 14, 2, 1),
	(718, 1220, 56, 103, 7, 3, 1),
	(719, 1220, 35, 93, 14, 14, 3),
	(720, 1235, 107, 11, 9, 4, 1),
	(721, 1235, 78, 0, 17, 5, 3),
	(722, 1232, 7, 8, 17, 5, 1),
	(723, 1236, 135, 202, 1, 6, 1),
	(724, 1236, 192, 439, 1, 12, 3),
	(725, 1204, 11, 18, 16, 7, 1),
	(726, 1224, 142, 79, 2, 8, 1),
	(727, 1224, 129, 42, 11, 11, 3),
	(728, 1222, 19, 135, 8, 9, 1),
	(729, 1222, 14, 239, 7, 19, 3),
	(730, 1228, 121, 87, 4, 10, 1),
	(731, 1228, 171, 36, 9, 3, 3),
	(732, 1205, 42, 33, 11, 11, 1),
	(733, 1208, 35, 20, 13, 12, 1),
	(734, 1201, 6, 36, 15, 13, 1),
	(735, 1215, 64, 39, 10, 14, 1),
	(736, 1215, 10, 10, 23, 18, 3),
	(737, 1214, 151, 60, 3, 15, 1),
	(738, 1214, 158, 57, 8, 17, 3),
	(739, 1226, 73, 104, 6, 16, 1),
	(740, 1226, 36, 146, 10, 7, 3),
	(741, 1199, 82, 105, 5, 17, 1),
	(742, 1199, 40, 21, 20, 8, 3),
	(743, 1210, 63, 99, 7, 1, 2),
	(744, 1210, 12, 26, 21, 4, 3),
	(745, 1217, 34, 27, 13, 2, 2),
	(746, 1231, 63, 174, 3, 3, 2),
	(747, 1231, 87, 225, 5, 24, 3),
	(748, 1202, 96, 0, 10, 4, 2),
	(749, 1202, 103, 3, 16, 15, 3),
	(750, 1212, 13, 9, 18, 5, 2),
	(751, 1221, 27, 20, 16, 6, 2),
	(752, 1230, 21, 29, 14, 7, 2),
	(753, 1200, 169, 74, 2, 8, 2),
	(754, 1200, 123, 2, 15, 21, 3),
	(755, 1206, 9, 54, 12, 9, 2),
	(756, 1216, 12, 35, 15, 10, 2),
	(757, 1225, 56, 20, 11, 11, 2),
	(758, 1209, 113, 96, 5, 12, 2),
	(759, 1209, 43, 98, 13, 25, 3),
	(760, 1229, 18, 100, 9, 13, 2),
	(761, 1229, 12, 53, 18, 2, 3),
	(762, 1227, 84, 114, 6, 14, 2),
	(763, 1227, 46, 105, 12, 23, 3),
	(764, 1223, 11, 22, 17, 15, 2),
	(765, 1203, 105, 46, 8, 16, 2),
	(766, 1203, 59, 5, 19, 16, 3),
	(767, 1234, 222, 174, 1, 17, 2),
	(768, 1234, 258, 180, 4, 20, 3),
	(769, 1207, 102, 125, 4, 18, 2),
	(770, 1207, 33, 5, 22, 1, 3),
	(771, 1211, 9, 8, 24, 6, 3),
	(772, 1218, 158, 110, 6, 9, 3),
	(773, 1233, 231, 228, 3, 10, 3),
	(774, 1213, 0, 6, 25, 13, 3),
	(775, 1237, 283, 183, 2, 22, 3),
	(776, 1263, NULL, 102, 6, 1, 1),
	(777, 1263, 52, 216, 5, 20, 3),
	(778, 1260, NULL, 3, 15, 2, 1),
	(779, 1268, NULL, 37, 10, 3, 1),
	(780, 1268, 14, 16, 24, 5, 3),
	(781, 1258, NULL, 34, 11, 4, 1),
	(782, 1265, NULL, 74, 9, 5, 1),
	(783, 1265, 43, 16, 23, 2, 3),
	(784, 1255, NULL, 10, 12, 6, 1),
	(785, 1244, NULL, 76, 8, 7, 1),
	(786, 1244, 11, 112, 13, 25, 3),
	(787, 1272, NULL, 97, 7, 8, 1),
	(788, 1272, 61, 31, 20, 3, 3),
	(789, 1256, NULL, 127, 3, 9, 1),
	(790, 1256, 177, 185, 3, 23, 3),
	(791, 1261, NULL, 109, 5, 10, 1),
	(792, 1261, 20, 76, 18, 18, 3),
	(793, 1271, NULL, 135, 2, 11, 1),
	(794, 1271, 340, 243, 1, 9, 3),
	(795, 1242, NULL, 4, 14, 12, 1),
	(796, 1246, NULL, 110, 4, 13, 1),
	(797, 1246, 94, 35, 10, 14, 3),
	(798, 1262, NULL, 7, 13, 14, 1),
	(799, 1249, NULL, 177, 1, 15, 1),
	(800, 1249, 150, 376, 2, 13, 3),
	(801, 1247, NULL, 6, 14, 1, 2),
	(802, 1239, NULL, 99, 6, 2, 2),
	(803, 1239, 69, 53, 14, 17, 3),
	(804, 1266, NULL, 0, 15, 3, 2),
	(805, 1248, NULL, 74, 10, 4, 2),
	(806, 1248, 146, 22, 8, 12, 3),
	(807, 1243, NULL, 90, 8, 5, 2),
	(808, 1243, 127, 55, 7, 16, 3),
	(809, 1245, NULL, 94, 7, 6, 2),
	(810, 1245, 68, 58, 12, 7, 3),
	(811, 1254, NULL, 44, 11, 7, 2),
	(812, 1253, NULL, 14, 13, 8, 2),
	(813, 1264, NULL, 124, 3, 9, 2),
	(814, 1264, 12, 81, 19, 4, 3),
	(815, 1269, NULL, 103, 5, 10, 2),
	(816, 1269, 33, 45, 21, 24, 3),
	(817, 1251, NULL, 33, 12, 11, 2),
	(818, 1267, NULL, 0, 16, 12, 2),
	(819, 1241, NULL, 137, 2, 13, 2),
	(820, 1241, 104, 16, 15, 1, 3),
	(821, 1238, NULL, 83, 9, 14, 2),
	(822, 1238, 17, 59, 22, 10, 3),
	(823, 1259, NULL, 110, 4, 15, 2),
	(824, 1259, 81, 46, 11, 22, 3),
	(825, 1240, NULL, 149, 1, 16, 2),
	(826, 1240, 130, 21, 9, 15, 3),
	(827, 1250, 54, 50, 16, 6, 3),
	(828, 1270, 95, 5, 17, 8, 3),
	(829, 1257, 176, 174, 4, 11, 3),
	(830, 1273, 54, 189, 6, 19, 3),
	(831, 1252, 3, 15, 26, 21, 3),
	(832, 1274, 15, 9, 25, 26, 3),
	(833, 1282, NULL, 67, 6, 1, 1),
	(834, 1282, 34, 44, 15, 20, 3),
	(835, 1305, NULL, 47, 10, 2, 1),
	(836, 1305, 22, 32, 17, 16, 3),
	(837, 1296, NULL, 119, 4, 3, 1),
	(838, 1296, 32, 58, 14, 7, 3),
	(839, 1292, NULL, 124, 3, 4, 1),
	(840, 1292, 142, 136, 6, 10, 3),
	(841, 1310, NULL, 173, 2, 5, 1),
	(842, 1310, 146, 307, 3, 2, 3),
	(843, 1302, NULL, 35, 12, 6, 1),
	(844, 1281, NULL, 177, 1, 7, 1),
	(845, 1281, 210, 337, 2, 23, 3),
	(846, 1291, NULL, 3, 15, 8, 1),
	(847, 1306, NULL, 51, 9, 9, 1),
	(848, 1306, 15, 12, 23, 22, 3),
	(849, 1286, NULL, 59, 7, 10, 1),
	(850, 1286, 7, 31, 19, 17, 3),
	(851, 1299, NULL, 20, 13, 11, 1),
	(852, 1279, NULL, 11, 14, 12, 1),
	(853, 1277, NULL, 41, 11, 13, 1),
	(854, 1303, NULL, 58, 8, 14, 1),
	(855, 1303, 139, 13, 10, 18, 3),
	(856, 1297, NULL, 117, 5, 15, 1),
	(857, 1297, 83, 20, 13, 4, 3),
	(858, 1298, NULL, 13, 16, 1, 2),
	(859, 1275, NULL, 14, 15, 2, 2),
	(860, 1290, NULL, 86, 5, 3, 2),
	(861, 1290, 41, 85, 11, 12, 3),
	(862, 1309, NULL, 132, 4, 4, 2),
	(863, 1309, 365, 226, 1, 21, 3),
	(864, 1283, NULL, 38, 11, 5, 2),
	(865, 1278, NULL, 46, 9, 6, 2),
	(866, 1278, 19, 5, 24, 26, 3),
	(867, 1284, NULL, 36, 12, 7, 2),
	(868, 1276, NULL, 137, 3, 8, 2),
	(869, 1276, 101, 82, 8, 19, 3),
	(870, 1295, NULL, 72, 7, 9, 2),
	(871, 1295, 36, 28, 16, 11, 3),
	(872, 1304, NULL, 16, 14, 10, 2),
	(873, 1288, NULL, 54, 8, 11, 2),
	(874, 1288, 15, 19, 21, 24, 3),
	(875, 1280, NULL, 18, 13, 12, 2),
	(876, 1285, NULL, 79, 6, 13, 2),
	(877, 1285, 4, 33, 20, 9, 3),
	(878, 1293, NULL, 194, 1, 14, 2),
	(879, 1293, 52, 323, 5, 6, 3),
	(880, 1301, NULL, 43, 10, 15, 2),
	(881, 1301, 12, 4, 25, 14, 3),
	(882, 1300, NULL, 182, 2, 16, 2),
	(883, 1300, NULL, NULL, NULL, 5, 3),
	(884, 1308, 125, 49, 9, 1, 3),
	(885, 1289, 99, 18, 12, 3, 3),
	(886, 1307, 19, 11, 22, 8, 3),
	(887, 1311, 46, 0, 18, 13, 3),
	(888, 1294, 164, 104, 7, 15, 3),
	(889, 1287, 218, 227, 4, 25, 3),
	(890, 1328, NULL, 97, 6, 1, 1),
	(891, 1328, 0, 33, 25, 10, 3),
	(892, 1339, NULL, 85, 7, 2, 1),
	(893, 1339, 17, 139, 14, 15, 3),
	(894, 1343, NULL, 23, 13, 3, 1),
	(895, 1322, NULL, 113, 5, 4, 1),
	(896, 1322, 98, 258, 3, 3, 3),
	(897, 1347, NULL, 137, 1, 5, 1),
	(898, 1347, 60, 158, 9, 7, 3),
	(899, 1345, NULL, 118, 4, 6, 1),
	(900, 1345, 126, 195, 4, 23, 3),
	(901, 1340, NULL, 56, 9, 7, 1),
	(902, 1340, 37, 13, 21, 21, 3),
	(903, 1338, NULL, 82, 8, 8, 1),
	(904, 1338, 22, 67, 18, 1, 3),
	(905, 1317, NULL, 23, 14, 9, 1),
	(906, 1316, NULL, 7, 15, 10, 1),
	(907, 1341, NULL, 46, 10, 11, 1),
	(908, 1341, 9, 18, 26, 25, 3),
	(909, 1312, NULL, 122, 2, 12, 1),
	(910, 1312, 45, 173, 8, 26, 3),
	(911, 1337, NULL, 121, 3, 13, 1),
	(912, 1337, 133, 42, 12, 12, 3),
	(913, 1318, NULL, 28, 12, 14, 1),
	(914, 1319, NULL, 44, 11, 15, 1),
	(915, 1314, NULL, 41, 11, 1, 2),
	(916, 1336, NULL, 12, 16, 2, 2),
	(917, 1329, NULL, 28, 13, 3, 2),
	(918, 1332, NULL, 130, 2, 4, 2),
	(919, 1332, 116, 42, 13, 11, 3),
	(920, 1313, NULL, 51, 10, 5, 2),
	(921, 1313, 42, 30, 20, 18, 3),
	(922, 1315, NULL, 104, 5, 6, 2),
	(923, 1315, 258, 178, 1, 9, 3),
	(924, 1327, NULL, 112, 4, 7, 2),
	(925, 1327, 105, 126, 6, 17, 3),
	(926, 1333, NULL, 103, 6, 8, 2),
	(927, 1333, 34, 62, 16, 5, 3),
	(928, 1335, NULL, 53, 9, 9, 2),
	(929, 1335, 83, 8, 17, 20, 3),
	(930, 1325, NULL, 28, 15, 10, 2),
	(931, 1321, NULL, 61, 8, 11, 2),
	(932, 1321, 45, 2, 23, 22, 3),
	(933, 1320, NULL, 29, 12, 12, 2),
	(934, 1334, NULL, 62, 7, 13, 2),
	(935, 1334, 23, 24, 22, 2, 3),
	(936, 1330, NULL, 203, 1, 14, 2),
	(937, 1330, 60, 297, 2, 4, 3),
	(938, 1342, NULL, 28, 14, 15, 2),
	(939, 1323, NULL, 115, 3, 16, 2),
	(940, 1323, 88, 108, 11, 13, 3),
	(941, 1344, 27, 10, 24, 6, 3),
	(942, 1348, 88, 0, 19, 8, 3),
	(943, 1331, 159, 97, 5, 14, 3),
	(944, 1326, 77, 74, 15, 16, 3),
	(945, 1346, 214, 0, 10, 19, 3),
	(946, 1324, 180, 50, 7, 24, 3);


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: esc_user_scores; Type: TABLE DATA; Schema: public; Owner: postgres
--



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
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."countries_id_seq"', 55, true);


--
-- Name: esc_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."esc_entries_id_seq"', 1348, true);


--
-- Name: esc_real_scores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."esc_real_scores_id_seq"', 946, true);


--
-- Name: esc_user_scores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."esc_user_scores_id_seq"', 1, false);


--
-- Name: pze_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."pze_entries_id_seq"', 1, false);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

-- \unrestrict L08XCF82Dfd0hw4EPEKB4QcfawO5eCO9BQuEEf79W4oi5bwZf2yLz7L2ybn12er

RESET ALL;
