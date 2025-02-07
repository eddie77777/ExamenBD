PGDMP     ,    ,                {            Altecs    14.5    14.5 h    o           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            p           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            q           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            r           1262    17789    Altecs    DATABASE     l   CREATE DATABASE "Altecs" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "Altecs";
                postgres    false            �            1259    17790    adresa    TABLE     �   CREATE TABLE public.adresa (
    id_adresa integer NOT NULL,
    judet character varying(100),
    localitate character varying(100),
    strada character varying(100),
    numar integer,
    bloc integer,
    scara "char",
    apartament integer
);
    DROP TABLE public.adresa;
       public         heap    postgres    false            �            1259    17793    adresa_id_adresa_seq    SEQUENCE     �   CREATE SEQUENCE public.adresa_id_adresa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.adresa_id_adresa_seq;
       public          postgres    false    209            s           0    0    adresa_id_adresa_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.adresa_id_adresa_seq OWNED BY public.adresa.id_adresa;
          public          postgres    false    210            �            1259    17794    comanda    TABLE       CREATE TABLE public.comanda (
    id_comanda integer NOT NULL,
    id_persoana integer,
    id_adresa integer,
    data_plasare date,
    data_livrare date,
    cost_livrare real,
    pret_total real,
    metoda_plata character varying(100),
    este_livrata boolean
);
    DROP TABLE public.comanda;
       public         heap    postgres    false            �            1259    17797    comanda_id_comanda_seq    SEQUENCE     �   CREATE SEQUENCE public.comanda_id_comanda_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.comanda_id_comanda_seq;
       public          postgres    false    211            t           0    0    comanda_id_comanda_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.comanda_id_comanda_seq OWNED BY public.comanda.id_comanda;
          public          postgres    false    212            �            1259    17798    comanda_produs    TABLE     ~   CREATE TABLE public.comanda_produs (
    id_comanda_produs integer NOT NULL,
    id_comanda integer,
    id_produs integer
);
 "   DROP TABLE public.comanda_produs;
       public         heap    postgres    false            �            1259    17801 $   comanda_produs_id_comanda_produs_seq    SEQUENCE     �   CREATE SEQUENCE public.comanda_produs_id_comanda_produs_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.comanda_produs_id_comanda_produs_seq;
       public          postgres    false    213            u           0    0 $   comanda_produs_id_comanda_produs_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.comanda_produs_id_comanda_produs_seq OWNED BY public.comanda_produs.id_comanda_produs;
          public          postgres    false    214            �            1259    17802    electrocasnic_mic    TABLE     �   CREATE TABLE public.electrocasnic_mic (
    id_electrocasnic_mic integer NOT NULL,
    id_produs integer,
    proprietati character varying
);
 %   DROP TABLE public.electrocasnic_mic;
       public         heap    postgres    false            �            1259    17805 *   electrocasnic_mic_id_electrocasnic_mic_seq    SEQUENCE     �   CREATE SEQUENCE public.electrocasnic_mic_id_electrocasnic_mic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.electrocasnic_mic_id_electrocasnic_mic_seq;
       public          postgres    false    215            v           0    0 *   electrocasnic_mic_id_electrocasnic_mic_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.electrocasnic_mic_id_electrocasnic_mic_seq OWNED BY public.electrocasnic_mic.id_electrocasnic_mic;
          public          postgres    false    216            �            1259    17806 
   frigorific    TABLE     �   CREATE TABLE public.frigorific (
    id_frigorific integer NOT NULL,
    id_produs integer,
    proprietati character varying
);
    DROP TABLE public.frigorific;
       public         heap    postgres    false            �            1259    17809    frigorific_id_frigorific_seq    SEQUENCE     �   CREATE SEQUENCE public.frigorific_id_frigorific_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.frigorific_id_frigorific_seq;
       public          postgres    false    217            w           0    0    frigorific_id_frigorific_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.frigorific_id_frigorific_seq OWNED BY public.frigorific.id_frigorific;
          public          postgres    false    218            �            1259    17810    furnizor    TABLE     d   CREATE TABLE public.furnizor (
    id_furnizor integer NOT NULL,
    nume character varying(100)
);
    DROP TABLE public.furnizor;
       public         heap    postgres    false            �            1259    17813    furnizor_id_furnizor_seq    SEQUENCE     �   CREATE SEQUENCE public.furnizor_id_furnizor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.furnizor_id_furnizor_seq;
       public          postgres    false    219            x           0    0    furnizor_id_furnizor_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.furnizor_id_furnizor_seq OWNED BY public.furnizor.id_furnizor;
          public          postgres    false    220            �            1259    17814    masina_de_gatit    TABLE     �   CREATE TABLE public.masina_de_gatit (
    id_masina_de_gatit integer NOT NULL,
    id_produs integer,
    proprietati character varying
);
 #   DROP TABLE public.masina_de_gatit;
       public         heap    postgres    false            �            1259    17817 &   masina_de_gatit_id_masina_de_gatit_seq    SEQUENCE     �   CREATE SEQUENCE public.masina_de_gatit_id_masina_de_gatit_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.masina_de_gatit_id_masina_de_gatit_seq;
       public          postgres    false    221            y           0    0 &   masina_de_gatit_id_masina_de_gatit_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.masina_de_gatit_id_masina_de_gatit_seq OWNED BY public.masina_de_gatit.id_masina_de_gatit;
          public          postgres    false    222            �            1259    17818    masina_de_spalat    TABLE     �   CREATE TABLE public.masina_de_spalat (
    id_masina_de_spalat integer NOT NULL,
    id_produs integer,
    proprietati character varying
);
 $   DROP TABLE public.masina_de_spalat;
       public         heap    postgres    false            �            1259    17821 (   masina_de_spalat_id_masina_de_spalat_seq    SEQUENCE     �   CREATE SEQUENCE public.masina_de_spalat_id_masina_de_spalat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.masina_de_spalat_id_masina_de_spalat_seq;
       public          postgres    false    223            z           0    0 (   masina_de_spalat_id_masina_de_spalat_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.masina_de_spalat_id_masina_de_spalat_seq OWNED BY public.masina_de_spalat.id_masina_de_spalat;
          public          postgres    false    224            �            1259    17822    persoana    TABLE     �   CREATE TABLE public.persoana (
    id_persoana integer NOT NULL,
    nume character varying(100),
    prenume character varying(100),
    id_adresa integer,
    email character varying(100),
    nr_tel character varying(100)
);
    DROP TABLE public.persoana;
       public         heap    postgres    false            �            1259    17825    persoana_id_persoana_seq    SEQUENCE     �   CREATE SEQUENCE public.persoana_id_persoana_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.persoana_id_persoana_seq;
       public          postgres    false    225            {           0    0    persoana_id_persoana_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.persoana_id_persoana_seq OWNED BY public.persoana.id_persoana;
          public          postgres    false    226            �            1259    17826    produs    TABLE     �   CREATE TABLE public.produs (
    id_produs integer NOT NULL,
    nume_produs character varying(100),
    pret real,
    stoc integer,
    specificatii character varying(100)
);
    DROP TABLE public.produs;
       public         heap    postgres    false            �            1259    17829    produs_id_produs_seq    SEQUENCE     �   CREATE SEQUENCE public.produs_id_produs_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.produs_id_produs_seq;
       public          postgres    false    227            |           0    0    produs_id_produs_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.produs_id_produs_seq OWNED BY public.produs.id_produs;
          public          postgres    false    228            �            1259    17830    retur    TABLE     �   CREATE TABLE public.retur (
    id_retur integer NOT NULL,
    id_persoana integer,
    id_comanda_produs integer,
    motiv character varying(100),
    data date
);
    DROP TABLE public.retur;
       public         heap    postgres    false            �            1259    17833    retur_id_retur_seq    SEQUENCE     �   CREATE SEQUENCE public.retur_id_retur_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.retur_id_retur_seq;
       public          postgres    false    229            }           0    0    retur_id_retur_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.retur_id_retur_seq OWNED BY public.retur.id_retur;
          public          postgres    false    230            �            1259    17834    tara    TABLE     \   CREATE TABLE public.tara (
    id_tara integer NOT NULL,
    nume character varying(100)
);
    DROP TABLE public.tara;
       public         heap    postgres    false            �            1259    17837    tara_id_tara_seq    SEQUENCE     �   CREATE SEQUENCE public.tara_id_tara_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tara_id_tara_seq;
       public          postgres    false    231            ~           0    0    tara_id_tara_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.tara_id_tara_seq OWNED BY public.tara.id_tara;
          public          postgres    false    232            �            1259    17838    tara_produs_furnizor    TABLE     r   CREATE TABLE public.tara_produs_furnizor (
    id_produs integer,
    id_tara integer,
    id_furnizor integer
);
 (   DROP TABLE public.tara_produs_furnizor;
       public         heap    postgres    false            �           2604    17841    adresa id_adresa    DEFAULT     t   ALTER TABLE ONLY public.adresa ALTER COLUMN id_adresa SET DEFAULT nextval('public.adresa_id_adresa_seq'::regclass);
 ?   ALTER TABLE public.adresa ALTER COLUMN id_adresa DROP DEFAULT;
       public          postgres    false    210    209            �           2604    17842    comanda id_comanda    DEFAULT     x   ALTER TABLE ONLY public.comanda ALTER COLUMN id_comanda SET DEFAULT nextval('public.comanda_id_comanda_seq'::regclass);
 A   ALTER TABLE public.comanda ALTER COLUMN id_comanda DROP DEFAULT;
       public          postgres    false    212    211            �           2604    17843     comanda_produs id_comanda_produs    DEFAULT     �   ALTER TABLE ONLY public.comanda_produs ALTER COLUMN id_comanda_produs SET DEFAULT nextval('public.comanda_produs_id_comanda_produs_seq'::regclass);
 O   ALTER TABLE public.comanda_produs ALTER COLUMN id_comanda_produs DROP DEFAULT;
       public          postgres    false    214    213            �           2604    17844 &   electrocasnic_mic id_electrocasnic_mic    DEFAULT     �   ALTER TABLE ONLY public.electrocasnic_mic ALTER COLUMN id_electrocasnic_mic SET DEFAULT nextval('public.electrocasnic_mic_id_electrocasnic_mic_seq'::regclass);
 U   ALTER TABLE public.electrocasnic_mic ALTER COLUMN id_electrocasnic_mic DROP DEFAULT;
       public          postgres    false    216    215            �           2604    17845    frigorific id_frigorific    DEFAULT     �   ALTER TABLE ONLY public.frigorific ALTER COLUMN id_frigorific SET DEFAULT nextval('public.frigorific_id_frigorific_seq'::regclass);
 G   ALTER TABLE public.frigorific ALTER COLUMN id_frigorific DROP DEFAULT;
       public          postgres    false    218    217            �           2604    17846    furnizor id_furnizor    DEFAULT     |   ALTER TABLE ONLY public.furnizor ALTER COLUMN id_furnizor SET DEFAULT nextval('public.furnizor_id_furnizor_seq'::regclass);
 C   ALTER TABLE public.furnizor ALTER COLUMN id_furnizor DROP DEFAULT;
       public          postgres    false    220    219            �           2604    17847 "   masina_de_gatit id_masina_de_gatit    DEFAULT     �   ALTER TABLE ONLY public.masina_de_gatit ALTER COLUMN id_masina_de_gatit SET DEFAULT nextval('public.masina_de_gatit_id_masina_de_gatit_seq'::regclass);
 Q   ALTER TABLE public.masina_de_gatit ALTER COLUMN id_masina_de_gatit DROP DEFAULT;
       public          postgres    false    222    221            �           2604    17848 $   masina_de_spalat id_masina_de_spalat    DEFAULT     �   ALTER TABLE ONLY public.masina_de_spalat ALTER COLUMN id_masina_de_spalat SET DEFAULT nextval('public.masina_de_spalat_id_masina_de_spalat_seq'::regclass);
 S   ALTER TABLE public.masina_de_spalat ALTER COLUMN id_masina_de_spalat DROP DEFAULT;
       public          postgres    false    224    223            �           2604    17849    persoana id_persoana    DEFAULT     |   ALTER TABLE ONLY public.persoana ALTER COLUMN id_persoana SET DEFAULT nextval('public.persoana_id_persoana_seq'::regclass);
 C   ALTER TABLE public.persoana ALTER COLUMN id_persoana DROP DEFAULT;
       public          postgres    false    226    225            �           2604    17850    produs id_produs    DEFAULT     t   ALTER TABLE ONLY public.produs ALTER COLUMN id_produs SET DEFAULT nextval('public.produs_id_produs_seq'::regclass);
 ?   ALTER TABLE public.produs ALTER COLUMN id_produs DROP DEFAULT;
       public          postgres    false    228    227            �           2604    17851    retur id_retur    DEFAULT     p   ALTER TABLE ONLY public.retur ALTER COLUMN id_retur SET DEFAULT nextval('public.retur_id_retur_seq'::regclass);
 =   ALTER TABLE public.retur ALTER COLUMN id_retur DROP DEFAULT;
       public          postgres    false    230    229            �           2604    17852    tara id_tara    DEFAULT     l   ALTER TABLE ONLY public.tara ALTER COLUMN id_tara SET DEFAULT nextval('public.tara_id_tara_seq'::regclass);
 ;   ALTER TABLE public.tara ALTER COLUMN id_tara DROP DEFAULT;
       public          postgres    false    232    231            T          0    17790    adresa 
   TABLE DATA           f   COPY public.adresa (id_adresa, judet, localitate, strada, numar, bloc, scara, apartament) FROM stdin;
    public          postgres    false    209   �}       V          0    17794    comanda 
   TABLE DATA           �   COPY public.comanda (id_comanda, id_persoana, id_adresa, data_plasare, data_livrare, cost_livrare, pret_total, metoda_plata, este_livrata) FROM stdin;
    public          postgres    false    211   �}       X          0    17798    comanda_produs 
   TABLE DATA           R   COPY public.comanda_produs (id_comanda_produs, id_comanda, id_produs) FROM stdin;
    public          postgres    false    213   �}       Z          0    17802    electrocasnic_mic 
   TABLE DATA           Y   COPY public.electrocasnic_mic (id_electrocasnic_mic, id_produs, proprietati) FROM stdin;
    public          postgres    false    215   ~       \          0    17806 
   frigorific 
   TABLE DATA           K   COPY public.frigorific (id_frigorific, id_produs, proprietati) FROM stdin;
    public          postgres    false    217   #~       ^          0    17810    furnizor 
   TABLE DATA           5   COPY public.furnizor (id_furnizor, nume) FROM stdin;
    public          postgres    false    219   @~       `          0    17814    masina_de_gatit 
   TABLE DATA           U   COPY public.masina_de_gatit (id_masina_de_gatit, id_produs, proprietati) FROM stdin;
    public          postgres    false    221   ]~       b          0    17818    masina_de_spalat 
   TABLE DATA           W   COPY public.masina_de_spalat (id_masina_de_spalat, id_produs, proprietati) FROM stdin;
    public          postgres    false    223   z~       d          0    17822    persoana 
   TABLE DATA           X   COPY public.persoana (id_persoana, nume, prenume, id_adresa, email, nr_tel) FROM stdin;
    public          postgres    false    225   �~       f          0    17826    produs 
   TABLE DATA           R   COPY public.produs (id_produs, nume_produs, pret, stoc, specificatii) FROM stdin;
    public          postgres    false    227   �~       h          0    17830    retur 
   TABLE DATA           V   COPY public.retur (id_retur, id_persoana, id_comanda_produs, motiv, data) FROM stdin;
    public          postgres    false    229   �~       j          0    17834    tara 
   TABLE DATA           -   COPY public.tara (id_tara, nume) FROM stdin;
    public          postgres    false    231   �~       l          0    17838    tara_produs_furnizor 
   TABLE DATA           O   COPY public.tara_produs_furnizor (id_produs, id_tara, id_furnizor) FROM stdin;
    public          postgres    false    233                     0    0    adresa_id_adresa_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.adresa_id_adresa_seq', 1, true);
          public          postgres    false    210            �           0    0    comanda_id_comanda_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.comanda_id_comanda_seq', 1, false);
          public          postgres    false    212            �           0    0 $   comanda_produs_id_comanda_produs_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.comanda_produs_id_comanda_produs_seq', 1, false);
          public          postgres    false    214            �           0    0 *   electrocasnic_mic_id_electrocasnic_mic_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.electrocasnic_mic_id_electrocasnic_mic_seq', 1, true);
          public          postgres    false    216            �           0    0    frigorific_id_frigorific_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.frigorific_id_frigorific_seq', 1, true);
          public          postgres    false    218            �           0    0    furnizor_id_furnizor_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.furnizor_id_furnizor_seq', 1, false);
          public          postgres    false    220            �           0    0 &   masina_de_gatit_id_masina_de_gatit_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.masina_de_gatit_id_masina_de_gatit_seq', 1, true);
          public          postgres    false    222            �           0    0 (   masina_de_spalat_id_masina_de_spalat_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.masina_de_spalat_id_masina_de_spalat_seq', 2, true);
          public          postgres    false    224            �           0    0    persoana_id_persoana_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.persoana_id_persoana_seq', 1, false);
          public          postgres    false    226            �           0    0    produs_id_produs_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.produs_id_produs_seq', 2, true);
          public          postgres    false    228            �           0    0    retur_id_retur_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.retur_id_retur_seq', 1, false);
          public          postgres    false    230            �           0    0    tara_id_tara_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tara_id_tara_seq', 1, false);
          public          postgres    false    232            �           2606    17854    adresa adresa_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.adresa
    ADD CONSTRAINT adresa_pkey PRIMARY KEY (id_adresa);
 <   ALTER TABLE ONLY public.adresa DROP CONSTRAINT adresa_pkey;
       public            postgres    false    209            �           2606    17856    comanda comanda_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.comanda
    ADD CONSTRAINT comanda_pkey PRIMARY KEY (id_comanda);
 >   ALTER TABLE ONLY public.comanda DROP CONSTRAINT comanda_pkey;
       public            postgres    false    211            �           2606    17858 "   comanda_produs comanda_produs_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.comanda_produs
    ADD CONSTRAINT comanda_produs_pkey PRIMARY KEY (id_comanda_produs);
 L   ALTER TABLE ONLY public.comanda_produs DROP CONSTRAINT comanda_produs_pkey;
       public            postgres    false    213            �           2606    17860 (   electrocasnic_mic electrocasnic_mic_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.electrocasnic_mic
    ADD CONSTRAINT electrocasnic_mic_pkey PRIMARY KEY (id_electrocasnic_mic);
 R   ALTER TABLE ONLY public.electrocasnic_mic DROP CONSTRAINT electrocasnic_mic_pkey;
       public            postgres    false    215            �           2606    17862    frigorific frigorific_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.frigorific
    ADD CONSTRAINT frigorific_pkey PRIMARY KEY (id_frigorific);
 D   ALTER TABLE ONLY public.frigorific DROP CONSTRAINT frigorific_pkey;
       public            postgres    false    217            �           2606    17864    furnizor furnizor_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.furnizor
    ADD CONSTRAINT furnizor_pkey PRIMARY KEY (id_furnizor);
 @   ALTER TABLE ONLY public.furnizor DROP CONSTRAINT furnizor_pkey;
       public            postgres    false    219            �           2606    17866 $   masina_de_gatit masina_de_gatit_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.masina_de_gatit
    ADD CONSTRAINT masina_de_gatit_pkey PRIMARY KEY (id_masina_de_gatit);
 N   ALTER TABLE ONLY public.masina_de_gatit DROP CONSTRAINT masina_de_gatit_pkey;
       public            postgres    false    221            �           2606    17868 &   masina_de_spalat masina_de_spalat_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.masina_de_spalat
    ADD CONSTRAINT masina_de_spalat_pkey PRIMARY KEY (id_masina_de_spalat);
 P   ALTER TABLE ONLY public.masina_de_spalat DROP CONSTRAINT masina_de_spalat_pkey;
       public            postgres    false    223            �           2606    17870    persoana persoana_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.persoana
    ADD CONSTRAINT persoana_pkey PRIMARY KEY (id_persoana);
 @   ALTER TABLE ONLY public.persoana DROP CONSTRAINT persoana_pkey;
       public            postgres    false    225            �           2606    17872    produs produs_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.produs
    ADD CONSTRAINT produs_pkey PRIMARY KEY (id_produs);
 <   ALTER TABLE ONLY public.produs DROP CONSTRAINT produs_pkey;
       public            postgres    false    227            �           2606    17874    retur retur_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.retur
    ADD CONSTRAINT retur_pkey PRIMARY KEY (id_retur);
 :   ALTER TABLE ONLY public.retur DROP CONSTRAINT retur_pkey;
       public            postgres    false    229            �           2606    17876    tara tara_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.tara
    ADD CONSTRAINT tara_pkey PRIMARY KEY (id_tara);
 8   ALTER TABLE ONLY public.tara DROP CONSTRAINT tara_pkey;
       public            postgres    false    231            �           2606    17877    persoana fk_adresa    FK CONSTRAINT     �   ALTER TABLE ONLY public.persoana
    ADD CONSTRAINT fk_adresa FOREIGN KEY (id_adresa) REFERENCES public.adresa(id_adresa) ON UPDATE CASCADE ON DELETE CASCADE;
 <   ALTER TABLE ONLY public.persoana DROP CONSTRAINT fk_adresa;
       public          postgres    false    225    3236    209            �           2606    17882    comanda fk_adresa    FK CONSTRAINT     �   ALTER TABLE ONLY public.comanda
    ADD CONSTRAINT fk_adresa FOREIGN KEY (id_adresa) REFERENCES public.adresa(id_adresa) ON UPDATE CASCADE ON DELETE CASCADE;
 ;   ALTER TABLE ONLY public.comanda DROP CONSTRAINT fk_adresa;
       public          postgres    false    209    211    3236            �           2606    17887    comanda_produs fk_comanda    FK CONSTRAINT     �   ALTER TABLE ONLY public.comanda_produs
    ADD CONSTRAINT fk_comanda FOREIGN KEY (id_comanda) REFERENCES public.comanda(id_comanda) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.comanda_produs DROP CONSTRAINT fk_comanda;
       public          postgres    false    213    3238    211            �           2606    17892    retur fk_comanda_produs    FK CONSTRAINT     �   ALTER TABLE ONLY public.retur
    ADD CONSTRAINT fk_comanda_produs FOREIGN KEY (id_comanda_produs) REFERENCES public.comanda_produs(id_comanda_produs) ON UPDATE CASCADE ON DELETE CASCADE;
 A   ALTER TABLE ONLY public.retur DROP CONSTRAINT fk_comanda_produs;
       public          postgres    false    213    3240    229            �           2606    17897     tara_produs_furnizor fk_furnizor    FK CONSTRAINT     �   ALTER TABLE ONLY public.tara_produs_furnizor
    ADD CONSTRAINT fk_furnizor FOREIGN KEY (id_furnizor) REFERENCES public.furnizor(id_furnizor) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.tara_produs_furnizor DROP CONSTRAINT fk_furnizor;
       public          postgres    false    219    233    3246            �           2606    17902    comanda fk_persoana    FK CONSTRAINT     �   ALTER TABLE ONLY public.comanda
    ADD CONSTRAINT fk_persoana FOREIGN KEY (id_persoana) REFERENCES public.persoana(id_persoana) ON UPDATE CASCADE ON DELETE CASCADE;
 =   ALTER TABLE ONLY public.comanda DROP CONSTRAINT fk_persoana;
       public          postgres    false    3252    211    225            �           2606    17907    retur fk_persoana    FK CONSTRAINT     �   ALTER TABLE ONLY public.retur
    ADD CONSTRAINT fk_persoana FOREIGN KEY (id_persoana) REFERENCES public.persoana(id_persoana) ON UPDATE CASCADE ON DELETE CASCADE;
 ;   ALTER TABLE ONLY public.retur DROP CONSTRAINT fk_persoana;
       public          postgres    false    225    3252    229            �           2606    17912    comanda_produs fk_produs    FK CONSTRAINT     �   ALTER TABLE ONLY public.comanda_produs
    ADD CONSTRAINT fk_produs FOREIGN KEY (id_produs) REFERENCES public.produs(id_produs) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.comanda_produs DROP CONSTRAINT fk_produs;
       public          postgres    false    213    3254    227            �           2606    17917    tara_produs_furnizor fk_produs    FK CONSTRAINT     �   ALTER TABLE ONLY public.tara_produs_furnizor
    ADD CONSTRAINT fk_produs FOREIGN KEY (id_produs) REFERENCES public.produs(id_produs) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.tara_produs_furnizor DROP CONSTRAINT fk_produs;
       public          postgres    false    227    233    3254            �           2606    17922    frigorific fk_produs    FK CONSTRAINT     �   ALTER TABLE ONLY public.frigorific
    ADD CONSTRAINT fk_produs FOREIGN KEY (id_produs) REFERENCES public.produs(id_produs) ON UPDATE CASCADE ON DELETE CASCADE;
 >   ALTER TABLE ONLY public.frigorific DROP CONSTRAINT fk_produs;
       public          postgres    false    217    3254    227            �           2606    17927    masina_de_gatit fk_produs    FK CONSTRAINT     �   ALTER TABLE ONLY public.masina_de_gatit
    ADD CONSTRAINT fk_produs FOREIGN KEY (id_produs) REFERENCES public.produs(id_produs) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.masina_de_gatit DROP CONSTRAINT fk_produs;
       public          postgres    false    227    3254    221            �           2606    17932    masina_de_spalat fk_produs    FK CONSTRAINT     �   ALTER TABLE ONLY public.masina_de_spalat
    ADD CONSTRAINT fk_produs FOREIGN KEY (id_produs) REFERENCES public.produs(id_produs) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.masina_de_spalat DROP CONSTRAINT fk_produs;
       public          postgres    false    223    227    3254            �           2606    17937    electrocasnic_mic fk_produs    FK CONSTRAINT     �   ALTER TABLE ONLY public.electrocasnic_mic
    ADD CONSTRAINT fk_produs FOREIGN KEY (id_produs) REFERENCES public.produs(id_produs) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.electrocasnic_mic DROP CONSTRAINT fk_produs;
       public          postgres    false    227    215    3254            �           2606    17942    tara_produs_furnizor fk_tara    FK CONSTRAINT     �   ALTER TABLE ONLY public.tara_produs_furnizor
    ADD CONSTRAINT fk_tara FOREIGN KEY (id_tara) REFERENCES public.tara(id_tara) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.tara_produs_furnizor DROP CONSTRAINT fk_tara;
       public          postgres    false    231    233    3258            T      x������ � �      V      x������ � �      X      x������ � �      Z      x������ � �      \      x������ � �      ^      x������ � �      `      x������ � �      b      x������ � �      d      x������ � �      f      x������ � �      h      x������ � �      j      x������ � �      l      x������ � �     