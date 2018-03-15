-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mer 14 Mars 2018 à 22:26
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bd`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(50) NOT NULL,
  `mdp_admin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `arbitre`
--

CREATE TABLE `arbitre` (
  `id_arbitre` int(11) NOT NULL,
  `nom_arbitre` varchar(30) NOT NULL,
  `prenom_arbitre` varchar(30) NOT NULL,
  `ddn_arbitre` date NOT NULL,
  `enum_poste` enum('arbitre_touche','abitre_cental','arbitre_assistant','arbitre_remplacant') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `entraineur`
--

CREATE TABLE `entraineur` (
  `id_entraineur` int(11) NOT NULL,
  `nom_entraineur` varchar(30) NOT NULL,
  `prénom_entraineur` varchar(30) NOT NULL,
  `ddn_entraineur` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `entraineur`
--

INSERT INTO `entraineur` (`id_entraineur`, `nom_entraineur`, `prénom_entraineur`, `ddn_entraineur`) VALUES
(1, 'Zinédine', 'Zidane', '1972-06-23'),
(2, 'Gattuso', 'Gennaro', '1978-01-09'),
(3, 'Simeone', 'Diego', '1970-04-28'),
(4, 'Valverde', 'Ernesto ', '1964-02-09'),
(5, 'Guardiola', 'Pep', '1971-01-18'),
(6, 'Mourinho', 'José', '1963-01-26'),
(7, 'Heynckes', 'Jupp', '1945-05-09'),
(8, 'Allegri', 'Massimiliano (juv)', '1967-08-11'),
(9, 'Pochettino', 'Mauricio', '1972-03-02'),
(10, 'Conte', 'Antonio', '1969-07-31'),
(11, 'Klopp', 'Jürgen', '1967-06-16'),
(12, 'Garcia', 'Rudi', '1964-02-20'),
(13, 'Wenger', 'Arsène', '1949-10-22'),
(14, 'Emery', 'Unai', '1971-11-03'),
(15, 'Génésio', 'Bruno', '1966-09-01'),
(16, 'Poyet', 'Gustavo', '1967-11-15');

-- --------------------------------------------------------

--
-- Structure de la table `equipe`
--

CREATE TABLE `equipe` (
  `id_equipe` int(11) NOT NULL,
  `nom_equipe` varchar(30) NOT NULL,
  `id_entraineur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `equipe`
--

INSERT INTO `equipe` (`id_equipe`, `nom_equipe`, `id_entraineur`) VALUES
(1, 'Real', 1),
(2, 'Milan Ac', 2),
(3, 'Atletico de Madrid', 3),
(4, 'Barcelone Fc', 4),
(5, 'Man city', 5),
(6, 'Manchester United', 6),
(7, 'Bayern', 7),
(8, 'Juventus', 8),
(9,'Tottenham', 9),
(10,'Chelsea',10),
(11, 'Liverpool', 11),
(12,'Marseille',12),
(13, 'Arsenal', 13),
(14, 'PSG', 14),
(15, 'Lyon', 15),
(16,'Bordeaux',16)


-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

CREATE TABLE `evenement` (
  `id_evenement` int(11) NOT NULL,
  `type` enum('but','carton jaune','carton rouge','hors-jeu','faute','dribble','passe decisive','tacle') NOT NULL,
  `id_joueur` int(11) DEFAULT NULL,
  `id_entraineur` int(11) DEFAULT NULL,
  `id_equipe` int(11) DEFAULT NULL,
  `id_rencontre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

CREATE TABLE `joueur` (
  `id_joueur` int(11) NOT NULL,
  `nom_joueur` varchar(30) NOT NULL,
  `prenom_joueur` varchar(30) NOT NULL,
  `nationalite_joueur` varchar(30) NOT NULL,
  `ddn_joueur` date NOT NULL,
  `id_equipe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--

-- --------------------------------------------------------

--
-- Structure de la table `phase`
--

CREATE TABLE `phase` (
  `id_phase` int(11) NOT NULL,
  `enum_phase` enum('eliminatoires','huitieme_finale','quart_finale','demi_finale','finale') NOT NULL,
  `id_tournoi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `poule`
--

CREATE TABLE `poule` (
  `id_poule` int(11) NOT NULL,
  `nom_poule` varchar(30) NOT NULL,
  `id_phase` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `rencontre`
--

CREATE TABLE `rencontre` (
  `id_rencontre` int(11) NOT NULL,
  `date_rencontre` date NOT NULL,
  `heure_rencontre` time NOT NULL,
  `id_equipe1` int(11) NOT NULL,
  `id_equipe2` int(11) NOT NULL,
  `id_stade` int(11) NOT NULL,
  `id_phase` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `stade`
--

CREATE TABLE `stade` (
  `id_stade` int(11) NOT NULL,
  `nom_stade` varchar(30) DEFAULT NULL,
  `ville_stade` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tournoi`
--

CREATE TABLE `tournoi` (
  `id_tournoi` int(11) NOT NULL,
  `nom_tournoi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `arbitre`
--
ALTER TABLE `arbitre`
  ADD PRIMARY KEY (`id_arbitre`);

--
-- Index pour la table `entraineur`
--
ALTER TABLE `entraineur`
  ADD PRIMARY KEY (`id_entraineur`);

--
-- Index pour la table `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`id_equipe`),
  ADD KEY `fk_entraineur_equipe` (`id_entraineur`);

--
-- Index pour la table `evenement`
--
ALTER TABLE `evenement`
  ADD PRIMARY KEY (`id_evenement`),
  ADD KEY `fk_joueur_evenement` (`id_joueur`),
  ADD KEY `fk_entraineur_evenement` (`id_entraineur`),
  ADD KEY `fk_equipe_evenement` (`id_equipe`),
  ADD KEY `fk_rencontre_evenement` (`id_rencontre`);

--
-- Index pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD PRIMARY KEY (`id_joueur`),
  ADD KEY `id_equipe` (`id_equipe`);

--
-- Index pour la table `phase`
--
ALTER TABLE `phase`
  ADD PRIMARY KEY (`id_phase`),
  ADD KEY `fk_tournoi_phase` (`id_tournoi`);

--
-- Index pour la table `poule`
--
ALTER TABLE `poule`
  ADD PRIMARY KEY (`id_poule`),
  ADD KEY `fk_phase_poule` (`id_phase`);

--
-- Index pour la table `rencontre`
--
ALTER TABLE `rencontre`
  ADD PRIMARY KEY (`id_rencontre`),
  ADD KEY `fk_equipe1_rencontre` (`id_equipe1`),
  ADD KEY `fk_equipe2_rencontre` (`id_equipe2`),
  ADD KEY `fk_stade_rencontre` (`id_stade`),
  ADD KEY `fk_phase_rencontre` (`id_phase`);

--
-- Index pour la table `stade`
--
ALTER TABLE `stade`
  ADD PRIMARY KEY (`id_stade`);

--
-- Index pour la table `tournoi`
--
ALTER TABLE `tournoi`
  ADD PRIMARY KEY (`id_tournoi`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `arbitre`
--
ALTER TABLE `arbitre`
  MODIFY `id_arbitre` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `entraineur`
--
ALTER TABLE `entraineur`
  MODIFY `id_entraineur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `equipe`
--
ALTER TABLE `equipe`
  MODIFY `id_equipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT pour la table `evenement`
--
ALTER TABLE `evenement`
  MODIFY `id_evenement` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `joueur`
--
ALTER TABLE `joueur`
  MODIFY `id_joueur` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `phase`
--
ALTER TABLE `phase`
  MODIFY `id_phase` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `poule`
--
ALTER TABLE `poule`
  MODIFY `id_poule` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `rencontre`
--
ALTER TABLE `rencontre`
  MODIFY `id_rencontre` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `stade`
--
ALTER TABLE `stade`
  MODIFY `id_stade` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tournoi`
--
ALTER TABLE `tournoi`
  MODIFY `id_tournoi` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `equipe`
--
ALTER TABLE `equipe`
  ADD CONSTRAINT `fk_entraineur_equipe` FOREIGN KEY (`id_entraineur`) REFERENCES `entraineur` (`id_entraineur`);

--
-- Contraintes pour la table `evenement`
--
ALTER TABLE `evenement`
  ADD CONSTRAINT `fk_entraineur_evenement` FOREIGN KEY (`id_entraineur`) REFERENCES `evenement` (`id_evenement`),
  ADD CONSTRAINT `fk_equipe_evenement` FOREIGN KEY (`id_equipe`) REFERENCES `evenement` (`id_evenement`),
  ADD CONSTRAINT `fk_joueur_evenement` FOREIGN KEY (`id_joueur`) REFERENCES `evenement` (`id_evenement`),
  ADD CONSTRAINT `fk_rencontre_evenement` FOREIGN KEY (`id_rencontre`) REFERENCES `rencontre` (`id_rencontre`);

--
-- Contraintes pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD CONSTRAINT `joueur_ibfk_1` FOREIGN KEY (`id_equipe`) REFERENCES `equipe` (`id_equipe`);

--
-- Contraintes pour la table `phase`
--
ALTER TABLE `phase`
  ADD CONSTRAINT `fk_tournoi_phase` FOREIGN KEY (`id_tournoi`) REFERENCES `tournoi` (`id_tournoi`);

--
-- Contraintes pour la table `poule`
--
ALTER TABLE `poule`
  ADD CONSTRAINT `fk_phase_poule` FOREIGN KEY (`id_phase`) REFERENCES `phase` (`id_phase`);

--
-- Contraintes pour la table `rencontre`
--
ALTER TABLE `rencontre`
  ADD CONSTRAINT `fk_equipe1_rencontre` FOREIGN KEY (`id_equipe1`) REFERENCES `equipe` (`id_equipe`),
  ADD CONSTRAINT `fk_equipe2_rencontre` FOREIGN KEY (`id_equipe2`) REFERENCES `equipe` (`id_equipe`),
  ADD CONSTRAINT `fk_phase_rencontre` FOREIGN KEY (`id_phase`) REFERENCES `phase` (`id_phase`),
  ADD CONSTRAINT `fk_stade_rencontre` FOREIGN KEY (`id_stade`) REFERENCES `stade` (`id_stade`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
