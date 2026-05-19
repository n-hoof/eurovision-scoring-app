SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict wW7fa0jYjDj7O8nn7QMfuSngneiziBuhGN3azRvSHEGHgUGrIpVKUZ0aLClCEza

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

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', '8199a3f4-c7e4-414d-b149-5a5e39ed224f', '{"action":"user_signedup","actor_id":"2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb","actor_username":"swag@cool.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2026-03-09 20:16:35.742871+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a163cabf-d04b-463f-bc0a-029e2fc8ddfc', '{"action":"login","actor_id":"2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb","actor_username":"swag@cool.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2026-03-09 20:16:35.755002+00', ''),
	('00000000-0000-0000-0000-000000000000', '3640147e-5770-4920-89e4-7f0bb6be1cec', '{"action":"user_recovery_requested","actor_id":"2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb","actor_username":"swag@cool.com","actor_via_sso":false,"log_type":"user"}', '2026-03-09 20:16:35.792968+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e32e2527-14b8-4bcb-924b-5bf6c795ace1', '{"action":"login","actor_id":"2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb","actor_username":"swag@cool.com","actor_via_sso":false,"log_type":"account"}', '2026-03-09 20:16:52.801254+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f3c51a95-329b-44d4-86fc-9e9f39cf02bc', '{"action":"logout","actor_id":"2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb","actor_username":"swag@cool.com","actor_via_sso":false,"log_type":"account"}', '2026-03-09 20:17:29.031694+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bb1931b1-f4fd-4426-9a5f-070aae60e5db', '{"action":"user_signedup","actor_id":"98bc267a-5772-46ba-88d3-027b13adea93","actor_username":"bob@realmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2026-03-09 20:22:02.966972+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eeecb8e0-d179-491d-948e-3cf4d9b8c06f', '{"action":"login","actor_id":"98bc267a-5772-46ba-88d3-027b13adea93","actor_username":"bob@realmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2026-03-09 20:22:02.977054+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e00e051e-68ba-42ae-814a-dad245e4e426', '{"action":"user_recovery_requested","actor_id":"98bc267a-5772-46ba-88d3-027b13adea93","actor_username":"bob@realmail.com","actor_via_sso":false,"log_type":"user"}', '2026-03-09 20:22:03.014519+00', ''),
	('00000000-0000-0000-0000-000000000000', '8a48cad5-e360-4216-b9ed-6ffedd916637', '{"action":"login","actor_id":"98bc267a-5772-46ba-88d3-027b13adea93","actor_username":"bob@realmail.com","actor_via_sso":false,"log_type":"account"}', '2026-03-09 20:22:07.792799+00', ''),
	('00000000-0000-0000-0000-000000000000', '09f40566-4fb3-4ac7-93b1-41af09bdf42e', '{"action":"logout","actor_id":"98bc267a-5772-46ba-88d3-027b13adea93","actor_username":"bob@realmail.com","actor_via_sso":false,"log_type":"account"}', '2026-03-09 20:22:29.144734+00', ''),
	('00000000-0000-0000-0000-000000000000', '02ee163e-628e-49ac-9ff0-67c59422b996', '{"action":"user_recovery_requested","actor_id":"2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb","actor_username":"swag@cool.com","actor_via_sso":false,"log_type":"user"}', '2026-03-09 20:33:39.039691+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dbcf72d3-c7be-419d-81fb-77cade55ebab', '{"action":"login","actor_id":"2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb","actor_username":"swag@cool.com","actor_via_sso":false,"log_type":"account"}', '2026-03-09 20:33:43.41616+00', ''),
	('00000000-0000-0000-0000-000000000000', 'da28dedd-f416-4b61-8bb1-c8d484933e4d', '{"action":"logout","actor_id":"2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb","actor_username":"swag@cool.com","actor_via_sso":false,"log_type":"account"}', '2026-03-09 20:53:46.470097+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dee47ad4-7c5e-40b3-b6d7-b0bb242b95bc', '{"action":"user_recovery_requested","actor_id":"98bc267a-5772-46ba-88d3-027b13adea93","actor_username":"bob@realmail.com","actor_via_sso":false,"log_type":"user"}', '2026-03-09 20:53:51.129449+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e0d43391-a690-4626-9c75-665feb6eadd7', '{"action":"login","actor_id":"98bc267a-5772-46ba-88d3-027b13adea93","actor_username":"bob@realmail.com","actor_via_sso":false,"log_type":"account"}', '2026-03-09 20:53:56.565884+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ebf5e4cd-e33c-4b4a-8d0c-58e4abdcfd49', '{"action":"logout","actor_id":"98bc267a-5772-46ba-88d3-027b13adea93","actor_username":"bob@realmail.com","actor_via_sso":false,"log_type":"account"}', '2026-03-09 20:55:13.413887+00', '');


--
-- Data for Name: custom_oauth_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 'authenticated', 'authenticated', 'swag@cool.com', '$2a$10$XvS5EOuIgkhNzR1E2/8D4.rzbzZX9lOcOedmmJASQDr1DdSKmV59W', '2026-03-09 20:16:35.744003+00', NULL, '', NULL, '', '2026-03-09 20:33:39.041352+00', '', '', NULL, '2026-03-09 20:33:43.419186+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb", "email": "swag@cool.com", "email_verified": true, "phone_verified": false}', NULL, '2026-03-09 20:16:35.733558+00', '2026-03-09 20:33:43.421228+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '98bc267a-5772-46ba-88d3-027b13adea93', 'authenticated', 'authenticated', 'bob@realmail.com', '$2a$10$MEr.3PRla5AZ2IqYRSUsfOtnnXF8Cmzu8YUZoy1wv.yrnynCfVVeu', '2026-03-09 20:22:02.967675+00', NULL, '', NULL, '', '2026-03-09 20:53:51.130924+00', '', '', NULL, '2026-03-09 20:53:56.56898+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "98bc267a-5772-46ba-88d3-027b13adea93", "email": "bob@realmail.com", "email_verified": true, "phone_verified": false}', NULL, '2026-03-09 20:22:02.959655+00', '2026-03-09 20:53:56.571066+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', '{"sub": "2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb", "email": "swag@cool.com", "email_verified": false, "phone_verified": false}', 'email', '2026-03-09 20:16:35.740581+00', '2026-03-09 20:16:35.740602+00', '2026-03-09 20:16:35.740602+00', 'c1e8de6b-389b-4609-935c-8bd99fb68aa6'),
	('98bc267a-5772-46ba-88d3-027b13adea93', '98bc267a-5772-46ba-88d3-027b13adea93', '{"sub": "98bc267a-5772-46ba-88d3-027b13adea93", "email": "bob@realmail.com", "email_verified": false, "phone_verified": false}', 'email', '2026-03-09 20:22:02.96421+00', '2026-03-09 20:22:02.964228+00', '2026-03-09 20:22:02.964228+00', '4bdef227-6d04-450c-8177-dd3ab368252e');



