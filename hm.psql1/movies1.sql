PGDMP                         {            movies    15.1    15.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16464    movies    DATABASE     }   CREATE DATABASE movies WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Ukrainian_Ukraine.1251';
    DROP DATABASE movies;
                postgres    false            �            1259    16495    actors    TABLE     �   CREATE TABLE public.actors (
    actor_id integer NOT NULL,
    actor_l_name character varying(50),
    actor_f_name character varying(50),
    birthday date,
    film_id bigint
);
    DROP TABLE public.actors;
       public         heap    postgres    false            �            1259    16494    actors_actor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.actors_actor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.actors_actor_id_seq;
       public          postgres    false    219                       0    0    actors_actor_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.actors_actor_id_seq OWNED BY public.actors.actor_id;
          public          postgres    false    218            �            1259    16483 	   directors    TABLE     �   CREATE TABLE public.directors (
    dir_id integer NOT NULL,
    dir_l_name character varying(50),
    dir_f_name character varying(50),
    birthday date,
    films smallint,
    film_id bigint
);
    DROP TABLE public.directors;
       public         heap    postgres    false            �            1259    16482    directors_dir_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directors_dir_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.directors_dir_id_seq;
       public          postgres    false    215                       0    0    directors_dir_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.directors_dir_id_seq OWNED BY public.directors.dir_id;
          public          postgres    false    214            �            1259    16488    films    TABLE     �   CREATE TABLE public.films (
    film_id integer NOT NULL,
    name_film character varying(255),
    imdb numeric,
    release integer,
    dirfname character varying(50),
    dirlname character varying(50),
    dir_id bigint,
    ac_id bigint
);
    DROP TABLE public.films;
       public         heap    postgres    false            �            1259    16487    films_film_id_seq    SEQUENCE     �   CREATE SEQUENCE public.films_film_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.films_film_id_seq;
       public          postgres    false    217                       0    0    films_film_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.films_film_id_seq OWNED BY public.films.film_id;
          public          postgres    false    216            q           2604    16498    actors actor_id    DEFAULT     r   ALTER TABLE ONLY public.actors ALTER COLUMN actor_id SET DEFAULT nextval('public.actors_actor_id_seq'::regclass);
 >   ALTER TABLE public.actors ALTER COLUMN actor_id DROP DEFAULT;
       public          postgres    false    218    219    219            o           2604    16486    directors dir_id    DEFAULT     t   ALTER TABLE ONLY public.directors ALTER COLUMN dir_id SET DEFAULT nextval('public.directors_dir_id_seq'::regclass);
 ?   ALTER TABLE public.directors ALTER COLUMN dir_id DROP DEFAULT;
       public          postgres    false    214    215    215            p           2604    16491    films film_id    DEFAULT     n   ALTER TABLE ONLY public.films ALTER COLUMN film_id SET DEFAULT nextval('public.films_film_id_seq'::regclass);
 <   ALTER TABLE public.films ALTER COLUMN film_id DROP DEFAULT;
       public          postgres    false    217    216    217                      0    16495    actors 
   TABLE DATA           Y   COPY public.actors (actor_id, actor_l_name, actor_f_name, birthday, film_id) FROM stdin;
    public          postgres    false    219   �                  0    16483 	   directors 
   TABLE DATA           ]   COPY public.directors (dir_id, dir_l_name, dir_f_name, birthday, films, film_id) FROM stdin;
    public          postgres    false    215   �!                 0    16488    films 
   TABLE DATA           e   COPY public.films (film_id, name_film, imdb, release, dirfname, dirlname, dir_id, ac_id) FROM stdin;
    public          postgres    false    217   :"                  0    0    actors_actor_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.actors_actor_id_seq', 9, true);
          public          postgres    false    218                       0    0    directors_dir_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.directors_dir_id_seq', 6, true);
          public          postgres    false    214                       0    0    films_film_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.films_film_id_seq', 9, true);
          public          postgres    false    216            w           2606    16529    actors actors_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_pkey PRIMARY KEY (actor_id);
 <   ALTER TABLE ONLY public.actors DROP CONSTRAINT actors_pkey;
       public            postgres    false    219            s           2606    16527    directors directors_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.directors
    ADD CONSTRAINT directors_pkey PRIMARY KEY (dir_id);
 B   ALTER TABLE ONLY public.directors DROP CONSTRAINT directors_pkey;
       public            postgres    false    215            u           2606    16525    films films_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.films
    ADD CONSTRAINT films_pkey PRIMARY KEY (film_id);
 :   ALTER TABLE ONLY public.films DROP CONSTRAINT films_pkey;
       public            postgres    false    217            {           2606    16540    actors actors_film_id_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_film_id_fkey FOREIGN KEY (film_id) REFERENCES public.films(film_id);
 D   ALTER TABLE ONLY public.actors DROP CONSTRAINT actors_film_id_fkey;
       public          postgres    false    3189    219    217            x           2606    16545     directors directors_film_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.directors
    ADD CONSTRAINT directors_film_id_fkey FOREIGN KEY (film_id) REFERENCES public.films(film_id);
 J   ALTER TABLE ONLY public.directors DROP CONSTRAINT directors_film_id_fkey;
       public          postgres    false    217    215    3189            y           2606    16535    films films_ac_id_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.films
    ADD CONSTRAINT films_ac_id_fkey FOREIGN KEY (ac_id) REFERENCES public.actors(actor_id);
 @   ALTER TABLE ONLY public.films DROP CONSTRAINT films_ac_id_fkey;
       public          postgres    false    3191    217    219            z           2606    16530    films films_dir_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.films
    ADD CONSTRAINT films_dir_id_fkey FOREIGN KEY (dir_id) REFERENCES public.directors(dir_id);
 A   ALTER TABLE ONLY public.films DROP CONSTRAINT films_dir_id_fkey;
       public          postgres    false    215    3187    217               �   x�-��j�0Dϳ_�P�dٖ�I	��Ph��^D�$��d��~}崰�7ov��`_|�r]#��B��s<�{��ɗ�k�7B�z���#�����m���CC��ƙq��_��l`�É���?x��[��4-�R�}��C��9!M�詯��ל'��q��4�j��m�V�����1Ʊpq���c��#�3���1�\����Z���/�A�         �   x��K�0����d�R�-�b{��؋Z�К���IaaXf>ƣ_�����>��[���B�P
L
�)�p��\ڶ��@kh�8k�$tUW�t�rC���8}|�k%�)0�%��8/����P��ʂjr8��Cz{t1M߹x#di0��gED?\,         &  x�m��n�0����'��/�7�h�����K.�p�������^*q��|�3�c��K�<*�L&9�Z�}��Gcm���xp����fQ:�K��xePնF�X$x2�����T�N�2�b����L�"��u<)�Vҭ��--�����r����B:�	R�a��Slnh��ν�����)��6�{[w)2Q�y�}po|�B�r�ͮF	L�a���	��h����xk�N<�Q6C�=�!ƶ��V5����v�oq�NwR(F����v�$=i�h������%�����EB���{3     