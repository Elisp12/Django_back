PGDMP      
                |            estudo_postgres    16.3    16.3 !               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            	           1262    110665    estudo_postgres    DATABASE     �   CREATE DATABASE estudo_postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE estudo_postgres;
                postgres    false            �            1259    110667 
   categorias    TABLE     �   CREATE TABLE public.categorias (
    id integer NOT NULL,
    nome character varying(90) NOT NULL,
    lojas_id integer,
    no_loja character varying
);
    DROP TABLE public.categorias;
       public         heap    postgres    false            �            1259    110666    categorias_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categorias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categorias_id_seq;
       public          postgres    false    216            
           0    0    categorias_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categorias_id_seq OWNED BY public.categorias.id;
          public          postgres    false    215            �            1259    110712    lista_produto    TABLE     �   CREATE TABLE public.lista_produto (
    id integer NOT NULL,
    nome character varying NOT NULL,
    descricao text,
    preco numeric,
    is_ativo boolean
);
 !   DROP TABLE public.lista_produto;
       public         heap    postgres    false            �            1259    110711    lista_produto_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lista_produto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.lista_produto_id_seq;
       public          postgres    false    222                       0    0    lista_produto_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.lista_produto_id_seq OWNED BY public.lista_produto.id;
          public          postgres    false    221            �            1259    110685    lojas    TABLE     �   CREATE TABLE public.lojas (
    id integer NOT NULL,
    nome character varying NOT NULL,
    valor_patrimonio numeric(10,3) NOT NULL,
    valor_produtos character varying
);
    DROP TABLE public.lojas;
       public         heap    postgres    false            �            1259    110684    lojas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lojas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.lojas_id_seq;
       public          postgres    false    220                       0    0    lojas_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.lojas_id_seq OWNED BY public.lojas.id;
          public          postgres    false    219            �            1259    110676    produtos    TABLE       CREATE TABLE public.produtos (
    id integer NOT NULL,
    nome character varying(90) NOT NULL,
    descricao text,
    quantidade integer NOT NULL,
    preco numeric(10,2) NOT NULL,
    id_categoria integer,
    no_categoria character varying,
    no_loja character varying
);
    DROP TABLE public.produtos;
       public         heap    postgres    false            �            1259    110675    produtos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.produtos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.produtos_id_seq;
       public          postgres    false    218                       0    0    produtos_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.produtos_id_seq OWNED BY public.produtos.id;
          public          postgres    false    217            _           2604    110670    categorias id    DEFAULT     n   ALTER TABLE ONLY public.categorias ALTER COLUMN id SET DEFAULT nextval('public.categorias_id_seq'::regclass);
 <   ALTER TABLE public.categorias ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            b           2604    110715    lista_produto id    DEFAULT     t   ALTER TABLE ONLY public.lista_produto ALTER COLUMN id SET DEFAULT nextval('public.lista_produto_id_seq'::regclass);
 ?   ALTER TABLE public.lista_produto ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            a           2604    110688    lojas id    DEFAULT     d   ALTER TABLE ONLY public.lojas ALTER COLUMN id SET DEFAULT nextval('public.lojas_id_seq'::regclass);
 7   ALTER TABLE public.lojas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            `           2604    110679    produtos id    DEFAULT     j   ALTER TABLE ONLY public.produtos ALTER COLUMN id SET DEFAULT nextval('public.produtos_id_seq'::regclass);
 :   ALTER TABLE public.produtos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �          0    110667 
   categorias 
   TABLE DATA           A   COPY public.categorias (id, nome, lojas_id, no_loja) FROM stdin;
    public          postgres    false    216   ~#                 0    110712    lista_produto 
   TABLE DATA           M   COPY public.lista_produto (id, nome, descricao, preco, is_ativo) FROM stdin;
    public          postgres    false    222   $                 0    110685    lojas 
   TABLE DATA           K   COPY public.lojas (id, nome, valor_patrimonio, valor_produtos) FROM stdin;
    public          postgres    false    220   �&       �          0    110676    produtos 
   TABLE DATA           o   COPY public.produtos (id, nome, descricao, quantidade, preco, id_categoria, no_categoria, no_loja) FROM stdin;
    public          postgres    false    218   ('                  0    0    categorias_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categorias_id_seq', 5, true);
          public          postgres    false    215                       0    0    lista_produto_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.lista_produto_id_seq', 26, true);
          public          postgres    false    221                       0    0    lojas_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.lojas_id_seq', 4, true);
          public          postgres    false    219                       0    0    produtos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.produtos_id_seq', 18, true);
          public          postgres    false    217            d           2606    110674    categorias categorias_nome_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_nome_key UNIQUE (nome);
 H   ALTER TABLE ONLY public.categorias DROP CONSTRAINT categorias_nome_key;
       public            postgres    false    216            f           2606    110672    categorias categorias_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categorias DROP CONSTRAINT categorias_pkey;
       public            postgres    false    216            l           2606    110719     lista_produto lista_produto_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.lista_produto
    ADD CONSTRAINT lista_produto_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.lista_produto DROP CONSTRAINT lista_produto_pkey;
       public            postgres    false    222            j           2606    110692    lojas lojas_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.lojas
    ADD CONSTRAINT lojas_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.lojas DROP CONSTRAINT lojas_pkey;
       public            postgres    false    220            h           2606    110683    produtos produtos_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.produtos DROP CONSTRAINT produtos_pkey;
       public            postgres    false    218            �      x�3�t�I-):�%/39��Ӑ�9�8Q!%_!5"���e��Z\R���W�Z�i�\���Z������Pd'ups�'���@tf^�����+�	�iI�\cΰĢ�ԔĔ�b.SN���T���qqq �u0�         {  x��T�n�0>�>�<��8&ir���YU=�2�8�l���ͪ�*���7��:6l~�Ҫ'<��f>��q���P��';�E�=i«s��,ؤ`W1��V`)��vhh�9�Pś J��3��Q�R�l{�[A����T�0V�
�<c�>�1j��pz�YAڋFA�hW"�s*����0�~:Բ#��a�K�Ru^�FY*�84O�eg5�ш+� �0b��[�ܫ��HR����;��v�Q�"f�R�>�a�Ώ�x�����U,��/2GтƤ�(}ΰG�{�Z�\^�g�ED�S7�I4�C-�����<m�N��`�U7�n��
RC� �<Ƚ��ʓ��)��T:'g��Zi�x��0'�a:��@�?Xk���a�.�(��٢.v<@���dɕ�N�
��h��<(}7�Zq����˫���>T�-v"�L�����=�`�t(��-�"�r't▁��{1j��O�̏YH���N�_S	�j=*�v�W�g�����}�$�����K�=/h�73�pm]]�=����o��k1�Qt��-琭�^;?��f�9�_��܅�nd�;�tBkgTCfa�p�Sw�������;���=Yޮ�~~�<�&X�V �!�Q         �   x�3�.MTp-N��I�Q(���9�@@�9������9��2SSSR�9M�f�z��\F��y�
���Y�������%�!�3�T��|�ԜԒ��[�2��9-���Ľ�͹b���� �$�      �   	  x����n�0���S��I�X��i�)� ���"�IH��t(:tj�@/֣;��C�E��x��OJ��A����@��k�[�~��TV�I	|�N��5}��?m"����h���首��w� ���_�2,��m=�N�Z���:MG���X[6MŨ�Y".H�z��pG��j������vOB�e����aE����s<3��)���[��'fB�0?4�'H$J��J�ƏSM��p3n|e[Z�g�"O�����K:�3��-��Y_��GLt�[�ϔ���-��c���u�G7?���H���r�\�B���WC�3P4���[�TAcg� ��BĪ	����i��@T����P&�eg�9<���'"f��%u< W88��}+K�(�ЀgгJO��n�ߍ���4f���b)��/X����ǎ-��X�#���g�)��d����ɭ��{�9:SS ?�W�W�p5?�C��8ښQc��MXF��bu�>Has����\�L�!�S;�[E�7Lܠ     