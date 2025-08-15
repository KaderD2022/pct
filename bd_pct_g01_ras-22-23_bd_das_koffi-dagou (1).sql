-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 08 oct. 2023 à 20:06
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bd_pct_g01_ras-22-23_bd_das_koffi-dagou`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auth_permission`
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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add competence', 6, 'add_competence'),
(22, 'Can change competence', 6, 'change_competence'),
(23, 'Can delete competence', 6, 'delete_competence'),
(24, 'Can view competence', 6, 'view_competence'),
(25, 'Can add user', 7, 'add_habitant'),
(26, 'Can change user', 7, 'change_habitant'),
(27, 'Can delete user', 7, 'delete_habitant'),
(28, 'Can view user', 7, 'view_habitant'),
(29, 'Can add activite', 8, 'add_activite'),
(30, 'Can change activite', 8, 'change_activite'),
(31, 'Can delete activite', 8, 'delete_activite'),
(32, 'Can view activite', 8, 'view_activite'),
(33, 'Can add actualite', 9, 'add_actualite'),
(34, 'Can change actualite', 9, 'change_actualite'),
(35, 'Can delete actualite', 9, 'delete_actualite'),
(36, 'Can view actualite', 9, 'view_actualite'),
(37, 'Can add centre_interet', 10, 'add_centre_interet'),
(38, 'Can change centre_interet', 10, 'change_centre_interet'),
(39, 'Can delete centre_interet', 10, 'delete_centre_interet'),
(40, 'Can view centre_interet', 10, 'view_centre_interet'),
(41, 'Can add famille', 11, 'add_famille'),
(42, 'Can change famille', 11, 'change_famille'),
(43, 'Can delete famille', 11, 'delete_famille'),
(44, 'Can view famille', 11, 'view_famille'),
(45, 'Can add epidemie', 12, 'add_epidemie'),
(46, 'Can change epidemie', 12, 'change_epidemie'),
(47, 'Can delete epidemie', 12, 'delete_epidemie'),
(48, 'Can view epidemie', 12, 'view_epidemie'),
(49, 'Can add maladie', 13, 'add_maladie'),
(50, 'Can change maladie', 13, 'change_maladie'),
(51, 'Can delete maladie', 13, 'delete_maladie'),
(52, 'Can view maladie', 13, 'view_maladie'),
(53, 'Can add metier', 14, 'add_metier'),
(54, 'Can change metier', 14, 'change_metier'),
(55, 'Can delete metier', 14, 'delete_metier'),
(56, 'Can view metier', 14, 'view_metier'),
(57, 'Can add pharmacie', 15, 'add_pharmacie'),
(58, 'Can change pharmacie', 15, 'change_pharmacie'),
(59, 'Can delete pharmacie', 15, 'delete_pharmacie'),
(60, 'Can view pharmacie', 15, 'view_pharmacie'),
(61, 'Can add projet', 16, 'add_projet'),
(62, 'Can change projet', 16, 'change_projet'),
(63, 'Can delete projet', 16, 'delete_projet'),
(64, 'Can view projet', 16, 'view_projet'),
(65, 'Can add denemager', 17, 'add_denemager'),
(66, 'Can change denemager', 17, 'change_denemager'),
(67, 'Can delete denemager', 17, 'delete_denemager'),
(68, 'Can view denemager', 17, 'view_denemager'),
(69, 'Can add anemager', 18, 'add_anemager'),
(70, 'Can change anemager', 18, 'change_anemager'),
(71, 'Can delete anemager', 18, 'delete_anemager'),
(72, 'Can view anemager', 18, 'view_anemager'),
(73, 'Can add demande_emploie', 19, 'add_demande_emploie'),
(74, 'Can change demande_emploie', 19, 'change_demande_emploie'),
(75, 'Can delete demande_emploie', 19, 'delete_demande_emploie'),
(76, 'Can view demande_emploie', 19, 'view_demande_emploie'),
(77, 'Can add naissance', 20, 'add_naissance'),
(78, 'Can change naissance', 20, 'change_naissance'),
(79, 'Can delete naissance', 20, 'delete_naissance'),
(80, 'Can view naissance', 20, 'view_naissance'),
(81, 'Can add centre_sante', 21, 'add_centre_sante'),
(82, 'Can change centre_sante', 21, 'change_centre_sante'),
(83, 'Can delete centre_sante', 21, 'delete_centre_sante'),
(84, 'Can view centre_sante', 21, 'view_centre_sante'),
(85, 'Can add death', 22, 'add_death'),
(86, 'Can change death', 22, 'change_death'),
(87, 'Can delete death', 22, 'delete_death'),
(88, 'Can view death', 22, 'view_death'),
(89, 'Can add deces', 23, 'add_deces'),
(90, 'Can change deces', 23, 'change_deces'),
(91, 'Can delete deces', 23, 'delete_deces'),
(92, 'Can view deces', 23, 'view_deces'),
(93, 'Can add offre_emploi', 24, 'add_offre_emploi'),
(94, 'Can change offre_emploi', 24, 'change_offre_emploi'),
(95, 'Can delete offre_emploi', 24, 'delete_offre_emploi'),
(96, 'Can view offre_emploi', 24, 'view_offre_emploi');

-- --------------------------------------------------------

--
-- Structure de la table `centre_sante_centre_sante`
--

CREATE TABLE `centre_sante_centre_sante` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `specialite` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `centre_sante_centre_sante`
--

