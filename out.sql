PGDMP     +                     v        	   books_app    10.3    10.3     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �
           1262    17238 	   books_app    DATABASE     �   CREATE DATABASE books_app WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE books_app;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �
           0    0    SCHEMA public    ACL     &   GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    17352    books    TABLE     �   CREATE TABLE public.books (
    id integer NOT NULL,
    author text,
    title text,
    isbn text,
    image_url text,
    description text
);
    DROP TABLE public.books;
       public         postgres    false    6            �            1259    17350    books_id_seq    SEQUENCE     �   CREATE SEQUENCE public.books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.books_id_seq;
       public       postgres    false    197    6            �
           0    0    books_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;
            public       postgres    false    196            o
           2604    17355    books id    DEFAULT     d   ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);
 7   ALTER TABLE public.books ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            �
          0    17352    books 
   TABLE DATA               P   COPY public.books (id, author, title, isbn, image_url, description) FROM stdin;
    public       postgres    false    197   �       �
           0    0    books_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.books_id_seq', 7, true);
            public       postgres    false    196            q
           2606    17360    books books_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public         postgres    false    197            �
   �
  x��Xio�F�,���.�|�5�G��|Hv|Ķ�8M�Iv����cFԯ�Wդ���ŀ���]ǫW���y-���Z�u�kR;�:%^�^	׈����w��?|��j_��a�������o��q��-�[�e�\kԲr}�p�r6*�����ٽ�緿<O�Gw�m�:n<VTn��ݷǫ;���Ǉw�K�R�m~���y&:�Q"Dg��t�BPA��c�^�Ԡm�K޻�X�sX�g�LުZ�nkٛH��;�JgiE�{����궋b�c'N�I^K+���Q�t�D�D?� ��#��7�E�me�bP��X��v}o5��>
)F�l���-L�pD�B�r�QBz���A���+Y�A�N�X�a;�l�{�FI���&kX���r��3J�ƮXu��������.ؓ��I�!�y�^�;�k`�	b�h/��QX�����X�_]��1������s'J�b��i_�1Q�*y��Q�-eA|�Z��de�'_��k��"G���U�M�9G�Bp�wi�����Ѓ��#�D�n��s#S�q��Fyi���7���U�u]SR+dqA!�-jI1�ݥ���ۨ��"�6ɈRs�q %[Ժit�L�Xג0�L�`��P�VWH�5(��`���"s���1j]t^�V�@�C'+<1:�z�U���2�"��O�������"p��%�Ze�K��t�J6�=���m#{�	���stB�i��2p9�6DU��Tt��dkJl��@��{o��K�O�/��;��U�8��`���?<�g��:�Zu�g�?>���+(Jխ:jͧdu�r3�e����#����D�OP@�V!GUFw$<TG"��bkAV�A4΋��v�JV]F���k�2�d�P5���
f-��^ֺ��e!���� ���,.F23��h�����;�}HF��K�B���kn/����p��k�����`�Z���,4Go��7''o���7�p�M� ���A�ju�7���I)�*��P����5�)��$�YG��K��S�Q8\�T���R�)�A"-�me��8�F^�/�"@B�Kp��3*�� �FߝK�2T;0J�����"�]��V��+��=J�D��j�P�����3>.��'":WF/�5��4�"���P�Fm�q�Od�U���Nnp&Y`j] v�d�#�ec%�^PEA&T�aQ�`���.�S�u`c��)����QM~G�Lb3���mn��"�p�eo��$��!R��j�J����L�m2U�B�A�l�BUg�#g&1�*m�#�6��D�(��?�
�w̟�$O.�8��` �C�Z`%8䋚7�����[���\ĺ���u�h	�����,���҄� e�	��9Њe(6D��S/!�}n�aB�����%���/�l��?�j���*��
�������Ь�� ,�c	9�7Ke�c^�iEФJ����r&�Ob��8�uA���(�[( MV?�Ճ!��A��TٽOغQ���$j��W@~n��~D��@>�R`l�z6[0�2A	���.��B�;Z��HD���5�i(�L[jXs֘ �C�*�H�f!�����73��K���҄�H�L?�r18�&���Bo�2�C���8s�����i�6v�a�O3���#"�� 0�w ����i��9JJ��a�&^�SX�֑|'x �m�+HJЭ[C���[= ��g��h5Ҳ )~��P���_�F����Z`2!��xZ��B){q�K��P��4#E��l�Fp'	��NjMr��T���d��P �H��XM����
���aj���W��{{Y|�8��ԧnOk\	�rg��h��QA���������(Yy�8��X!k�	䫥�x;C�_s��d ��m ��J��	��&)��7+�����rV���&�X+�"74ps"}��T���3�A�3�������1qa�	��V�I��r����;ς��8A�p(G�n~���}�����DԳ��}���������,��-���(yd������I?h��>р��c|�!EGj���s���:�8��GM�YQ+q~F�WgR�(v�'W=r�̂5DP�e �)�y "�Ѭ��.��n-�gI���G�~"$�9wjf'��Х=*���`B)o��ՙ+�Q�("��svL�2O�W�'JW��q+
~��^Fx�7�/����o��#�,�s1�l0SS��l++��Cng�2�J抛4Ld�ؒ$����(��5Hs6�sٛ�b���z	�#�K�����1������i��"�CVr����Z]#�K�r̖�e�4�����^�dI�ίjH*a�լ�R]��g�kV����9�A�3Q!>٢@���-?ݥ��;�j��Ý�\���/���LF���E=���LF<Ns�T|�,��4D�����y�ɺ[P<%�����4TM��/5L>�	�Q�S����M~b��'p�[����q?���2a|kO� ���#�Z䊻O�i���4�W��g8���!��Բ�zB �(�U=�X�iP�8~?>~��4���m>Y�)��� Q���oܘ��n�Q�AO�WB�qu�٣� R�1�1�tZv|2O�p����?S������� �P#VaMj\��}V$�Q�Gzj��ٛ�g~]e��^~�e��dˈ	h�[��ɬ�S��_�e�wVw�?�>�fy�4�����m��6�|{��=�����rww�?�B�     