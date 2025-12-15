SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict fjBlgd21HGzYA2nMSrIfbgQVQQOeLttNc39E4g0yfs4QfSmSR2uoKPwGlhAOZHA

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
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: supabase_admin
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

INSERT INTO "public"."esc_entries" ("id", "country_id", "year", "artist", "song_title") VALUES
	(976, 1, 2025, 'Shkodra Elektronike', 'Zjerm'),
	(977, 3, 2025, 'Parg', 'Survivor'),
	(978, 5, 2025, 'Go-Jo', 'Milkshake Man'),
	(979, 4, 2025, 'JJ', 'Wasted Love'),
	(980, 6, 2025, 'Mamagama', 'Run with U'),
	(981, 8, 2025, 'Red Sebastian', 'Strobe Lights'),
	(982, 25, 2025, 'Marko Bošnjak', 'Poison Cake'),
	(983, 12, 2025, 'Theo Evan', 'Shh'),
	(984, 14, 2025, 'Adonxs', 'Kiss Kiss Goodbye'),
	(985, 16, 2025, 'Sissal', 'Hallucination'),
	(986, 17, 2025, 'Tommy Cash', 'Espresso Macchiato'),
	(987, 20, 2025, 'Erika Vikman', 'Ich komme'),
	(988, 21, 2025, 'Louane', 'Maman'),
	(989, 23, 2025, 'Mariam Shengelia', 'Freedom'),
	(990, 15, 2025, 'Abor & Tynna', 'Baller'),
	(992, 27, 2025, 'Væb', 'Róa'),
	(993, 28, 2025, 'Emmy', 'Laika Party'),
	(994, 29, 2025, 'Yuval Raphael', 'New Day Will Rise'),
	(995, 30, 2025, 'Lucio Corsi', 'Volevo essere un duro'),
	(996, 31, 2025, 'Tautumeitas', 'Bur man laimi'),
	(997, 32, 2025, 'Katarsis', 'Tavo akys'),
	(998, 33, 2025, 'Laura Thorn', 'La poupée monte le son'),
	(999, 34, 2025, 'Miriana Conte', 'Serving'),
	(1001, 39, 2025, 'Claude', 'C''est la vie'),
	(1002, 42, 2025, 'Kyle Alessandro', 'Lighter'),
	(1003, 43, 2025, 'Justyna Steczkowska', 'Gaja'),
	(1004, 44, 2025, 'Napa', 'Deslocado'),
	(1007, 51, 2025, 'Klemen', 'How Much Time Do We Have Left'),
	(1008, 18, 2025, 'Melody', 'Esa diva'),
	(1009, 52, 2025, 'KAJ', 'Bara bada bastu'),
	(1010, 11, 2025, 'Zoë Më', 'Voyage'),
	(1011, 54, 2025, 'Ziferblat', 'Bird of Pray'),
	(1012, 22, 2025, 'Remember Monday', 'What the Hell Just Happened?'),
	(1005, 47, 2025, 'Gabry Ponte', 'Tutta l''Italia'),
	(1013, 8, 1974, 'Jacques Hustin', 'Fleur de liberté'),
	(1014, 20, 1974, 'Carita', 'Keep Me Warm'),
	(1015, 15, 1974, 'Cindy and Bert', 'Die Sommermelodie'),
	(1017, 28, 1974, 'Tina Reynolds', 'Cross Your Heart'),
	(1019, 30, 1974, 'Gigliola Cinquetti', 'Sì'),
	(1020, 33, 1974, 'Ireen Sheer', 'Bye Bye I Love You'),
	(1021, 36, 1974, 'Romuald', 'Celui qui reste et celui qui s''en va'),
	(1022, 39, 1974, 'Mouth and MacNeal', 'I See a Star'),
	(1023, 42, 1974, 'Anne-Karineand theBendik Singers', 'The First Day of Love'),
	(1024, 44, 1974, 'Paulo de Carvalho', 'E depois do adeus'),
	(1025, 18, 1974, 'Peret', 'Canta y sé feliz'),
	(1026, 52, 1974, 'ABBA', 'Waterloo'),
	(1027, 11, 1974, 'Piera Martell', 'Mein Ruf nach dir'),
	(1028, 22, 1974, 'Olivia Newton-John', 'Long Live Love'),
	(1030, 1, 2008, 'Olta Boka', 'Zemrën e lamë peng'),
	(1031, 2, 2008, 'Gisela', 'Casanova'),
	(1034, 10, 2008, 'Ruslan Alehno', 'Hasta la vista'),
	(1035, 8, 2008, 'Ishtar', 'O Julissi'),
	(1036, 7, 2008, 'Laka', 'Pokušaj'),
	(1037, 9, 2008, 'Deep Zone and Balthazar', 'DJ, Take Me Away'),
	(1038, 25, 2008, 'Kraljevi ulice and 75 Cents', 'Romanca'),
	(1039, 12, 2008, 'Evdokia Kadi', 'Femme Fatale'),
	(1040, 13, 2008, 'Tereza Kerndlová', 'Have Some Fun'),
	(1041, 16, 2008, 'Simon Mathew', 'All Night Long'),
	(1043, 20, 2008, 'Teräsbetoni', 'Missä miehet ratsastaa'),
	(1044, 21, 2008, 'Sébastien Tellier', 'Divine'),
	(1045, 23, 2008, 'Diana Gurtskaya', 'Peace Will Come'),
	(1046, 15, 2008, 'No Angels', 'Disappear'),
	(1047, 24, 2008, 'Kalomira', 'Secret Combination'),
	(1048, 26, 2008, 'Csézy', 'Candlelight'),
	(1049, 27, 2008, 'Euroband', 'This Is My Life'),
	(1050, 28, 2008, 'Dustin the Turkey', 'Irelande Douze Pointe'),
	(1051, 29, 2008, 'Boaz', 'The Fire in Your Eyes'),
	(1052, 31, 2008, 'Pirates of the Sea', 'Wolves of the Sea'),
	(1053, 32, 2008, 'Jeronimas Milius', 'Nomads in the Night'),
	(1055, 34, 2008, 'Morena', 'Vodka'),
	(1056, 35, 2008, 'Geta Burlacu', 'A Century of Love'),
	(1058, 39, 2008, 'Hind', 'Your Heart Belongs to Me'),
	(1059, 42, 2008, 'Maria', 'Hold On Be Strong'),
	(1060, 43, 2008, 'Isis Gee', 'For Life'),
	(1061, 44, 2008, 'Vânia Fernandes', 'Senhora do mar (Negras águas)'),
	(1062, 45, 2008, 'NicoandVlad', 'Pe-o margine de lume'),
	(1063, 46, 2008, 'Dima Bilan', 'Believe'),
	(1064, 47, 2008, 'Miodio', 'Complice'),
	(1066, 51, 2008, 'Rebeka Dremelj', 'Vrag naj vzame'),
	(1067, 18, 2008, 'Rodolfo Chikilicuatre', 'Baila el Chiki Chiki'),
	(1068, 52, 2008, 'Charlotte Perrelli', 'Hero'),
	(1069, 11, 2008, 'Paolo Meneguzzi', 'Era stupendo'),
	(1070, 53, 2008, 'Mor ve Ötesi', 'Deli'),
	(1071, 54, 2008, 'Ani Lorak', 'Shady Lady'),
	(1072, 22, 2008, 'Andy Abraham', 'Even If'),
	(1073, 1, 2009, 'Kejsi Tola', 'Carry Me in Your Dreams'),
	(1075, 3, 2009, 'Inga and Anush', 'Jan Jan(Ջան Ջան)'),
	(1077, 10, 2009, 'Petr Elfimov', 'Eyes That Never Lie'),
	(1078, 8, 2009, 'Copycat', 'Copycat'),
	(1054, 41, 2008, 'Tamara, Vrčak and Adrijan', 'Let Me Love You'),
	(1074, 2, 2009, 'Susanne Georgi', 'La teva decisió (Get a Life)'),
	(1076, 6, 2009, 'Aysel and Arash', 'Always'),
	(991, 24, 2025, 'Klavdia', 'Asteromata (Αστερομάτα)'),
	(1000, 37, 2025, 'Nina Žižić', 'Dobrodošli (Добродошли)'),
	(1006, 48, 2025, 'Princ', 'Mila (Мила)'),
	(1018, 29, 1974, 'Poogy', 'Natati La Khaiai (נתתי לה חיי)'),
	(1029, 55, 1974, 'Korni Grupa', 'Generacija''42 (Генерација''42)'),
	(1032, 3, 2008, 'Sirusho', 'Qélé, Qélé (Քելե Քելե)'),
	(1042, 17, 2008, 'Kreisiraadio', 'Leto svet (Лето свет)'),
	(1057, 37, 2008, 'Stefan Filipović', 'Zauvijek volim te (Заувијек волим те)'),
	(1065, 48, 2008, 'Jelena Tomašević feat. Bora Dugić', 'Oro (Оро)'),
	(1079, 7, 2009, 'Regina', 'Bistra voda'),
	(1080, 9, 2009, 'Krassimir Avramov', 'Illusion'),
	(1082, 12, 2009, 'Christina Metaxa', 'Firefly'),
	(1083, 13, 2009, 'Gipsy.cz', 'Aven Romale'),
	(1084, 16, 2009, 'Brinck', 'Believe Again'),
	(1085, 17, 2009, 'Urban Symphony', 'Rändajad'),
	(1086, 20, 2009, 'Waldo''s People', 'Lose Control'),
	(1087, 21, 2009, 'Patricia Kaas', 'Et s''il fallait le faire'),
	(1089, 24, 2009, 'Sakis Rouvas', 'This Is Our Night'),
	(1090, 26, 2009, 'Zoli Ádok', 'Dance with Me'),
	(1091, 27, 2009, 'Yohanna', 'Is It True?'),
	(1095, 32, 2009, 'Sasha Son', 'Love'),
	(1097, 34, 2009, 'Chiara', 'What If We'),
	(1098, 35, 2009, 'Nelly Ciobanu', 'Hora din Moldova'),
	(1099, 37, 2009, 'Andrea Demirović', 'Just Get Out of My Life'),
	(1100, 39, 2009, 'The Toppers', 'Shine'),
	(1101, 42, 2009, 'Alexander Rybak', 'Fairytale'),
	(1102, 43, 2009, 'Lidia Kopania', 'I Don''t Wanna Leave'),
	(1103, 44, 2009, 'Flor-de-Lis', 'Todas as ruas do amor'),
	(1104, 45, 2009, 'Elena', 'The Balkan Girls'),
	(1109, 18, 2009, 'Soraya Arnelas', 'La noche es para mí'),
	(1110, 52, 2009, 'Malena Ernman', 'La Voix'),
	(1111, 11, 2009, 'Lovebugs', 'The Highest Heights'),
	(1112, 53, 2009, 'Hadise', 'Düm Tek Tek'),
	(1113, 54, 2009, 'Svetlana Loboda', 'Be My Valentine! (Anti-Crisis Girl)'),
	(1114, 22, 2009, 'Jade Ewen', 'It''s My Time'),
	(1115, 1, 2010, 'Juliana Pasha', 'It''s All About You'),
	(1116, 3, 2010, 'Eva Rivas', 'Apricot Stone'),
	(1117, 6, 2010, 'Safura', 'Drip Drop'),
	(1119, 8, 2010, 'Tom Dice', 'Me and My Guitar'),
	(1120, 7, 2010, 'Vukašin Brajić', 'Thunder and Lightning'),
	(1122, 25, 2010, 'Feminnem', 'Lako je sve'),
	(1125, 17, 2010, 'Malcolm Lincoln', 'Siren'),
	(1126, 20, 2010, 'Kuunkuiskaajat', 'Työlki ellää'),
	(1127, 21, 2010, 'Jessy Matador', 'Allez Ola Olé'),
	(1128, 23, 2010, 'Sofia Nizharadze', 'Shine'),
	(1129, 15, 2010, 'Lena', 'Satellite'),
	(1131, 27, 2010, 'Hera Björk', 'Je ne sais quoi'),
	(1132, 28, 2010, 'Niamh Kavanagh', 'It''s for You'),
	(1134, 31, 2010, 'Aisha', 'What For?'),
	(1135, 32, 2010, 'InCulto', 'Eastern European Funk'),
	(1137, 34, 2010, 'Thea Garrett', 'My Dream'),
	(1139, 39, 2010, 'Sieneke', 'Ik ben verliefd (Sha-la-lie)'),
	(1140, 42, 2010, 'Didrik Solli-Tangen', 'My Heart Is Yours'),
	(1141, 43, 2010, 'Marcin Mroziński', 'Legenda'),
	(1142, 44, 2010, 'Filipa Azevedo', 'Há dias assim'),
	(1144, 46, 2010, 'Peter Nalitch and Friends', 'Lost and Forgotten'),
	(1146, 50, 2010, 'Kristína', 'Horehronie'),
	(1148, 18, 2010, 'Daniel Diges', 'Algo pequeñito'),
	(1149, 52, 2010, 'Anna Bergendahl', 'This Is My Life'),
	(1150, 11, 2010, 'Michael von der Heide', 'Il pleut de l''or'),
	(1151, 53, 2010, 'Manga', 'We Could Be the Same'),
	(1152, 54, 2010, 'Alyosha', 'Sweet People'),
	(1153, 22, 2010, 'Josh Dubovie', 'That Sounds Good to Me'),
	(1154, 1, 2011, 'Aurela Gaçe', 'Feel the Passion'),
	(1155, 3, 2011, 'Emmy', 'Boom Boom'),
	(1156, 4, 2011, 'Nadine Beiler', 'The Secret is Love'),
	(1158, 10, 2011, 'Anastasia Vinnikova', 'I Love Belarus'),
	(1159, 8, 2011, 'Witloof Bay', 'With Love Baby'),
	(1160, 7, 2011, 'Dino Merlin', 'Love in Rewind'),
	(1162, 25, 2011, 'Daria', 'Celebrate'),
	(1164, 16, 2011, 'A Friend in London', 'New Tomorrow'),
	(1165, 17, 2011, 'Getter Jaani', 'Rockefeller Street'),
	(1166, 20, 2011, 'Paradise Oskar', 'Da Da Dam'),
	(1167, 21, 2011, 'Amaury Vassili', 'Sognu'),
	(1168, 23, 2011, 'Eldrine', 'One More Day'),
	(1169, 15, 2011, 'Lena', 'Taken by a Stranger'),
	(1171, 26, 2011, 'Kati Wolf', 'What About My Dreams?'),
	(1172, 27, 2011, 'Sjonni''s Friends', 'Coming Home'),
	(1173, 28, 2011, 'Jedward', 'Lipstick'),
	(1174, 29, 2011, 'Dana International', 'Ding Dong'),
	(1175, 30, 2011, 'Raphael Gualazzi', 'Madness of Love'),
	(1176, 31, 2011, 'Musiqq', 'Angel in Disguise'),
	(1177, 32, 2011, 'Evelina Sašenko', 'C''est ma vie'),
	(1088, 15, 2009, 'Alex Swings Oscar Sings!', 'Miss Kiss Kiss Bang'),
	(1092, 28, 2009, 'Sinéad Mulvey and Black Daisy', 'Et Cetera'),
	(1093, 29, 2009, 'Noa and Mira Awad', 'There Must Be Another Way'),
	(1121, 9, 2010, 'Miro', 'Angel si ti (Ангел си ти)'),
	(1107, 50, 2009, 'Kamil Mikulčík and Nela Pocisková', 'Leť tmou'),
	(1108, 51, 2009, 'Quartissimo feat. Martina', 'Love Symphony'),
	(1118, 10, 2010, '3+2 feat. Robert Wells', 'Butterflies'),
	(1124, 16, 2010, 'Chanée and N''evergreen', 'In a Moment like This'),
	(1145, 48, 2010, 'Milan Stanković', 'Ovo je Balkan (Oво je Балкан)'),
	(1138, 35, 2010, 'SunStroke Project and Olia Tira', 'Run Away'),
	(1143, 45, 2010, 'Paula Seling and Ovi', 'Playing with Fire'),
	(1147, 51, 2010, 'Ansambel Žlindra and Kalamari', 'Narodnozabavni rock'),
	(1157, 6, 2011, 'Ell and Nikki', 'Running Scared'),
	(1170, 24, 2011, 'Loukas Yorkas feat. Stereo Mike', 'Watch My Dance'),
	(1094, 31, 2009, 'Intars Busulis', 'Probka (Пробка)'),
	(1096, 41, 2009, 'Next Time', 'Nešto što kje ostane (Нешто што ќе остане)'),
	(1105, 46, 2009, 'Anastasia Prikhodko', 'Mamo (Мамо)'),
	(1106, 48, 2009, 'Marko Kon and Milaan', 'Cipela (Ципела)'),
	(1130, 24, 2010, 'Giorgos Alkaios and Friends', 'Opa (Ώπα)'),
	(1133, 29, 2010, 'Harel Skaat', 'Milim (מילים)'),
	(1163, 12, 2011, 'Christos Mylordos', 'San aggelos s''agapisa (Σαν άγγελος σ''αγάπησα)'),
	(1161, 9, 2011, 'Poli Genova', 'Na inat (На инат)'),
	(1178, 41, 2011, 'Vlatko Ilievski', 'Rusinka (Русинкa)'),
	(1179, 34, 2011, 'Glen Vella', 'One Life'),
	(1180, 35, 2011, 'Zdob şi Zdub', 'So Lucky'),
	(1181, 39, 2011, '3JS', 'Never Alone'),
	(1182, 42, 2011, 'Stella Mwangi', 'Haba Haba'),
	(1183, 43, 2011, 'Magdalena Tul', 'Jestem'),
	(1184, 44, 2011, 'Homens da Luta', 'A luta é alegria'),
	(1185, 45, 2011, 'Hotel FM', 'Change'),
	(1186, 46, 2011, 'Alexey Vorobyov', 'Get You'),
	(1187, 47, 2011, 'Senit', 'Stand By'),
	(1189, 50, 2011, 'Twiins', 'I''m Still Alive'),
	(1190, 51, 2011, 'Maja Keuc', 'No One'),
	(1191, 18, 2011, 'Lucía Pérez', 'Que me quiten lo bailao'),
	(1192, 52, 2011, 'Eric Saade', 'Popular'),
	(1193, 11, 2011, 'Anna Rossinelli', 'In Love for a While'),
	(1194, 53, 2011, 'Yüksek Sadakat', 'Live It Up'),
	(1195, 54, 2011, 'Mika Newton', 'Angel'),
	(1196, 22, 2011, 'Blue', 'I Can'),
	(1197, 1, 2012, 'Rona Nishliu', 'Suus'),
	(1198, 4, 2012, 'Trackshittaz', 'Woki mit deim Popo'),
	(1199, 6, 2012, 'Sabina Babayeva', 'When the Music Dies'),
	(1200, 10, 2012, 'Litesound', 'We Are the Heroes'),
	(1201, 8, 2012, 'Iris', 'Would You?'),
	(1202, 7, 2012, 'Maya Sar', 'Korake ti znam'),
	(1203, 9, 2012, 'Sofi Marinova', 'Love Unlimited'),
	(1204, 25, 2012, 'Nina Badrić', 'Nebo'),
	(1205, 12, 2012, 'Ivi Adamou', 'La La Love'),
	(1206, 16, 2012, 'Soluna Samay', 'Should''ve Known Better'),
	(1207, 17, 2012, 'Ott Lepland', 'Kuula'),
	(1208, 20, 2012, 'Pernilla', 'När jag blundar'),
	(1209, 21, 2012, 'Anggun', 'Echo (You and I)'),
	(1210, 23, 2012, 'Anri Jokhadze', 'I''m a Joker'),
	(1211, 15, 2012, 'Roman Lob', 'Standing Still'),
	(1212, 24, 2012, 'Eleftheria Eleftheriou', 'Aphrodisiac'),
	(1213, 26, 2012, 'Compact Disco', 'Sound of Our Hearts'),
	(1215, 28, 2012, 'Jedward', 'Waterline'),
	(1216, 29, 2012, 'Izabo', 'Time'),
	(1218, 31, 2012, 'Anmary', 'Beautiful Song'),
	(1219, 32, 2012, 'Donny Montell', 'Love Is Blind'),
	(1221, 34, 2012, 'Kurt Calleja', 'This Is the Night'),
	(1222, 35, 2012, 'Pasha Parfeny', 'Lăutar'),
	(1223, 37, 2012, 'Rambo Amadeus', 'Euro Neuro'),
	(1224, 39, 2012, 'Joan Franka', 'You and Me'),
	(1225, 42, 2012, 'Tooji', 'Stay'),
	(1226, 44, 2012, 'Filipa Sousa', 'Vida minha'),
	(1227, 45, 2012, 'Mandinga', 'Zaleilah'),
	(1228, 46, 2012, 'Buranovskiye Babushki', 'Party for Everybody'),
	(1229, 47, 2012, 'Valentina Monetta', 'The Social Network Song (Oh Oh – Uh – Oh Oh)'),
	(1231, 50, 2012, 'Max Jason Mai', 'Don''t Close Your Eyes'),
	(1232, 51, 2012, 'Eva Boto', 'Verjamem'),
	(1233, 18, 2012, 'Pastora Soler', 'Quédate conmigo'),
	(1234, 52, 2012, 'Loreen', 'Euphoria'),
	(1235, 11, 2012, 'Sinplus', 'Unbreakable'),
	(1236, 53, 2012, 'Can Bonomo', 'Love Me Back'),
	(1237, 54, 2012, 'Gaitana', 'Be My Guest'),
	(1238, 22, 2012, 'Engelbert Humperdinck', 'Love Will Set You Free'),
	(1240, 3, 2013, 'Dorians', 'Lonely Planet'),
	(1241, 4, 2013, 'Natália Kelly', 'Shine'),
	(1242, 6, 2013, 'Farid Mammadov', 'Hold Me'),
	(1243, 10, 2013, 'Alyona Lanskaya', 'Solayoh'),
	(1244, 8, 2013, 'Roberto Bellarosa', 'Love Kills'),
	(1246, 25, 2013, 'Klapa s Mora', 'Mižerja'),
	(1248, 16, 2013, 'Emmelie de Forest', 'Only Teardrops'),
	(1249, 17, 2013, 'Birgit', 'Et uus saaks alguse'),
	(1250, 20, 2013, 'Krista Siegfrids', 'Marry Me'),
	(1251, 21, 2013, 'Amandine Bourgeois', 'L''enfer et moi'),
	(1253, 15, 2013, 'Cascada', 'Glorious'),
	(1255, 26, 2013, 'ByeAlex', 'Kedvesem (Zoohacker Remix)'),
	(1256, 27, 2013, 'Eythor Ingi', 'Ég á líf'),
	(1257, 28, 2013, 'Ryan Dolan', 'Only Love Survives'),
	(1259, 30, 2013, 'Marco Mengoni', 'L''essenziale'),
	(1260, 31, 2013, 'PeR', 'Here We Go'),
	(1261, 32, 2013, 'Andrius Pojavis', 'Something'),
	(1263, 34, 2013, 'Gianluca', 'Tomorrow'),
	(1264, 35, 2013, 'Aliona Moon', 'O mie'),
	(1266, 39, 2013, 'Anouk', 'Birds'),
	(1267, 42, 2013, 'Margaret Berger', 'I Feed You My Love'),
	(1268, 45, 2013, 'Cezar', 'It''s My Life'),
	(1269, 46, 2013, 'Dina Garipova', 'What If'),
	(1270, 47, 2013, 'Valentina Monetta', 'Crisalide (Vola)'),
	(1272, 51, 2013, 'Hannah', 'Straight into Love'),
	(1273, 18, 2013, 'ESDM', 'Contigo hasta el final'),
	(1274, 52, 2013, 'Robin Stjernberg', 'You'),
	(1275, 11, 2013, 'Takasa', 'You and Me'),
	(1276, 54, 2013, 'Zlata Ognevich', 'Gravity'),
	(1277, 22, 2013, 'Bonnie Tyler', 'Believe in Me'),
	(1278, 1, 2014, 'Hersi', 'One Night''s Anger'),
	(1279, 3, 2014, 'Aram Mp3', 'Not Alone'),
	(1280, 4, 2014, 'Conchita Wurst', 'Rise Like a Phoenix'),
	(1281, 6, 2014, 'Dilara Kazimova', 'Start a Fire'),
	(1282, 10, 2014, 'Teo', 'Cheesecake'),
	(1283, 8, 2014, 'Axel Hirsoux', 'Mother'),
	(1239, 1, 2013, 'Adrian Lulgjuraj and Bledar Sejko', 'Identitet'),
	(1254, 24, 2013, 'Koza Mostra feat. Agathon Iakovidis', 'Alcohol Is Free'),
	(1265, 37, 2013, 'Who See', 'Igranka (Игранка)'),
	(1271, 48, 2013, 'Moje 3', 'Ljubav je svuda (Љубав је свуда)'),
	(1188, 48, 2011, 'Nina', 'Čaroban (Чаробан)'),
	(1217, 30, 2012, 'Nina Zilli', 'L''amore è femmina (Out of Love)'),
	(1220, 41, 2012, 'Kaliopi', 'Crno i belo (Црно и бело)'),
	(1230, 48, 2012, 'Željko Joksimović', 'Nije ljubav stvar (Није љубав ствар)'),
	(1245, 9, 2013, 'Elitsa Todorova and Stoyan Yankoulov', 'Samo shampioni (Само шампиони)'),
	(1247, 12, 2013, 'Despina Olympiou', 'An me thimasai (Aν με θυμάσαι)'),
	(1258, 29, 2013, 'Moran Mazor', 'Rak Bishvilo (רק בשבילו)'),
	(1284, 16, 2014, 'Basim', 'Cliche Love Song'),
	(1285, 17, 2014, 'Tanja', 'Amazing'),
	(1286, 20, 2014, 'Softengine', 'Something Better'),
	(1287, 21, 2014, 'Twin Twin', 'Moustache'),
	(1289, 15, 2014, 'Elaiza', 'Is It Right'),
	(1291, 26, 2014, 'András Kállay-Saunders', 'Running'),
	(1292, 27, 2014, 'Pollapönk', 'No Prejudice'),
	(1294, 29, 2014, 'Mei Finegold', 'Same Heart'),
	(1295, 30, 2014, 'Emma', 'La mia città'),
	(1296, 31, 2014, 'Aarzemnieki', 'Cake to Bake'),
	(1297, 32, 2014, 'Vilija', 'Attention'),
	(1298, 41, 2014, 'Tijana', 'To the Sky'),
	(1299, 34, 2014, 'Firelight', 'Coming Home'),
	(1300, 35, 2014, 'Cristina Scarlat', 'Wild Soul'),
	(1302, 39, 2014, 'The Common Linnets', 'Calm After the Storm'),
	(1303, 42, 2014, 'Carl Espen', 'Silent Storm'),
	(1304, 43, 2014, 'DonatanandCleo', 'My Słowianie– We Are Slavic'),
	(1305, 44, 2014, 'Suzy', 'Quero ser tua'),
	(1307, 46, 2014, 'Tolmachevy Sisters', 'Shine'),
	(1308, 47, 2014, 'Valentina Monetta', 'Maybe'),
	(1309, 51, 2014, 'Tinkara Kovač', 'Round and Round'),
	(1310, 18, 2014, 'Ruth Lorenzo', 'Dancing in the Rain'),
	(1311, 52, 2014, 'Sanna Nielsen', 'Undo'),
	(1312, 11, 2014, 'Sebalter', 'Hunter of Stars'),
	(1313, 54, 2014, 'Mariya Yaremchuk', 'Tick-Tock'),
	(1314, 22, 2014, 'Molly', 'Children of the Universe'),
	(1315, 1, 2015, 'Elhaida Dani', 'I''m Alive'),
	(1316, 3, 2015, 'Genealogy', 'Face the Shadow'),
	(1317, 5, 2015, 'Guy Sebastian', 'Tonight Again'),
	(1318, 4, 2015, 'The Makemakes', 'I Am Yours'),
	(1319, 6, 2015, 'Elnur Hüseynov', 'Hour of the Wolf'),
	(1320, 10, 2015, 'UzariandMaimuna', 'Time'),
	(1321, 8, 2015, 'Loïc Nottet', 'Rhythm Inside'),
	(1322, 12, 2015, 'John Karayiannis', 'One Thing I Should Have Done'),
	(1324, 16, 2015, 'Anti Social Media', 'The Way You Are'),
	(1325, 17, 2015, 'Elina BornandStig Rästa', 'Goodbye to Yesterday'),
	(1326, 20, 2015, 'Pertti Kurikan Nimipäivät', 'Aina mun pitää'),
	(1327, 21, 2015, 'Lisa Angell', 'N''oubliez pas'),
	(1328, 23, 2015, 'Nina Sublatti', 'Warrior'),
	(1329, 15, 2015, 'Ann Sophie', 'Black Smoke'),
	(1330, 24, 2015, 'Maria Elena Kyriakou', 'One Last Breath'),
	(1331, 26, 2015, 'Boggie', 'Wars for Nothing'),
	(1332, 27, 2015, 'Maria Olafs', 'Unbroken'),
	(1333, 28, 2015, 'Molly Sterling', 'Playing with Numbers'),
	(1334, 29, 2015, 'Nadav Guedj', 'Golden Boy'),
	(1335, 30, 2015, 'Il Volo', 'Grande amore'),
	(1336, 31, 2015, 'Aminata', 'Love Injected'),
	(1338, 41, 2015, 'Daniel Kajmakoski', 'Autumn Leaves'),
	(1339, 34, 2015, 'Amber', 'Warrior'),
	(1340, 35, 2015, 'Eduard Romanyuta', 'I Want Your Love'),
	(1341, 37, 2015, 'Knez', 'Adio(Адио)'),
	(1342, 39, 2015, 'Trijntje Oosterhuis', 'Walk Along'),
	(1344, 43, 2015, 'Monika Kuszyńska', 'In the Name of Love'),
	(1345, 44, 2015, 'Leonor Andrade', 'Há um mar que nos separa'),
	(1346, 45, 2015, 'Voltaj', 'De la capăt'),
	(1347, 46, 2015, 'Polina Gagarina', 'A Million Voices'),
	(1349, 48, 2015, 'Bojana Stamenov', 'Beauty Never Lies'),
	(1350, 51, 2015, 'Maraaya', 'Here for You'),
	(1351, 18, 2015, 'Edurne', 'Amanecer'),
	(1352, 52, 2015, 'Måns Zelmerlöw', 'Heroes'),
	(1353, 11, 2015, 'Mélanie René', 'Time to Shine'),
	(1354, 22, 2015, 'Electro Velvet', 'Still in Love with You'),
	(1355, 1, 2016, 'Eneda Tarifa', 'Fairytale'),
	(1356, 3, 2016, 'Iveta Mukuchyan', 'LoveWave'),
	(1357, 5, 2016, 'Dami Im', 'Sound of Silence'),
	(1358, 4, 2016, 'Zoë', 'Loin d''ici'),
	(1359, 6, 2016, 'Samra', 'Miracle'),
	(1360, 10, 2016, 'Ivan', 'Help You Fly'),
	(1361, 8, 2016, 'Laura Tesoro', 'What''s the Pressure'),
	(1363, 9, 2016, 'Poli Genova', 'If Love Was a Crime'),
	(1364, 25, 2016, 'Nina Kraljić', 'Lighthouse'),
	(1365, 12, 2016, 'Minus One', 'Alter Ego'),
	(1366, 13, 2016, 'Gabriela Gunčíková', 'I Stand'),
	(1367, 16, 2016, 'Lighthouse X', 'Soldiers of Love'),
	(1368, 17, 2016, 'Jüri Pootsmann', 'Play'),
	(1369, 20, 2016, 'Sandhja', 'Sing It Away'),
	(1370, 21, 2016, 'Amir', 'J''ai cherché'),
	(1372, 15, 2016, 'Jamie-Lee', 'Ghost'),
	(1373, 24, 2016, 'Argo', 'Utopian Land'),
	(1374, 26, 2016, 'Freddie', 'Pioneer'),
	(1375, 27, 2016, 'Greta Salóme', 'Hear Them Calling'),
	(1376, 28, 2016, 'Nicky Byrne', 'Sunlight'),
	(1377, 29, 2016, 'Hovi Star', 'Made of Stars'),
	(1378, 30, 2016, 'Francesca Michielin', 'No Degree of Separation'),
	(1379, 31, 2016, 'Justs', 'Heartbeat'),
	(1380, 32, 2016, 'Donny Montell', 'I''ve Been Waiting for This Night'),
	(1382, 34, 2016, 'Ira Losco', 'Walk on Water'),
	(1383, 35, 2016, 'Lidia Isac', 'Falling Stars'),
	(1384, 37, 2016, 'Highway', 'The Real Thing'),
	(1385, 39, 2016, 'Douwe Bob', 'Slow Down'),
	(1386, 42, 2016, 'Agnete', 'Icebreaker'),
	(1387, 43, 2016, 'Michał Szpak', 'Color of Your Life'),
	(1388, 46, 2016, 'Sergey Lazarev', 'You Are the Only One'),
	(1290, 24, 2014, 'Freaky Fortune feat. RiskyKidd', 'Rise Up'),
	(1306, 45, 2014, 'Paula Seling and Ovi', 'Miracle'),
	(1323, 13, 2015, 'Marta Jandová and Václav Noid Bárta', 'Hope Never Dies'),
	(1337, 32, 2015, 'Monika Linkytė and Vaidas Baumila', 'This Time'),
	(1343, 42, 2015, 'Mørland and Debrah Scarlett', 'A Monster Like Me'),
	(1348, 47, 2015, 'Anita Simoncini and Michele Perniola', 'Chain of Lights'),
	(1371, 23, 2016, 'Nika Kocharov and Young Georgian Lolitaz', 'Midnight Gold'),
	(1362, 7, 2016, 'Dalal and Deen feat. Ana Rucner and Jala', 'Ljubav je'),
	(1301, 37, 2014, 'Sergej Ćetković', 'Moj svijet (Мој свијет)'),
	(1381, 41, 2016, 'Kaliopi', 'Dona (Дона)'),
	(1389, 47, 2016, 'Serhat', 'I Didn''t Know'),
	(1390, 48, 2016, 'Sanja Vučić Zaa', 'Goodbye (Shelter)'),
	(1391, 51, 2016, 'ManuElla', 'Blue and Red'),
	(1392, 18, 2016, 'Barei', 'Say Yay!'),
	(1393, 52, 2016, 'Frans', 'If I Were Sorry'),
	(1394, 11, 2016, 'Rykka', 'The Last of Our Kind'),
	(1395, 54, 2016, 'Jamala', '1944'),
	(1396, 22, 2016, 'Joe and Jake', 'You''re Not Alone'),
	(1397, 1, 2017, 'Lindita', 'World'),
	(1398, 3, 2017, 'Artsvik', 'Fly with Me'),
	(1399, 5, 2017, 'Isaiah', 'Don''t Come Easy'),
	(1400, 4, 2017, 'Nathan Trent', 'Running on Air'),
	(1401, 6, 2017, 'Dihaj', 'Skeletons'),
	(1402, 10, 2017, 'Naviband', 'Story of My Life'),
	(1403, 8, 2017, 'Blanche', 'City Lights'),
	(1404, 9, 2017, 'Kristian Kostov', 'Beautiful Mess'),
	(1405, 25, 2017, 'Jacques Houdek', 'My Friend'),
	(1406, 12, 2017, 'Hovig', 'Gravity'),
	(1407, 13, 2017, 'Martina Bárta', 'My Turn'),
	(1408, 16, 2017, 'Anja', 'Where I Am'),
	(1410, 20, 2017, 'Norma John', 'Blackbird'),
	(1411, 21, 2017, 'Alma', 'Requiem'),
	(1412, 23, 2017, 'Tamara Gachechiladze', 'Keep the Faith'),
	(1413, 15, 2017, 'Levina', 'Perfect Life'),
	(1414, 24, 2017, 'Demy', 'This Is Love'),
	(1415, 26, 2017, 'Joci Pápai', 'Origo'),
	(1416, 27, 2017, 'Svala', 'Paper'),
	(1417, 28, 2017, 'Brendan Murray', 'Dying to Try'),
	(1418, 29, 2017, 'Imri', 'I Feel Alive'),
	(1419, 30, 2017, 'Francesco Gabbani', 'Occidentali''s Karma'),
	(1420, 31, 2017, 'Triana Park', 'Line'),
	(1421, 32, 2017, 'Fusedmarc', 'Rain of Revolution'),
	(1422, 41, 2017, 'Jana Burčeska', 'Dance Alone'),
	(1423, 34, 2017, 'Claudia Faniello', 'Breathlessly'),
	(1424, 35, 2017, 'SunStroke Project', 'Hey Mamma'),
	(1425, 37, 2017, 'Slavko Kalezić', 'Space'),
	(1426, 39, 2017, 'OG3NE', 'Lights and Shadows'),
	(1428, 43, 2017, 'Kasia Moś', 'Flashlight'),
	(1429, 44, 2017, 'Salvador Sobral', 'Amar pelos dois'),
	(1432, 48, 2017, 'Tijana Bogićević', 'In Too Deep'),
	(1433, 51, 2017, 'Omar Naber', 'On My Way'),
	(1434, 18, 2017, 'Manel Navarro', 'Do It for Your Lover'),
	(1435, 52, 2017, 'Robin Bengtsson', 'I Can''t Go On'),
	(1436, 11, 2017, 'Timebelle', 'Apollo'),
	(1437, 54, 2017, 'O.Torvald', 'Time'),
	(1438, 22, 2017, 'Lucie Jones', 'Never Give Up on You'),
	(1439, 1, 2018, 'Eugent Bushpepa', 'Mall'),
	(1441, 5, 2018, 'Jessica Mauboy', 'We Got Love'),
	(1442, 4, 2018, 'Cesár Sampson', 'Nobody but You'),
	(1443, 6, 2018, 'Aisel', 'X My Heart'),
	(1444, 10, 2018, 'Alekseev', 'Forever'),
	(1445, 8, 2018, 'Sennek', 'A Matter of Time'),
	(1446, 9, 2018, 'Equinox', 'Bones'),
	(1447, 25, 2018, 'Franka', 'Crazy'),
	(1448, 12, 2018, 'Eleni Foureira', 'Fuego'),
	(1449, 13, 2018, 'Mikolas Josef', 'Lie to Me'),
	(1450, 16, 2018, 'Rasmussen', 'Higher Ground'),
	(1451, 17, 2018, 'Elina Nechayeva', 'La forza'),
	(1452, 20, 2018, 'Saara Aalto', 'Monsters'),
	(1453, 21, 2018, 'Madame Monsieur', 'Mercy'),
	(1454, 23, 2018, 'Ethno-Jazz Band Iriao', 'For You'),
	(1455, 15, 2018, 'Michael Schulte', 'You Let Me Walk Alone'),
	(1457, 26, 2018, 'AWS', 'Viszlát nyár'),
	(1458, 27, 2018, 'Ari Ólafsson', 'Our Choice'),
	(1459, 28, 2018, 'Ryan O''Shaughnessy', 'Together'),
	(1460, 29, 2018, 'Netta', 'Toy'),
	(1462, 31, 2018, 'Laura Rizzotto', 'Funny Girl'),
	(1463, 32, 2018, 'Ieva Zasimauskaitė', 'When We''re Old'),
	(1464, 41, 2018, 'Eye Cue', 'Lost and Found'),
	(1465, 34, 2018, 'Christabelle', 'Taboo'),
	(1466, 35, 2018, 'DoReDoS', 'My Lucky Day'),
	(1468, 39, 2018, 'Waylon', 'Outlaw in ''Em'),
	(1469, 42, 2018, 'Alexander Rybak', 'That''s How You Write a Song'),
	(1472, 45, 2018, 'The Humans', 'Goodbye'),
	(1473, 46, 2018, 'Julia Samoylova', 'I Won''t Break'),
	(1476, 51, 2018, 'Lea Sirk', 'Hvala, ne!'),
	(1478, 52, 2018, 'Benjamin Ingrosso', 'Dance You Off'),
	(1479, 11, 2018, 'Zibbz', 'Stones'),
	(1480, 54, 2018, 'Mélovin', 'Under the Ladder'),
	(1481, 22, 2018, 'SuRie', 'Storm'),
	(1482, 1, 2019, 'Jonida Maliqi', 'Ktheju tokës'),
	(1483, 3, 2019, 'Srbuk', 'Walking Out'),
	(1484, 5, 2019, 'Kate Miller-Heidke', 'Zero Gravity'),
	(1485, 4, 2019, 'Paenda', 'Limits'),
	(1486, 6, 2019, 'Chingiz', 'Truth'),
	(1487, 10, 2019, 'Zena', 'Like It'),
	(1488, 8, 2019, 'Eliot', 'Wake Up'),
	(1489, 25, 2019, 'Roko', 'The Dream'),
	(1490, 12, 2019, 'Tamta', 'Replay'),
	(1491, 13, 2019, 'Lake Malawi', 'Friend of a Friend'),
	(1492, 16, 2019, 'Leonora', 'Love Is Forever'),
	(1493, 17, 2019, 'Victor Crone', 'Storm'),
	(1495, 21, 2019, 'Bilal Hassani', 'Roi'),
	(1496, 23, 2019, 'Oto Nemsadze', 'Keep On Going'),
	(1497, 15, 2019, 'Sisters', 'Sister'),
	(1498, 24, 2019, 'Katerine Duska', 'Better Love'),
	(1427, 42, 2017, 'Jowst', 'Grab the Moment'),
	(1430, 45, 2017, 'Ilinca feat. Alex Florea', 'Yodel It!'),
	(1431, 47, 2017, 'Valentina Monetta and Jimmie Wilson', 'Spirit of the Night'),
	(1461, 30, 2018, 'Ermal Meta and Fabrizio Moro', 'Non mi avete fatto niente'),
	(1470, 43, 2018, 'Gromee feat. Lukas Meijer', 'Light Me Up'),
	(1471, 44, 2018, 'Cláudia Pascoal', 'O jardim'),
	(1474, 47, 2018, 'Jessika feat. Jenifer Brening', 'Who We Are'),
	(1477, 18, 2018, 'Amaia and Alfred', 'Tu canción'),
	(1494, 20, 2019, 'Darude feat. Sebastian Rejman', 'Look Away'),
	(1456, 24, 2018, 'Yianna Terzi', 'Oniro mou (Όνειρό μου)'),
	(1467, 37, 2018, 'Vanja Radovanović', 'Inje (Иње)'),
	(1475, 48, 2018, 'Sanja Ilić and Balkanika', 'Nova deca (Нова деца)'),
	(1499, 26, 2019, 'Joci Pápai', 'Az én apám'),
	(1500, 27, 2019, 'Hatari', 'Hatrið mun sigra'),
	(1501, 28, 2019, 'Sarah McTernan', '22'),
	(1502, 29, 2019, 'Kobi Marimi', 'Home'),
	(1503, 30, 2019, 'Mahmood', 'Soldi'),
	(1504, 31, 2019, 'Carousel', 'That Night'),
	(1505, 32, 2019, 'Jurij Veklenko', 'Run with the Lions'),
	(1506, 34, 2019, 'Michela', 'Chameleon'),
	(1507, 35, 2019, 'Anna Odobescu', 'Stay'),
	(1508, 37, 2019, 'D mol', 'Heaven'),
	(1509, 39, 2019, 'Duncan Laurence', 'Arcade'),
	(1510, 40, 2019, 'Tamara Todevska', 'Proud'),
	(1511, 42, 2019, 'Keiino', 'Spirit in the Sky'),
	(1512, 43, 2019, 'Tulia', 'Fire of Love (Pali się)'),
	(1513, 44, 2019, 'Conan Osíris', 'Telemóveis'),
	(1514, 45, 2019, 'Ester Peony', 'On a Sunday'),
	(1515, 46, 2019, 'Sergey Lazarev', 'Scream'),
	(1516, 47, 2019, 'Serhat', 'Say Na Na Na'),
	(1518, 51, 2019, 'Zala Kralj and Gašper Šantl', 'Sebi'),
	(1519, 18, 2019, 'Miki', 'La venda'),
	(1520, 52, 2019, 'John Lundvik', 'Too Late for Love'),
	(1521, 11, 2019, 'Luca Hänni', 'She Got Me'),
	(1522, 22, 2019, 'Michael Rice', 'Bigger than Us'),
	(1523, 1, 2020, 'Arilena Ara', 'Fall from the Sky'),
	(1524, 3, 2020, 'Athena Manoukian', 'Chains on You'),
	(1525, 5, 2020, 'Montaigne', 'Don''t Break Me'),
	(1526, 4, 2020, 'Vincent Bueno', 'Alive'),
	(1527, 6, 2020, 'Efendi', 'Cleopatra'),
	(1529, 8, 2020, 'Hooverphonic', 'Release Me'),
	(1530, 9, 2020, 'Victoria', 'Tears Getting Sober'),
	(1531, 25, 2020, 'Damir Kedžo', 'Divlji vjetre'),
	(1532, 12, 2020, 'Sandro', 'Running'),
	(1533, 13, 2020, 'Benny Cristo', 'Kemama'),
	(1534, 16, 2020, 'Ben and Tan', 'Yes'),
	(1535, 17, 2020, 'Uku Suviste', 'What Love Is'),
	(1536, 20, 2020, 'Aksel', 'Looking Back'),
	(1538, 23, 2020, 'Tornike Kipiani', 'Take Me as I Am'),
	(1539, 15, 2020, 'Ben Dolic', 'Violent Thing'),
	(1540, 24, 2020, 'Stefania', 'Supergirl'),
	(1541, 27, 2020, 'Daði og Gagnamagnið', 'Think About Things'),
	(1542, 28, 2020, 'Lesley Roy', 'Story of My Life'),
	(1544, 30, 2020, 'Diodato', 'Fai rumore'),
	(1545, 31, 2020, 'Samanta Tīna', 'Still Breathing'),
	(1546, 32, 2020, 'The Roop', 'On Fire'),
	(1547, 34, 2020, 'Destiny', 'All of My Love'),
	(1548, 35, 2020, 'Natalia Gordienko', 'Prison'),
	(1549, 39, 2020, 'Jeangu Macrooy', 'Grow'),
	(1550, 40, 2020, 'Vasil', 'You'),
	(1551, 42, 2020, 'Ulrikke', 'Attention'),
	(1552, 43, 2020, 'Alicja', 'Empires'),
	(1553, 44, 2020, 'Elisa', 'Medo de sentir'),
	(1554, 45, 2020, 'Roxen', 'Alcohol You'),
	(1555, 46, 2020, 'Little Big', 'Uno'),
	(1556, 47, 2020, 'Senhit', 'Freaky!'),
	(1557, 48, 2020, 'Hurricane', 'Hasta la vista'),
	(1558, 51, 2020, 'Ana Soklič', 'Voda'),
	(1559, 18, 2020, 'Blas Cantó', 'Universo'),
	(1560, 52, 2020, 'The Mamas', 'Move'),
	(1561, 11, 2020, 'Gjon''s Tears', 'Répondez-moi'),
	(1563, 22, 2020, 'James Newman', 'My Last Breath'),
	(1564, 1, 2021, 'Anxhela Peristeri', 'Karma'),
	(1565, 5, 2021, 'Montaigne', 'Technicolour'),
	(1566, 4, 2021, 'Vincent Bueno', 'Amen'),
	(1567, 6, 2021, 'Efendi', 'Mata Hari'),
	(1568, 8, 2021, 'Hooverphonic', 'The Wrong Place'),
	(1569, 9, 2021, 'Victoria', 'Growing Up Is Getting Old'),
	(1570, 25, 2021, 'Albina', 'Tick-Tock'),
	(1571, 12, 2021, 'Elena Tsagrinou', 'El Diablo'),
	(1572, 13, 2021, 'Benny Cristo', 'Omaga'),
	(1573, 16, 2021, 'Fyr og Flamme', 'Øve os på hinanden'),
	(1574, 17, 2021, 'Uku Suviste', 'The Lucky One'),
	(1575, 20, 2021, 'Blind Channel', 'Dark Side'),
	(1576, 21, 2021, 'Barbara Pravi', 'Voilà'),
	(1577, 23, 2021, 'Tornike Kipiani', 'You'),
	(1578, 15, 2021, 'Jendrik', 'I Don''t Feel Hate'),
	(1579, 24, 2021, 'Stefania', 'Last Dance'),
	(1580, 27, 2021, 'Daði og Gagnamagnið', '10 Years'),
	(1581, 28, 2021, 'Lesley Roy', 'Maps'),
	(1582, 29, 2021, 'Eden Alene', 'Set Me Free'),
	(1583, 30, 2021, 'Måneskin', 'Zitti e buoni'),
	(1584, 31, 2021, 'Samanta Tīna', 'The Moon Is Rising'),
	(1585, 32, 2021, 'The Roop', 'Discoteque'),
	(1586, 34, 2021, 'Destiny', 'Je me casse'),
	(1587, 35, 2021, 'Natalia Gordienko', 'Sugar'),
	(1588, 39, 2021, 'Jeangu Macrooy', 'Birth of a New Age'),
	(1589, 40, 2021, 'Vasil', 'Here I Stand'),
	(1590, 42, 2021, 'Tix', 'Fallen Angel'),
	(1591, 43, 2021, 'Rafał', 'The Ride'),
	(1592, 44, 2021, 'The Black Mamba', 'Love Is on My Side'),
	(1593, 45, 2021, 'Roxen', 'Amnesia'),
	(1594, 46, 2021, 'Manizha', 'Russian Woman'),
	(1596, 48, 2021, 'Hurricane', 'Loco loco'),
	(1597, 51, 2021, 'Ana Soklič', 'Amen'),
	(1598, 18, 2021, 'Blas Cantó', 'Voy a quedarme'),
	(1599, 52, 2021, 'Tusse', 'Voices'),
	(1600, 11, 2021, 'Gjon''s Tears', 'Tout l''univers'),
	(1602, 22, 2021, 'James Newman', 'Embers'),
	(1603, 1, 2022, 'Ronela Hajati', 'Sekret'),
	(1604, 3, 2022, 'Rosa Linn', 'Snap'),
	(1605, 5, 2022, 'Sheldon Riley', 'Not the Same'),
	(1606, 4, 2022, 'Lumixfeat.Pia Maria', 'Halo'),
	(1607, 6, 2022, 'Nadir Rustamli', 'Fade to Black'),
	(1608, 8, 2022, 'Jérémie Makiese', 'Miss You'),
	(1609, 9, 2022, 'Intelligent Music Project', 'Intention'),
	(1517, 48, 2019, 'Nevena Božović', 'Kruna (Круна)'),
	(1528, 10, 2020, 'VAL', 'Da vidna (Да відна)'),
	(1537, 21, 2020, 'Tom Leeb', 'Mon alliée (The Best in Me)'),
	(1543, 29, 2020, 'Eden Alene', 'Feker Libi (ፍቅር ልቤ)'),
	(1562, 54, 2020, 'Go_A', 'Solovey (Соловей)'),
	(1601, 54, 2021, 'Go_A', 'Shum (Шум)'),
	(1610, 25, 2022, 'Mia Dimšić', 'Guilty Pleasure'),
	(1612, 13, 2022, 'We Are Domi', 'Lights Off'),
	(1613, 16, 2022, 'Reddi', 'The Show'),
	(1614, 17, 2022, 'Stefan', 'Hope'),
	(1615, 20, 2022, 'The Rasmus', 'Jezebel'),
	(1617, 23, 2022, 'Circus Mircus', 'Lock Me In'),
	(1618, 15, 2022, 'Malik Harris', 'Rockstars'),
	(1619, 24, 2022, 'Amanda Georgiadi Tenfjord', 'Die Together'),
	(1620, 27, 2022, 'Systur', 'Með hækkandi sól'),
	(1621, 28, 2022, 'Brooke', 'That''s Rich'),
	(1622, 29, 2022, 'Michael Ben David', 'I.M'),
	(1624, 31, 2022, 'Citi Zēni', 'Eat Your Salad'),
	(1625, 32, 2022, 'Monika Liu', 'Sentimentai'),
	(1626, 34, 2022, 'Emma Muscat', 'I Am What I Am'),
	(1628, 37, 2022, 'Vladana', 'Breathe'),
	(1629, 39, 2022, 'S10', 'De diepte'),
	(1630, 40, 2022, 'Andrea', 'Circles'),
	(1631, 42, 2022, 'Subwoolfer', 'Give That Wolf a Banana'),
	(1632, 43, 2022, 'Ochman', 'River'),
	(1633, 44, 2022, 'Maro', 'Saudade, saudade'),
	(1634, 45, 2022, 'Wrs', 'Llámame'),
	(1635, 47, 2022, 'Achille Lauro', 'Stripper'),
	(1636, 48, 2022, 'Konstrakta', 'In corpore sano'),
	(1637, 51, 2022, 'LPS', 'Disko'),
	(1638, 18, 2022, 'Chanel', 'SloMo'),
	(1639, 52, 2022, 'Cornelia Jakobs', 'Hold Me Closer'),
	(1640, 11, 2022, 'Marius Bear', 'Boys Do Cry'),
	(1642, 22, 2022, 'Sam Ryder', 'Space Man'),
	(1644, 3, 2023, 'Brunette', 'Future Lover'),
	(1645, 5, 2023, 'Voyager', 'Promise'),
	(1647, 6, 2023, 'TuralTuranX', 'Tell Me More'),
	(1648, 8, 2023, 'Gustaph', 'Because of You'),
	(1649, 25, 2023, 'Let 3', 'Mama ŠČ!'),
	(1650, 12, 2023, 'Andrew Lambrou', 'Break a Broken Heart'),
	(1651, 14, 2023, 'Vesna', 'My Sister''s Crown'),
	(1652, 16, 2023, 'Reiley', 'Breaking My Heart'),
	(1653, 17, 2023, 'Alika', 'Bridges'),
	(1654, 20, 2023, 'Käärijä', 'Cha Cha Cha'),
	(1655, 21, 2023, 'La Zarra', 'Évidemment'),
	(1656, 23, 2023, 'Iru', 'Echo'),
	(1657, 15, 2023, 'Lord of the Lost', 'Blood & Glitter'),
	(1658, 24, 2023, 'Victor Vernicos', 'What They Say'),
	(1659, 27, 2023, 'Diljá', 'Power'),
	(1660, 28, 2023, 'Wild Youth', 'We Are One'),
	(1661, 29, 2023, 'Noa Kirel', 'Unicorn'),
	(1662, 30, 2023, 'Marco Mengoni', 'Due vite'),
	(1663, 31, 2023, 'Sudden Lights', 'Aijā'),
	(1664, 32, 2023, 'Monika Linkytė', 'Stay'),
	(1665, 34, 2023, 'The Busker', 'Dance (Our Own Party)'),
	(1666, 35, 2023, 'Pasha Parfeni', 'Soarele și luna'),
	(1668, 42, 2023, 'Alessandra', 'Queen of Kings'),
	(1669, 43, 2023, 'Blanka', 'Solo'),
	(1670, 44, 2023, 'Mimicat', 'Ai coração'),
	(1671, 45, 2023, 'Theodor Andrei', 'D.G.T. (Off and On)'),
	(1672, 47, 2023, 'Piqued Jacks', 'Like an Animal'),
	(1674, 51, 2023, 'Joker Out', 'Carpe Diem'),
	(1675, 18, 2023, 'Blanca Paloma', 'Eaea'),
	(1676, 52, 2023, 'Loreen', 'Tattoo'),
	(1677, 11, 2023, 'Remo Forrer', 'Watergun'),
	(1678, 54, 2023, 'Tvorchi', 'Heart of Steel'),
	(1679, 22, 2023, 'Mae Muller', 'I Wrote a Song'),
	(1680, 1, 2024, 'Besa', 'Titan'),
	(1683, 4, 2024, 'Kaleen', 'We Will Rave'),
	(1685, 8, 2024, 'Mustii', 'Before the Party''s Over'),
	(1686, 25, 2024, 'Baby Lasagna', 'Rim Tim Tagi Dim'),
	(1687, 12, 2024, 'Silia Kapsis', 'Liar'),
	(1688, 14, 2024, 'Aiko', 'Pedestal'),
	(1689, 16, 2024, 'Saba', 'Sand'),
	(1692, 21, 2024, 'Slimane', 'Mon amour'),
	(1693, 23, 2024, 'Nutsa Buzaladze', 'Firefighter'),
	(1694, 15, 2024, 'Isaak', 'Always on the Run'),
	(1696, 27, 2024, 'Hera Björk', 'Scared of Heights'),
	(1697, 28, 2024, 'Bambie Thug', 'Doomsday Blue'),
	(1698, 29, 2024, 'Eden Golan', 'Hurricane'),
	(1699, 30, 2024, 'Angelina Mango', 'La noia'),
	(1700, 31, 2024, 'Dons', 'Hollow'),
	(1701, 32, 2024, 'Silvester Belt', 'Luktelk'),
	(1702, 33, 2024, 'Tali', 'Fighter'),
	(1703, 34, 2024, 'Sarah Bonnici', 'Loop'),
	(1704, 35, 2024, 'Natalia Barbu', 'In the Middle'),
	(1705, 39, 2024, 'Joost Klein', 'Europapa'),
	(1706, 42, 2024, 'Gåte', 'Ulveham'),
	(1707, 43, 2024, 'Luna', 'The Tower'),
	(1708, 44, 2024, 'Iolanda', 'Grito'),
	(1709, 47, 2024, 'Megara', '11:11'),
	(1711, 51, 2024, 'Raiven', 'Veronika'),
	(1712, 18, 2024, 'Nebulossa', 'Zorra'),
	(1713, 52, 2024, 'Marcus & Martinus', 'Unforgettable'),
	(1714, 11, 2024, 'Nemo', 'The Code'),
	(1716, 22, 2024, 'Olly Alexander', 'Dizzy'),
	(1033, 6, 2008, 'Elnur and Samir', 'Day After Day'),
	(1081, 25, 2009, 'Igor Cukrov feat. Andrea', 'Lijepa Tena'),
	(1123, 12, 2010, 'Jon Lilygreen and the Islanders', 'Life Looks Better in Spring'),
	(1623, 30, 2022, 'Mahmood and Blanco', 'Brividi'),
	(1627, 35, 2022, 'Zdob și Zdub and Advahov Brothers', 'Trenulețul'),
	(1643, 1, 2023, 'Albina and Familja Kelmendi', 'Duje'),
	(1646, 4, 2023, 'Teya and Salena', 'Who the Hell Is Edgar?'),
	(1684, 6, 2024, 'Fahree feat. Ilkin Dovlatov', 'Özünlə apar'),
	(1690, 17, 2024, '5miinust and Puuluup', '(Nendest) narkootikumidest ei tea me (küll) midagi'),
	(1691, 20, 2024, 'Windows95man', 'No Rules!'),
	(1715, 54, 2024, 'Alyona Alyona and Jerry Heil', 'Teresa & Maria'),
	(1682, 5, 2024, 'Electric Fields', 'One Milkali (One Blood)'),
	(1611, 12, 2022, 'Andromache', 'Ela (Έλα)'),
	(1641, 54, 2022, 'Kalush Orchestra', 'Stefania (Стефанія)'),
	(1673, 48, 2023, 'Luke Black', 'Samo mi se spava (Само ми се спава)'),
	(1681, 3, 2024, 'Ladaniva', 'Jako (Ժակո)'),
	(1695, 24, 2024, 'Marina Satti', 'Zari (Ζάρι)'),
	(1710, 48, 2024, 'Teya Dora', 'Ramonda (Рамонда)'),
	(1214, 27, 2012, 'Greta Salóme and Jónsi', 'Never Forget'),
	(1252, 23, 2013, 'Nodi Tatishvili and Sophie Gelovani', 'Waterfall'),
	(1288, 23, 2014, 'The Shin and Mariko', 'Three Minutes to Earth'),
	(1293, 28, 2014, 'Can-linn feat. Kasey Smith', 'Heartbeat'),
	(1409, 17, 2017, 'Koit Toome and Laura', 'Verona'),
	(1595, 47, 2021, 'Senhit', 'Adrenalina'),
	(1616, 21, 2022, 'Alvan and Ahez', 'Fulenn'),
	(1667, 39, 2023, 'Mia Nicolai and Dion Cooper', 'Burning Daylight'),
	(1016, 24, 1974, 'Marinella', 'Krassi, thalassa ke t'' agori mu (Κρασί, θάλασσα και τ'' αγόρι μου)'),
	(1136, 41, 2010, 'Gjoko Taneski', 'Jas ja imam silata (Јас ја имам силата)'),
	(1262, 41, 2013, 'Esma and Lozano', 'Pred da se razdeni (Пред да се раздени)'),
	(1440, 3, 2018, 'Sevak Khanagyan', 'Qami (Քամի)'),
	(1717, 1, 2007, 'Frederik Ndoci', 'Hear My Plea'),
	(1718, 2, 2007, 'Anonymous', 'Salvem el món'),
	(1719, 3, 2007, 'Hayko', 'Anytime You Need'),
	(1721, 10, 2007, 'Koldun', 'Work Your Magic'),
	(1722, 8, 2007, 'The KMG''s', 'LovePower'),
	(1724, 9, 2007, 'Elitsa Todorova & Stoyan Yankoulov', 'Water'),
	(1726, 12, 2007, 'Evridiki', 'Comme ci, comme ça'),
	(1727, 13, 2007, 'Kabát', 'Malá dáma'),
	(1728, 16, 2007, 'DQ', 'Drama Queen'),
	(1729, 17, 2007, 'Gerli Padar', 'Partners in Crime'),
	(1730, 20, 2007, 'Hanna Pakarinen', 'Leave Me Alone'),
	(1731, 21, 2007, 'Les Fatals Picards', 'L''Amour à la française'),
	(1732, 23, 2007, 'Sopho', 'Visionary Dream'),
	(1733, 15, 2007, 'Roger Cicero', 'Frauen regier''n die Welt'),
	(1735, 26, 2007, 'Magdi Rúzsa', 'Unsubstantial Blues'),
	(1736, 27, 2007, 'Eiríkur Hauksson', 'Valentine Lost'),
	(1737, 28, 2007, 'Dervish', 'They Can''t Stop the Spring'),
	(1738, 29, 2007, 'Teapacks', 'Push the Button'),
	(1739, 31, 2007, 'Bonaparti.lv', 'Questa notte'),
	(1740, 32, 2007, '4Fun', 'Love or Leave'),
	(1742, 34, 2007, 'Olivia Lewis', 'Vertigo'),
	(1743, 35, 2007, 'Natalia Barbu', 'Fight'),
	(1745, 39, 2007, 'Edsilia Rombley', 'On Top of the World'),
	(1746, 42, 2007, 'Guri Schanke', 'Ven a bailar conmigo'),
	(1747, 43, 2007, 'The Jet Set', 'Time to Party'),
	(1748, 44, 2007, 'Sabrina', 'Dança comigo'),
	(1750, 46, 2007, 'Serebro', 'Song #1'),
	(1752, 51, 2007, 'Alenka Gotar', 'Cvet z juga'),
	(1753, 18, 2007, 'D''Nash', 'I Love YouMi Vida'),
	(1754, 52, 2007, 'The Ark', 'The Worrying Kind'),
	(1755, 11, 2007, 'DJ BoBo', 'Vampires Are Alive'),
	(1756, 53, 2007, 'Kenan Doğulu', 'Shake It UpŞekerim'),
	(1757, 54, 2007, 'Verka Serduchka', 'Dancing Lasha Tumbai'),
	(1758, 22, 2007, 'Scooch', 'Flying the Flag (For You)'),
	(1720, 4, 2007, 'Eric Papilaya', 'Get a Life – Get Alive'),
	(1723, 7, 2007, 'Marija Šestić', 'Rijeka bez imena (Ријека без имена)'),
	(1725, 25, 2007, 'Dragonfly feat. Dado Topić', 'Vjerujem u ljubav'),
	(1734, 24, 2007, 'Sarbel', 'Yassou Maria (Γειά σου Μαρία)'),
	(1741, 41, 2007, 'Karolina', 'Mojot svet (Мојот свет)'),
	(1744, 37, 2007, 'Stevan Faddy', '''Ajde, kroči (''Ајде, крочи)'),
	(1749, 45, 2007, 'Todomondo', 'Liubi, Liubi, I Love You (Люби, Люби, I Love You)'),
	(1751, 48, 2007, 'Marija Šerifović', 'Molitva (Молитва)');


--
-- Data for Name: esc_real_scores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."esc_real_scores" ("id", "entry_id", "is_final", "jury", "televote", "place", "running_order") VALUES
	(1, 1668, false, NULL, 102, 6, 1),
	(2, 1668, true, 52, 216, 5, 20),
	(3, 1665, false, NULL, 3, 15, 2),
	(4, 1673, false, NULL, 37, 10, 3),
	(5, 1673, true, 14, 16, 24, 5),
	(6, 1663, false, NULL, 34, 11, 4),
	(7, 1670, false, NULL, 74, 9, 5),
	(8, 1670, true, 43, 16, 23, 2),
	(9, 1660, false, NULL, 10, 12, 6),
	(10, 1649, false, NULL, 76, 8, 7),
	(11, 1649, true, 11, 112, 13, 25),
	(12, 1677, false, NULL, 97, 7, 8),
	(13, 1677, true, 61, 31, 20, 3),
	(14, 1661, false, NULL, 127, 3, 9),
	(15, 1661, true, 177, 185, 3, 23),
	(16, 1666, false, NULL, 109, 5, 10),
	(17, 1666, true, 20, 76, 18, 18),
	(18, 1676, false, NULL, 135, 2, 11),
	(19, 1676, true, 340, 243, 1, 9),
	(20, 1647, false, NULL, 4, 14, 12),
	(21, 1651, false, NULL, 110, 4, 13),
	(22, 1651, true, 94, 35, 10, 14),
	(23, 1667, false, NULL, 7, 13, 14),
	(24, 1654, false, NULL, 177, 1, 15),
	(25, 1654, true, 150, 376, 2, 13),
	(26, 1652, false, NULL, 6, 14, 1),
	(27, 1644, false, NULL, 99, 6, 2),
	(28, 1644, true, 69, 53, 14, 17),
	(29, 1671, false, NULL, 0, NULL, 3),
	(30, 1653, false, NULL, 74, 10, 4),
	(31, 1653, true, 146, 22, 8, 12),
	(32, 1648, false, NULL, 90, 8, 5),
	(33, 1648, true, 127, 55, 7, 16),
	(34, 1650, false, NULL, 94, 7, 6),
	(35, 1650, true, 68, 58, 12, 7),
	(36, 1659, false, NULL, 44, 11, 7),
	(37, 1658, false, NULL, 14, 13, 8),
	(38, 1669, false, NULL, 124, 3, 9),
	(39, 1669, true, 12, 81, 19, 4),
	(40, 1674, false, NULL, 103, 5, 10),
	(41, 1674, true, 33, 45, 21, 24),
	(42, 1656, false, NULL, 33, 12, 11),
	(43, 1672, false, NULL, 0, NULL, 12),
	(44, 1646, false, NULL, 137, 2, 13),
	(45, 1646, true, 104, 16, 15, 1),
	(46, 1643, false, NULL, 83, 9, 14),
	(47, 1643, true, 17, 59, 22, 10),
	(48, 1664, false, NULL, 110, 4, 15),
	(49, 1664, true, 81, 46, 11, 22),
	(50, 1645, false, NULL, 149, 1, 16),
	(51, 1645, true, 130, 21, 9, 15),
	(52, 1655, true, 54, 50, 16, 6),
	(53, 1675, true, 95, 5, 17, 8),
	(54, 1662, true, 176, 174, 4, 11),
	(55, 1678, true, 54, 189, 6, 19),
	(56, 1657, true, 3, 15, 26, 21),
	(57, 1679, true, 15, 9, 25, 26),
	(58, 1687, false, NULL, 67, 6, 1),
	(59, 1687, true, 34, 44, 15, 20),
	(60, 1710, false, NULL, 47, 10, 2),
	(61, 1710, true, 22, 32, 17, 16),
	(62, 1701, false, NULL, 119, 4, 3),
	(63, 1701, true, 32, 58, 14, 7),
	(64, 1697, false, NULL, 124, 3, 4),
	(65, 1697, true, 142, 136, 6, 10),
	(66, 1715, false, NULL, 173, 2, 5),
	(67, 1715, true, 146, 307, 3, 2),
	(68, 1707, false, NULL, 35, 12, 6),
	(69, 1686, false, NULL, 177, 1, 7),
	(70, 1686, true, 210, 337, 2, 23),
	(71, 1696, false, NULL, 3, 15, 8),
	(72, 1711, false, NULL, 51, 9, 9),
	(73, 1711, true, 15, 12, 23, 22),
	(74, 1691, false, NULL, 59, 7, 10),
	(75, 1691, true, 7, 31, 19, 17),
	(76, 1704, false, NULL, 20, 13, 11),
	(77, 1684, false, NULL, 11, 14, 12),
	(78, 1682, false, NULL, 41, 11, 13),
	(79, 1708, false, NULL, 58, 8, 14),
	(80, 1708, true, 139, 13, 10, 18),
	(81, 1702, false, NULL, 117, 5, 15),
	(82, 1702, true, 83, 20, 13, 4),
	(83, 1703, false, NULL, 13, 16, 1),
	(84, 1680, false, NULL, 14, 15, 2),
	(85, 1695, false, NULL, 86, 5, 3),
	(86, 1695, true, 41, 85, 11, 12),
	(87, 1714, false, NULL, 132, 4, 4),
	(88, 1714, true, 365, 226, 1, 21),
	(89, 1688, false, NULL, 38, 11, 5),
	(90, 1683, false, NULL, 46, 9, 6),
	(91, 1683, true, 19, 5, 24, 26),
	(92, 1689, false, NULL, 36, 12, 7),
	(93, 1681, false, NULL, 137, 3, 8),
	(94, 1681, true, 101, 82, 8, 19),
	(95, 1700, false, NULL, 72, 7, 9),
	(96, 1700, true, 36, 28, 16, 11),
	(97, 1709, false, NULL, 16, 14, 10),
	(98, 1693, false, NULL, 54, 8, 11),
	(99, 1693, true, 15, 19, 21, 24),
	(100, 1685, false, NULL, 18, 13, 12),
	(101, 1690, false, NULL, 79, 6, 13),
	(102, 1690, true, 4, 33, 20, 9),
	(103, 1698, false, NULL, 194, 1, 14),
	(104, 1698, true, 52, 323, 5, 6),
	(105, 1706, false, NULL, 43, 10, 15),
	(106, 1706, true, 12, 4, 25, 14),
	(107, 1705, false, NULL, 182, 2, 16),
	(108, 1705, true, NULL, NULL, NULL, 5),
	(109, 1713, true, 125, 49, 9, 1),
	(110, 1694, true, 99, 18, 12, 3),
	(111, 1712, true, 19, 11, 22, 8),
	(112, 1716, true, 46, 0, 18, 13),
	(113, 1699, true, 164, 104, 7, 15),
	(114, 1692, true, 218, 227, 4, 25),
	(115, 1603, false, 12, 46, 12, 1),
	(116, 1624, false, 39, 16, 14, 2),
	(117, 1625, false, 56, 103, 7, 3),
	(118, 1625, true, 35, 93, 14, 14),
	(119, 1640, false, 107, 11, 9, 4),
	(120, 1640, true, 78, 0, 17, 5),
	(121, 1637, false, 7, 8, 17, 5),
	(122, 1641, false, 135, 202, 1, 6),
	(123, 1641, true, 192, 439, 1, 12),
	(124, 1609, false, 11, 18, 16, 7),
	(125, 1629, false, 142, 79, 2, 8),
	(126, 1629, true, 129, 42, 11, 11),
	(127, 1627, false, 19, 135, 8, 9),
	(128, 1627, true, 14, 239, 7, 19),
	(129, 1633, false, 121, 87, 4, 10),
	(130, 1633, true, 171, 36, 9, 3),
	(131, 1610, false, 42, 33, 11, 11),
	(132, 1613, false, 35, 20, 13, 12),
	(133, 1606, false, 6, 36, 15, 13),
	(134, 1620, false, 64, 39, 10, 14),
	(135, 1620, true, 10, 10, 23, 18),
	(136, 1619, false, 151, 60, 3, 15),
	(137, 1619, true, 158, 57, 8, 17),
	(138, 1631, false, 73, 104, 6, 16),
	(139, 1631, true, 36, 146, 10, 7),
	(140, 1604, false, 82, 105, 5, 17),
	(141, 1604, true, 40, 21, 20, 8),
	(142, 1615, false, 63, 99, 7, 1),
	(143, 1615, true, 12, 26, NULL, 4),
	(144, 1622, false, 34, 27, 13, 2),
	(145, 1636, false, 63, 174, 3, 3),
	(146, 1636, true, 87, 225, 5, 24),
	(147, 1607, false, 96, 0, 10, 4),
	(148, 1607, true, 103, 3, 16, 15),
	(149, 1617, false, 13, 9, 18, 5),
	(150, 1626, false, 27, 20, 16, 6),
	(151, 1635, false, 21, 29, 14, 7),
	(152, 1605, false, 169, 74, 2, 8),
	(153, 1605, true, 123, 2, 15, 21),
	(154, 1611, false, 9, 54, 12, 9),
	(155, 1621, false, 12, 35, 15, 10),
	(156, 1630, false, 56, 20, 11, 11),
	(157, 1614, false, 113, 96, 5, 12),
	(158, 1614, true, 43, 98, 13, 25),
	(159, 1634, false, 18, 100, 9, 13),
	(160, 1634, true, 12, 53, 18, 2),
	(161, 1632, false, 84, 114, 6, 14),
	(162, 1632, true, 46, 105, 12, 23),
	(163, 1628, false, 11, 22, 17, 15),
	(164, 1608, false, 105, 46, 8, 16),
	(165, 1608, true, 59, 5, 19, 16),
	(166, 1639, false, 222, 174, 1, 17),
	(167, 1639, true, 258, 180, 4, 20),
	(168, 1612, false, 102, 125, 4, 18),
	(169, 1612, true, 33, 5, NULL, 1),
	(170, 1616, true, 9, 8, 24, 6),
	(171, 1623, true, 158, 110, 6, 9),
	(172, 1638, true, 231, 228, 3, 10),
	(173, 1618, true, 0, 6, 25, 13),
	(174, 1642, true, 283, 183, 2, 22),
	(175, 1585, false, 66, 137, 4, 1),
	(176, 1585, true, 55, 165, 8, 18),
	(177, 1597, false, 36, 8, 13, 2),
	(178, 1594, false, 117, 108, 3, 3),
	(179, 1594, true, 104, 100, 9, 5),
	(180, 1599, false, 91, 51, 7, 4),
	(181, 1599, true, 46, 63, 14, 25),
	(182, 1565, false, 26, 2, 14, 5),
	(183, 1589, false, 12, 11, 15, 6),
	(184, 1581, false, 16, 4, 16, 7),
	(185, 1571, false, 92, 78, 6, 8),
	(186, 1571, true, 50, 44, 16, 1),
	(187, 1590, false, 38, 77, 10, 9),
	(188, 1590, true, 15, 60, 18, 22),
	(189, 1570, false, 57, 53, 11, 10),
	(190, 1568, false, 70, 47, 9, 11),
	(191, 1568, true, 71, 3, 19, 4),
	(192, 1582, false, 99, 93, 5, 12),
	(193, 1582, true, 73, 20, 17, 3),
	(194, 1593, false, 58, 27, 12, 13),
	(195, 1567, false, 47, 91, 8, 14),
	(196, 1567, true, 32, 33, 20, 21),
	(197, 1601, false, 103, 164, 2, 15),
	(198, 1601, true, 97, 267, 5, 19),
	(199, 1586, false, 174, 151, 1, 16),
	(200, 1586, true, 208, 47, 7, 6),
	(201, 1595, false, 76, 42, 9, 1),
	(202, 1595, true, 37, 13, 22, 26),
	(203, 1574, false, 29, 29, 13, 2),
	(204, 1572, false, 23, 0, 15, 3),
	(205, 1579, false, 104, 80, 6, 4),
	(206, 1579, true, 91, 79, 10, 10),
	(207, 1566, false, 53, 13, 12, 5),
	(208, 1591, false, 18, 17, 14, 6),
	(209, 1587, false, 56, 123, 7, 7),
	(210, 1587, true, 53, 62, 13, 14),
	(211, 1580, false, 140, 148, 2, 8),
	(212, 1580, true, 198, 180, 4, 12),
	(213, 1596, false, 56, 68, 8, 9),
	(214, 1596, true, 20, 82, 15, 8),
	(215, 1577, false, 1, 15, 16, 10),
	(216, 1564, false, 74, 38, 10, 11),
	(217, 1564, true, 22, 35, 21, 2),
	(218, 1592, false, 128, 111, 4, 12),
	(219, 1592, true, 126, 27, 12, 7),
	(220, 1569, false, 149, 101, 3, 13),
	(221, 1569, true, 140, 30, 11, 17),
	(222, 1575, false, 84, 150, 5, 14),
	(223, 1575, true, 83, 218, 6, 16),
	(224, 1584, false, 4, 10, 17, 15),
	(225, 1600, false, 156, 135, 1, 16),
	(226, 1600, true, 267, 165, 3, 11),
	(227, 1573, false, 9, 80, 11, 17),
	(228, 1602, true, 0, 0, 26, 9),
	(229, 1598, true, 6, 0, 24, 13),
	(230, 1578, true, 3, 0, 25, 15),
	(231, 1576, true, 248, 251, 2, 20),
	(232, 1588, true, 11, 0, 23, 23),
	(233, 1583, true, 206, 318, 1, 24);


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
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supabase_admin
--

SELECT pg_catalog.setval('"public"."countries_id_seq"', 55, true);


--
-- Name: esc_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."esc_entries_id_seq"', 1758, true);


--
-- Name: esc_real_scores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."esc_real_scores_id_seq"', 233, true);


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

-- \unrestrict fjBlgd21HGzYA2nMSrIfbgQVQQOeLttNc39E4g0yfs4QfSmSR2uoKPwGlhAOZHA

RESET ALL;
