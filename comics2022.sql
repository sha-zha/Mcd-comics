-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 29 août 2022 à 14:03
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `comics2022`
--

-- --------------------------------------------------------

--
-- Structure de la table `collections`
--

CREATE TABLE `collections` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `statut` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_apparition` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `collections_comics`
--

CREATE TABLE `collections_comics` (
  `id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `comic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `comics`
--

CREATE TABLE `comics` (
  `id` int(11) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `resume` varchar(255) NOT NULL,
  `date_publication` date NOT NULL,
  `nombre_pages` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `comics_dessinateurs`
--

CREATE TABLE `comics_dessinateurs` (
  `id` int(11) NOT NULL,
  `comic_id` int(11) NOT NULL,
  `dessinateur_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `comics_editeurs`
--

CREATE TABLE `comics_editeurs` (
  `id` int(11) NOT NULL,
  `comic_id` int(11) NOT NULL,
  `editeur_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `comics_epoques`
--

CREATE TABLE `comics_epoques` (
  `id` int(11) NOT NULL,
  `comic_id` int(11) NOT NULL,
  `epoque_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `comics_personnages`
--

CREATE TABLE `comics_personnages` (
  `id` int(11) NOT NULL,
  `comic_id` int(11) NOT NULL,
  `personnage_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `comics_recompenses`
--

CREATE TABLE `comics_recompenses` (
  `id` int(11) NOT NULL,
  `comic_id` int(11) NOT NULL,
  `recompense_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `comics_scenaristes`
--

CREATE TABLE `comics_scenaristes` (
  `id` int(11) NOT NULL,
  `comic_id` int(11) NOT NULL,
  `scenariste_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `comics_series`
--

CREATE TABLE `comics_series` (
  `id` int(11) NOT NULL,
  `comic_id` int(11) NOT NULL,
  `serie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `comics_univers`
--

CREATE TABLE `comics_univers` (
  `id` int(11) NOT NULL,
  `comic_id` int(11) NOT NULL,
  `univer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `dessinateurs`
--

CREATE TABLE `dessinateurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `pseudo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `editeurs`
--

CREATE TABLE `editeurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `epoques`
--

CREATE TABLE `epoques` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `debut_epoque` date NOT NULL,
  `fin_epoque` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

CREATE TABLE `personnages` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `statut` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `premiere_apparition` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `recompenses`
--

CREATE TABLE `recompenses` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `annee_obtenuee` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `scenaristes`
--

CREATE TABLE `scenaristes` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `pseudo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `series`
--

CREATE TABLE `series` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `nombre_de_volumes` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `annee_parution` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `univers`
--

CREATE TABLE `univers` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `collections_comics`
--
ALTER TABLE `collections_comics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_collection_id` (`collection_id`),
  ADD KEY `fk_comic_id_relation_collection` (`comic_id`);

--
-- Index pour la table `comics`
--
ALTER TABLE `comics`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comics_dessinateurs`
--
ALTER TABLE `comics_dessinateurs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_dessinateur_id` (`dessinateur_id`),
  ADD KEY `fk_comic_id_relation_dessinateur` (`comic_id`) USING BTREE;

--
-- Index pour la table `comics_editeurs`
--
ALTER TABLE `comics_editeurs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_editeur_id` (`editeur_id`),
  ADD KEY `fk_comic_id_relation_editeur` (`comic_id`);

--
-- Index pour la table `comics_epoques`
--
ALTER TABLE `comics_epoques`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comic_id_relation_epoque` (`comic_id`),
  ADD KEY `fk_epoque_id` (`epoque_id`);

--
-- Index pour la table `comics_personnages`
--
ALTER TABLE `comics_personnages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comic_id_relation_personnage` (`comic_id`),
  ADD KEY `fk_personnage_id` (`personnage_id`);

--
-- Index pour la table `comics_recompenses`
--
ALTER TABLE `comics_recompenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comic_id_relation_recompense` (`comic_id`),
  ADD KEY `fk_recompense_id` (`recompense_id`);

--
-- Index pour la table `comics_scenaristes`
--
ALTER TABLE `comics_scenaristes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_scenariste_id` (`scenariste_id`),
  ADD KEY `fk_comic_id_relation_scenariste` (`comic_id`);

--
-- Index pour la table `comics_series`
--
ALTER TABLE `comics_series`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comic_id_relation_serie` (`comic_id`),
  ADD KEY `fk_serie_id` (`serie_id`);

--
-- Index pour la table `comics_univers`
--
ALTER TABLE `comics_univers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comic_id_relation_univer` (`comic_id`),
  ADD KEY `fk_univer_id` (`univer_id`);

--
-- Index pour la table `dessinateurs`
--
ALTER TABLE `dessinateurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `editeurs`
--
ALTER TABLE `editeurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `epoques`
--
ALTER TABLE `epoques`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personnages`
--
ALTER TABLE `personnages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `recompenses`
--
ALTER TABLE `recompenses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `scenaristes`
--
ALTER TABLE `scenaristes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `univers`
--
ALTER TABLE `univers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `collections_comics`
--
ALTER TABLE `collections_comics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `comics`
--
ALTER TABLE `comics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `comics_dessinateurs`
--
ALTER TABLE `comics_dessinateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `comics_editeurs`
--
ALTER TABLE `comics_editeurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `comics_epoques`
--
ALTER TABLE `comics_epoques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `comics_personnages`
--
ALTER TABLE `comics_personnages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `comics_recompenses`
--
ALTER TABLE `comics_recompenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `comics_scenaristes`
--
ALTER TABLE `comics_scenaristes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `comics_series`
--
ALTER TABLE `comics_series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `comics_univers`
--
ALTER TABLE `comics_univers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dessinateurs`
--
ALTER TABLE `dessinateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `editeurs`
--
ALTER TABLE `editeurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `epoques`
--
ALTER TABLE `epoques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `personnages`
--
ALTER TABLE `personnages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `recompenses`
--
ALTER TABLE `recompenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `scenaristes`
--
ALTER TABLE `scenaristes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `series`
--
ALTER TABLE `series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `univers`
--
ALTER TABLE `univers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `collections_comics`
--
ALTER TABLE `collections_comics`
  ADD CONSTRAINT `fk_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_comic_id_relation_collection` FOREIGN KEY (`comic_id`) REFERENCES `comics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `comics_dessinateurs`
--
ALTER TABLE `comics_dessinateurs`
  ADD CONSTRAINT `fk_comic_id_relation_dessinateur` FOREIGN KEY (`comic_id`) REFERENCES `comics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_dessinateur_id` FOREIGN KEY (`dessinateur_id`) REFERENCES `dessinateurs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `comics_editeurs`
--
ALTER TABLE `comics_editeurs`
  ADD CONSTRAINT `fk_comic_id_relation_editeur` FOREIGN KEY (`comic_id`) REFERENCES `comics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_editeur_id` FOREIGN KEY (`editeur_id`) REFERENCES `editeurs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `comics_epoques`
--
ALTER TABLE `comics_epoques`
  ADD CONSTRAINT `fk_comic_id_relation_epoque` FOREIGN KEY (`comic_id`) REFERENCES `comics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_epoque_id` FOREIGN KEY (`epoque_id`) REFERENCES `epoques` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `comics_personnages`
--
ALTER TABLE `comics_personnages`
  ADD CONSTRAINT `fk_comic_id_relation_personnage` FOREIGN KEY (`comic_id`) REFERENCES `comics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_personnage_id` FOREIGN KEY (`personnage_id`) REFERENCES `personnages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `comics_recompenses`
--
ALTER TABLE `comics_recompenses`
  ADD CONSTRAINT `fk_comic_id_relation_recompense` FOREIGN KEY (`comic_id`) REFERENCES `comics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_recompense_id` FOREIGN KEY (`recompense_id`) REFERENCES `recompenses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `comics_scenaristes`
--
ALTER TABLE `comics_scenaristes`
  ADD CONSTRAINT `comics_scenaristes_ibfk_1` FOREIGN KEY (`comic_id`) REFERENCES `comics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comics_scenaristes_ibfk_2` FOREIGN KEY (`scenariste_id`) REFERENCES `scenaristes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `comics_series`
--
ALTER TABLE `comics_series`
  ADD CONSTRAINT `fk_comic_id_relation_serie` FOREIGN KEY (`comic_id`) REFERENCES `comics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_serie_id` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `comics_univers`
--
ALTER TABLE `comics_univers`
  ADD CONSTRAINT `fk_comic_id_relation_univer` FOREIGN KEY (`comic_id`) REFERENCES `comics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_univer_id` FOREIGN KEY (`univer_id`) REFERENCES `univers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