--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."profiles" ("id", "username", "fav_entry_id", "country_id") VALUES
	('2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 'swag', NULL, 20),
	('98bc267a-5772-46ba-88d3-027b13adea93', 'bob', NULL, 22);


--
-- Data for Name: esc_user_scores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."esc_user_scores" ("id", "user_id", "entry_id", "song_score", "costume_score", "staging_score", "performance_score", "round", "is_scored") OVERRIDING SYSTEM VALUE VALUES
	(1, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1312, 0.00, 0.00, 0.00, 0.00, 1, false),
	(2, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1316, 0.00, 0.00, 0.00, 0.00, 1, false),
	(3, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1317, 0.00, 0.00, 0.00, 0.00, 1, false),
	(4, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1318, 0.00, 0.00, 0.00, 0.00, 1, false),
	(5, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1319, 0.00, 0.00, 0.00, 0.00, 1, false),
	(6, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1322, 0.00, 0.00, 0.00, 0.00, 1, false),
	(7, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1328, 0.00, 0.00, 0.00, 0.00, 1, false),
	(8, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1337, 0.00, 0.00, 0.00, 0.00, 1, false),
	(9, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1338, 0.00, 0.00, 0.00, 0.00, 1, false),
	(10, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1339, 0.00, 0.00, 0.00, 0.00, 1, false),
	(11, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1340, 0.00, 0.00, 0.00, 0.00, 1, false),
	(12, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1341, 0.00, 0.00, 0.00, 0.00, 1, false),
	(13, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1343, 0.00, 0.00, 0.00, 0.00, 1, false),
	(14, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1345, 0.00, 0.00, 0.00, 0.00, 1, false),
	(15, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1347, 0.00, 0.00, 0.00, 0.00, 1, false),
	(16, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1313, 0.00, 0.00, 0.00, 0.00, 2, false),
	(17, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1314, 0.00, 0.00, 0.00, 0.00, 2, false),
	(18, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1315, 0.00, 0.00, 0.00, 0.00, 2, false),
	(19, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1320, 0.00, 0.00, 0.00, 0.00, 2, false),
	(20, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1321, 0.00, 0.00, 0.00, 0.00, 2, false),
	(21, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1323, 0.00, 0.00, 0.00, 0.00, 2, false),
	(22, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1325, 0.00, 0.00, 0.00, 0.00, 2, false),
	(23, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1327, 0.00, 0.00, 0.00, 0.00, 2, false),
	(24, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1329, 0.00, 0.00, 0.00, 0.00, 2, false),
	(25, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1330, 0.00, 0.00, 0.00, 0.00, 2, false),
	(26, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1332, 0.00, 0.00, 0.00, 0.00, 2, false),
	(27, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1333, 0.00, 0.00, 0.00, 0.00, 2, false),
	(28, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1334, 0.00, 0.00, 0.00, 0.00, 2, false),
	(29, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1335, 0.00, 0.00, 0.00, 0.00, 2, false),
	(30, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1336, 0.00, 0.00, 0.00, 0.00, 2, false),
	(31, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1342, 0.00, 0.00, 0.00, 0.00, 2, false),
	(32, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1312, 0.00, 0.00, 0.00, 0.00, 3, false),
	(33, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1313, 0.00, 0.00, 0.00, 0.00, 3, false),
	(34, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1315, 0.00, 0.00, 0.00, 0.00, 3, false),
	(35, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1321, 0.00, 0.00, 0.00, 0.00, 3, false),
	(36, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1322, 0.00, 0.00, 0.00, 0.00, 3, false),
	(37, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1323, 0.00, 0.00, 0.00, 0.00, 3, false),
	(38, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1324, 0.00, 0.00, 0.00, 0.00, 3, false),
	(39, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1326, 0.00, 0.00, 0.00, 0.00, 3, false),
	(40, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1327, 0.00, 0.00, 0.00, 0.00, 3, false),
	(41, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1328, 0.00, 0.00, 0.00, 0.00, 3, false),
	(42, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1330, 0.00, 0.00, 0.00, 0.00, 3, false),
	(43, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1331, 0.00, 0.00, 0.00, 0.00, 3, false),
	(44, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1332, 0.00, 0.00, 0.00, 0.00, 3, false),
	(45, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1333, 0.00, 0.00, 0.00, 0.00, 3, false),
	(46, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1334, 0.00, 0.00, 0.00, 0.00, 3, false),
	(47, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1335, 0.00, 0.00, 0.00, 0.00, 3, false),
	(48, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1337, 0.00, 0.00, 0.00, 0.00, 3, false),
	(49, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1338, 0.00, 0.00, 0.00, 0.00, 3, false),
	(50, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1339, 0.00, 0.00, 0.00, 0.00, 3, false),
	(51, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1340, 0.00, 0.00, 0.00, 0.00, 3, false),
	(52, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1341, 0.00, 0.00, 0.00, 0.00, 3, false),
	(53, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1344, 0.00, 0.00, 0.00, 0.00, 3, false),
	(54, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1345, 0.00, 0.00, 0.00, 0.00, 3, false),
	(55, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1346, 0.00, 0.00, 0.00, 0.00, 3, false),
	(56, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1347, 0.00, 0.00, 0.00, 0.00, 3, false),
	(57, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1348, 0.00, 0.00, 0.00, 0.00, 3, false),
	(58, '98bc267a-5772-46ba-88d3-027b13adea93', 1312, 0.00, 0.00, 0.00, 0.00, 1, false),
	(59, '98bc267a-5772-46ba-88d3-027b13adea93', 1316, 0.00, 0.00, 0.00, 0.00, 1, false),
	(60, '98bc267a-5772-46ba-88d3-027b13adea93', 1317, 0.00, 0.00, 0.00, 0.00, 1, false),
	(61, '98bc267a-5772-46ba-88d3-027b13adea93', 1318, 0.00, 0.00, 0.00, 0.00, 1, false),
	(62, '98bc267a-5772-46ba-88d3-027b13adea93', 1319, 0.00, 0.00, 0.00, 0.00, 1, false),
	(63, '98bc267a-5772-46ba-88d3-027b13adea93', 1322, 0.00, 0.00, 0.00, 0.00, 1, false),
	(64, '98bc267a-5772-46ba-88d3-027b13adea93', 1328, 0.00, 0.00, 0.00, 0.00, 1, false),
	(65, '98bc267a-5772-46ba-88d3-027b13adea93', 1337, 0.00, 0.00, 0.00, 0.00, 1, false),
	(66, '98bc267a-5772-46ba-88d3-027b13adea93', 1338, 0.00, 0.00, 0.00, 0.00, 1, false),
	(67, '98bc267a-5772-46ba-88d3-027b13adea93', 1339, 0.00, 0.00, 0.00, 0.00, 1, false),
	(68, '98bc267a-5772-46ba-88d3-027b13adea93', 1340, 0.00, 0.00, 0.00, 0.00, 1, false),
	(69, '98bc267a-5772-46ba-88d3-027b13adea93', 1341, 0.00, 0.00, 0.00, 0.00, 1, false),
	(70, '98bc267a-5772-46ba-88d3-027b13adea93', 1343, 0.00, 0.00, 0.00, 0.00, 1, false),
	(71, '98bc267a-5772-46ba-88d3-027b13adea93', 1345, 0.00, 0.00, 0.00, 0.00, 1, false),
	(72, '98bc267a-5772-46ba-88d3-027b13adea93', 1347, 0.00, 0.00, 0.00, 0.00, 1, false),
	(73, '98bc267a-5772-46ba-88d3-027b13adea93', 1313, 0.00, 0.00, 0.00, 0.00, 2, false),
	(74, '98bc267a-5772-46ba-88d3-027b13adea93', 1314, 0.00, 0.00, 0.00, 0.00, 2, false),
	(75, '98bc267a-5772-46ba-88d3-027b13adea93', 1315, 0.00, 0.00, 0.00, 0.00, 2, false),
	(76, '98bc267a-5772-46ba-88d3-027b13adea93', 1320, 0.00, 0.00, 0.00, 0.00, 2, false),
	(77, '98bc267a-5772-46ba-88d3-027b13adea93', 1321, 0.00, 0.00, 0.00, 0.00, 2, false),
	(78, '98bc267a-5772-46ba-88d3-027b13adea93', 1323, 0.00, 0.00, 0.00, 0.00, 2, false),
	(79, '98bc267a-5772-46ba-88d3-027b13adea93', 1325, 0.00, 0.00, 0.00, 0.00, 2, false),
	(80, '98bc267a-5772-46ba-88d3-027b13adea93', 1327, 0.00, 0.00, 0.00, 0.00, 2, false),
	(81, '98bc267a-5772-46ba-88d3-027b13adea93', 1329, 0.00, 0.00, 0.00, 0.00, 2, false),
	(82, '98bc267a-5772-46ba-88d3-027b13adea93', 1330, 0.00, 0.00, 0.00, 0.00, 2, false),
	(83, '98bc267a-5772-46ba-88d3-027b13adea93', 1332, 0.00, 0.00, 0.00, 0.00, 2, false),
	(84, '98bc267a-5772-46ba-88d3-027b13adea93', 1333, 0.00, 0.00, 0.00, 0.00, 2, false),
	(85, '98bc267a-5772-46ba-88d3-027b13adea93', 1334, 0.00, 0.00, 0.00, 0.00, 2, false),
	(86, '98bc267a-5772-46ba-88d3-027b13adea93', 1335, 0.00, 0.00, 0.00, 0.00, 2, false),
	(87, '98bc267a-5772-46ba-88d3-027b13adea93', 1336, 0.00, 0.00, 0.00, 0.00, 2, false),
	(88, '98bc267a-5772-46ba-88d3-027b13adea93', 1342, 0.00, 0.00, 0.00, 0.00, 2, false),
	(89, '98bc267a-5772-46ba-88d3-027b13adea93', 1312, 0.00, 0.00, 0.00, 0.00, 3, false),
	(90, '98bc267a-5772-46ba-88d3-027b13adea93', 1313, 0.00, 0.00, 0.00, 0.00, 3, false),
	(93, '98bc267a-5772-46ba-88d3-027b13adea93', 1322, 0.00, 0.00, 0.00, 0.00, 3, false),
	(94, '98bc267a-5772-46ba-88d3-027b13adea93', 1323, 0.00, 0.00, 0.00, 0.00, 3, false),
	(95, '98bc267a-5772-46ba-88d3-027b13adea93', 1324, 0.00, 0.00, 0.00, 0.00, 3, false),
	(96, '98bc267a-5772-46ba-88d3-027b13adea93', 1326, 0.00, 0.00, 0.00, 0.00, 3, false),
	(97, '98bc267a-5772-46ba-88d3-027b13adea93', 1327, 0.00, 0.00, 0.00, 0.00, 3, false),
	(98, '98bc267a-5772-46ba-88d3-027b13adea93', 1328, 0.00, 0.00, 0.00, 0.00, 3, false),
	(99, '98bc267a-5772-46ba-88d3-027b13adea93', 1330, 0.00, 0.00, 0.00, 0.00, 3, false),
	(100, '98bc267a-5772-46ba-88d3-027b13adea93', 1331, 0.00, 0.00, 0.00, 0.00, 3, false),
	(101, '98bc267a-5772-46ba-88d3-027b13adea93', 1332, 0.00, 0.00, 0.00, 0.00, 3, false),
	(102, '98bc267a-5772-46ba-88d3-027b13adea93', 1333, 0.00, 0.00, 0.00, 0.00, 3, false),
	(103, '98bc267a-5772-46ba-88d3-027b13adea93', 1334, 0.00, 0.00, 0.00, 0.00, 3, false),
	(104, '98bc267a-5772-46ba-88d3-027b13adea93', 1335, 0.00, 0.00, 0.00, 0.00, 3, false),
	(105, '98bc267a-5772-46ba-88d3-027b13adea93', 1337, 0.00, 0.00, 0.00, 0.00, 3, false),
	(106, '98bc267a-5772-46ba-88d3-027b13adea93', 1338, 0.00, 0.00, 0.00, 0.00, 3, false),
	(107, '98bc267a-5772-46ba-88d3-027b13adea93', 1339, 0.00, 0.00, 0.00, 0.00, 3, false),
	(108, '98bc267a-5772-46ba-88d3-027b13adea93', 1340, 0.00, 0.00, 0.00, 0.00, 3, false),
	(109, '98bc267a-5772-46ba-88d3-027b13adea93', 1341, 0.00, 0.00, 0.00, 0.00, 3, false),
	(110, '98bc267a-5772-46ba-88d3-027b13adea93', 1344, 0.00, 0.00, 0.00, 0.00, 3, false),
	(111, '98bc267a-5772-46ba-88d3-027b13adea93', 1345, 0.00, 0.00, 0.00, 0.00, 3, false),
	(112, '98bc267a-5772-46ba-88d3-027b13adea93', 1346, 0.00, 0.00, 0.00, 0.00, 3, false),
	(113, '98bc267a-5772-46ba-88d3-027b13adea93', 1347, 0.00, 0.00, 0.00, 0.00, 3, false),
	(114, '98bc267a-5772-46ba-88d3-027b13adea93', 1348, 0.00, 0.00, 0.00, 0.00, 3, false),
	(92, '98bc267a-5772-46ba-88d3-027b13adea93', 1321, 2.75, 1.25, 1.00, 1.50, 3, true),
	(91, '98bc267a-5772-46ba-88d3-027b13adea93', 1315, 4.00, 2.00, 2.00, 2.00, 3, true);



--
-- Data for Name: pze_user_scores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."pze_user_scores" ("id", "user_id", "entry_id", "round", "is_scored", "song_score", "costume_score", "staging_score", "performance_score") OVERRIDING SYSTEM VALUE VALUES
	(2, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 2, 3, true, 2.00, 1.00, 0.50, 1.00),
	(3, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 3, 3, true, 2.75, 1.50, 1.25, 1.25),
	(4, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 6, 3, true, 3.50, 1.25, 1.00, 1.50),
	(5, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 9, 3, true, 1.50, 1.00, 0.00, 0.50),
	(7, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 11, 3, true, 3.75, 1.50, 1.50, 2.00),
	(8, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 16, 3, true, 1.75, 1.25, 0.75, 0.25),
	(10, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 18, 3, false, 0.00, 0.00, 0.00, 0.00),
	(11, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 19, 3, false, 0.00, 0.00, 0.00, 0.00),
	(12, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 20, 3, false, 0.00, 0.00, 0.00, 0.00),
	(13, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 22, 3, false, 0.00, 0.00, 0.00, 0.00),
	(14, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 24, 3, false, 0.00, 0.00, 0.00, 0.00),
	(1, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1, 3, true, 3.50, 1.50, 1.50, 1.75),
	(6, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 10, 3, true, 2.75, 1.50, 1.50, 1.25),
	(9, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 17, 3, true, 3.50, 1.25, 1.00, 1.50),
	(15, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 13, 2, false, 0.00, 0.00, 0.00, 0.00),
	(16, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 14, 2, false, 0.00, 0.00, 0.00, 0.00),
	(17, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 15, 2, false, 0.00, 0.00, 0.00, 0.00),
	(18, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 16, 2, false, 0.00, 0.00, 0.00, 0.00),
	(19, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 17, 2, false, 0.00, 0.00, 0.00, 0.00),
	(20, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 18, 2, false, 0.00, 0.00, 0.00, 0.00),
	(21, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 19, 2, false, 0.00, 0.00, 0.00, 0.00),
	(22, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 20, 2, false, 0.00, 0.00, 0.00, 0.00),
	(23, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 21, 2, false, 0.00, 0.00, 0.00, 0.00),
	(24, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 22, 2, false, 0.00, 0.00, 0.00, 0.00),
	(25, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 23, 2, false, 0.00, 0.00, 0.00, 0.00),
	(26, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 24, 2, false, 0.00, 0.00, 0.00, 0.00),
	(27, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 1, 1, false, 0.00, 0.00, 0.00, 0.00),
	(28, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 2, 1, false, 0.00, 0.00, 0.00, 0.00),
	(29, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 3, 1, false, 0.00, 0.00, 0.00, 0.00),
	(30, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 4, 1, false, 0.00, 0.00, 0.00, 0.00),
	(31, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 5, 1, false, 0.00, 0.00, 0.00, 0.00),
	(32, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 6, 1, false, 0.00, 0.00, 0.00, 0.00),
	(33, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 7, 1, false, 0.00, 0.00, 0.00, 0.00),
	(34, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 8, 1, false, 0.00, 0.00, 0.00, 0.00),
	(35, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 9, 1, false, 0.00, 0.00, 0.00, 0.00),
	(36, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 10, 1, false, 0.00, 0.00, 0.00, 0.00),
	(37, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 11, 1, false, 0.00, 0.00, 0.00, 0.00),
	(38, '2d2ff6b2-1103-4eb1-bdc7-1a8f736189cb', 12, 1, false, 0.00, 0.00, 0.00, 0.00),
	(39, '98bc267a-5772-46ba-88d3-027b13adea93', 1, 3, false, 0.00, 0.00, 0.00, 0.00),
	(40, '98bc267a-5772-46ba-88d3-027b13adea93', 2, 3, false, 0.00, 0.00, 0.00, 0.00),
	(41, '98bc267a-5772-46ba-88d3-027b13adea93', 3, 3, false, 0.00, 0.00, 0.00, 0.00),
	(43, '98bc267a-5772-46ba-88d3-027b13adea93', 9, 3, false, 0.00, 0.00, 0.00, 0.00),
	(44, '98bc267a-5772-46ba-88d3-027b13adea93', 10, 3, false, 0.00, 0.00, 0.00, 0.00),
	(47, '98bc267a-5772-46ba-88d3-027b13adea93', 17, 3, false, 0.00, 0.00, 0.00, 0.00),
	(48, '98bc267a-5772-46ba-88d3-027b13adea93', 18, 3, false, 0.00, 0.00, 0.00, 0.00),
	(49, '98bc267a-5772-46ba-88d3-027b13adea93', 19, 3, false, 0.00, 0.00, 0.00, 0.00),
	(51, '98bc267a-5772-46ba-88d3-027b13adea93', 22, 3, false, 0.00, 0.00, 0.00, 0.00),
	(52, '98bc267a-5772-46ba-88d3-027b13adea93', 24, 3, false, 0.00, 0.00, 0.00, 0.00),
	(53, '98bc267a-5772-46ba-88d3-027b13adea93', 13, 2, false, 0.00, 0.00, 0.00, 0.00),
	(54, '98bc267a-5772-46ba-88d3-027b13adea93', 14, 2, false, 0.00, 0.00, 0.00, 0.00),
	(55, '98bc267a-5772-46ba-88d3-027b13adea93', 15, 2, false, 0.00, 0.00, 0.00, 0.00),
	(56, '98bc267a-5772-46ba-88d3-027b13adea93', 16, 2, false, 0.00, 0.00, 0.00, 0.00),
	(57, '98bc267a-5772-46ba-88d3-027b13adea93', 17, 2, false, 0.00, 0.00, 0.00, 0.00),
	(58, '98bc267a-5772-46ba-88d3-027b13adea93', 18, 2, false, 0.00, 0.00, 0.00, 0.00),
	(59, '98bc267a-5772-46ba-88d3-027b13adea93', 19, 2, false, 0.00, 0.00, 0.00, 0.00),
	(60, '98bc267a-5772-46ba-88d3-027b13adea93', 20, 2, false, 0.00, 0.00, 0.00, 0.00),
	(62, '98bc267a-5772-46ba-88d3-027b13adea93', 22, 2, false, 0.00, 0.00, 0.00, 0.00),
	(63, '98bc267a-5772-46ba-88d3-027b13adea93', 23, 2, false, 0.00, 0.00, 0.00, 0.00),
	(64, '98bc267a-5772-46ba-88d3-027b13adea93', 24, 2, false, 0.00, 0.00, 0.00, 0.00),
	(65, '98bc267a-5772-46ba-88d3-027b13adea93', 1, 1, false, 0.00, 0.00, 0.00, 0.00),
	(66, '98bc267a-5772-46ba-88d3-027b13adea93', 2, 1, false, 0.00, 0.00, 0.00, 0.00),
	(67, '98bc267a-5772-46ba-88d3-027b13adea93', 3, 1, false, 0.00, 0.00, 0.00, 0.00),
	(69, '98bc267a-5772-46ba-88d3-027b13adea93', 5, 1, false, 0.00, 0.00, 0.00, 0.00),
	(70, '98bc267a-5772-46ba-88d3-027b13adea93', 6, 1, false, 0.00, 0.00, 0.00, 0.00),
	(71, '98bc267a-5772-46ba-88d3-027b13adea93', 7, 1, false, 0.00, 0.00, 0.00, 0.00),
	(72, '98bc267a-5772-46ba-88d3-027b13adea93', 8, 1, false, 0.00, 0.00, 0.00, 0.00),
	(73, '98bc267a-5772-46ba-88d3-027b13adea93', 9, 1, false, 0.00, 0.00, 0.00, 0.00),
	(74, '98bc267a-5772-46ba-88d3-027b13adea93', 10, 1, false, 0.00, 0.00, 0.00, 0.00),
	(75, '98bc267a-5772-46ba-88d3-027b13adea93', 11, 1, false, 0.00, 0.00, 0.00, 0.00),
	(76, '98bc267a-5772-46ba-88d3-027b13adea93', 12, 1, false, 0.00, 0.00, 0.00, 0.00),
	(68, '98bc267a-5772-46ba-88d3-027b13adea93', 4, 1, true, 3.50, 0.75, 1.00, 1.00),
	(61, '98bc267a-5772-46ba-88d3-027b13adea93', 21, 2, true, 3.50, 1.00, 1.25, 1.75),
	(42, '98bc267a-5772-46ba-88d3-027b13adea93', 6, 3, true, 3.25, 1.75, 0.75, 1.75),
	(46, '98bc267a-5772-46ba-88d3-027b13adea93', 16, 3, true, 1.75, 1.75, 1.50, 1.00),
	(50, '98bc267a-5772-46ba-88d3-027b13adea93', 20, 3, true, 2.25, 2.00, 0.75, 0.75),
	(45, '98bc267a-5772-46ba-88d3-027b13adea93', 11, 3, true, 3.25, 0.50, 0.25, 1.00);

--
-- Data for Name: esc_entries; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."esc_entries" ("id", "year", "artist", "song_title", "country_id") VALUES
	(1349, 2026, 'Alis', 'Nân', 1),
	(1350, 2026, 'Simón', 'Paloma Rumba', 3),
	(1351, 2026, 'Delta Goodrem', 'Eclipse', 5),
	(1352, 2026, 'Cosmó', 'Tanzschein', 4),
	(1353, 2026, 'Jiva', 'Just Go', 6),
	(1354, 2026, 'Essyla', 'Dancing on the Ice', 8),
	(1355, 2026, 'Dara', 'Bangaranga', 9),
	(1356, 2026, 'Lelek', 'Andromeda', 25),
	(1357, 2026, 'Antigoni', 'Jalla', 12),
	(1358, 2026, 'Daniel Zizka', 'Crossroads', 14),
	(1359, 2026, 'Søren Torpegaard Lund', 'Før vi går hjem', 16),
	(1360, 2026, 'Vanilla Ninja', 'Too Epic to Be True', 17),
	(1361, 2026, 'Linda Lampenius and Pete Parkkonen', 'Liekinheitin', 20),
	(1362, 2026, 'Monroe', 'Regarde!', 21),
	(1363, 2026, 'Bzikebi', 'On Replay', 23),
	(1364, 2026, 'Sarah Engels', 'Fire', 15),
	(1365, 2026, 'Akylas', 'Ferto (Φέρτο)', 24),
	(1366, 2026, 'Noam Bettan', 'Michelle', 29),
	(1367, 2026, 'Sal Da Vinci', 'Per sempre sì', 30),
	(1368, 2026, 'Atvara', 'Ēnā', 31),
	(1369, 2026, 'Lion Ceccah', 'Sólo quiero más', 32),
	(1370, 2026, 'Eva Marija', 'Mother Nature', 33),
	(1371, 2026, 'Aidan', 'Bella', 34),
	(1372, 2026, 'Satoshi', 'Viva, Moldova!', 35),
	(1373, 2026, 'Tamara Živković', 'Nova zora (Нова зора)', 37),
	(1374, 2026, 'Jonas Lovv', 'Ya Ya Ya', 42),
	(1375, 2026, 'Alicja', 'Pray', 43),
	(1376, 2026, 'Bandidos do Cante', 'Rosa', 44),
	(1377, 2026, 'Alexandra Căpitănescu', 'Choke Me', 45),
	(1378, 2026, 'Senhit', 'Superstar', 47),
	(1379, 2026, 'Lavina', 'Kraj mene (Крај мене)', 48),
	(1380, 2026, 'Felicia', 'My System', 52),
	(1381, 2026, 'Veronica Fusaro', 'Alice', 11),
	(1382, 2026, 'Leléka', 'Ridnym (Рідним)', 54),
	(1383, 2026, 'Look Mum No Computer', 'Eins, Zwei, Drei', 22);
--
-- Data for Name: esc_real_scores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."esc_real_scores" ("id", "entry_id", "jury", "televote", "place", "running_order", "round") VALUES
	(947, 1380, NULL, NULL, NULL, 2, 1),
	(948, 1356, NULL, NULL, NULL, 3, 1),
	(949, 1365, NULL, NULL, NULL, 4, 1),
	(950, 1376, NULL, NULL, NULL, 5, 1),
	(951, 1363, NULL, NULL, NULL, 6, 1),
	(952, 1361, NULL, NULL, NULL, 7, 1),
	(953, 1373, NULL, NULL, NULL, 8, 1),
	(954, 1360, NULL, NULL, NULL, 9, 1),
	(955, 1366, NULL, NULL, NULL, 10, 1),
	(956, 1354, NULL, NULL, NULL, 11, 1),
	(957, 1369, NULL, NULL, NULL, 12, 1),
	(958, 1378, NULL, NULL, NULL, 13, 1),
	(959, 1375, NULL, NULL, NULL, 14, 1),
	(960, 1379, NULL, NULL, NULL, 15, 1),
	(961, 1353, NULL, NULL, NULL, 2, 2),
	(962, 1377, NULL, NULL, NULL, 3, 2),
	(963, 1370, NULL, NULL, NULL, 4, 2),
	(964, 1358, NULL, NULL, NULL, 5, 2),
	(965, 1350, NULL, NULL, NULL, 6, 2),
	(966, 1381, NULL, NULL, NULL, 7, 2),
	(967, 1357, NULL, NULL, NULL, 8, 2),
	(968, 1368, NULL, NULL, NULL, 9, 2),
	(969, 1359, NULL, NULL, NULL, 10, 2),
	(970, 1351, NULL, NULL, NULL, 11, 2),
	(971, 1382, NULL, NULL, NULL, 12, 2),
	(972, 1349, NULL, NULL, NULL, 13, 2),
	(973, 1371, NULL, NULL, NULL, 14, 2),
	(974, 1374, NULL, NULL, NULL, 15, 2),
	(975, 1372, NULL, NULL, NULL, 1, 1),
	(976, 1355, NULL, NULL, NULL, 1, 2);

INSERT INTO "public"."esc_real_scores" ("id", "entry_id", "round", "running_order") VALUES
(977, 1359, 3, 1),
(978, 1364, 3, 2),
(979, 1366, 3, 3),
(980, 1354, 3, 4),
(981, 1349, 3, 5),
(982, 1365, 3, 6),
(983, 1382, 3, 7),
(984, 1351, 3, 8),
(985, 1379, 3, 9),
(986, 1371, 3, 10),
(987, 1358, 3, 11),
(988, 1355, 3, 12),
(989, 1356, 3, 13),
(990, 1383, 3, 14),
(991, 1362, 3, 15),
(992, 1372, 3, 16),
(993, 1361, 3, 17),
(994, 1375, 3, 18),
(995, 1369, 3, 19),
(996, 1380, 3, 20),
(997, 1357, 3, 21),
(998, 1367, 3, 22),
(999, 1374, 3, 23),
(1000, 1377, 3, 24),
(1001, 1352, 3, 25);

UPDATE "public"."esc_real_scores" AS t
SET
    "jury" = v.jury,
    "televote" = v.televote,
    "place" = v.place
FROM (
    VALUES
        (947, 79, 17, 9),
        (948, 85, 90, 6),
        (949, 88, 71, 7),
        (950, 39, 35, 12),
        (951, 3, 2, 15),
        (952, 127, 100, 3),
        (953, 26, 45, 13),
        (954, 33, 46, 11),
        (955, 106, 163, 1),
        (956, 81, 10, 10),
        (957, 46, 55, 8),
        (958, 18, 23, 14),
        (959, 137, 110, 2),
        (960, 56, 131, 5),
        (975, 62, 146, 4),
        (976, 94, 184, 1),
        (961, 2, 0, 15),
        (962, 87, 147, 2),
        (963, 26, 34, 12),
        (964, 108, 34, 9),
        (965, 30, 19, 14),
        (966, 48, 60, 11),
        (967, 47, 75, 10),
        (968, 28, 21, 13),
        (969, 124, 75, 5),
        (970, 137, 85, 3),
        (971, 75, 99, 6),
        (972, 45, 113, 7),
        (973, 84, 59, 8),
        (974, 109, 97, 4),
        (977, 165, 78, 7),
        (978, 12, 0, 23),
        (979, 123, 220, 2),
        (980, 36, 0, 21),
        (981, 60, 85, 13),
        (982, 73, 147, 10),
        (983, 54, 167, 9),
        (984, 165, 122, 4),
        (985, 38, 52, 17),
        (986, 81, 8, 18),
        (987, 104, 9, 16),
        (988, 204, 312, 1),
        (989, 53, 71, 15),
        (990, 1, 0, 25),
        (991, 144, 14, 11),
        (992, 43, 183, 8),
        (993, 141, 138, 6),
        (994, 133, 17, 12),
        (995, 10, 12, 22),
        (996, 35, 16, 20),
        (997, 41, 34, 19),
        (998, 134, 147, 5),
        (999, 115, 19, 14),
        (1000, 64, 232, 3),
        (1001, 1, 5, 24)
) AS v(id, jury, televote, place)
WHERE t."id" = v.id;



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 6, true);


--
-- Name: esc_user_scores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."esc_user_scores_id_seq"', 114, true);


--
-- Name: pze_user_scores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."pze_user_scores_id_seq"', 76, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


