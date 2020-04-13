-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2020 at 02:13 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ansible-flask`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'system', 'This User has been created', 1, 'App\\Models\\User', NULL, NULL, '{\"attributes\":{\"name\":\"Andrew Broomhead\",\"email\":\"broomhead@ansible-flask.com\",\"url\":null,\"image\":\"\\/img\\/dummy\\/u1.png\"}}', '2020-04-01 22:28:20', '2020-04-01 22:28:20'),
(2, 'system', 'This User has been created', 2, 'App\\Models\\User', NULL, NULL, '{\"attributes\":{\"name\":\"Augustus Okoye\",\"email\":\"okoye@ansible-flask.com\",\"url\":null,\"image\":\"\\/img\\/dummy\\/u1.png\"}}', '2020-04-01 22:28:20', '2020-04-01 22:28:20'),
(3, 'system', 'This User has been created', 3, 'App\\Models\\User', NULL, NULL, '{\"attributes\":{\"name\":\"Ben Stuart\",\"email\":\"stuart@ansible-flask.com\",\"url\":null,\"image\":\"\\/img\\/dummy\\/u1.png\"}}', '2020-04-01 22:28:20', '2020-04-01 22:28:20'),
(4, 'system', 'This User has been created', 4, 'App\\Models\\User', NULL, NULL, '{\"attributes\":{\"name\":\"Phil Cutler\",\"email\":\"cutler@ansible-flask.com\",\"url\":null,\"image\":\"\\/img\\/dummy\\/u1.png\"}}', '2020-04-01 22:28:20', '2020-04-01 22:28:20'),
(5, 'system', 'This PrivateKey has been created', 1, 'App\\Models\\PrivateKey', NULL, NULL, '{\"attributes\":{\"name\":\"SSH Key #720\",\"file_name\":\"test.pem\"}}', '2020-04-01 22:28:20', '2020-04-01 22:28:20'),
(6, 'system', 'This PrivateKey has been created', 2, 'App\\Models\\PrivateKey', NULL, NULL, '{\"attributes\":{\"name\":\"SSH Key #97\",\"file_name\":\"test.pem\"}}', '2020-04-01 22:28:20', '2020-04-01 22:28:20'),
(7, 'system', 'This PrivateKey has been created', 3, 'App\\Models\\PrivateKey', NULL, NULL, '{\"attributes\":{\"name\":\"SSH Key #319\",\"file_name\":\"test.pem\"}}', '2020-04-01 22:28:20', '2020-04-01 22:28:20'),
(8, 'system', 'This PrivateKey has been created', 4, 'App\\Models\\PrivateKey', NULL, NULL, '{\"attributes\":{\"name\":\"SSH Key #447\",\"file_name\":\"test.pem\"}}', '2020-04-01 22:28:20', '2020-04-01 22:28:20'),
(9, 'system', 'This Host has been created', 1, 'App\\Models\\Host', NULL, NULL, '{\"attributes\":{\"name\":\"host-996.966.199\",\"hostname\":\"host-996.966.199\",\"ssh_port\":22,\"private_key_id\":1,\"vars\":null,\"user\":\"ubuntu\"}}', '2020-04-01 22:28:20', '2020-04-01 22:28:20'),
(10, 'system', 'This Host has been created', 2, 'App\\Models\\Host', NULL, NULL, '{\"attributes\":{\"name\":\"host-916.156.598\",\"hostname\":\"host-916.156.598\",\"ssh_port\":22,\"private_key_id\":1,\"vars\":null,\"user\":\"ubuntu\"}}', '2020-04-01 22:28:21', '2020-04-01 22:28:21'),
(11, 'system', 'This Host has been created', 3, 'App\\Models\\Host', NULL, NULL, '{\"attributes\":{\"name\":\"host-688.993.222\",\"hostname\":\"host-688.993.222\",\"ssh_port\":22,\"private_key_id\":1,\"vars\":null,\"user\":\"ubuntu\"}}', '2020-04-01 22:28:21', '2020-04-01 22:28:21'),
(12, 'system', 'This Host has been created', 4, 'App\\Models\\Host', NULL, NULL, '{\"attributes\":{\"name\":\"host-425.494.815\",\"hostname\":\"host-425.494.815\",\"ssh_port\":22,\"private_key_id\":1,\"vars\":null,\"user\":\"ubuntu\"}}', '2020-04-01 22:28:21', '2020-04-01 22:28:21'),
(13, 'system', 'This Host has been created', 5, 'App\\Models\\Host', NULL, NULL, '{\"attributes\":{\"name\":\"host-235.632.671\",\"hostname\":\"host-235.632.671\",\"ssh_port\":22,\"private_key_id\":1,\"vars\":null,\"user\":\"ubuntu\"}}', '2020-04-01 22:28:21', '2020-04-01 22:28:21'),
(14, 'system', 'This Host has been created', 6, 'App\\Models\\Host', NULL, NULL, '{\"attributes\":{\"name\":\"host-312.628.442\",\"hostname\":\"host-312.628.442\",\"ssh_port\":22,\"private_key_id\":1,\"vars\":null,\"user\":\"ubuntu\"}}', '2020-04-01 22:28:21', '2020-04-01 22:28:21'),
(15, 'system', 'This Host has been created', 7, 'App\\Models\\Host', NULL, NULL, '{\"attributes\":{\"name\":\"host-214.863.929\",\"hostname\":\"host-214.863.929\",\"ssh_port\":22,\"private_key_id\":1,\"vars\":null,\"user\":\"ubuntu\"}}', '2020-04-01 22:28:21', '2020-04-01 22:28:21'),
(16, 'system', 'This Host has been created', 8, 'App\\Models\\Host', NULL, NULL, '{\"attributes\":{\"name\":\"host-721.673.430\",\"hostname\":\"host-721.673.430\",\"ssh_port\":22,\"private_key_id\":1,\"vars\":null,\"user\":\"ubuntu\"}}', '2020-04-01 22:28:21', '2020-04-01 22:28:21'),
(17, 'system', 'This Host has been created', 9, 'App\\Models\\Host', NULL, NULL, '{\"attributes\":{\"name\":\"host-123.703.710\",\"hostname\":\"host-123.703.710\",\"ssh_port\":22,\"private_key_id\":1,\"vars\":null,\"user\":\"ubuntu\"}}', '2020-04-01 22:28:21', '2020-04-01 22:28:21'),
(18, 'system', 'This Host has been created', 10, 'App\\Models\\Host', NULL, NULL, '{\"attributes\":{\"name\":\"host-1.620.112\",\"hostname\":\"host-1.620.112\",\"ssh_port\":22,\"private_key_id\":1,\"vars\":null,\"user\":\"ubuntu\"}}', '2020-04-01 22:28:21', '2020-04-01 22:28:21'),
(19, 'system', 'This Role has been created', 1, 'App\\Models\\Role', NULL, NULL, '{\"attributes\":{\"name\":\"Docker (angstwad\\/docker.ubuntu)\",\"description\":\"An Ansible Role that installs Docker on Linux.\",\"src\":\"https:\\/\\/github.com\\/angstwad\\/docker.ubuntu.git\",\"version\":\"origin\\/master\",\"cms\":\"git\",\"become\":false,\"vars\":null}}', '2020-04-01 22:28:21', '2020-04-01 22:28:21'),
(20, 'system', 'This Role has been created', 2, 'App\\Models\\Role', NULL, NULL, '{\"attributes\":{\"name\":\"Consul\",\"description\":\"\\n\\t\\t\\t\\tconsul is an ansible role which:\\n\\t\\t\\t\\tinstalls consul\\n\\t\\t\\t\\tconfigures consul\\n\\t\\t\\t\\toptionally installs and configures consul ui\\n\\t\\t\\t\\toptionally installs dnsmasq\\n\\t\\t\\t\\toptionally install consulate\\n\\t\\t\\t\\toptionally install consul-cli\\n\\t\\t\\t\\tconfigures consul service(s)\\n\\t\\t\\t\",\"src\":\"https:\\/\\/github.com\\/mattfinlayson\\/ansible-consul.git\",\"version\":\"origin\\/master\",\"cms\":\"git\",\"become\":false,\"vars\":null}}', '2020-04-01 22:28:21', '2020-04-01 22:28:21'),
(21, 'system', 'This Role has been created', 3, 'App\\Models\\Role', NULL, NULL, '{\"attributes\":{\"name\":\"Node.js\",\"description\":\"Installs Node.js on RHEL\\/CentOS or Debian\\/Ubuntu.\",\"src\":\"https:\\/\\/github.com\\/geerlingguy\\/ansible-role-nodejs.git\",\"version\":\"origin\\/master\",\"cms\":\"git\",\"become\":false,\"vars\":null}}', '2020-04-01 22:28:21', '2020-04-01 22:28:21'),
(22, 'system', 'This Role has been created', 4, 'App\\Models\\Role', NULL, NULL, '{\"attributes\":{\"name\":\"Hello World\",\"description\":\"Very simple role for displaying Hello World.\",\"src\":\"https:\\/\\/github.com\\/marcinpraczko\\/ansible-role-hello_world.git\",\"version\":\"origin\\/master\",\"cms\":\"git\",\"become\":false,\"vars\":null}}', '2020-04-01 22:28:21', '2020-04-01 22:28:21'),
(23, 'system', 'This Role has been created', 5, 'App\\Models\\Role', NULL, NULL, '{\"attributes\":{\"name\":\"Role 9AFb\",\"description\":\"Optio dolores consequuntur dolores necessitatibus voluptatum.\",\"src\":\"git@gitlab:DCMS\\/1585817901-Qsrqm.git\",\"version\":\"origin\\/master\",\"cms\":\"git\",\"become\":false,\"vars\":null}}', '2020-04-01 22:28:21', '2020-04-01 22:28:21'),
(24, 'system', 'This Role has been created', 6, 'App\\Models\\Role', NULL, NULL, '{\"attributes\":{\"name\":\"Role Valz\",\"description\":\"Molestias hic omnis rem eaque nihil quas dolorum.\",\"src\":\"git@gitlab:DCMS\\/1585817901-ZmInR.git\",\"version\":\"origin\\/master\",\"cms\":\"git\",\"become\":false,\"vars\":null}}', '2020-04-01 22:28:21', '2020-04-01 22:28:21'),
(25, 'system', 'This Role has been created', 7, 'App\\Models\\Role', NULL, NULL, '{\"attributes\":{\"name\":\"Role ddSN\",\"description\":\"Autem autem id amet alias similique enim in.\",\"src\":\"git@gitlab:DCMS\\/1585817901-H1pYT.git\",\"version\":\"origin\\/master\",\"cms\":\"git\",\"become\":false,\"vars\":null}}', '2020-04-01 22:28:21', '2020-04-01 22:28:21'),
(26, 'system', 'This Role has been created', 8, 'App\\Models\\Role', NULL, NULL, '{\"attributes\":{\"name\":\"Role 3CPB\",\"description\":\"Quo eum eveniet unde quidem voluptatem.\",\"src\":\"git@gitlab:DCMS\\/1585817901-LaZJM.git\",\"version\":\"origin\\/master\",\"cms\":\"git\",\"become\":false,\"vars\":null}}', '2020-04-01 22:28:21', '2020-04-01 22:28:21'),
(27, 'system', 'This Play has been created', 1, 'App\\Models\\Play', NULL, NULL, '{\"attributes\":{\"name\":\"Play #1\",\"description\":\"Docker + Consul + Nodejs\",\"publication_status\":\"publication:status:draft\",\"vars\":null}}', '2020-04-01 22:28:21', '2020-04-01 22:28:21'),
(28, 'system', 'This Play has been created', 2, 'App\\Models\\Play', NULL, NULL, '{\"attributes\":{\"name\":\"Play #2 (docker)\",\"description\":\"Docker\",\"publication_status\":\"publication:status:draft\",\"vars\":null}}', '2020-04-01 22:28:21', '2020-04-01 22:28:21'),
(29, 'system', 'This Site has been created', 1, 'App\\Models\\Site', NULL, NULL, '{\"attributes\":{\"name\":\"Site #1\",\"description\":\"\\n\\t\\t\\t\\tPlay #1: Docker + Consul + Nodejs\\n\\t\\t\\t\\tPlay #2: Docker\\n\\t\\t\\t\"}}', '2020-04-01 22:28:21', '2020-04-01 22:28:21'),
(30, 'system', 'This Site has been created', 2, 'App\\Models\\Site', NULL, NULL, '{\"attributes\":{\"name\":\"Site #2 (Docker)\",\"description\":\"Play #2: Docker\"}}', '2020-04-01 22:28:21', '2020-04-01 22:28:21'),
(31, 'system', 'This Repository has been created', 1, 'App\\Models\\Repository', NULL, NULL, '{\"attributes\":{\"name\":\"Gitlab Refactory\",\"url\":\"https:\\/\\/refactory.australiacentral.cloudapp.azure.com\\/\",\"cms\":\"git\",\"client_id\":null,\"client_secret\":null}}', '2020-04-01 22:28:21', '2020-04-01 22:28:21'),
(32, 'system', '<b>Augustus Okoye</b> updated this PrivateKey', 4, 'App\\Models\\PrivateKey', 2, 'App\\Models\\User', '{\"attributes\":{\"name\":\"MS Ubuntu\",\"file_name\":\"ms-ubuntu.pem\"},\"old\":{\"name\":\"SSH Key #447\",\"file_name\":\"test.pem\"}}', '2020-04-01 23:36:34', '2020-04-01 23:36:34'),
(33, 'system', '<b>Augustus Okoye</b> updated this Host', 10, 'App\\Models\\Host', 2, 'App\\Models\\User', '{\"attributes\":{\"name\":\"Sandbox\",\"hostname\":\"3.16.186.103\",\"private_key_id\":4},\"old\":{\"name\":\"host-1.620.112\",\"hostname\":\"host-1.620.112\",\"private_key_id\":1}}', '2020-04-01 23:36:58', '2020-04-01 23:36:58'),
(34, 'system', '<b>Augustus Okoye</b> updated this Role', 1, 'App\\Models\\Role', 2, 'App\\Models\\User', '{\"attributes\":{\"become\":true},\"old\":{\"become\":false}}', '2020-04-01 23:37:39', '2020-04-01 23:37:39'),
(35, 'system', '<b>Augustus Okoye</b> created this Site', 3, 'App\\Models\\Site', 2, 'App\\Models\\User', '{\"attributes\":{\"name\":\"Deploy docker\",\"description\":\"Site auto-created for Deployment \\\"Deploy docker\\\"\"}}', '2020-04-01 23:38:02', '2020-04-01 23:38:02'),
(36, 'default', 'Deployed some plays', 1, 'App\\Models\\Deployment', 2, 'App\\Models\\User', '[]', '2020-04-01 23:38:02', '2020-04-01 23:38:02'),
(37, 'default', 'Replayed a deployment', 1, 'App\\Models\\Deployment', 2, 'App\\Models\\User', '[]', '2020-04-01 23:41:39', '2020-04-01 23:41:39'),
(38, 'default', 'Replayed a deployment', 1, 'App\\Models\\Deployment', 2, 'App\\Models\\User', '[]', '2020-04-01 23:42:45', '2020-04-01 23:42:45'),
(39, 'default', 'Replayed a deployment', 1, 'App\\Models\\Deployment', 2, 'App\\Models\\User', '[]', '2020-04-01 23:43:27', '2020-04-01 23:43:27'),
(40, 'default', 'Replayed a deployment', 1, 'App\\Models\\Deployment', 2, 'App\\Models\\User', '[]', '2020-04-01 23:48:05', '2020-04-01 23:48:05');

-- --------------------------------------------------------

--
-- Table structure for table `deployments`
--

CREATE TABLE `deployments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `directory` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logs` longtext COLLATE utf8mb4_unicode_ci,
  `event_channel` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `site_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'status:pending',
  `status_message` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deployments`
--

INSERT INTO `deployments` (`id`, `created_at`, `updated_at`, `name`, `description`, `directory`, `logs`, `event_channel`, `user_id`, `site_id`, `status`, `status_message`, `deleted_at`) VALUES
(1, '2020-04-01 23:38:02', '2020-04-01 23:50:26', 'Deploy docker', NULL, '/home/augustus/.ansible-flask/plays/deploy-docker3', '>>> Starting...\n\n- extracting docker-angstwaddockerubuntu to /home/augustus/.ansible-flask/plays/deploy-docker3/roles/docker-angstwaddockerubuntu\r\n- docker-angstwaddockerubuntu (origin/master) was installed successfully\r\n\r\nPLAY [Play] ********************************************************************\r\n\r\nTASK [Gathering Facts] *********************************************************\r\n[0;32mok: [sandbox][0m\r\n\r\nTASK [debug] *******************************************************************\r\n[0;32mok: [sandbox] => {[0m\r\n[0;32m    \"msg\": \"Running Play #2 (docker) on host ip-172-31-17-8 @ 172.31.17.8 as user ubuntu\"[0m\r\n[0;32m}[0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Include proper python vars file] ***********\r\n[0;32mok: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Fail if not a supported release of Ubuntu] ***\r\n[0;36mskipping: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Fail if not a new release of Debian] *******\r\n[0;36mskipping: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Fail if using python3 with Ansible<2.3] ****\r\n[0;36mskipping: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Install backported trusty kernel onto 12.04] ***\r\n[0;36mskipping: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Install Xorg packages for backported kernels (very optional)] ***\r\n[0;36mskipping: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Install latest kernel for Ubuntu 13.04+] ***\r\n[0;36mskipping: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Install cgroup-lite for Ubuntu 13.10] ******\r\n[0;36mskipping: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Reboot instance] ***************************\r\n[0;36mskipping: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Wait for instance to come online (10 minute timeout)] ***\r\n[0;36mskipping: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Uninstall old versions of Docker] **********\r\n[0;36mskipping: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Install linux-image-extra-* packages to enable AuFS driver] ***\r\n[0;36mskipping: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Try again to install linux-image-extra if previous attempt failed] ***\r\n[0;36mskipping: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Ensure dirmngr is available] ***************\r\n[0;32mok: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Add Docker repository key] *****************\r\n[0;32mok: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Alternative | Add Docker repository key] ***\r\n[0;36mskipping: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : HTTPS APT transport for Docker repository] ***\r\n[0;32mok: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Add Docker repository and update apt cache] ***\r\n[0;32mok: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Install (or update) docker package] ********\r\n[0;32mok: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Set systemd playbook var] ******************\r\n[0;32mok: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Set systemd playbook var] ******************\r\n[0;32mok: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Set docker_http_proxy_defined flag] ********\r\n[0;32mok: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Set docker_https_proxy_defined flag] *******\r\n[0;32mok: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Set docker_no_proxy_defined flag] **********\r\n[0;32mok: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Creates override directory (systemd)] ******\r\n[0;32mok: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Set docker daemon override (systemd)] ******\r\n[0;36mskipping: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Ensure /etc/docker is present] *************\r\n[0;32mok: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Set /etc/docker/daemon.json] ***************\r\n[0;36mskipping: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Fix DNS in docker.io] **********************\r\n[0;36mskipping: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : pause for a second] ************************\r\n[0;36mskipping: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Install python3-dev, python3-pip packages with apt] ***\r\n[0;32mok: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Docker-compose version downgrade] **********\r\n[0;36mskipping: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Clean previous docker-py package if installing docker.] ***\r\n[0;32mok: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Clean previous docker package if installing docker-py.] ***\r\n[0;36mskipping: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Install pip, setuptools, docker-py and docker-compose with pip] ***\r\n[0;32mok: [sandbox] => (item={u\'version\': u\'latest\', u\'name\': u\'pip\', u\'install\': True})[0m\r\n[0;32mok: [sandbox] => (item={u\'version\': u\'latest\', u\'name\': u\'setuptools\', u\'install\': True})[0m\r\n[0;36mskipping: [sandbox] => (item={u\'version\': u\'latest\', u\'name\': u\'docker\', u\'install\': False}) [0m\r\n[0;32mok: [sandbox] => (item={u\'version\': u\'latest\', u\'name\': u\'docker-compose\', u\'install\': True})[0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Check if /etc/updatedb.conf exists] ********\r\n[0;32mok: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Ensure updatedb does not index /var/lib/docker] ***\r\n[0;32mok: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Check if /etc/default/ufw exists] **********\r\n[0;32mok: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Change ufw default forward policy from drop to accept] ***\r\n[0;32mok: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Set docker HTTP_PROXY if docker_http_proxy defined] ***\r\n[0;36mskipping: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Set docker HTTPS_PROXY if docker_https_proxy defined] ***\r\n[0;36mskipping: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Set docker NO_PROXY if docker_no_proxy defined] ***\r\n[0;36mskipping: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Set docker HTTP(S)_PROXY if docker_http(s)_proxy defined (systemd)] ***\r\n[0;36mskipping: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Remove docker HTTP(S)_PROXY if docker_http(s)_proxy undefined (systemd)] ***\r\n[0;32mok: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Start docker] ******************************\r\n[0;32mok: [sandbox][0m\r\n\r\nTASK [docker-angstwaddockerubuntu : Add users to the docker group] *************\r\n\r\nTASK [docker-angstwaddockerubuntu : update facts if docker0 is not defined] ****\r\n[0;36mskipping: [sandbox][0m\r\n\r\nTASK [include_tasks] ***********************************************************\r\n[0;36mincluded: /home/augustus/.ansible-flask/plays/deploy-docker3/playbooks/tasks/play-2-docker:debug-1.yml for sandbox[0m\r\n\r\nTASK [Custom Task] *************************************************************\r\n[0;32mok: [sandbox] => {[0m\r\n[0;32m    \"msg\": \"Custom Task\"[0m\r\n[0;32m}[0m\r\n\r\nPLAY RECAP *********************************************************************\r\n[0;32msandbox[0m                    : [0;32mok=26  [0m changed=0    unreachable=0    failed=0   \r\n\r\n', 'deployments.d6d0ea20-74c9-11ea-95e0-1174035064a9', 2, 3, 'status:passed', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deployment_host`
--

