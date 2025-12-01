-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 01-12-2025 a las 06:57:30
-- Versión del servidor: 10.11.15-MariaDB-ubu2204
-- Versión de PHP: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventarioVeterinaraJyM`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Categoría', 7, 'add_categoria'),
(26, 'Can change Categoría', 7, 'change_categoria'),
(27, 'Can delete Categoría', 7, 'delete_categoria'),
(28, 'Can view Categoría', 7, 'view_categoria'),
(29, 'Can add Producto', 8, 'add_producto'),
(30, 'Can change Producto', 8, 'change_producto'),
(31, 'Can delete Producto', 8, 'delete_producto'),
(32, 'Can view Producto', 8, 'view_producto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$1000000$CLLSliCU3EzWdtPmSco20h$qxRF4v/RYRmUHB4yGK8g46AVdML7yUFw8na9c1vJV08=', '2025-12-01 06:25:34.961512', 1, 'joset', '', '', 'josetroncoso@gmail.com', 1, 1, '2025-12-01 03:50:20.698970'),
(2, 'pbkdf2_sha256$1000000$qLz8O7oc5x9hYktvrBlWsA$xvXtpla9P8FrFCyfmx0xW1RjwTI8BW8odzR8lUOzm0I=', '2025-12-01 06:21:20.779074', 0, 'manuel23', 'Manuel', 'Letelier', 'manuelletelier@gmail.com', 0, 1, '2025-12-01 04:15:12.834953'),
(3, 'pbkdf2_sha256$1000000$ecLpEvKyrwyoheaoBlHVRj$CNWFseN+TqaLz8kWW4D86+HoxtZurkMtGk1xbALrv60=', NULL, 0, 'Enriqueib', 'Enrique', 'Ibanez', 'enriqueibanez@gmail.com', 1, 1, '2025-12-01 05:30:54.410855'),
(4, 'pbkdf2_sha256$1000000$WIJb1QDxKt1A7JKoY9sZOh$CJThvYC10rcx1XsaE2gbbrJVOQbSftS075FoAUubGlI=', '2025-12-01 05:42:09.797467', 0, 'Alfonso23', 'Alfonso', 'Mendez', 'alfonsomendez@gmail.com', 0, 1, '2025-12-01 05:34:17.991626');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'gestorProducts', 'categoria'),
(8, 'gestorProducts', 'producto'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-12-01 03:08:02.426317'),
(2, 'auth', '0001_initial', '2025-12-01 03:08:02.491775'),
(3, 'admin', '0001_initial', '2025-12-01 03:08:02.509986'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-12-01 03:08:02.513072'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-12-01 03:08:02.516090'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-12-01 03:08:02.529660'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-12-01 03:08:02.537272'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-12-01 03:08:02.542859'),
(9, 'auth', '0004_alter_user_username_opts', '2025-12-01 03:08:02.545466'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-12-01 03:08:02.551968'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-12-01 03:08:02.552725'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-12-01 03:08:02.555222'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-12-01 03:08:02.560461'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-12-01 03:08:02.565053'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-12-01 03:08:02.570879'),
(16, 'auth', '0011_update_proxy_permissions', '2025-12-01 03:08:02.574032'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-12-01 03:08:02.578713'),
(18, 'sessions', '0001_initial', '2025-12-01 03:08:02.584288'),
(19, 'gestorProducts', '0001_initial', '2025-12-01 03:10:17.727181');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5nn51cza5n34pchvzo0heep53gbtk7qd', '.eJxVjMEOwiAQRP-FsyHdCt3i0bvfQHYXkKqBpLQn47_bJj3oYS7z3sxbeVqX7NcWZz8FdVGgTr8dkzxj2UF4ULlXLbUs88R6V_RBm77VEF_Xw_07yNTytu6IBRJHBxY7QQZOOJyZLLKQs6OxINbCSMBgEpp-AIfMZos46Ul9vvI3OB8:1vPw5Y:_9Od5VtNFoTF9hBpvUz-zk2psJ32RoRBaLt8O6JHDHQ', '2025-12-15 05:04:40.312226'),
('puukd6eug4c4f7ewgjhd157ad4jkh0nw', 'e30:1vPuzT:pimfAS61lL88Z9baaTv0uk7Gc3Q14_Hpe6V4cSNmr-o', '2025-12-15 03:54:19.725355'),
('zzuq79anxlal2j3rti5y4pshcumzn7gp', '.eJxVjMEOwiAQRP-FsyHdCt3i0bvfQHYXkKqBpLQn47_bJj3oYS7z3sxbeVqX7NcWZz8FdVGgTr8dkzxj2UF4ULlXLbUs88R6V_RBm77VEF_Xw_07yNTytu6IBRJHBxY7QQZOOJyZLLKQs6OxINbCSMBgEpp-AIfMZos46Ul9vvI3OB8:1vPxLq:Ab0-ETt7NcyCxCqJPnXwRHF2SOpps-psNIPrpMGeRn8', '2025-12-15 06:25:34.962811');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestorProducts_categoria`
--

CREATE TABLE `gestorProducts_categoria` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `gestorProducts_categoria`
--

