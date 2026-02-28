UPDATE "public"."pze_real_scores" as p
SET "running_order" = v."running_order"
FROM (
    VALUES
        (1, 1),
        (2, 2),
        (3, 3),
        (4, 4),
        (5, 5),
        (6, 6),
        (7, 7),
        (8, 8),
        (9, 9),
        (10, 10),
        (11, 11),
        (12, 12),
        (13, 1),
        (14, 2),
        (15, 3),
        (16, 4),
        (17, 5),
        (18, 6),
        (19, 7),
        (20, 8),
        (21, 9),
        (22, 10),
        (23, 11),
        (24, 12)
) AS v("id", "running_order")
WHERE p."id" = v."id";


INSERT INTO "public"."pze_real_scores" ("entry_id", "round", "running_order") VALUES
(19, 3, 1),
(6, 3, 2),
(17, 3, 3),
(11, 3, 4),
(22, 3, 5),
(3, 3, 6),
(2, 3, 7),
(10, 3, 8),
(20, 3, 9),
(16, 3, 10),
(24, 3, 11),
(9, 3, 12),
(18, 3, 13),
(1, 3, 14);