CREATE TABLE `deployment_host` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deployment_id` bigint(20) UNSIGNED NOT NULL,
  `host_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deployment_host`
--

INSERT INTO `deployment_host` (`id`, `created_at`, `updated_at`, `deployment_id`, `host_id`) VALUES
(1, NULL, NULL, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'redis', 'default', '{\"displayName\":\"App\\\\Jobs\\\\Deploy\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":0,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\Deploy\",\"command\":\"O:15:\\\"App\\\\Jobs\\\\Deploy\\\":11:{s:7:\\\"timeout\\\";i:0;s:13:\\\"\\u0000*\\u0000deployment\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\Deployment\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"\\u0000*\\u0000directory\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"},\"id\":\"eWOklyQgKQAXKqBiqghZXt9PPgTg2Dts\",\"attempts\":0}', 'ErrorException: Undefined property: stdClass::$slug in /mnt/c/Development/dst/ansible-flask/app/Services/Ansible/PlaybookBuilder.php(278) : eval()\'d code:23\nStack trace:\n#0 /mnt/c/Development/dst/ansible-flask/app/Services/Ansible/PlaybookBuilder.php(278) : eval()\'d code(23): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined prope...\', \'/mnt/c/Developm...\', 23, Array)\n#1 /mnt/c/Development/dst/ansible-flask/app/Services/Ansible/PlaybookBuilder.php(278): eval()\n#2 /mnt/c/Development/dst/ansible-flask/app/Services/Ansible/PlaybookBuilder.php(220): App\\Services\\Ansible\\PlaybookBuilder->renderBlade(\'playbook\', Array)\n#3 /mnt/c/Development/dst/ansible-flask/app/Jobs/Deploy.php(123): App\\Services\\Ansible\\PlaybookBuilder->build()\n#4 /mnt/c/Development/dst/ansible-flask/app/Jobs/Deploy.php(76): App\\Jobs\\Deploy->build()\n#5 [internal function]: App\\Jobs\\Deploy->handle()\n#6 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#7 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#9 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#10 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#11 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#12 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\Deploy))\n#13 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\Deploy))\n#14 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\Deploy), false)\n#16 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\Deploy))\n#17 /mnt/c/Development/dst/ansible-flask/app/Jobs/Middleware/RateLimited.php(26): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\Deploy))\n#18 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Redis/Limiters/DurationLimiter.php(90): App\\Jobs\\Middleware\\RateLimited->App\\Jobs\\Middleware\\{closure}()\n#19 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Redis/Limiters/DurationLimiterBuilder.php(113): Illuminate\\Redis\\Limiters\\DurationLimiter->block(0, Object(Closure))\n#20 /mnt/c/Development/dst/ansible-flask/app/Jobs/Middleware/RateLimited.php(30): Illuminate\\Redis\\Limiters\\DurationLimiterBuilder->then(Object(Closure), Object(Closure))\n#21 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): App\\Jobs\\Middleware\\RateLimited->handle(Object(App\\Jobs\\Deploy), Object(Closure))\n#22 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\Deploy))\n#23 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(App\\Jobs\\Deploy))\n#25 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\RedisJob), Array)\n#26 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(267): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->runNextJob(\'redis\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'default\')\n#31 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#33 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#34 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#35 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#36 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#37 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#38 /mnt/c/Development/dst/ansible-flask/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 /mnt/c/Development/dst/ansible-flask/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 /mnt/c/Development/dst/ansible-flask/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 /mnt/c/Development/dst/ansible-flask/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 /mnt/c/Development/dst/ansible-flask/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 {main}', '2020-04-01 23:41:43'),
(2, 'redis', 'default', '{\"displayName\":\"App\\\\Jobs\\\\Deploy\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":0,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\Deploy\",\"command\":\"O:15:\\\"App\\\\Jobs\\\\Deploy\\\":11:{s:7:\\\"timeout\\\";i:0;s:13:\\\"\\u0000*\\u0000deployment\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\Deployment\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"\\u0000*\\u0000directory\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"},\"id\":\"CiTHKYNE6qmxM4fGHXf3odfRbmiO1BIw\",\"attempts\":0}', 'ErrorException: Undefined property: stdClass::$slug in /mnt/c/Development/dst/ansible-flask/app/Services/Ansible/PlaybookBuilder.php(278) : eval()\'d code:23\nStack trace:\n#0 /mnt/c/Development/dst/ansible-flask/app/Services/Ansible/PlaybookBuilder.php(278) : eval()\'d code(23): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined prope...\', \'/mnt/c/Developm...\', 23, Array)\n#1 /mnt/c/Development/dst/ansible-flask/app/Services/Ansible/PlaybookBuilder.php(278): eval()\n#2 /mnt/c/Development/dst/ansible-flask/app/Services/Ansible/PlaybookBuilder.php(220): App\\Services\\Ansible\\PlaybookBuilder->renderBlade(\'playbook\', Array)\n#3 /mnt/c/Development/dst/ansible-flask/app/Jobs/Deploy.php(123): App\\Services\\Ansible\\PlaybookBuilder->build()\n#4 /mnt/c/Development/dst/ansible-flask/app/Jobs/Deploy.php(76): App\\Jobs\\Deploy->build()\n#5 [internal function]: App\\Jobs\\Deploy->handle()\n#6 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#7 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#9 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#10 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#11 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#12 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\Deploy))\n#13 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\Deploy))\n#14 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\Deploy), false)\n#16 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\Deploy))\n#17 /mnt/c/Development/dst/ansible-flask/app/Jobs/Middleware/RateLimited.php(26): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\Deploy))\n#18 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Redis/Limiters/DurationLimiter.php(90): App\\Jobs\\Middleware\\RateLimited->App\\Jobs\\Middleware\\{closure}()\n#19 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Redis/Limiters/DurationLimiterBuilder.php(113): Illuminate\\Redis\\Limiters\\DurationLimiter->block(0, Object(Closure))\n#20 /mnt/c/Development/dst/ansible-flask/app/Jobs/Middleware/RateLimited.php(30): Illuminate\\Redis\\Limiters\\DurationLimiterBuilder->then(Object(Closure), Object(Closure))\n#21 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): App\\Jobs\\Middleware\\RateLimited->handle(Object(App\\Jobs\\Deploy), Object(Closure))\n#22 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\Deploy))\n#23 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(App\\Jobs\\Deploy))\n#25 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\RedisJob), Array)\n#26 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(267): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->runNextJob(\'redis\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'default\')\n#31 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#33 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#34 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#35 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#36 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#37 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#38 /mnt/c/Development/dst/ansible-flask/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 /mnt/c/Development/dst/ansible-flask/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 /mnt/c/Development/dst/ansible-flask/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 /mnt/c/Development/dst/ansible-flask/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 /mnt/c/Development/dst/ansible-flask/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 /mnt/c/Development/dst/ansible-flask/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 {main}', '2020-04-01 23:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `hosts`
--

CREATE TABLE `hosts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hostname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssh_port` tinyint(3) UNSIGNED NOT NULL DEFAULT '22',
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'status:pending',
  `status_checks` text COLLATE utf8mb4_unicode_ci,
  `event_channel` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vars` longtext COLLATE utf8mb4_unicode_ci,
  `facts` longtext COLLATE utf8mb4_unicode_ci,
  `private_key_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hosts`