INSERT INTO `gestorProducts_categoria` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Alimentos Perro', 'Alimentos para caninos'),
(2, 'Medicamentos', 'Medicamentos generales.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestorProducts_producto`
--

CREATE TABLE `gestorProducts_producto` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `categoria_id` bigint(20) NOT NULL,
  `usuario_creador_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `gestorProducts_producto`
--

INSERT INTO `gestorProducts_producto` (`id`, `nombre`, `descripcion`, `precio`, `categoria_id`, `usuario_creador_id`) VALUES
(1, 'Sabrokan', 'ALIMENTO PERRO DE PANA', 3000.00, 1, 1),
(2, 'Champion Dog', 'Alimento mas de pana', 10000.00, 1, 2),
(4, 'Naxpet', 'Indicado para el tratamiento de cuadros febriles, inflamaciones y condiciones dolorosas de los huesos, articulaciones y sistema músculo esquelético en perros y gatos. Su uso está especialmente recomendado para el tratamiento del dolor post quirúrgico, y en cuadros de osteoartritis, inflamación del sistema músculo esquelético y lesiones traumáticas en general.', 9990.00, 2, 4),
(5, 'Doximicin', 'Antimicrobiano de amplio espectro.\r\n\r\nDoximicin® está indicado para el tratamiento de infecciones del tracto respiratorio (alto y bajo) causadas por agentes etiológicos sensibles, como cuadros infecciosos primarios o asociados a virosis respiratorias, infecciones bacterianas de la piel, infecciones oculares y peri oculares producidas por Clamidias u otras cepas sensibles, Ehrlichiosis canina y Micoplasmosis (Hemobartonellosis) canina y felina.', 10990.00, 2, 4),
(6, 'Oxtrin', 'Allercalm es un Shampoo en base a avena Colidal para pieles sensibles, irritadas o con prurito. Sus propiedades hipoalergénicas, calmantes e hidratantes, así como su suavidad, también lo hacen altamente recomendable para el uso frecuente en perros y gatos.', 20990.00, 2, 4),
(7, 'Nexgard', 'Tratamiento y prevención de infestación por: pulgas, garrapatas, sarna demodéctica, sarna sarcóptica, sarna otodéctica y miasis.', 25990.00, 2, 4),
(8, 'Simparica Trio', 'Simparica TRIO es una tableta para perros 20 a 40 kilos, muy fácil de administrar, que tu peludo puede comer muy fácilmente, ¡si la prueba le encantará! Además, no es necesario dársela junto con alimento y es seguro para cachorros a partir de las 8 semanas de edad.Desparasitar a tu perro no puede ser más cómodo: Simparica TRIO hace el trabajo de dos o más antiparasitarios.El poder de 3 ingredientes en una sola tableta masticable para la protección integral de tu peludo: Sarolaner: Acción inmediata contra pulgas y garrapatas. Pirantel: Eficacia contra parásitos gastrointestinales (larvas y adultos). Moxidectina: Elimina microfilariasis y previene la enfermedad por gusano del corazón.Simparica TRIO se debe administrar una vez al mes.', 27990.00, 2, 4),
(9, 'Fit Formula adulto', 'Alimento premium para perros', 36590.00, 1, 2),
(10, 'Nomade Adulto', 'Nómade es un alimento para perros adultos de razas pequeñas desarrollado por expertos en nutrición animal. Un alimento que excede los requerimientos nutricionales de perros adultos, aún de las razas más exigentes, proporcionando una dieta sana y equilibrada para una vida plena, feliz y en movimiento. Ingredientes: Harina de ave y/o vacuno; Maíz; Arroz; Subproductos de trigo; Aceite de ave y/o cerdo; Harina de soya; Hidrolizado de hígado de ave/vacuno; Carbonato de calcio; Colorante caramelo natural; Sal; Cultivo de levaduras XPC (Diamond V Mills); Aceite de salmón (como fuente de Omega 3, EPA y DHA); Maqui orgánico deshidratado; Hexametafosfato de sodio (HMF); Extracto Yucca-Quillay; Zinc orgánico; Manano Oligosacáridos (MOS); Antioxidantes autorizados y esencia de carne. Vitaminas: A, B1, B2, B6, D3, Niacina, Cloruro de Colina, Pantotenato de calcio y Ácido fólico. Minerales: Calcio, Fósforo, Hierro, Zinc, Cobre, Manganeso, Sodio y Selenio. Contenido: saco de 10 kilos.', 19320.00, 1, 2),
(11, 'Pedigree adulto', 'PEDIGREE® es la marca número uno en ventas en todo el mundo con productos que los perros adoran y que los dueños confían. Todas las recetas de PEDIGREE se desarrollan en base a las pautas nutricionales del Centro de Investigación WALTHAM, una de las principales autoridades mundiales en el cuidado y la nutrición de las mascotas. ¡Dales también PEDIGREE® SOBRECITOS! A tu perro le encantará Por cada producto PEDIGREE® que compras, contribuyes a que más perros en situación de calle puedan tener un hogar amoroso.', 27990.00, 1, 2),
(12, 'Cachupin', 'Alimento Premium. alto en nutrientes.', 14990.00, 1, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `gestorProducts_categoria`
--
ALTER TABLE `gestorProducts_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gestorProducts_producto`
--
ALTER TABLE `gestorProducts_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gestorProducts_produ_categoria_id_a61698df_fk_gestorPro` (`categoria_id`),
  ADD KEY `gestorProducts_produ_usuario_creador_id_0ade62cd_fk_auth_user` (`usuario_creador_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `gestorProducts_categoria`
--
ALTER TABLE `gestorProducts_categoria`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `gestorProducts_producto`
--
ALTER TABLE `gestorProducts_producto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `gestorProducts_producto`
--
ALTER TABLE `gestorProducts_producto`
  ADD CONSTRAINT `gestorProducts_produ_categoria_id_a61698df_fk_gestorPro` FOREIGN KEY (`categoria_id`) REFERENCES `gestorProducts_categoria` (`id`),
  ADD CONSTRAINT `gestorProducts_produ_usuario_creador_id_0ade62cd_fk_auth_user` FOREIGN KEY (`usuario_creador_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
