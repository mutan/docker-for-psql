-- PostgreSQL database dump for book:
-- SQL Cookbook. Anthony Molinaro. 2009

--
-- Employee table
--

CREATE TABLE public.emp (
    empno integer NOT NULL,
    ename character varying(10),
    job character varying(9),
    mgr integer,
    hiredate date,
    sal integer,
    comm integer,
    deptno integer
);

ALTER TABLE public.emp OWNER TO molinaro;

INSERT INTO public.emp VALUES
  (7369, 'SMITH', 'CLERK', 7902, '1980-12-17', 800, NULL, 20),
  (7499, 'ALLEN', 'SALESMAN', 7698, '1981-2-20', 1600, 300, 30),
  (7521, 'WARD', 'SALESMAN', 7698, '1981-2-22', 1250, 500, 30),
  (7566, 'JONES', 'MANAGER', 7839, '1981-4-2', 2975, NULL, 20),
  (7654, 'MARTIN', 'SALESMAN', 7698, '1981-9-28', 1250, 1400, 30),
  (7698, 'BLAKE', 'MANAGER', 7839, '1981-5-1', 2850, NULL, 30),
  (7782, 'CLARK', 'MANAGER', 7839, '1981-6-9', 2450, NULL, 10),
  (7788, 'SCOTT', 'ANALYST', 7566, '1982-12-9', 3000, NULL, 20),
  (7839, 'KING', 'PRESIDENT', NULL, '1981-11-17', 5000, NULL, 10),
  (7844, 'TURNER', 'SALESMAN', 7698, '1981-9-8', 1500, 0, 30),
  (7876, 'ADAMS', 'CLERK', 7788, '1983-1-12', 1100, NULL, 20),
  (7900, 'JAMES', 'CLERK', 7698, '1981-12-3', 950, NULL, 30),
  (7902, 'FORD', 'ANALYST', 7566, '1981-12-3', 3000, NULL, 20),
  (7934, 'MILLER', 'CLERK', 7782, '1982-1-23', 1300, NULL, 10)
;

--
-- Department table
--

CREATE TABLE public.dept (
    deptno integer,
    dname character varying(14),
    loc character varying(13)
);

ALTER TABLE public.dept OWNER TO molinaro;

INSERT INTO public.dept VALUES
    (10, 'ACCOUNTING', 'NEW YORK'),
    (20, 'RESEARCH', 'DALLAS'),
    (30, 'SALES', 'CHICAGO'),
    (40, 'OPERATIONS', 'BOSTON')
;

--
-- t1 table
--

CREATE TABLE public.t1 (
    id integer
);

ALTER TABLE public.t1 OWNER TO molinaro;

INSERT INTO T1 VALUES (1);

--
-- t10 table
--

CREATE TABLE public.t10 (
    id integer
);

ALTER TABLE public.t10 OWNER TO molinaro;

INSERT INTO T10 VALUES
    (1), (2),(3), (4), (5), (6), (7), (8), (9), (10)
;

--
-- t100 table
--

CREATE TABLE public.t100 (
    id integer
);

ALTER TABLE public.t100 OWNER TO molinaro;

INSERT INTO T100 VALUES
  (1), (2), (3), (4), (5), (6), (7), (8), (9), (10), (11), (12), (13), (14), (15), (16), (17), (18), (19), (20), (21), (22), (23), (24), (25), (26), (27), (28), (29), (30), (31), (32), (33), (34), (35), (36), (37), (38), (39), (40), (41), (42), (43), (44), (45), (46), (47), (48), (49), (50), (51), (52), (53), (54), (55), (56), (57), (58), (59), (60), (61), (62), (63), (64), (65), (66), (67), (68), (69), (70), (71), (72), (73), (74), (75), (76), (77), (78), (79), (80), (81), (82), (83), (84), (85), (86), (87), (88), (89), (90), (91), (92), (93), (94), (95), (96), (97), (98), (99), (100)
;