--

INSERT INTO `hosts` (`id`, `created_at`, `updated_at`, `name`, `slug`, `user`, `hostname`, `ip`, `ssh_port`, `status`, `status_checks`, `event_channel`, `vars`, `facts`, `private_key_id`, `deleted_at`) VALUES
(1, '2020-04-01 22:28:20', '2020-04-01 22:28:20', 'host-996.966.199', 'host-996966199', 'ubuntu', 'host-996.966.199', '996.966.199', 22, 'status:connected', '[{\"name\":\"Network Connection\",\"description\":\"Validate network and SSH connection to host\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:20.933486Z\"},{\"name\":\"Host Facts\",\"description\":\"Get host facts, RAM, CPU, OS, etc.\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:20.933580Z\"},{\"name\":\"Firewall\",\"description\":\"Check security group\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:20.933651Z\"}]', 'hosts.1a251860-74c0-11ea-9e47-9be77f720ae2', NULL, NULL, 1, NULL),
(2, '2020-04-01 22:28:21', '2020-04-01 22:28:21', 'host-916.156.598', 'host-916156598', 'ubuntu', 'host-916.156.598', '916.156.598', 22, 'status:connected', '[{\"name\":\"Network Connection\",\"description\":\"Validate network and SSH connection to host\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:21.009278Z\"},{\"name\":\"Host Facts\",\"description\":\"Get host facts, RAM, CPU, OS, etc.\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:21.009330Z\"},{\"name\":\"Firewall\",\"description\":\"Check security group\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:21.009361Z\"}]', 'hosts.1a2fc4a0-74c0-11ea-93ad-c558f8b6496a', NULL, NULL, 1, NULL),
(3, '2020-04-01 22:28:21', '2020-04-01 22:28:21', 'host-688.993.222', 'host-688993222', 'ubuntu', 'host-688.993.222', '688.993.222', 22, 'status:connecting', '[{\"name\":\"Network Connection\",\"description\":\"Validate network and SSH connection to host\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:21.054042Z\"},{\"name\":\"Host Facts\",\"description\":\"Get host facts, RAM, CPU, OS, etc.\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:21.054109Z\"},{\"name\":\"Firewall\",\"description\":\"Check security group\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:21.054139Z\"}]', 'hosts.1a36a630-74c0-11ea-9add-539b7a49aee5', NULL, NULL, 1, NULL),
(4, '2020-04-01 22:28:21', '2020-04-01 22:28:21', 'host-425.494.815', 'host-425494815', 'ubuntu', 'host-425.494.815', '425.494.815', 22, 'status:failed', '[{\"name\":\"Network Connection\",\"description\":\"Validate network and SSH connection to host\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:21.138384Z\"},{\"name\":\"Host Facts\",\"description\":\"Get host facts, RAM, CPU, OS, etc.\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:21.138450Z\"},{\"name\":\"Firewall\",\"description\":\"Check security group\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:21.138499Z\"}]', 'hosts.1a4383e0-74c0-11ea-8209-29ca76f08858', NULL, NULL, 1, NULL),
(5, '2020-04-01 22:28:21', '2020-04-01 22:28:21', 'host-235.632.671', 'host-235632671', 'ubuntu', 'host-235.632.671', '235.632.671', 22, 'status:connected', '[{\"name\":\"Network Connection\",\"description\":\"Validate network and SSH connection to host\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:21.193074Z\"},{\"name\":\"Host Facts\",\"description\":\"Get host facts, RAM, CPU, OS, etc.\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:21.193114Z\"},{\"name\":\"Firewall\",\"description\":\"Check security group\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:21.193142Z\"}]', 'hosts.1a4bc8b0-74c0-11ea-9dea-dd7dc7bfa7d4', NULL, NULL, 1, NULL),
(6, '2020-04-01 22:28:21', '2020-04-01 22:28:21', 'host-312.628.442', 'host-312628442', 'ubuntu', 'host-312.628.442', '312.628.442', 22, 'status:failed', '[{\"name\":\"Network Connection\",\"description\":\"Validate network and SSH connection to host\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:21.543404Z\"},{\"name\":\"Host Facts\",\"description\":\"Get host facts, RAM, CPU, OS, etc.\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:21.543460Z\"},{\"name\":\"Firewall\",\"description\":\"Check security group\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:21.543496Z\"}]', 'hosts.1a814810-74c0-11ea-81f9-fd38f1e50240', NULL, NULL, 1, NULL),
(7, '2020-04-01 22:28:21', '2020-04-01 22:28:21', 'host-214.863.929', 'host-214863929', 'ubuntu', 'host-214.863.929', '214.863.929', 22, 'status:connecting', '[{\"name\":\"Network Connection\",\"description\":\"Validate network and SSH connection to host\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:21.615235Z\"},{\"name\":\"Host Facts\",\"description\":\"Get host facts, RAM, CPU, OS, etc.\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:21.615318Z\"},{\"name\":\"Firewall\",\"description\":\"Check security group\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:21.615376Z\"}]', 'hosts.1a8c6d40-74c0-11ea-8438-810dc3e419bb', NULL, NULL, 1, NULL),
(8, '2020-04-01 22:28:21', '2020-04-01 22:28:21', 'host-721.673.430', 'host-721673430', 'ubuntu', 'host-721.673.430', '721.673.430', 22, 'status:disconnected', '[{\"name\":\"Network Connection\",\"description\":\"Validate network and SSH connection to host\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:21.635051Z\"},{\"name\":\"Host Facts\",\"description\":\"Get host facts, RAM, CPU, OS, etc.\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:21.635118Z\"},{\"name\":\"Firewall\",\"description\":\"Check security group\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:21.635159Z\"}]', 'hosts.1a8f5a60-74c0-11ea-8b34-cb2cc6b55223', NULL, NULL, 1, NULL),
(9, '2020-04-01 22:28:21', '2020-04-01 22:28:21', 'host-123.703.710', 'host-123703710', 'ubuntu', 'host-123.703.710', '123.703.710', 22, 'status:disconnected', '[{\"name\":\"Network Connection\",\"description\":\"Validate network and SSH connection to host\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:21.652701Z\"},{\"name\":\"Host Facts\",\"description\":\"Get host facts, RAM, CPU, OS, etc.\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:21.652755Z\"},{\"name\":\"Firewall\",\"description\":\"Check security group\",\"passed\":false,\"progress\":\"pending\",\"ts\":\"2020-04-02T08:58:21.652786Z\"}]', 'hosts.1a91faa0-74c0-11ea-9348-039bf85b3a36', NULL, NULL, 1, NULL),
(10, '2020-04-01 22:28:21', '2020-04-01 23:37:09', 'Sandbox', 'sandbox', 'ubuntu', '3.16.186.103', '3.16.186.103', 22, 'status:connected', '[{\"name\":\"Network Connection\",\"description\":\"Validate network and SSH connection to host\",\"passed\":true,\"progress\":\"success\",\"ts\":\"2020-04-02T10:07:05.837678Z\"},{\"name\":\"Host Facts\",\"description\":\"Get host facts, RAM, CPU, OS, etc.\",\"passed\":true,\"progress\":\"success\",\"ts\":\"2020-04-02T10:07:09.477956Z\"},{\"name\":\"Firewall\",\"description\":\"Check security group\",\"passed\":true,\"progress\":\"success\",\"ts\":\"2020-04-02T10:07:09.491043Z\"}]', 'hosts.1a948cb0-74c0-11ea-bf08-b166d2d5a642', NULL, '{\"kernel-release\":{\"title\":\"Kernel Release Version\",\"value\":\"4.15.0-1054-aws \"},\"hardware-platform\":{\"title\":\"Hardware Platform\",\"value\":\"x86_64 \"},\"kernel-name\":{\"title\":\"Kernel\",\"value\":\"Linux \"},\"network-node\":{\"title\":\"Network Node Name\",\"value\":\"ip-172-31-17-8 \"},\"operating-system\":{\"title\":\"Operating System\",\"value\":\"GNU\\/Linux \"},\"kernel-version\":{\"title\":\"Kernel Version\",\"value\":\"#56-Ubuntu SMP Thu Nov 7 16:15:59 UTC 2019 \"},\"total-memory\":{\"title\":\"Total Memory\",\"value\":\"1007612 K\"},\"free-memory\":{\"title\":\"Free Memory\",\"value\":\"238876 K\"},\"used-memory\":{\"title\":\"Used Memory\",\"value\":\"184564 K\"}}', 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_27_052500_create_private_keys_table', 1),
(5, '2020_02_27_052552_create_hosts_table', 1),
(6, '2020_02_27_052614_create_plays_table', 1),
(7, '2020_02_27_052632_create_roles_table', 1),
(8, '2020_02_27_052701_create_sites_table', 1),
(9, '2020_02_27_053808_create_deployments_table', 1),
(10, '2020_02_27_060043_create_site_play_table', 1),
(11, '2020_02_27_060457_create_play_role_table', 1),
(12, '2020_03_05_035746_create_repositories_table', 1),
(13, '2020_03_17_131136_create_deployment_host_table', 1),
(14, '2020_03_20_002037_create_activity_log_table', 1),
(15, '2020_03_30_114618_create_play_tasks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plays`
--

CREATE TABLE `plays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `stats` text COLLATE utf8mb4_unicode_ci,
  `passing` double(8,2) DEFAULT NULL,
  `publication_status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publication:status:draft',
  `event_channel` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles_sequence` text COLLATE utf8mb4_unicode_ci,
  `vars` longtext COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plays`
--

INSERT INTO `plays` (`id`, `created_at`, `updated_at`, `name`, `slug`, `description`, `stats`, `passing`, `publication_status`, `event_channel`, `roles_sequence`, `vars`, `deleted_at`) VALUES
(1, '2020-04-01 22:28:21', '2020-04-01 23:32:04', 'Play #1', 'play-1', 'Docker + Consul + Nodejs', NULL, NULL, 'publication:status:draft', 'plays.1aae0b90-74c0-11ea-9f98-29b158b7824a', '[2,\"task:18\"]', NULL, NULL),
(2, '2020-04-01 22:28:21', '2020-04-01 23:39:38', 'Play #2 (docker)', 'play-2-docker', 'Docker', NULL, NULL, 'publication:status:draft', 'plays.1ab1d860-74c0-11ea-a806-87032f7167a6', '[1,\"task:21\"]', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `play_role`
--

CREATE TABLE `play_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `play_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `play_role`
--

INSERT INTO `play_role` (`id`, `created_at`, `updated_at`, `role_id`, `play_id`) VALUES
(2, NULL, NULL, 2, 1),
(3, NULL, NULL, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `play_tasks`
--

CREATE TABLE `play_tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `play_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `play_tasks`
--

INSERT INTO `play_tasks` (`id`, `name`, `slug`, `content`, `play_id`) VALUES
(21, 'Debug 1', 'play-2-docker:debug-1', '- name: Custom Task\n  debug:\n    msg: \"Custom Task\"\n  become: false', 2);

-- --------------------------------------------------------

--
-- Table structure for table `private_keys`
--

CREATE TABLE `private_keys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ssh',
  `owner_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `private_keys`
--

INSERT INTO `private_keys` (`id`, `created_at`, `updated_at`, `name`, `file_name`, `file_disk`, `owner_id`) VALUES
(1, '2020-04-01 22:28:20', '2020-04-01 22:28:20', 'SSH Key #720', 'test.pem', 'ssh', 1),
(2, '2020-04-01 22:28:20', '2020-04-01 22:28:20', 'SSH Key #97', 'test.pem', 'ssh', 1),
(3, '2020-04-01 22:28:20', '2020-04-01 22:28:20', 'SSH Key #319', 'test.pem', 'ssh', 1),
(4, '2020-04-01 22:28:20', '2020-04-01 23:36:34', 'MS Ubuntu', 'ms-ubuntu.pem', 'ssh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `repositories`
--

CREATE TABLE `repositories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cms` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'git',
  `client_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_secret` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'status:pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `repositories`
--

INSERT INTO `repositories` (`id`, `created_at`, `updated_at`, `name`, `url`, `cms`, `client_id`, `client_secret`, `status`) VALUES
(1, '2020-04-01 22:28:21', '2020-04-01 22:28:21', 'Gitlab Refactory', 'https://refactory.australiacentral.cloudapp.azure.com/', 'git', NULL, NULL, 'status:pending');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `readme` longtext COLLATE utf8mb4_unicode_ci,
  `src` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cms` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'git',
  `version` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_channel` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `become` tinyint(1) NOT NULL DEFAULT '0',
  `vars` longtext COLLATE utf8mb4_unicode_ci,
  `default_vars` longtext COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `created_at`, `updated_at`, `name`, `slug`, `description`, `readme`, `src`, `cms`, `version`, `event_channel`, `become`, `vars`, `default_vars`, `deleted_at`) VALUES
(1, '2020-04-01 22:28:21', '2020-04-01 23:37:44', 'Docker (angstwad/docker.ubuntu)', 'docker-angstwaddockerubuntu', 'An Ansible Role that installs Docker on Linux.', '<h1>docker_ubuntu</h1>\n<p>Installs Docker on:</p>\n<ul>\n<li>Ubuntu 14.04+</li>\n<li>Debian Jessie (8.5+) and Stretch</li>\n</ul>\n<p>This role attempts to make every reasonable effort to follow Docker\'s official installation instructions for Ubuntu and Debian.</p>\n<p><strong>Example Play</strong>:</p>\n<p>Very basic install utilizing the role defaults:</p>\n<pre><code>---\n- name: Run docker.ubuntu\n  hosts: docker\n  roles:\n    - angstwad.docker_ubuntu\n</code></pre>\n<p>Overriding the default configration is done by overriding the role\'s default variables:</p>\n<pre><code>- name: Install Docker\n  hosts: all\n  roles:\n    - role: angstwad.docker_ubuntu\n      ssh_port: 2222\n      kernel_pkg_state: present\n</code></pre>\n<h2>Requirements</h2>\n<p>Requires python-pycurl for apt modules.</p>\n<h2>Role Variables</h2>\n<p>Please see <a href=\"https://github.com/angstwad/docker.ubuntu/blob/master/defaults/main.yml\">defaults/main.yml</a> for a comprehensive list of variables that can be overridden.</p>\n<h2>Dependencies</h2>\n<p>None.</p>\n<h2>Testing</h2>\n<p>To test the role in a Vagrant environment just run <code>vagrant up</code>.  This will\ncreate some VMs:</p>\n<ul>\n<li>Ubuntu 12.04</li>\n<li>Ubuntu 14.04</li>\n<li>Ubuntu 16.04</li>\n<li>Debian Jessie 8.5</li>\n<li>Debian Stretch 9.0</li>\n</ul>\n<p>and it will provision them by applying this role with Ansible.</p>\n<p>Requires <code>ansible-playbook</code> to be in the path.</p>\n<h2>License</h2>\n<p>Apache v2.0</p>\n', 'https://github.com/angstwad/docker.ubuntu.git', 'git', 'origin/master', 'roles.1a97c550-74c0-11ea-b32c-fff81b33bfdc', 1, NULL, '[{\"key\":\"uninstall_previous_docker_versions\",\"value\":\"false\"},{\"key\":\"docker_edition\",\"value\":\"ce\"},{\"key\":\"docker_apt_channel\",\"value\":\"stable\"},{\"key\":\"docker_pkg_name\",\"value\":\"\\\"{{ \'docker-ee\' if docker_edition == \'ee\' else \'docker-ce\' }}\\\"\"},{\"key\":\"docker_apt_cache_valid_time\",\"value\":600},{\"key\":\"docker_aufs_enabled\",\"value\":\"true\"},{\"key\":\"docker_defaults_file_path\",\"value\":\"\\/etc\\/default\\/docker\"},{\"key\":\"apt_dirmngr_pkg\",\"value\":\"dirmngr\"},{\"key\":\"ssh_port\",\"value\":22},{\"key\":\"apt_key_url\",\"value\":\"hkp:\\/\\/ha.pool.sks-keyservers.net\"},{\"key\":\"apt_key_sig\",\"value\":\"9DC858229FC7DD38854AE2D88D81803C0EBFCD88\"},{\"key\":\"keyring\",\"value\":\"\\/etc\\/apt\\/trusted.gpg.d\\/docker.gpg\"},{\"key\":\"apt_repository_arch\",\"value\":\"amd64\"},{\"key\":\"apt_repository\",\"value\":\"\\\"deb [arch={{ apt_repository_arch }}] https:\\/\\/download.docker.com\\/linux\\/{{ ansible_distribution|lower }} {{ ansible_distribution_release|lower }} {{ docker_apt_channel }}\\\"\"},{\"key\":\"daemon_json\",\"value\":null},{\"key\":\"docker_group_members\",\"value\":\"[]\"},{\"key\":\"docker_use_install_proxies\",\"value\":\"true\"},{\"key\":\"docker_http_proxy\",\"value\":\"\\\"{{proxy_env.http_proxy if (docker_use_install_proxies and proxy_env is defined and proxy_env.http_proxy is defined) else \\\\\\\"\\\\\\\"}}\\\"\"},{\"key\":\"docker_https_proxy\",\"value\":\"\\\"{{proxy_env.https_proxy if (docker_use_install_proxies and proxy_env is defined and proxy_env.https_proxy is defined) else \\\\\\\"\\\\\\\"}}\\\"\"},{\"key\":\"docker_no_proxy\",\"value\":\"\\\"{{proxy_env.no_proxy if (docker_use_install_proxies and proxy_env is defined and proxy_env.no_proxy is defined) else \\\\\\\"\\\\\\\"}}\\\"\"},{\"key\":\"pip_install_pip\",\"value\":\"true\"},{\"key\":\"pip_install_setuptools\",\"value\":\"true\"},{\"key\":\"pip_install_docker\",\"value\":\"true\"},{\"key\":\"pip_install_docker_compose\",\"value\":\"true\"},{\"key\":\"pip_version_pip\",\"value\":\"latest\"},{\"key\":\"pip_version_setuptools\",\"value\":\"latest\"},{\"key\":\"pip_version_docker\",\"value\":\"latest\"},{\"key\":\"pip_version_docker_compose\",\"value\":\"latest\"},{\"key\":\"kernel_update_and_reboot_permitted\",\"value\":\"no\"},{\"key\":\"update_docker_package\",\"value\":\"no\"},{\"key\":\"kernel_pkg_state\",\"value\":\"latest\"},{\"key\":\"cgroup_lite_pkg_state\",\"value\":\"latest\"},{\"key\":\"dmsetup_pkg_state\",\"value\":\"latest\"},{\"key\":\"install_kernel_extras\",\"value\":\"false\"},{\"key\":\"install_xorg_pkgs\",\"value\":\"false\"},{\"key\":\"ufw_set_forward_policy\",\"value\":\"true\"},{\"key\":\"start_docker_daemon\",\"value\":\"true\"}]', NULL),
(2, '2020-04-01 22:28:21', '2020-04-01 22:28:21', 'Consul', 'consul', '\n				consul is an ansible role which:\n				installs consul\n				configures consul\n				optionally installs and configures consul ui\n				optionally installs dnsmasq\n				optionally install consulate\n				optionally install consul-cli\n				configures consul service(s)\n			', NULL, 'https://github.com/mattfinlayson/ansible-consul.git', 'git', 'origin/master', 'roles.1a9e1df0-74c0-11ea-b456-75a283c825e5', 0, NULL, NULL, NULL),
(3, '2020-04-01 22:28:21', '2020-04-01 22:28:21', 'Node.js', 'nodejs', 'Installs Node.js on RHEL/CentOS or Debian/Ubuntu.', NULL, 'https://github.com/geerlingguy/ansible-role-nodejs.git', 'git', 'origin/master', 'roles.1aa105d0-74c0-11ea-adfc-17f4d25d8752', 0, NULL, NULL, NULL),
(4, '2020-04-01 22:28:21', '2020-04-01 22:28:21', 'Hello World', 'hello-world', 'Very simple role for displaying Hello World.', NULL, 'https://github.com/marcinpraczko/ansible-role-hello_world.git', 'git', 'origin/master', 'roles.1aa42c40-74c0-11ea-a721-9971db4e05a6', 0, NULL, NULL, NULL),
(5, '2020-04-01 22:28:21', '2020-04-01 22:28:21', 'Role 9AFb', 'role-9afb', 'Optio dolores consequuntur dolores necessitatibus voluptatum.', NULL, 'git@gitlab:DCMS/1585817901-Qsrqm.git', 'git', 'origin/master', 'roles.1aa68590-74c0-11ea-b096-21f8facdd4c3', 0, NULL, NULL, NULL),
(6, '2020-04-01 22:28:21', '2020-04-01 22:28:21', 'Role Valz', 'role-valz', 'Molestias hic omnis rem eaque nihil quas dolorum.', NULL, 'git@gitlab:DCMS/1585817901-ZmInR.git', 'git', 'origin/master', 'roles.1aa83b90-74c0-11ea-abb5-bd9e75bb0da8', 0, NULL, NULL, NULL),
(7, '2020-04-01 22:28:21', '2020-04-01 22:28:21', 'Role ddSN', 'role-ddsn', 'Autem autem id amet alias similique enim in.', NULL, 'git@gitlab:DCMS/1585817901-H1pYT.git', 'git', 'origin/master', 'roles.1aa9f970-74c0-11ea-966c-d1558eaff78f', 0, NULL, NULL, NULL),
(8, '2020-04-01 22:28:21', '2020-04-01 22:28:21', 'Role 3CPB', 'role-3cpb', 'Quo eum eveniet unde quidem voluptatem.', NULL, 'git@gitlab:DCMS/1585817901-LaZJM.git', 'git', 'origin/master', 'roles.1aabd850-74c0-11ea-806e-d7aabf3b853f', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `plays_sequence` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`id`, `created_at`, `updated_at`, `name`, `slug`, `description`, `plays_sequence`, `deleted_at`) VALUES
(1, '2020-04-01 22:28:21', '2020-04-01 22:28:21', 'Site #1', 'site-1', '\n				Play #1: Docker + Consul + Nodejs\n				Play #2: Docker\n			', NULL, NULL),
(2, '2020-04-01 22:28:21', '2020-04-01 22:28:21', 'Site #2 (Docker)', 'site-2-docker', 'Play #2: Docker', NULL, NULL),
(3, '2020-04-01 23:38:02', '2020-04-01 23:38:02', 'Deploy docker', 'deploy-docker', 'Site auto-created for Deployment \"Deploy docker\"', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_play`
--

CREATE TABLE `site_play` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `site_id` bigint(20) UNSIGNED NOT NULL,
  `play_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_play`
--

INSERT INTO `site_play` (`id`, `created_at`, `updated_at`, `site_id`, `play_id`) VALUES
(1, NULL, NULL, 1, 1),
(2, NULL, NULL, 1, 2),
(3, NULL, NULL, 2, 2),
(4, NULL, NULL, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '/img/dummy/u1.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `url`, `image`, `created_at`, `updated_at`, `api_token`) VALUES
(1, 'Andrew Broomhead', 'broomhead@ansible-flask.com', NULL, '$2y$10$WyoLrijKx5WmlTanNa1o3.NBAFENitCrrSqL0QKWvmZWH/cyFZbp6', NULL, NULL, '/img/dummy/u1.png', '2020-04-01 22:28:20', '2020-04-01 22:28:20', NULL),
(2, 'Augustus Okoye', 'okoye@ansible-flask.com', NULL, '$2y$10$X4OXX3LMSAfohumzKcygLuSDt5A.UHbBxAFAF3Z47ukmjSt3m8Fzi', NULL, NULL, '/img/dummy/u1.png', '2020-04-01 22:28:20', '2020-04-01 22:28:41', 'b01cadd01a34b98df30bde6a370886d4fdb53ce2134ed26f7553f137fc505cc1'),
(3, 'Ben Stuart', 'stuart@ansible-flask.com', NULL, '$2y$10$VXqA3OCF2Xx2js53hpe7bu/CFhZWwHqmy3aa53HWornnbLhwZ.Rnm', NULL, NULL, '/img/dummy/u1.png', '2020-04-01 22:28:20', '2020-04-01 22:28:20', NULL),
(4, 'Phil Cutler', 'cutler@ansible-flask.com', NULL, '$2y$10$6ByMybaZB2tsPg3Pkc4/ZeJcrgBNSvH/eqfPiCIeqDnxduPm59cGC', NULL, NULL, '/img/dummy/u1.png', '2020-04-01 22:28:20', '2020-04-01 22:28:20', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`),
  ADD KEY `subject` (`subject_id`,`subject_type`),
  ADD KEY `causer` (`causer_id`,`causer_type`);

--
-- Indexes for table `deployments`
--
ALTER TABLE `deployments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `deployments_name_unique` (`name`),
  ADD UNIQUE KEY `deployments_event_channel_unique` (`event_channel`),
  ADD KEY `deployments_user_id_foreign` (`user_id`),
  ADD KEY `deployments_site_id_foreign` (`site_id`);

--
-- Indexes for table `deployment_host`
--
ALTER TABLE `deployment_host`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hosts`
--
ALTER TABLE `hosts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hosts_name_unique` (`name`),
  ADD UNIQUE KEY `hosts_event_channel_unique` (`event_channel`),
  ADD UNIQUE KEY `hosts_slug_unique` (`slug`),
  ADD KEY `hosts_private_key_id_foreign` (`private_key_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `plays`
--
ALTER TABLE `plays`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plays_name_unique` (`name`),
  ADD UNIQUE KEY `plays_event_channel_unique` (`event_channel`),
  ADD UNIQUE KEY `plays_slug_unique` (`slug`);

--
-- Indexes for table `play_role`
--
ALTER TABLE `play_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `play_tasks`
--
ALTER TABLE `play_tasks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `play_tasks_slug_unique` (`slug`),
  ADD KEY `play_tasks_play_id_foreign` (`play_id`);

--
-- Indexes for table `private_keys`
--
ALTER TABLE `private_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `private_keys_name_unique` (`name`),
  ADD KEY `private_keys_owner_id_foreign` (`owner_id`);

--
-- Indexes for table `repositories`
--
ALTER TABLE `repositories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD UNIQUE KEY `roles_src_unique` (`src`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sites_name_unique` (`name`),
  ADD UNIQUE KEY `sites_slug_unique` (`slug`);

--
-- Indexes for table `site_play`
--
ALTER TABLE `site_play`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `deployments`
--
ALTER TABLE `deployments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deployment_host`
--
ALTER TABLE `deployment_host`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hosts`
--
ALTER TABLE `hosts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `plays`
--
ALTER TABLE `plays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `play_role`
--
ALTER TABLE `play_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `play_tasks`
--
ALTER TABLE `play_tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `private_keys`
--
ALTER TABLE `private_keys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `repositories`
--
ALTER TABLE `repositories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `site_play`
--
ALTER TABLE `site_play`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `deployments`
--
ALTER TABLE `deployments`
  ADD CONSTRAINT `deployments_site_id_foreign` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `deployments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hosts`
--
ALTER TABLE `hosts`
  ADD CONSTRAINT `hosts_private_key_id_foreign` FOREIGN KEY (`private_key_id`) REFERENCES `private_keys` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `play_tasks`
--
ALTER TABLE `play_tasks`
  ADD CONSTRAINT `play_tasks_play_id_foreign` FOREIGN KEY (`play_id`) REFERENCES `plays` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `private_keys`
--
ALTER TABLE `private_keys`
  ADD CONSTRAINT `private_keys_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