INSERT INTO `centre_sante_centre_sante` (`id`, `nom`, `specialite`, `contact`, `image`) VALUES
(1, 'polyclinique des 2 plateau', 'Ophtamologie, Néphrologie, rhumatologie, neurologie, neurochirurgie.', 'Ophtamologie, Néphrologie, rhumatologie, neurologie, neurochirurgie.', 'static/images/centre_sante/Shutterstock_10361139d.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `competence_competence`
--

CREATE TABLE `competence_competence` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `competence_competence`
--

INSERT INTO `competence_competence` (`id`, `nom`) VALUES
(1, 'BACKEND');

-- --------------------------------------------------------

--
-- Structure de la table `compte_habitant`
--

CREATE TABLE `compte_habitant` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `famille_id` bigint(20) DEFAULT NULL,
  `metier_id` bigint(20) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `compte_habitant`
--

INSERT INTO `compte_habitant` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `numero`, `date_of_birth`, `place_of_birth`, `image`, `famille_id`, `metier_id`, `genre`) VALUES
(1, 'pbkdf2_sha256$600000$iyYLUC4PLk9YIHh3uFlals$6aBgDHyxWUgsozbNBsirv3bmUGhpeK14KAkIzzsjPOw=', '2023-10-08 16:15:45.800716', 1, 'adminpct', '', '', 'adminpct@gmail.com', 1, 1, '2023-08-06 21:49:00.000000', NULL, '2023-09-23', NULL, 'photos/user/EV0000012795_PHOTO.jpg', NULL, NULL, NULL),
(2, 'pbkdf2_sha256$390000$zUSPSBaTScbTlMngcaCGuY$b+9tg+OgnWVeEYdf0eqIrUnhSTIJQs0LB1DPQCfWYE8=', NULL, 0, 'sekihusupa', 'Sawyer', 'Becker', 'zezudywit@mailinator.com', 0, 1, '2023-08-06 23:25:54.427339', NULL, '2023-08-06', NULL, '', NULL, NULL, NULL),
(3, 'pbkdf2_sha256$390000$At6qTscjk2mmrA3XsvsSom$Z/Q+iz2acgZhk2GiL3hOvEJlJJQK7bOOiG1D+dV5vbE=', NULL, 0, 'kicumatiho', 'Garrison', 'Kirkland', 'gabehaqez@mailinator.com', 0, 1, '2023-08-06 23:43:05.000000', 'Distinctio Odit des', '2023-08-06', 'Molestiae sed enim e', '', NULL, NULL, 'féminin'),
(4, 'pbkdf2_sha256$390000$GXdeRGfEj6S0c4Jn6TDFys$CxwGWjCrDl/9d7m1dAAY54juZ4r1BJZ4lWrIhc39Kdg=', NULL, 0, 'mazax', 'Eugenia', 'Cortez', 'xexovi@mailinator.com', 0, 1, '2023-08-12 20:48:32.643760', 'Placeat veniam vel', '2023-08-12', 'Fugiat laboriosam ', '07.jpg', NULL, NULL, 'Aucun'),
(5, 'pbkdf2_sha256$600000$KKjlaxsn8Qlor6xFVfYnLT$sZ2wCPQ2358qkiNnpLZFRHuFJAKn940biSR0MpT5DPw=', '2023-09-01 18:40:11.156962', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-08-20 13:44:41.601010', NULL, '2023-08-20', NULL, '', NULL, NULL, NULL),
(6, 'pbkdf2_sha256$600000$irjUIwhmWiK2xOoCSy6bTe$er8HZ3T+/pEraGRwwBDRQxz/kBSvOuASS/rLa/T3QP4=', NULL, 1, 'jygame', 'Guinevere', 'Mosley', 'zazopyq@mailinator.com', 1, 1, '2023-09-12 13:28:17.000000', '23344', '2023-09-12', 'Nesciunt laboris ad', '', 1, 1, 'masculin');

-- --------------------------------------------------------

--
-- Structure de la table `compte_habitant_amenager`
--

CREATE TABLE `compte_habitant_amenager` (
  `id` bigint(20) NOT NULL,
  `habitant_id` bigint(20) NOT NULL,
  `anemager_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `compte_habitant_centre_sante`
--

CREATE TABLE `compte_habitant_centre_sante` (
  `id` bigint(20) NOT NULL,
  `habitant_id` bigint(20) NOT NULL,
  `centre_sante_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `compte_habitant_competence`
--

CREATE TABLE `compte_habitant_competence` (
  `id` bigint(20) NOT NULL,
  `habitant_id` bigint(20) NOT NULL,
  `competence_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `compte_habitant_demenager`
--

CREATE TABLE `compte_habitant_demenager` (
  `id` bigint(20) NOT NULL,
  `habitant_id` bigint(20) NOT NULL,
  `denemager_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `compte_habitant_groups`
--

CREATE TABLE `compte_habitant_groups` (
  `id` bigint(20) NOT NULL,
  `habitant_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `compte_habitant_maladie`
--

CREATE TABLE `compte_habitant_maladie` (
  `id` bigint(20) NOT NULL,
  `habitant_id` bigint(20) NOT NULL,
  `maladie_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `compte_habitant_maladie`
--

INSERT INTO `compte_habitant_maladie` (`id`, `habitant_id`, `maladie_id`) VALUES
(1, 6, 2);

-- --------------------------------------------------------

--
-- Structure de la table `compte_habitant_pharmacie`
--

CREATE TABLE `compte_habitant_pharmacie` (
  `id` bigint(20) NOT NULL,
  `habitant_id` bigint(20) NOT NULL,
  `pharmacie_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `compte_habitant_pharmacie`
--

INSERT INTO `compte_habitant_pharmacie` (`id`, `habitant_id`, `pharmacie_id`) VALUES
(1, 6, 2);

-- --------------------------------------------------------

--
-- Structure de la table `compte_habitant_user_permissions`
--

CREATE TABLE `compte_habitant_user_permissions` (
  `id` bigint(20) NOT NULL,
  `habitant_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `demande_emploie_demande_emploie`
--

CREATE TABLE `demande_emploie_demande_emploie` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `niveau_etude` varchar(20) DEFAULT NULL,
  `dernier_diplome` varchar(20) DEFAULT NULL,
  `competence` varchar(1000) DEFAULT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `metier` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `contenu` longtext DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `demande_emploie_demande_emploie`
--

INSERT INTO `demande_emploie_demande_emploie` (`id`, `nom`, `prenom`, `niveau_etude`, `dernier_diplome`, `competence`, `numero`, `metier`, `image`, `contenu`, `email`) VALUES
(10, 'Quaerat accusamus aut rerum non deserunt vel nisi', 'Adipisci itaque officia enim consequatur in nostrum facere ex est corporis', 'licence', 'secndaire', 'Dolor officiis soluta nihil inventore labore qui similique sunt sint aut ipsum', 'Blanditiis proident ut amet unde adipisci quos c', 'Nam quasi dolorum inventore eiusmod commodo sunt quidem aliquid quaerat quisquam', '', 'Sint Nam sunt enim voluptas', NULL),
(12, 'Velit labore quam u', 'Ad qui occaecat tene', 'Aucun', 'AUCUN', 'Explicabo Dolor et ', 'Alias voluptas dolor', 'Saepe optio sint e', 'téléchargement (3).jpg', 'Francesca Shaffer', NULL),
(13, 'Eos aliquip facere', 'Incididunt ut dolore', 'aucun', 'aucun', 'Voluptatem iusto ass', 'Ut magna velit sed', 'Eos exercitation cu', '', 'Rudyard Armstrong', 'rasada@mailinator.com'),
(14, 'Nesciunt incidunt', 'Et voluptas et magna', 'BAC + 2', 'secndaire', 'Duis quos possimus', 'Ducimus dolor anim', 'Aliquip velit fuga', '', 'Randall Cameron', NULL),
(15, 'Sit laboriosam ips', 'Quo fugiat quidem re', 'Aucun', 'AUCUN', 'Vitae dolorem eos f', 'Eveniet qui optio ', 'Alias a qui harum ni', '', 'Kirby Shields', 'resomucy@mailinator.com'),
(16, 'Cillum sit odio et n', 'Quo a quos vel omnis', 'Aucun', 'BAC', 'Qui natus iusto dign', '3344', 'Sint ipsum eos ali', 'téléchargement (1).jpeg', 'Xaviera Dominguez', 'pijunu@mailinator.com'),
(17, 'Numquam culpa animi', 'Est vero magnam qui ', 'Aucun', 'AUCUN', 'Eos maiores id iusto', 'Quas ab quidem ab op', 'Quo aut enim rem acc', '', 'Linus Griffin', 'nadej@mailinator.com');

-- --------------------------------------------------------

--
-- Structure de la table `demande_emploie_offre_emploi`
--

CREATE TABLE `demande_emploie_offre_emploi` (
  `id` bigint(20) NOT NULL,
  `titre_du_poste` varchar(255) NOT NULL,
  `deescription` varchar(255) NOT NULL,
  `diplome_requis` varchar(20) NOT NULL,
  `employeur` varchar(255) NOT NULL,
  `type_de_contrat` varchar(20) NOT NULL,
  `lieu` varchar(255) NOT NULL,
  `competence_requis` varchar(500) NOT NULL,
  `salaire` varchar(1000) NOT NULL,
  `date_de_publication` date NOT NULL,
  `date_limite` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `demande_emploie_offre_emploi`
--

INSERT INTO `demande_emploie_offre_emploi` (`id`, `titre_du_poste`, `deescription`, `diplome_requis`, `employeur`, `type_de_contrat`, `lieu`, `competence_requis`, `salaire`, `date_de_publication`, `date_limite`) VALUES
(1, 'ffjf', 'DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD', 'aucun', 'dfff', 'CDD', 'sdf', 'cff', '233', '2023-08-28', '2024-03-13');

-- --------------------------------------------------------

--
-- Structure de la table `deplacement_anemager`
--

CREATE TABLE `deplacement_anemager` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `fonction` varchar(255) NOT NULL,
  `date_de_naissance` date NOT NULL,
  `Type_of_accommodation_on_arrival` varchar(255) NOT NULL,
  `origine` mediumtext NOT NULL,
  `nom_du_pere` varchar(255) NOT NULL,
  `nom_de_mere` varchar(255) NOT NULL,
  `lieu_habitation` varchar(500) DEFAULT NULL,
  `famille_id` bigint(20) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `annule` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `deplacement_anemager`
--

INSERT INTO `deplacement_anemager` (`id`, `nom`, `genre`, `fonction`, `date_de_naissance`, `Type_of_accommodation_on_arrival`, `origine`, `nom_du_pere`, `nom_de_mere`, `lieu_habitation`, `famille_id`, `status`, `annule`) VALUES
(1, 'AAAAAAAAAAAAAA', 'masculin', 'ddddddddddddd', '2002-01-19', 'chez un parent', 'ABOBO samake', 'EEEE', 'DDDD', 'prés du grand baobab', 1, 0, 0),
(2, 'BBBBBBB', 'masculin', 'fffffff', '2023-09-04', 'nouvelle habitation', 'dffff', 'cvv', 'vvv', 'vvv', 1, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `deplacement_denemager`
--

CREATE TABLE `deplacement_denemager` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `fonction` varchar(255) NOT NULL,
  `lieu_habitation` varchar(1000) NOT NULL,
  `date_de_naissance` date NOT NULL,
  `nouvelle_destination` varchar(2000) DEFAULT NULL,
  `famille_id` bigint(20) NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `deplacement_denemager`
--

INSERT INTO `deplacement_denemager` (`id`, `nom`, `genre`, `fonction`, `lieu_habitation`, `date_de_naissance`, `nouvelle_destination`, `famille_id`, `status`) VALUES
(1, 'ui praesentium autem aut est sit enim', 'masculin', 'Quis recusandae Qui laudantium ex do in voluptatum excepturi odio voluptatem', 'In rem est est illum id iste blanditiis veniam nisi', '1972-08-14', 'et expedita anim', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-08-06 23:43:47.473167', '3', 'kicumatiho', 2, '[{\"changed\": {\"fields\": [\"Genre\"]}}]', 7, 1),
(2, '2023-08-07 16:04:11.454104', '1', 'polyclinique des 2 plateau', 1, '[{\"added\": {}}]', 21, 1),
(3, '2023-08-07 16:16:32.245174', '1', 'pharmacie 2 plateaux agban', 1, '[{\"added\": {}}]', 15, 1),
(4, '2023-08-07 16:32:19.136730', '2', 'PHARMACIE SARAH', 1, '[{\"added\": {}}]', 15, 1),
(5, '2023-08-07 16:49:07.736881', '3', 'PHARMACIE BONNE SANTE', 1, '[{\"added\": {}}]', 15, 1),
(6, '2023-08-07 16:59:37.500782', '4', 'HOTEL MEDICAL DES IMPOTS', 1, '[{\"added\": {}}]', 15, 1),
(7, '2023-08-07 17:08:34.117086', '5', 'PHARMACIE ORCHID', 1, '[{\"added\": {}}]', 15, 1),
(8, '2023-08-07 17:22:54.044346', '6', 'PHARMACIE DU PALM CLUB', 1, '[{\"added\": {}}]', 15, 1),
(9, '2023-08-07 17:26:43.100063', '1', 'KONE', 1, '[{\"added\": {}}]', 11, 1),
(10, '2023-08-07 17:27:41.210993', '1', 'Anim consectetur ducimus eveniet dolores nisi repudiandae voluptatem consequuntur consectetur aute qui eiusmod quis et dignissimos ipsa aliquid voluptas obcaecati', 1, '[{\"added\": {}}]', 20, 1),
(11, '2023-08-07 17:34:49.502803', '2', 'Anim consectetur ducimus eveniet dolores nisi repudiandae voluptatem consequuntur consectetur aute qui eiusmod quis et dignissimos ipsa aliquid voluptas obcaecati', 1, '[{\"added\": {}}]', 20, 1),
(12, '2023-08-07 17:36:31.886145', '2', 'uid voluptas obcaecati', 2, '[{\"changed\": {\"fields\": [\"Nom\"]}}]', 20, 1),
(13, '2023-08-07 17:55:41.819028', '1', 'Autem in soluta similique dolorum praesentium', 1, '[{\"added\": {}}]', 23, 1),
(14, '2023-08-07 17:55:55.623121', '1', 'ium', 2, '[{\"changed\": {\"fields\": [\"Nom\"]}}]', 23, 1),
(15, '2023-08-07 18:32:30.294945', '1', 'BACKEND', 1, '[{\"added\": {}}]', 6, 1),
(16, '2023-08-07 18:33:35.983901', '1', 'ÉBÉNISTE', 1, '[{\"added\": {}}]', 14, 1),
(17, '2023-08-07 19:05:15.534607', '1', 'Construction d\'une ecole primaire', 1, '[{\"added\": {}}]', 16, 1),
(18, '2023-08-07 21:47:41.380806', '1', 'ffffffffffffff', 1, '[{\"added\": {}}]', 18, 1),
(19, '2023-08-07 21:52:41.022956', '1', 'ui praesentium autem aut est sit enim', 1, '[{\"added\": {}}]', 17, 1),
(20, '2023-08-07 23:47:05.666289', '10', 'Adipisci itaque officia enim consequatur in nostrum facere ex est corporis', 1, '[{\"added\": {}}]', 19, 1),
(21, '2023-08-07 23:47:26.409401', '1', 'Culpa temporibus vel', 3, '', 19, 1),
(22, '2023-08-07 23:47:26.414701', '5', 'Culpa temporibus vel', 3, '', 19, 1),
(23, '2023-08-07 23:47:47.777338', '4', 'Culpa temporibus vel', 3, '', 19, 1),
(24, '2023-08-07 23:47:47.781509', '8', 'Magna sit vel nostru', 3, '', 19, 1),
(25, '2023-08-07 23:47:47.785383', '9', 'Et amet voluptates ', 3, '', 19, 1),
(26, '2023-08-07 23:47:47.789354', '3', 'Culpa temporibus vel', 3, '', 19, 1),
(27, '2023-08-07 23:47:47.803402', '7', 'Qui vel tenetur aper', 3, '', 19, 1),
(28, '2023-08-07 23:47:47.810364', '6', 'Qui vel tenetur aper', 3, '', 19, 1),
(29, '2023-08-07 23:47:47.816962', '2', 'Culpa temporibus vel', 3, '', 19, 1),
(30, '2023-08-07 23:53:03.802328', '11', 'Quis facere quis ali', 3, '', 19, 1),
(31, '2023-08-07 23:59:41.528790', '14', 'Et voluptas et magna', 2, '[{\"changed\": {\"fields\": [\"Nom\", \"Dernier diplome\", \"Domaine\", \"Competence\", \"Numero\", \"Metier\"]}}]', 19, 1),
(32, '2023-08-08 00:00:06.414423', '13', 'Incididunt ut dolore', 2, '[{\"changed\": {\"fields\": [\"Nom\", \"Niveau etude\", \"Dernier diplome\", \"Domaine\", \"Numero\"]}}]', 19, 1),
(33, '2023-08-08 17:01:32.712249', '1', 'Humanité numérique : l’Université virtuelle de Côte d’Ivoire au service du quartier précaire d’Allakro', 1, '[{\"added\": {}}]', 9, 1),
(34, '2023-08-08 17:04:15.071366', '1', 'Le Théâtre', 1, '[{\"added\": {}}]', 10, 1),
(35, '2023-08-08 17:05:36.433571', '1', 'Le commerce', 1, '[{\"added\": {}}]', 8, 1),
(36, '2023-08-09 18:14:55.387579', '1', 'Le commerce', 2, '[{\"changed\": {\"fields\": [\"Contenu\", \"Image\"]}}]', 8, 1),
(37, '2023-08-09 18:43:35.644586', '1', 'Le Théâtre', 2, '[{\"changed\": {\"fields\": [\"Contenu\"]}}]', 10, 1),
(38, '2023-08-09 18:59:08.620131', '1', 'PALUDISME', 1, '[{\"added\": {}}]', 13, 1),
(39, '2023-08-09 19:25:16.959170', '2', 'Earum consequatur Ducimus quae pariatur Voluptatem nemo ut', 1, '[{\"added\": {}}]', 12, 1),
(40, '2023-08-10 12:31:25.092971', '2', 'r Voluptatem nemo ut', 2, '[{\"changed\": {\"fields\": [\"Nom\"]}}]', 12, 1),
(41, '2023-08-10 20:23:26.016478', '2', 'Nobis esse ex velit ut libero officiis qui culpa rerum quo aut aliquid adipisci rerum dolore nisi rerum', 1, '[{\"added\": {}}]', 23, 1),
(42, '2023-08-10 20:23:55.118942', '1', 'ium', 2, '[{\"changed\": {\"fields\": [\"Date de naissance\"]}}]', 23, 1),
(43, '2023-08-11 19:43:44.360483', '13', 'Incididunt ut dolore', 2, '[{\"changed\": {\"fields\": [\"Email\"]}}]', 19, 1),
(44, '2023-08-11 19:44:59.622337', '4', 'HOTEL MEDICAL DES IMPOTS', 2, '[{\"changed\": {\"fields\": [\"Pharmacien tituleur\"]}}]', 15, 1),
(45, '2023-08-11 19:45:24.197261', '3', 'PHARMACIE BONNE SANTE', 2, '[{\"changed\": {\"fields\": [\"Pharmacien tituleur\"]}}]', 15, 1),
(46, '2023-08-11 19:46:06.091592', '6', 'PHARMACIE DU PALM CLUB', 2, '[{\"changed\": {\"fields\": [\"Pharmacien tituleur\"]}}]', 15, 1),
(47, '2023-08-12 14:54:59.264903', '6', 'PHARMACIE DU PALM CLUB', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(48, '2023-08-12 15:53:50.580322', '4', 'HOTEL MEDICAL DES IMPOTS', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(49, '2023-08-12 16:47:32.254912', '4', 'HOTEL MEDICAL DES IMPOTS', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(50, '2023-08-12 17:41:49.621004', '4', 'HOTEL MEDICAL DES IMPOTS', 2, '[{\"changed\": {\"fields\": [\"Localisation\"]}}]', 15, 1),
(51, '2023-08-12 18:11:31.706701', '4', 'HOTEL MEDICAL DES IMPOTS', 2, '[{\"changed\": {\"fields\": [\"Localisation\", \"Position map\"]}}]', 15, 1),
(52, '2023-08-12 18:11:48.978402', '1', 'pharmacie 2 plateaux agban', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(53, '2023-08-12 19:46:35.512983', '4', 'moi', 2, '[{\"changed\": {\"fields\": [\"Genre\", \"Date de naissance\", \"Lieu dela naissance\", \"Lieu habitation\", \"Famille\", \"Numero\", \"Status\"]}}]', 20, 1),
(54, '2023-08-12 20:01:59.108549', '4', 'moi', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 20, 1),
(55, '2023-08-12 20:02:18.783539', '4', 'moi', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 20, 1),
(56, '2023-08-12 20:21:25.994217', '6', 'PHARMACIE DU PALM CLUB', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(57, '2023-08-12 20:37:16.985072', '5', 'rtyy', 2, '[{\"changed\": {\"fields\": [\"Genre\", \"Lieu dela naissance\", \"Nom dela mere\", \"Famille\", \"Hopital\", \"Numero\", \"Status\"]}}]', 20, 1),
(58, '2023-08-12 20:42:23.972507', '2', 'PPP', 1, '[{\"added\": {}}]', 11, 1),
(59, '2023-08-12 20:45:19.468373', '3', 'kader', 1, '[{\"added\": {}}]', 23, 1),
(60, '2023-08-12 20:46:02.709139', '3', 'kader', 2, '[{\"changed\": {\"fields\": [\"Date de deces\"]}}]', 23, 1),
(61, '2023-08-15 21:51:23.277422', '4', 'Aute natus ullam vel', 2, '[{\"changed\": {\"fields\": [\"Genre\", \"Lieu ode deces\", \"Famille\", \"Status\"]}}]', 23, 1),
(62, '2023-08-15 21:52:53.558756', '4', 'Aute natus ullam vel', 2, '[{\"changed\": {\"fields\": [\"Date de deces\"]}}]', 23, 1),
(63, '2023-08-20 14:44:43.463962', '5', 'PHARMACIE ORCHID', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 5),
(64, '2023-08-20 14:47:05.582480', '6', 'PHARMACIE DU PALM CLUB', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 5),
(65, '2023-08-20 14:47:48.146092', '1', 'pharmacie 2 plateaux agban', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 5),
(66, '2023-08-20 14:49:11.775051', '2', 'PHARMACIE SARAH', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 5),
(67, '2023-08-20 14:50:14.304797', '3', 'PHARMACIE BONNE SANTE', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 5),
(68, '2023-08-20 16:42:01.143150', '1', 'polyclinique des 2 plateau', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 21, 5),
(69, '2023-08-20 16:51:44.679112', '1', 'Le commerce', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 5),
(70, '2023-08-20 16:52:20.245621', '1', 'Le Théâtre', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 5),
(71, '2023-08-20 16:54:32.247949', '1', 'Humanité numérique : l’Université virtuelle de Côte d’Ivoire au service du quartier précaire d’Allakro', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 5),
(72, '2023-08-20 18:18:07.002903', '1', 'Anim consectetur ducimus eveniet dolores nisi repudiandae voluptatem consequuntur consectetur aute qui eiusmod quis et dignissimos ipsa aliquid voluptas obcaecati', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 20, 5),
(73, '2023-08-20 18:18:59.284494', '1', 'Anim consectetur ducimus eveniet dolores nisi repudiandae voluptatem consequuntur consectetur aute qui eiusmod quis et dignissimos ipsa aliquid voluptas obcaecati', 2, '[{\"changed\": {\"fields\": [\"Date de naissance\"]}}]', 20, 5),
(74, '2023-08-28 20:02:39.365843', '1', 'ffjf', 1, '[{\"added\": {}}]', 24, 1),
(75, '2023-08-28 20:12:00.325518', '1', 'Construction d\'une ecole primaire', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 16, 1),
(76, '2023-08-28 20:13:47.566356', '1', 'Construction d\'une ecole primaire', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 16, 1),
(77, '2023-08-28 20:34:39.304068', '1', 'ui praesentium autem aut est sit enim', 2, '[]', 17, 1),
(78, '2023-08-28 22:53:30.166233', '1', 'ffffffffffffff', 2, '[]', 18, 1),
(79, '2023-08-29 00:55:54.711490', '1', 'ui praesentium autem aut est sit enim', 2, '[]', 17, 1),
(80, '2023-08-29 01:09:47.369078', '1', 'ui praesentium autem aut est sit enim', 2, '[]', 17, 1),
(81, '2023-08-29 01:41:01.713573', '1', 'ffffffffffffff', 2, '[]', 18, 1),
(82, '2023-08-29 01:43:24.215081', '1', 'ffffffffffffff', 2, '[]', 18, 1),
(83, '2023-08-29 01:50:56.504837', '1', 'ffffffffffffff', 2, '[]', 18, 1),
(84, '2023-08-29 01:55:13.426080', '1', 'ffffffffffffff', 2, '[]', 18, 1),
(85, '2023-09-04 14:05:44.175496', '2', 'ddd', 1, '[{\"added\": {}}]', 18, 1),
(86, '2023-09-04 14:18:03.149912', '1', 'AAAAAAAAAAAAAA', 2, '[{\"changed\": {\"fields\": [\"Nom\"]}}]', 18, 1),
(87, '2023-09-04 14:18:53.121389', '2', 'BBBBBBB', 2, '[{\"changed\": {\"fields\": [\"Nom\"]}}]', 18, 1),
(88, '2023-09-05 18:54:09.363045', '1', 'AAAAAAAAAAAAAA', 2, '[]', 18, 1),
(89, '2023-09-12 13:30:06.701819', '2', 'kader', 1, '[{\"added\": {}}]', 13, 1),
(90, '2023-09-12 13:30:42.186598', '6', 'jygame', 2, '[{\"changed\": {\"fields\": [\"Superuser status\", \"Staff status\", \"Genre\", \"Metier\", \"Famille\", \"Maladie\", \"Pharmacie\"]}}]', 7, 1),
(91, '2023-09-18 19:32:19.935244', '6', 'Ea repudiandae tempo', 2, '[{\"changed\": {\"fields\": [\"Genre\", \"Lieu dela naissance\", \"Numero\", \"Email\", \"Status\"]}}]', 20, 1),
(92, '2023-09-23 18:46:19.309419', '1', 'adminpct', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(93, '2023-10-02 19:38:07.636134', '1', 'Anim consectetur ducimus eveniet dolores nisi repudiandae voluptatem consequuntur consectetur aute qui eiusmod quis et dignissimos ipsa aliquid voluptas obcaecati', 2, '[{\"changed\": {\"fields\": [\"Date de naissance\"]}}]', 20, 1),
(94, '2023-10-06 21:46:31.715356', '1', 'Anim consectetur ducimus eveniet dolores nisi repudiandae voluptatem consequuntur consectetur aute qui eiusmod quis et dignissimos ipsa aliquid voluptas obcaecati', 2, '[{\"changed\": {\"fields\": [\"Date de naissance\", \"Famille\", \"Hopital\", \"Numero\", \"Email\"]}}]', 20, 1),
(95, '2023-10-08 16:19:15.851479', '9', 'Placeat et non earu', 2, '[{\"changed\": {\"fields\": [\"Genre\", \"Lieu dela naissance\", \"Famille\", \"Numero\", \"Status\"]}}]', 20, 1);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(21, 'centre_sante', 'centre_sante'),
(6, 'competence', 'competence'),
(7, 'compte', 'habitant'),
(4, 'contenttypes', 'contenttype'),
(19, 'demande_emploie', 'demande_emploie'),
(24, 'demande_emploie', 'offre_emploi'),
(18, 'deplacement', 'anemager'),
(17, 'deplacement', 'denemager'),
(22, 'etat_de_vie', 'death'),
(23, 'etat_de_vie', 'deces'),
(20, 'etat_de_vie', 'naissance'),
(8, 'famille', 'activite'),
(9, 'famille', 'actualite'),
(10, 'famille', 'centre_interet'),
(11, 'famille', 'famille'),
(12, 'maladies', 'epidemie'),
(13, 'maladies', 'maladie'),
(14, 'metier', 'metier'),
(15, 'pharmacie', 'pharmacie'),
(16, 'projet', 'projet'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-08-06 18:12:31.818910'),
(2, 'metier', '0001_initial', '2023-08-06 18:12:31.869425'),
(3, 'maladies', '0001_initial', '2023-08-06 18:12:31.956382'),
(4, 'famille', '0001_initial', '2023-08-06 18:12:32.137797'),
(5, 'competence', '0001_initial', '2023-08-06 18:12:32.172775'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-08-06 18:12:32.295692'),
(7, 'auth', '0001_initial', '2023-08-06 18:12:32.666589'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-08-06 18:12:32.754539'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-08-06 18:12:33.017541'),
(10, 'auth', '0004_alter_user_username_opts', '2023-08-06 18:12:33.203557'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-08-06 18:12:33.242057'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-08-06 18:12:33.270589'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-08-06 18:12:33.321562'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-08-06 18:12:33.341580'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-08-06 18:12:33.355615'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-08-06 18:12:33.657572'),
(17, 'auth', '0011_update_proxy_permissions', '2023-08-06 18:12:33.685556'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-08-06 18:12:33.705081'),
(19, 'compte', '0001_initial', '2023-08-06 18:12:34.723794'),
(20, 'admin', '0001_initial', '2023-08-06 18:12:34.951664'),
(21, 'admin', '0002_logentry_remove_auto_add', '2023-08-06 18:12:34.968653'),
(22, 'admin', '0003_logentry_add_action_flag_choices', '2023-08-06 18:12:34.996637'),
(23, 'centre_sante', '0001_initial', '2023-08-06 18:12:35.064598'),
(24, 'demande_emploie', '0001_initial', '2023-08-06 18:12:35.139579'),
(25, 'deplacement', '0001_initial', '2023-08-06 18:12:35.391088'),
(26, 'etat_de_vie', '0001_initial', '2023-08-06 18:12:35.589519'),
(27, 'pharmacie', '0001_initial', '2023-08-06 18:12:35.635492'),
(28, 'projet', '0001_initial', '2023-08-06 18:12:35.683623'),
(29, 'sessions', '0001_initial', '2023-08-06 18:12:35.753586'),
(30, 'etat_de_vie', '0002_death_deces_remove_naissance_famille_and_more', '2023-08-06 18:19:18.740032'),
(31, 'compte', '0002_habitant_genre', '2023-08-06 23:33:30.919244'),
(32, 'etat_de_vie', '0003_delete_death', '2023-08-06 23:33:31.011191'),
(33, 'etat_de_vie', '0004_naissance_famille_naissance_hopital', '2023-08-07 17:32:57.528117'),
(34, 'etat_de_vie', '0005_deces_famille_deces_hopital', '2023-08-07 17:32:58.110606'),
(35, 'etat_de_vie', '0006_naissance_fonction', '2023-08-08 16:54:02.715019'),
(36, 'etat_de_vie', '0007_remove_naissance_fonction', '2023-08-08 16:54:02.779982'),
(37, 'famille', '0002_alter_actualite_image', '2023-08-08 16:54:03.043519'),
(38, 'famille', '0003_activite_contenu_activite_image', '2023-08-09 17:49:04.080416'),
(39, 'famille', '0004_centre_interet_contenu_centre_interet_image', '2023-08-09 17:50:24.230578'),
(40, 'demande_emploie', '0002_remove_demande_emploie_domaine_demande_emploie_email', '2023-08-11 19:18:59.154135'),
(41, 'pharmacie', '0002_alter_pharmacie_pharmacien_tituleur', '2023-08-11 19:44:51.927101'),
(42, 'deplacement', '0002_anemager_status_denemager_status', '2023-08-12 14:35:53.874707'),
(43, 'etat_de_vie', '0008_deces_status_naissance_status', '2023-08-12 14:35:54.048608'),
(44, 'pharmacie', '0003_pharmacie_status', '2023-08-12 14:35:54.115580'),
(45, 'pharmacie', '0004_alter_pharmacie_image', '2023-08-12 15:18:22.251720'),
(46, 'pharmacie', '0002_alter_pharmacie_date_debut_alter_pharmacie_date_fin_and_more', '2023-08-12 15:50:45.094316'),
(47, 'pharmacie', '0003_alter_pharmacie_localisation', '2023-08-12 17:40:08.575026'),
(48, 'pharmacie', '0004_pharmacie_position_map_alter_pharmacie_localisation', '2023-08-12 17:43:46.093883'),
(49, 'etat_de_vie', '0009_deces_email_deces_numero_naissance_email_and_more', '2023-08-12 19:02:28.823499'),
(50, 'centre_sante', '0002_alter_centre_sante_image', '2023-08-20 14:57:38.567207'),
(51, 'famille', '0005_alter_activite_image_alter_actualite_image_and_more', '2023-08-20 16:47:51.394934'),
(52, 'demande_emploie', '0003_offre_emploi', '2023-08-23 23:14:37.901997'),
(53, 'projet', '0002_alter_projet_image', '2023-08-28 20:10:41.923488'),
(54, 'compte', '0003_remove_habitant_competence_remove_habitant_maladie_and_more', '2023-09-07 01:26:46.142333'),
(55, 'maladies', '0002_maladie_famille', '2023-09-07 01:29:04.651082'),
(56, 'maladies', '0003_rename_famille_maladie_epidemie', '2023-09-07 01:29:05.047878'),
(57, 'compte', '0004_habitant_centre_sante_habitant_pharmacie', '2023-09-07 01:48:04.026020'),
(58, 'compte', '0005_habitant_amenager_habitant_demenager', '2023-09-07 02:00:42.798492'),
(59, 'deplacement', '0003_anemager_annule', '2023-09-23 16:55:59.249141');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0il0lpw9buaq57c11cxkllfjcw3igp2w', '.eJxVjEEOwiAQRe_C2hCgFgaX7nsGMgyDVA0kpV0Z765NutDtf-_9lwi4rSVsnZcwJ3ERWpx-t4j04LqDdMd6a5JaXZc5yl2RB-1yaomf18P9OyjYy7cmbQ07iGidJR-zGXAYnceUtVNWoSFIaCxrUpYB6UwArNibMSsVgcX7A-p_OC8:1qW1Ug:69sONWQ9sAy3MANNhOw-aGWH6CWw-Jc_Pe-QX3YL3Co', '2023-08-29 21:22:26.462331'),
('2cc863kc07l6v81hy91nmobrnt8t19q8', '.eJxVjEEOwiAQRe_C2hCgFgaX7nsGMgyDVA0kpV0Z765NutDtf-_9lwi4rSVsnZcwJ3ERWpx-t4j04LqDdMd6a5JaXZc5yl2RB-1yaomf18P9OyjYy7cmbQ07iGidJR-zGXAYnceUtVNWoSFIaCxrUpYB6UwArNibMSsVgcX7A-p_OC8:1qTMO5:jm4VDmvhfchNzO3qVTHFHEbxEuM8jgN5QfCLkR17R90', '2023-08-22 13:04:37.604269'),
('3qi2z5pe41tce78ir4hc0ko7bkfubg57', '.eJxVjEEOwiAQRe_C2hCgFgaX7nsGMgyDVA0kpV0Z765NutDtf-_9lwi4rSVsnZcwJ3ERWpx-t4j04LqDdMd6a5JaXZc5yl2RB-1yaomf18P9OyjYy7cmbQ07iGidJR-zGXAYnceUtVNWoSFIaCxrUpYB6UwArNibMSsVgcX7A-p_OC8:1qVCuN:hG-Mexmm-TVJQ_4l3jPIiDFB1xgIp_xBXI1yN8AKbj0', '2023-08-27 15:21:35.704770'),
('9ynbe46mn5vi08mkiwyqhm1dfxp6qv3l', '.eJxVjEEOwiAQRe_C2hCgFgaX7nsGMgyDVA0kpV0Z765NutDtf-_9lwi4rSVsnZcwJ3ERWpx-t4j04LqDdMd6a5JaXZc5yl2RB-1yaomf18P9OyjYy7cmbQ07iGidJR-zGXAYnceUtVNWoSFIaCxrUpYB6UwArNibMSsVgcX7A-p_OC8:1qT9Ju:nYuQ-kdJUkVFOa8lKumU55qjFEmODcLnAKOcE4Gxo2c', '2023-08-21 23:07:26.450633'),
('bzg4wubcr70leaumyg2bbhuqmkwws79o', '.eJxVjDsOwjAQBe_iGlm2499S0nMGy7te4wBKpDipEHeHSCmgfTPzXiLlbW1p67yksYiz0OL0u2GmB087KPc83WZJ87QuI8pdkQft8joXfl4O9--g5d6-NdiIBiIjmMLVVwtMNShwHEmDD4BODxWsAmUp02AKRe-844Alomfx_gDmCzgH:1qnOjJ:Yp6Lzat_YhBG04jgPPWFS80RCMkOftwkfAtOAAWmIQg', '2023-10-16 19:37:21.986190'),
('cbfzvs0ig150gtngitotdtlilvkxo72m', '.eJxVjDsOwjAQBe_iGlm2499S0nMGy7te4wBKpDipEHeHSCmgfTPzXiLlbW1p67yksYiz0OL0u2GmB087KPc83WZJ87QuI8pdkQft8joXfl4O9--g5d6-NdiIBiIjmMLVVwtMNShwHEmDD4BODxWsAmUp02AKRe-844Alomfx_gDmCzgH:1qk7lU:JhyQ_BnWfaP06pBiwsH41ZeIJqLWOEzBDMmwLzliNPs', '2023-10-07 18:54:04.955024'),
('g7l3nj8y7dqo0vabo83qttbzed0og9bb', '.eJxVjDsOwjAQBe_iGlm2499S0nMGy7te4wBKpDipEHeHSCmgfTPzXiLlbW1p67yksYiz0OL0u2GmB087KPc83WZJ87QuI8pdkQft8joXfl4O9--g5d6-NdiIBiIjmMLVVwtMNShwHEmDD4BODxWsAmUp02AKRe-844Alomfx_gDmCzgH:1qgVr4:wgVFszyxRPcvFQnti6BKSvzOGEI3W38-G4_taTWmOxg', '2023-09-27 19:48:54.840591'),
('kzy2rj54se2py30kls2nt6f35uolpemm', '.eJxVjDsOwjAQBe_iGlm2499S0nMGy7te4wBKpDipEHeHSCmgfTPzXiLlbW1p67yksYiz0OL0u2GmB087KPc83WZJ87QuI8pdkQft8joXfl4O9--g5d6-NdiIBiIjmMLVVwtMNShwHEmDD4BODxWsAmUp02AKRe-844Alomfx_gDmCzgH:1qcrLo:1309QTRPPcsaEwNiZ2fgH1Wqc3THkxAEROgjD-_mVpE', '2023-09-17 17:57:32.305634'),
('qdvuc6vs0ucsxp7lyo4bcw779quu3jb1', '.eJxVjEEOwiAQRe_C2hCgFgaX7nsGMgyDVA0kpV0Z765NutDtf-_9lwi4rSVsnZcwJ3ERWpx-t4j04LqDdMd6a5JaXZc5yl2RB-1yaomf18P9OyjYy7cmbQ07iGidJR-zGXAYnceUtVNWoSFIaCxrUpYB6UwArNibMSsVgcX7A-p_OC8:1qUv56:IFq1SMwNcWFpHyVTzg8foQ89WbdpSJT5EOsqbG8J8fg', '2023-08-26 20:19:28.885426'),
('s699egtilu5k34bnk8kfs86ry91na3rp', '.eJxVjDsOwjAQBe_iGlm2499S0nMGy7te4wBKpDipEHeHSCmgfTPzXiLlbW1p67yksYiz0OL0u2GmB087KPc83WZJ87QuI8pdkQft8joXfl4O9--g5d6-NdiIBiIjmMLVVwtMNShwHEmDD4BODxWsAmUp02AKRe-844Alomfx_gDmCzgH:1qaiQZ:l_2ZRaE3fhGgIc7aiuvu3BhFEcyjEW7-9XBzhAGke6I', '2023-09-11 20:01:35.567313'),
('w5vhx32x4r5awnt4u3c6esqaek9aowgx', '.eJxVjDsOwjAQBe_iGlm2499S0nMGy7te4wBKpDipEHeHSCmgfTPzXiLlbW1p67yksYiz0OL0u2GmB087KPc83WZJ87QuI8pdkQft8joXfl4O9--g5d6-NdiIBiIjmMLVVwtMNShwHEmDD4BODxWsAmUp02AKRe-844Alomfx_gDmCzgH:1qfsPQ:U-MyMEo-eC2F_6Me3-J1A19RYNqzsrxCVuSVzaL6LQw', '2023-09-26 01:41:44.096044');

-- --------------------------------------------------------

--
-- Structure de la table `etat_de_vie_deces`
--

CREATE TABLE `etat_de_vie_deces` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `fonction` varchar(255) NOT NULL,
  `date_de_naissance` date NOT NULL,
  `date_de_deces` date NOT NULL,
  `lieu_ode_deces` varchar(255) NOT NULL,
  `raison_du_deces` mediumtext NOT NULL,
  `nom_du_pere` varchar(255) NOT NULL,
  `nom_de_mere` varchar(255) NOT NULL,
  `lieu_habitation` varchar(500) DEFAULT NULL,
  `famille_id` bigint(20) DEFAULT NULL,
  `hopital_id` bigint(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `numero` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `etat_de_vie_deces`
--

INSERT INTO `etat_de_vie_deces` (`id`, `nom`, `genre`, `fonction`, `date_de_naissance`, `date_de_deces`, `lieu_ode_deces`, `raison_du_deces`, `nom_du_pere`, `nom_de_mere`, `lieu_habitation`, `famille_id`, `hopital_id`, `status`, `email`, `numero`) VALUES
(1, 'ium', 'féminin', 'Quia in in facere non omnis cupidatat adipisicing et quis', '2017-09-04', '2023-08-07', 'hopital', 'Dolores incididunt quia cumque asperiores non debitis libero laborum eos vel repellendus', 'Cum voluptatum consequatur iste eveniet nihil autem minim nobis fuga Autem et sapiente', 'Ab blanditiis a irure dolorem debitis ex', 'Et doloremque veritatis sit sint et ea earum sunt perspiciatis eaque sapiente hic delectus et unde eiusmod accusantium consequatur', 1, 1, 0, NULL, NULL),
(2, 'Nobis esse ex velit ut libero officiis qui culpa rerum quo aut aliquid adipisci rerum dolore nisi rerum', 'masculin', 'Rerum consequat Non beatae non et nemo vitae vel et fugit aut officia odit', '2020-10-12', '2023-08-10', 'a domicile', 'Fugiat corporis labore esse exercitation minim sed rem sint expedita magnam aut hic mollit architecto mollit omnis', 'Nulla et culpa officiis et non in provident magnam consequat Aliquid eiusmod dolorum sunt sapiente ut proident', 'Qui ipsa exercitation aut culpa', 'Excepturi nemo sed non consequuntur ad aperiam autem dolor consequatur', 1, 1, 0, NULL, NULL),
(3, 'kader', 'masculin', 'gdhfhfj', '2023-08-11', '2023-08-22', 'a domicile', 'accident', 'ffg', 'fftyyu', 'près', 2, 1, 1, 'hdjd@gmail.com', '233'),
(4, 'Aute natus ullam vel', 'masculin', 'Sit laudantium vol', '2017-06-25', '2023-08-15', 'hopital', 'Corporis eveniet te', 'Sit tempore conseq', 'Aut optio veritatis', 'Quis ratione maiores', 1, 1, 1, 'rymywik@mailinator.com', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `etat_de_vie_naissance`
--

CREATE TABLE `etat_de_vie_naissance` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `date_de_naissance` date NOT NULL,
  `lieu_dela_naissance` varchar(255) NOT NULL,
  `nom_du_pere` varchar(255) NOT NULL,
  `nom_dela_mere` varchar(255) NOT NULL,
  `lieu_habitation` varchar(500) DEFAULT NULL,
  `famille_id` bigint(20) DEFAULT NULL,
  `hopital_id` bigint(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `numero` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `etat_de_vie_naissance`
--

INSERT INTO `etat_de_vie_naissance` (`id`, `nom`, `genre`, `date_de_naissance`, `lieu_dela_naissance`, `nom_du_pere`, `nom_dela_mere`, `lieu_habitation`, `famille_id`, `hopital_id`, `status`, `email`, `numero`) VALUES
(1, 'Anim consectetur ducimus eveniet dolores nisi repudiandae voluptatem consequuntur consectetur aute qui eiusmod quis et dignissimos ipsa aliquid voluptas obcaecati', 'masculin', '2023-10-06', 'hopital', 'Et fugit sequi eu iure odio minim dolor dolor modi culpa accusantium saepe ad', 'Et quas vel labore nobis eos ad modi minim voluptas debitis', 'Rerum blanditiis corporis in ducimus ea sunt et ut eu adipisci est', 1, 1, 1, 'gghjjj@gmai.com', '334444'),
(2, 'uid voluptas obcaecati', 'masculin', '2023-08-07', 'hopital', 'Et fugit sequi eu iure odio minim dolor dolor modi culpa accusantium saepe ad', 'Et quas vel labore nobis eos ad modi minim voluptas debitis', 'pas loin du kiosque de diallo au carrefour', 1, 1, 0, NULL, NULL),
(3, 'Excepturi culpa mole', 'Aucun', '2001-03-12', 'a la maison', 'Doloremque consectet', 'Laboris in fuga Dol', 'Eiusmod est tempora ', NULL, 1, 0, 'huwuqox@mailinator.com', NULL),
(4, 'moi', 'masculin', '2023-08-12', 'hopital', 'Doloremque consectet', 'Laboris in fuga Dol', 'Eiusmod est tempora', 1, 1, 1, 'huwuqox@mailinator.com', '22333'),
(5, 'rtyy', 'masculin', '2023-08-12', 'hopital', 'Proident aperiam ut', 'Duis temporibus est', 'Tempora quo suscipit', 1, 1, 1, 'vovoseceb@mailinator.com', '35366477474'),
(6, 'Ea repudiandae tempo', 'masculin', '2023-09-18', 'hopital', 'Non distinctio Sint', 'Quo nulla sapiente h', 'Voluptas eos ut dolo', NULL, 1, 1, 'ddffff@gmail.com', '233'),
(7, 'Nulla saepe omnis et', 'Aucun', '1970-03-16', 'a la maison', 'Eum et necessitatibu', 'Sunt doloribus offi', 'Eu ipsa ut placeat', NULL, NULL, 0, 'noguhu@mailinator.com', NULL),
(8, 'Pariatur Quia dolor', 'Aucun', '2005-09-17', 'a la maison', 'Alias ducimus quasi', 'Necessitatibus neces', 'Qui ab fugit nostru', NULL, 1, 0, 'setaxotyt@mailinator.com', NULL),
(9, 'Placeat et non earu', 'masculin', '2023-10-08', 'hopital', 'Animi qui ut pariat', 'Pariatur Iusto ea i', 'Error sit dolor exer', 1, 1, 1, 'cozyli@mailinator.com', '33333333333');

-- --------------------------------------------------------

--
-- Structure de la table `famille_activite`
--

CREATE TABLE `famille_activite` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `contenu` varchar(1000) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `famille_activite`
--

INSERT INTO `famille_activite` (`id`, `nom`, `contenu`, `image`) VALUES
(1, 'Le commerce', 'En tout genre et de tout les types', 'static/images/activité/images_1.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `famille_actualite`
--

CREATE TABLE `famille_actualite` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `contenu` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `famille_actualite`
--

INSERT INTO `famille_actualite` (`id`, `nom`, `contenu`, `image`) VALUES
(1, 'Humanité numérique : l’Université virtuelle de Côte d’Ivoire au service du quartier précaire d’Allakro', 'Troisième université publique en termes d’effectif avec 14.000 étudiants, l’Université virtuelle de Côte d’Ivoire pratique la techno-pédagogie. En plus de la formation et la recherche, elle promeut l’employabilité. Grâce à ses laboratoires de fabrique (Fa', 'static/images/actualité/WhatsApp_Image_2023-04-24_at_12.05.34.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `famille_centre_interet`
--

CREATE TABLE `famille_centre_interet` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `contenu` varchar(1000) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `famille_centre_interet`
--

INSERT INTO `famille_centre_interet` (`id`, `nom`, `contenu`, `image`) VALUES
(1, 'Le Théâtre', 'C\'est un hobbit que toute la population aime', 'static/images/centre_interet/téléchargement_6.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `famille_famille`
--

CREATE TABLE `famille_famille` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `nombre_de_menbre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `famille_famille`
--

INSERT INTO `famille_famille` (`id`, `nom`, `nombre_de_menbre`) VALUES
(1, 'KONE', '12'),
(2, 'PPP', '12');

-- --------------------------------------------------------

--
-- Structure de la table `maladies_epidemie`
--

CREATE TABLE `maladies_epidemie` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `symptoms` varchar(1000) NOT NULL,
  `traitements` varchar(100) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `nombre_cas` varchar(100) NOT NULL,
  `nombre_mort` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `maladies_epidemie`
--

INSERT INTO `maladies_epidemie` (`id`, `nom`, `symptoms`, `traitements`, `date_debut`, `date_fin`, `nombre_cas`, `nombre_mort`) VALUES
(2, 'r Voluptatem nemo ut', 'Neque maxime non ipsum corporis expedita officia blanditiis asperiores nostrud vitae nesciunt eos quo', 'Optio et alias ratione natus quia dolor possimus ex quos et dolor esse omnis eos', '2023-08-10', '2023-08-10', '2300', '230');

-- --------------------------------------------------------

--
-- Structure de la table `maladies_maladie`
--

CREATE TABLE `maladies_maladie` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `symptoms` varchar(1000) NOT NULL,
  `traitements` varchar(100) NOT NULL,
  `Epidemie_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `maladies_maladie`
--

INSERT INTO `maladies_maladie` (`id`, `nom`, `symptoms`, `traitements`, `Epidemie_id`) VALUES
(1, 'PALUDISME', 'Vomissement, mal de tête, mal de ventre', 'Piquure sur trois jours, comprimée sur trois jours', NULL),
(2, 'kader', 'zsdd', 'ZERRR', 2);

-- --------------------------------------------------------

--
-- Structure de la table `metier_metier`
--

CREATE TABLE `metier_metier` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `secteur` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `metier_metier`
--

INSERT INTO `metier_metier` (`id`, `nom`, `secteur`) VALUES
(1, 'ÉBÉNISTE', 'Informel');

-- --------------------------------------------------------

--
-- Structure de la table `pharmacie_pharmacie`
--

CREATE TABLE `pharmacie_pharmacie` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `localisation` varchar(1000) NOT NULL,
  `numero_pharmacie` varchar(200) NOT NULL,
  `period_garde` varchar(100) NOT NULL,
  `date_debut` datetime(6) NOT NULL,
  `date_fin` datetime(6) NOT NULL,
  `Pharmacien_tituleur` varchar(255) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `position_map` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `pharmacie_pharmacie`
--

INSERT INTO `pharmacie_pharmacie` (`id`, `nom`, `localisation`, `numero_pharmacie`, `period_garde`, `date_debut`, `date_fin`, `Pharmacien_tituleur`, `image`, `status`, `position_map`) VALUES
(1, 'pharmacie 2 plateaux agban', '9X8V+F5X, ENTRE LE NOUVEAU MARCHE ET L\'HOPITAL DES IMPOTS AU POSTE NORD DU CAMP D\'AGBAN ABIDJAN-II PLATEAUX, ABIDJAN', '(+225) 01456749', 'TOUS LES 3EME WEEK-END DU MOIS', '2023-08-07 16:16:32.000000', '2023-08-07 16:16:32.000000', 'Dr TIA ANNICK', 'static/images/pharmacie/aghan.jpg', 1, NULL),
(2, 'PHARMACIE SARAH', 'Route camp Gendarmerie Agban, Centre commercial Carine N Couture, Face Qtier Chicane - 220 logements Adjamé - 09 BP 407 Abidjan 09 Abidjan - Côte d’Ivoire', '27 20 39 03 57/07 07 94 24 29/ 27 20 39 03 60', 'Du 07 au 15 août 2023', '2023-08-07 16:32:19.000000', '2023-08-07 16:32:19.000000', 'M. Sangare Lassina', 'static/images/pharmacie/sarah-1_1.jpg', 0, NULL),
(3, 'PHARMACIE BONNE SANTE', 'Abidjan - cocody 2 plateaux-agban / route williamsville', '2722468585/0686579236', 'Cocody 2 plateaux carrefour manguier non loin du Garage CFA, Abidjan - Cocody Abidjan Abidjan - Côte', '2023-08-11 19:45:24.000000', '2023-08-11 19:45:24.000000', NULL, 'static/images/pharmacie/bonne_sante.jpg', 0, NULL),
(4, 'HOTEL MEDICAL DES IMPOTS', 'Rue K17, Deux Plateaux Cocody Abidjan - Côte d’Ivoire', '(+225) 27 20 21 10 90', 'Pas de garde', '2023-08-11 19:44:59.000000', '2023-08-11 19:44:59.000000', NULL, 'static/images/pharmacie/pharmacieimpots.jpg', 1, 'https://www.google.com/maps/place/H%C3%B4tel+M%C3%A9dical+des+Imp%C3%B4ts/@5.3661821,-4.0106503,16.67z/data=!4m6!3m5!1s0xfc1eb475b3e1a29:0x1db9dd06cf05a9af!8m2!3d5.3660139!4d-4.0076534!16s%2Fg%2F11gzd54jk?entry=ttu'),
(5, 'PHARMACIE ORCHID', 'Abidjan - 2 plateaux / boulevard latrille carrefour macaci', '2722404275', 'PAS DE ARDE', '2023-08-07 17:08:34.000000', '2023-08-07 17:08:34.000000', 'INCONNU', 'static/images/pharmacie/orchid.jpg', 0, NULL),
(6, 'PHARMACIE DU PALM CLUB', 'Rue du Lycée Technique, HOTEL PALM CLUB, Boutique N°7 - Lycée technique Cocody - 28 BP 394 Abidjan 28 Abidjan - Côte d’Ivoire', '(+225) 27 22 44 20 90/(+225) 27 22 44 16 92/ (+225) 05 04 04 61 61', 'PAS DE GARDE', '2023-08-12 14:54:59.000000', '2023-08-12 14:54:59.000000', NULL, 'static/images/pharmacie/phcie-du-palm-club2.jpg', 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `projet_projet`
--

CREATE TABLE `projet_projet` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `initiateur` varchar(20) NOT NULL,
  `type_project` varchar(20) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `projet_projet`
--

INSERT INTO `projet_projet` (`id`, `nom`, `initiateur`, `type_project`, `description`, `image`) VALUES
(1, 'Construction d\'une ecole primaire', 'mairie', 'anenagement', 'qsdfghjgsdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', 'static/images/projet/capture1_android_2_f5Gks9z.png');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `centre_sante_centre_sante`
--
ALTER TABLE `centre_sante_centre_sante`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `competence_competence`
--
ALTER TABLE `competence_competence`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `compte_habitant`
--
ALTER TABLE `compte_habitant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `compte_habitant_famille_id_f8ecc236_fk_famille_famille_id` (`famille_id`),
  ADD KEY `compte_habitant_metier_id_6f95230e_fk_metier_metier_id` (`metier_id`);

--
-- Index pour la table `compte_habitant_amenager`
--
ALTER TABLE `compte_habitant_amenager`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `compte_habitant_amenager_habitant_id_anemager_id_693b336a_uniq` (`habitant_id`,`anemager_id`),
  ADD KEY `compte_habitant_amen_anemager_id_96616faa_fk_deplaceme` (`anemager_id`);

--
-- Index pour la table `compte_habitant_centre_sante`
--
ALTER TABLE `compte_habitant_centre_sante`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `compte_habitant_centre_s_habitant_id_centre_sante_12add483_uniq` (`habitant_id`,`centre_sante_id`),
  ADD KEY `compte_habitant_cent_centre_sante_id_d98c04ee_fk_centre_sa` (`centre_sante_id`);

--
-- Index pour la table `compte_habitant_competence`
--
ALTER TABLE `compte_habitant_competence`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `compte_habitant_competen_habitant_id_competence_i_53e5a820_uniq` (`habitant_id`,`competence_id`),
  ADD KEY `compte_habitant_comp_competence_id_d919e18b_fk_competenc` (`competence_id`);

--
-- Index pour la table `compte_habitant_demenager`
--
ALTER TABLE `compte_habitant_demenager`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `compte_habitant_demenager_habitant_id_denemager_id_758fc8b2_uniq` (`habitant_id`,`denemager_id`),
  ADD KEY `compte_habitant_deme_denemager_id_6e47bd9a_fk_deplaceme` (`denemager_id`);

--
-- Index pour la table `compte_habitant_groups`
--
ALTER TABLE `compte_habitant_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `compte_habitant_groups_habitant_id_group_id_3c8407f9_uniq` (`habitant_id`,`group_id`),
  ADD KEY `compte_habitant_groups_group_id_259e7c28_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `compte_habitant_maladie`
--
ALTER TABLE `compte_habitant_maladie`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `compte_habitant_maladie_habitant_id_maladie_id_255de1fd_uniq` (`habitant_id`,`maladie_id`),
  ADD KEY `compte_habitant_mala_maladie_id_6f4d8b79_fk_maladies_` (`maladie_id`);

--
-- Index pour la table `compte_habitant_pharmacie`
--
ALTER TABLE `compte_habitant_pharmacie`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `compte_habitant_pharmacie_habitant_id_pharmacie_id_91a41a30_uniq` (`habitant_id`,`pharmacie_id`),
  ADD KEY `compte_habitant_phar_pharmacie_id_d8358d01_fk_pharmacie` (`pharmacie_id`);

--
-- Index pour la table `compte_habitant_user_permissions`
--
ALTER TABLE `compte_habitant_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `compte_habitant_user_per_habitant_id_permission_i_0bdccd14_uniq` (`habitant_id`,`permission_id`),
  ADD KEY `compte_habitant_user_permission_id_eec72e14_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `demande_emploie_demande_emploie`
--
ALTER TABLE `demande_emploie_demande_emploie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `demande_emploie_offre_emploi`
--
ALTER TABLE `demande_emploie_offre_emploi`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `deplacement_anemager`
--
ALTER TABLE `deplacement_anemager`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deplacement_anemager_famille_id_da0218a9_fk_famille_famille_id` (`famille_id`);

--
-- Index pour la table `deplacement_denemager`
--
ALTER TABLE `deplacement_denemager`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deplacement_denemager_famille_id_4407f61a_fk_famille_famille_id` (`famille_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_compte_habitant_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `etat_de_vie_deces`
--
ALTER TABLE `etat_de_vie_deces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `etat_de_vie_deces_famille_id_74ca0ec0_fk_famille_famille_id` (`famille_id`),
  ADD KEY `etat_de_vie_deces_hopital_id_b793f7d5_fk_centre_sa` (`hopital_id`);

--
-- Index pour la table `etat_de_vie_naissance`
--
ALTER TABLE `etat_de_vie_naissance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `etat_de_vie_naissance_famille_id_f769e888_fk_famille_famille_id` (`famille_id`),
  ADD KEY `etat_de_vie_naissanc_hopital_id_d608efef_fk_centre_sa` (`hopital_id`);

--
-- Index pour la table `famille_activite`
--
ALTER TABLE `famille_activite`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `famille_actualite`
--
ALTER TABLE `famille_actualite`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `famille_centre_interet`
--
ALTER TABLE `famille_centre_interet`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `famille_famille`
--
ALTER TABLE `famille_famille`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `maladies_epidemie`
--
ALTER TABLE `maladies_epidemie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `maladies_maladie`
--
ALTER TABLE `maladies_maladie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maladies_maladie_Epidemie_id_1f490b38_fk_maladies_epidemie_id` (`Epidemie_id`);

--
-- Index pour la table `metier_metier`
--
ALTER TABLE `metier_metier`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pharmacie_pharmacie`
--
ALTER TABLE `pharmacie_pharmacie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `projet_projet`
--
ALTER TABLE `projet_projet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT pour la table `centre_sante_centre_sante`
--
ALTER TABLE `centre_sante_centre_sante`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `competence_competence`
--
ALTER TABLE `competence_competence`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `compte_habitant`
--
ALTER TABLE `compte_habitant`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `compte_habitant_amenager`
--
ALTER TABLE `compte_habitant_amenager`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `compte_habitant_centre_sante`
--
ALTER TABLE `compte_habitant_centre_sante`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `compte_habitant_competence`
--
ALTER TABLE `compte_habitant_competence`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `compte_habitant_demenager`
--
ALTER TABLE `compte_habitant_demenager`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `compte_habitant_groups`
--
ALTER TABLE `compte_habitant_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `compte_habitant_maladie`
--
ALTER TABLE `compte_habitant_maladie`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `compte_habitant_pharmacie`
--
ALTER TABLE `compte_habitant_pharmacie`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `compte_habitant_user_permissions`
--
ALTER TABLE `compte_habitant_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `demande_emploie_demande_emploie`
--
ALTER TABLE `demande_emploie_demande_emploie`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `demande_emploie_offre_emploi`
--
ALTER TABLE `demande_emploie_offre_emploi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `deplacement_anemager`
--
ALTER TABLE `deplacement_anemager`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `deplacement_denemager`
--
ALTER TABLE `deplacement_denemager`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT pour la table `etat_de_vie_deces`
--
ALTER TABLE `etat_de_vie_deces`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `etat_de_vie_naissance`
--
ALTER TABLE `etat_de_vie_naissance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `famille_activite`
--
ALTER TABLE `famille_activite`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `famille_actualite`
--
ALTER TABLE `famille_actualite`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `famille_centre_interet`
--
ALTER TABLE `famille_centre_interet`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `famille_famille`
--
ALTER TABLE `famille_famille`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `maladies_epidemie`
--
ALTER TABLE `maladies_epidemie`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `maladies_maladie`
--
ALTER TABLE `maladies_maladie`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `metier_metier`
--
ALTER TABLE `metier_metier`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `pharmacie_pharmacie`
--
ALTER TABLE `pharmacie_pharmacie`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `projet_projet`
--
ALTER TABLE `projet_projet`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `compte_habitant`
--
ALTER TABLE `compte_habitant`
  ADD CONSTRAINT `compte_habitant_famille_id_f8ecc236_fk_famille_famille_id` FOREIGN KEY (`famille_id`) REFERENCES `famille_famille` (`id`),
  ADD CONSTRAINT `compte_habitant_metier_id_6f95230e_fk_metier_metier_id` FOREIGN KEY (`metier_id`) REFERENCES `metier_metier` (`id`);

--
-- Contraintes pour la table `compte_habitant_amenager`
--
ALTER TABLE `compte_habitant_amenager`
  ADD CONSTRAINT `compte_habitant_amen_anemager_id_96616faa_fk_deplaceme` FOREIGN KEY (`anemager_id`) REFERENCES `deplacement_anemager` (`id`),
  ADD CONSTRAINT `compte_habitant_amen_habitant_id_9ef03475_fk_compte_ha` FOREIGN KEY (`habitant_id`) REFERENCES `compte_habitant` (`id`);

--
-- Contraintes pour la table `compte_habitant_centre_sante`
--
ALTER TABLE `compte_habitant_centre_sante`
  ADD CONSTRAINT `compte_habitant_cent_centre_sante_id_d98c04ee_fk_centre_sa` FOREIGN KEY (`centre_sante_id`) REFERENCES `centre_sante_centre_sante` (`id`),
  ADD CONSTRAINT `compte_habitant_cent_habitant_id_8961e315_fk_compte_ha` FOREIGN KEY (`habitant_id`) REFERENCES `compte_habitant` (`id`);

--
-- Contraintes pour la table `compte_habitant_competence`
--
ALTER TABLE `compte_habitant_competence`
  ADD CONSTRAINT `compte_habitant_comp_competence_id_d919e18b_fk_competenc` FOREIGN KEY (`competence_id`) REFERENCES `competence_competence` (`id`),
  ADD CONSTRAINT `compte_habitant_comp_habitant_id_386be6ae_fk_compte_ha` FOREIGN KEY (`habitant_id`) REFERENCES `compte_habitant` (`id`);

--
-- Contraintes pour la table `compte_habitant_demenager`
--
ALTER TABLE `compte_habitant_demenager`
  ADD CONSTRAINT `compte_habitant_deme_denemager_id_6e47bd9a_fk_deplaceme` FOREIGN KEY (`denemager_id`) REFERENCES `deplacement_denemager` (`id`),
  ADD CONSTRAINT `compte_habitant_deme_habitant_id_c88ab39e_fk_compte_ha` FOREIGN KEY (`habitant_id`) REFERENCES `compte_habitant` (`id`);

--
-- Contraintes pour la table `compte_habitant_groups`
--
ALTER TABLE `compte_habitant_groups`
  ADD CONSTRAINT `compte_habitant_grou_habitant_id_e18238f0_fk_compte_ha` FOREIGN KEY (`habitant_id`) REFERENCES `compte_habitant` (`id`),
  ADD CONSTRAINT `compte_habitant_groups_group_id_259e7c28_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `compte_habitant_maladie`
--
ALTER TABLE `compte_habitant_maladie`
  ADD CONSTRAINT `compte_habitant_mala_habitant_id_aa3fe107_fk_compte_ha` FOREIGN KEY (`habitant_id`) REFERENCES `compte_habitant` (`id`),
  ADD CONSTRAINT `compte_habitant_mala_maladie_id_6f4d8b79_fk_maladies_` FOREIGN KEY (`maladie_id`) REFERENCES `maladies_maladie` (`id`);

--
-- Contraintes pour la table `compte_habitant_pharmacie`
--
ALTER TABLE `compte_habitant_pharmacie`
  ADD CONSTRAINT `compte_habitant_phar_habitant_id_5c9335ce_fk_compte_ha` FOREIGN KEY (`habitant_id`) REFERENCES `compte_habitant` (`id`),
  ADD CONSTRAINT `compte_habitant_phar_pharmacie_id_d8358d01_fk_pharmacie` FOREIGN KEY (`pharmacie_id`) REFERENCES `pharmacie_pharmacie` (`id`);

--
-- Contraintes pour la table `compte_habitant_user_permissions`
--
ALTER TABLE `compte_habitant_user_permissions`
  ADD CONSTRAINT `compte_habitant_user_habitant_id_e66a75ea_fk_compte_ha` FOREIGN KEY (`habitant_id`) REFERENCES `compte_habitant` (`id`),
  ADD CONSTRAINT `compte_habitant_user_permission_id_eec72e14_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Contraintes pour la table `deplacement_anemager`
--
ALTER TABLE `deplacement_anemager`
  ADD CONSTRAINT `deplacement_anemager_famille_id_da0218a9_fk_famille_famille_id` FOREIGN KEY (`famille_id`) REFERENCES `famille_famille` (`id`);

--
-- Contraintes pour la table `deplacement_denemager`
--
ALTER TABLE `deplacement_denemager`
  ADD CONSTRAINT `deplacement_denemager_famille_id_4407f61a_fk_famille_famille_id` FOREIGN KEY (`famille_id`) REFERENCES `famille_famille` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_compte_habitant_id` FOREIGN KEY (`user_id`) REFERENCES `compte_habitant` (`id`);

--
-- Contraintes pour la table `etat_de_vie_deces`
--
ALTER TABLE `etat_de_vie_deces`
  ADD CONSTRAINT `etat_de_vie_deces_famille_id_74ca0ec0_fk_famille_famille_id` FOREIGN KEY (`famille_id`) REFERENCES `famille_famille` (`id`),
  ADD CONSTRAINT `etat_de_vie_deces_hopital_id_b793f7d5_fk_centre_sa` FOREIGN KEY (`hopital_id`) REFERENCES `centre_sante_centre_sante` (`id`);

--
-- Contraintes pour la table `etat_de_vie_naissance`
--
ALTER TABLE `etat_de_vie_naissance`
  ADD CONSTRAINT `etat_de_vie_naissanc_hopital_id_d608efef_fk_centre_sa` FOREIGN KEY (`hopital_id`) REFERENCES `centre_sante_centre_sante` (`id`),
  ADD CONSTRAINT `etat_de_vie_naissance_famille_id_f769e888_fk_famille_famille_id` FOREIGN KEY (`famille_id`) REFERENCES `famille_famille` (`id`);

--
-- Contraintes pour la table `maladies_maladie`
--
ALTER TABLE `maladies_maladie`
  ADD CONSTRAINT `maladies_maladie_Epidemie_id_1f490b38_fk_maladies_epidemie_id` FOREIGN KEY (`Epidemie_id`) REFERENCES `maladies_epidemie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
