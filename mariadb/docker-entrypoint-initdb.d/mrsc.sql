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
-- Database: `mrsc`
--

-- --------------------------------------------------------

--
-- Table structure for table `action_events`
--

CREATE TABLE `action_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionable_id` int(10) UNSIGNED NOT NULL,
  `target_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` int(10) UNSIGNED DEFAULT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'running',
  `exception` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `original` text COLLATE utf8mb4_unicode_ci,
  `changes` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `action_events`
--

INSERT INTO `action_events` (`id`, `batch_id`, `user_id`, `name`, `actionable_type`, `actionable_id`, `target_type`, `target_id`, `model_type`, `model_id`, `fields`, `status`, `exception`, `created_at`, `updated_at`, `original`, `changes`) VALUES
(1, '8edc5454-f099-4b74-8a1f-5be0866ff7d9', 1, 'Delete', 'App\\Models\\Ecommerce\\Cart', 1, 'App\\Models\\Ecommerce\\Cart', 1, 'App\\Models\\Ecommerce\\Cart', 1, '', 'finished', '', '2019-10-10 18:23:08', '2019-10-10 18:23:08', NULL, NULL),
(2, '8edc5463-ef79-4cfe-8475-3120171faa4b', 1, 'Delete', 'App\\Models\\Guest', 6, 'App\\Models\\Guest', 6, 'App\\Models\\Guest', 6, '', 'finished', '', '2019-10-10 18:23:17', '2019-10-10 18:23:17', NULL, NULL),
(3, '8edc5659-6430-417d-bb8f-f48528932ef6', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 1, 'App\\Models\\Ecommerce\\Product', 1, 'App\\Models\\Ecommerce\\Product', 1, '', 'finished', '', '2019-10-10 18:28:46', '2019-10-10 18:28:46', '{\"seo_title\":null,\"purchasable\":1,\"price_2\":null,\"sale_price_2\":null,\"misc\":null,\"on_sale\":0,\"rating\":\"0.00\",\"stock\":null,\"unstocked\":0,\"shipping_class_id\":null,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0,\"countries_available_to\":null,\"countries_hidden_from\":null,\"faqs\":null}', '{\"seo_title\":\"Energy Bulb\",\"purchasable\":true,\"price_2\":\"[]\",\"sale_price_2\":\"[]\",\"misc\":\"[]\",\"on_sale\":false,\"rating\":\"0\",\"stock\":\"[]\",\"unstocked\":false,\"shipping_class_id\":1,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"countries_available_to\":\"[]\",\"countries_hidden_from\":\"[]\",\"faqs\":\"[]\"}'),
(4, '8edc568d-fc44-461f-a8fa-05dc460f655a', 1, 'Publish Product', 'App\\Models\\Ecommerce\\Product', 1, 'App\\Models\\Ecommerce\\Product', 1, 'App\\Models\\Ecommerce\\Product', 1, 'a:0:{}', 'finished', '', '2019-10-10 18:29:20', '2019-10-10 18:29:21', NULL, NULL),
(5, '8edc56d0-204f-4805-b7d6-6839e2d46e2e', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 1, 'App\\Models\\Ecommerce\\Product', 1, 'App\\Models\\Ecommerce\\Product', 1, '', 'finished', '', '2019-10-10 18:30:04', '2019-10-10 18:30:04', '{\"purchasable\":1,\"on_sale\":0,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(6, '8ee0e912-feea-4ba7-9be8-671248bfd26a', 1, 'Mark Order As Shipped', 'App\\Models\\Ecommerce\\Order', 3, 'App\\Models\\Ecommerce\\Order', 3, 'App\\Models\\Ecommerce\\Order', 3, 'a:1:{s:15:\"tracking_number\";N;}', 'finished', '', '2019-10-13 01:02:21', '2019-10-13 01:02:27', NULL, NULL),
(7, '8ee0ed49-1317-4b04-9983-66222d9f9c4b', 1, 'Mark Order As Delivered', 'App\\Models\\Ecommerce\\Order', 3, 'App\\Models\\Ecommerce\\Order', 3, 'App\\Models\\Ecommerce\\Order', 3, 'a:0:{}', 'finished', '', '2019-10-13 01:14:08', '2019-10-13 01:14:08', NULL, NULL),
(8, '8ee4c84c-ddd1-445f-a2b6-2bde8a42f1c3', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-10-14 23:14:01', '2019-10-14 23:14:01', '{\"purchasable\":1,\"sale_price_2\":null,\"misc\":null,\"on_sale\":0,\"gallery\":null,\"rating\":\"0.00\",\"stock\":null,\"unstocked\":0,\"shipping_class_id\":null,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0,\"countries_available_to\":null,\"countries_hidden_from\":null,\"faqs\":null}', '{\"purchasable\":true,\"sale_price_2\":\"[]\",\"misc\":\"[]\",\"on_sale\":false,\"gallery\":\"[\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/new-moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-po-1571132547-4k3ux.jpg\\\",\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/new-moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-po-1571132539-v52oz.jpg\\\",\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/new-moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-po-1571132543-GSrT6.jpg\\\",\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portab-1571132538-TBjEQ.jpg\\\",\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portab-1571132536-SEYdS.jpg\\\",\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portab-1571132533-48V7r.jpg\\\",\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portab-1571132530-wNKcx.jpg\\\",\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portab-1571132528-pPAeQ.jpg\\\",\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portab-1571132531-zcPVB.jpg\\\"]\",\"rating\":\"0\",\"stock\":\"[]\",\"unstocked\":false,\"shipping_class_id\":2,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"countries_available_to\":\"[]\",\"countries_hidden_from\":\"[]\",\"faqs\":\"[]\"}'),
(9, '8ee90bdd-3be1-4fdc-8b85-0f8faa51a9ab', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 1, 'App\\Models\\Ecommerce\\Product', 1, 'App\\Models\\Ecommerce\\Product', 1, '', 'finished', '', '2019-10-17 02:06:15', '2019-10-17 02:06:15', '{\"purchasable\":1,\"on_sale\":0,\"rating\":\"0.00\",\"unstocked\":0,\"shipping_class_id\":1,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"rating\":\"0\",\"unstocked\":false,\"shipping_class_id\":2,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(10, '8eeaa37a-07d5-47cb-9ced-ffb3f4b4ccd7', 1, 'Create', 'App\\Models\\Ecommerce\\Returns', 1, 'App\\Models\\Ecommerce\\Returns', 1, 'App\\Models\\Ecommerce\\Returns', 1, '', 'finished', '', '2019-10-17 21:06:01', '2019-10-17 21:06:01', NULL, '{\"name\":\"30-day return\",\"slug\":\"30-day-return\",\"public_title\":\"30-day return\",\"description\":\"Return policy Item must be returned within 30 days after you receive it. You are responsible for return postage costs.\",\"currency_code\":\"USD\",\"cost\":\"0\",\"cost_2\":[],\"policy_statement\":\"<div>Return policy Item must be returned within 30 days after you receive it. You are responsible for return postage costs.<\\/div>\",\"updated_at\":\"2019-10-18 07:36:01\",\"created_at\":\"2019-10-18 07:36:01\",\"id\":1}'),
(11, '8eeaa3d5-e70d-472f-8a71-31a15289c3cd', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 1, 'App\\Models\\Ecommerce\\Product', 1, 'App\\Models\\Ecommerce\\Product', 1, '', 'finished', '', '2019-10-17 21:07:01', '2019-10-17 21:07:01', '{\"purchasable\":1,\"on_sale\":0,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0,\"return_policy_id\":null}', '{\"purchasable\":true,\"on_sale\":false,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"return_policy_id\":1}'),
(12, '8eeaae14-7e26-4897-b92d-8aa5ca20fe6a', 1, 'Update', 'App\\Models\\Ecommerce\\Returns', 1, 'App\\Models\\Ecommerce\\Returns', 1, 'App\\Models\\Ecommerce\\Returns', 1, '', 'finished', '', '2019-10-17 21:35:40', '2019-10-17 21:35:40', '{\"description\":\"Return policy Item must be returned within 30 days after you receive it. You are responsible for return postage costs.\",\"policy_statement\":\"<div>Return policy Item must be returned within 30 days after you receive it. You are responsible for return postage costs.<\\/div>\"}', '{\"description\":\"Item must be returned within 30 days after you receive it. You are responsible for return postage costs.\",\"policy_statement\":\"<div>Item must be returned within 30 days after you receive it. You are responsible for return postage costs.<\\/div>\"}'),
(13, '8eeab6cb-c5cf-4e31-9d08-4c97da8be1ea', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 1, 'App\\Models\\Ecommerce\\Product', 1, 'App\\Models\\Ecommerce\\Product', 1, '', 'finished', '', '2019-10-17 22:00:02', '2019-10-17 22:00:02', '{\"purchasable\":1,\"on_sale\":0,\"description\":null,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"description\":\"<div>Features<\\/div><ul><li>Awesome<\\/li><li>Spectacular<\\/li><li>Incredible<\\/li><\\/ul>\",\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(14, '8eef404d-a9e5-4ce1-a50d-3f057ff58347', 1, 'Delete', 'App\\Models\\Ecommerce\\Order', 11, 'App\\Models\\Ecommerce\\Order', 11, 'App\\Models\\Ecommerce\\Order', 11, '', 'finished', '', '2019-10-20 04:07:51', '2019-10-20 04:07:51', NULL, NULL),
(15, '8eef404e-0188-4d48-97fb-ab89c1bac05d', 1, 'Delete', 'App\\Models\\Ecommerce\\Order', 12, 'App\\Models\\Ecommerce\\Order', 12, 'App\\Models\\Ecommerce\\Order', 12, '', 'finished', '', '2019-10-20 04:07:51', '2019-10-20 04:07:51', NULL, NULL),
(16, '8eef425c-639d-47d2-837a-8419d150b12d', 1, 'Delete', 'App\\Models\\Ecommerce\\Order', 13, 'App\\Models\\Ecommerce\\Order', 13, 'App\\Models\\Ecommerce\\Order', 13, '', 'finished', '', '2019-10-20 04:13:36', '2019-10-20 04:13:36', NULL, NULL),
(17, '8eef42d8-f751-4d34-87db-27104bd729e9', 1, 'Mark Order As Paid', 'App\\Models\\Ecommerce\\Order', 14, 'App\\Models\\Ecommerce\\Order', 14, 'App\\Models\\Ecommerce\\Order', 14, 'a:1:{s:6:\"amount\";s:1:\"6\";}', 'finished', '', '2019-10-20 04:14:58', '2019-10-20 04:14:59', NULL, NULL),
(18, '8ef03fc8-ba57-496a-b061-180870d1e8ff', 1, 'Delete', 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Ecommerce\\Order', 1, '', 'finished', '', '2019-10-20 16:02:14', '2019-10-20 16:02:14', NULL, NULL),
(19, '8ef03fc8-c4d7-4882-95b4-f947918f3708', 1, 'Delete', 'App\\Models\\Ecommerce\\Order', 2, 'App\\Models\\Ecommerce\\Order', 2, 'App\\Models\\Ecommerce\\Order', 2, '', 'finished', '', '2019-10-20 16:02:14', '2019-10-20 16:02:14', NULL, NULL),
(20, '8ef03fc8-d373-4c74-9807-56b7b3f89ed9', 1, 'Delete', 'App\\Models\\Ecommerce\\Order', 3, 'App\\Models\\Ecommerce\\Order', 3, 'App\\Models\\Ecommerce\\Order', 3, '', 'finished', '', '2019-10-20 16:02:14', '2019-10-20 16:02:14', NULL, NULL),
(21, '8ef03fc8-dca3-4291-861b-5844eb39721d', 1, 'Delete', 'App\\Models\\Ecommerce\\Order', 4, 'App\\Models\\Ecommerce\\Order', 4, 'App\\Models\\Ecommerce\\Order', 4, '', 'finished', '', '2019-10-20 16:02:14', '2019-10-20 16:02:14', NULL, NULL),
(22, '8ef03fc8-e543-4511-b4e3-44b4b4be3d12', 1, 'Delete', 'App\\Models\\Ecommerce\\Order', 5, 'App\\Models\\Ecommerce\\Order', 5, 'App\\Models\\Ecommerce\\Order', 5, '', 'finished', '', '2019-10-20 16:02:14', '2019-10-20 16:02:14', NULL, NULL),
(23, '8ef03fc8-ee73-4f82-a0b0-a3350fdcdc8b', 1, 'Delete', 'App\\Models\\Ecommerce\\Order', 6, 'App\\Models\\Ecommerce\\Order', 6, 'App\\Models\\Ecommerce\\Order', 6, '', 'finished', '', '2019-10-20 16:02:14', '2019-10-20 16:02:14', NULL, NULL),
(24, '8ef03fc8-f772-4473-a9cb-c3907ed85904', 1, 'Delete', 'App\\Models\\Ecommerce\\Order', 7, 'App\\Models\\Ecommerce\\Order', 7, 'App\\Models\\Ecommerce\\Order', 7, '', 'finished', '', '2019-10-20 16:02:14', '2019-10-20 16:02:14', NULL, NULL),
(25, '8ef03fc9-0037-451c-981d-8d50708eab07', 1, 'Delete', 'App\\Models\\Ecommerce\\Order', 8, 'App\\Models\\Ecommerce\\Order', 8, 'App\\Models\\Ecommerce\\Order', 8, '', 'finished', '', '2019-10-20 16:02:14', '2019-10-20 16:02:14', NULL, NULL),
(26, '8ef03fc9-0904-4a1a-bb17-69e5b954b000', 1, 'Delete', 'App\\Models\\Ecommerce\\Order', 9, 'App\\Models\\Ecommerce\\Order', 9, 'App\\Models\\Ecommerce\\Order', 9, '', 'finished', '', '2019-10-20 16:02:14', '2019-10-20 16:02:14', NULL, NULL),
(27, '8ef03fc9-127d-4cf9-985d-80d1262de4d2', 1, 'Delete', 'App\\Models\\Ecommerce\\Order', 10, 'App\\Models\\Ecommerce\\Order', 10, 'App\\Models\\Ecommerce\\Order', 10, '', 'finished', '', '2019-10-20 16:02:14', '2019-10-20 16:02:14', NULL, NULL),
(28, '8ef03fc9-1b2c-4b6b-9d9d-88077f9b39bb', 1, 'Delete', 'App\\Models\\Ecommerce\\Order', 14, 'App\\Models\\Ecommerce\\Order', 14, 'App\\Models\\Ecommerce\\Order', 14, '', 'finished', '', '2019-10-20 16:02:14', '2019-10-20 16:02:14', NULL, NULL),
(29, '8ef03fe0-b475-44a5-83b1-6071fb50a142', 1, 'Delete', 'App\\Models\\Ecommerce\\Cart', 2, 'App\\Models\\Ecommerce\\Cart', 2, 'App\\Models\\Ecommerce\\Cart', 2, '', 'finished', '', '2019-10-20 16:02:29', '2019-10-20 16:02:29', NULL, NULL),
(30, '8ef03fe0-c01c-43a4-ac19-d49772ac3cf2', 1, 'Delete', 'App\\Models\\Ecommerce\\Cart', 3, 'App\\Models\\Ecommerce\\Cart', 3, 'App\\Models\\Ecommerce\\Cart', 3, '', 'finished', '', '2019-10-20 16:02:29', '2019-10-20 16:02:29', NULL, NULL),
(31, '8ef03fe0-c88c-4f51-813d-9377b36b4cf2', 1, 'Delete', 'App\\Models\\Ecommerce\\Cart', 4, 'App\\Models\\Ecommerce\\Cart', 4, 'App\\Models\\Ecommerce\\Cart', 4, '', 'finished', '', '2019-10-20 16:02:29', '2019-10-20 16:02:29', NULL, NULL),
(32, '8ef03fe0-cfc9-409c-935b-3f1d8c018955', 1, 'Delete', 'App\\Models\\Ecommerce\\Cart', 5, 'App\\Models\\Ecommerce\\Cart', 5, 'App\\Models\\Ecommerce\\Cart', 5, '', 'finished', '', '2019-10-20 16:02:29', '2019-10-20 16:02:29', NULL, NULL),
(33, '8ef04ec6-e751-4b14-bbde-c2163e6da0b2', 1, 'Mark Order As Shipped', 'App\\Models\\Ecommerce\\Order', 15, 'App\\Models\\Ecommerce\\Order', 15, 'App\\Models\\Ecommerce\\Order', 15, 'a:1:{s:15:\"tracking_number\";N;}', 'finished', '', '2019-10-20 16:44:09', '2019-10-20 16:44:14', NULL, NULL),
(35, '8ef5329e-7b65-4330-9c97-4fc57237ecc0', 1, 'Mark Order As Shipped', 'App\\Models\\Ecommerce\\Order', 16, 'App\\Models\\Ecommerce\\Order', 16, 'App\\Models\\Ecommerce\\Order', 16, 'a:2:{s:15:\"tracking_number\";s:11:\"123 456 789\";s:16:\"delivery_courier\";s:3:\"dhl\";}', 'finished', '', '2019-10-23 03:04:33', '2019-10-23 03:04:38', NULL, NULL),
(36, '8ef645ad-dd8b-48c4-bf26-856b05ed6680', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-10-23 15:53:41', '2019-10-23 15:53:41', '{\"purchasable\":1,\"sale_price\":null,\"sale_price_2\":\"[]\",\"on_sale\":0,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0,\"return_policy_id\":null}', '{\"purchasable\":true,\"sale_price\":\"59.25\",\"sale_price_2\":\"[{\\\"currency_code\\\":null,\\\"price\\\":null}]\",\"on_sale\":false,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"return_policy_id\":1}'),
(37, '8ef649cf-4c59-4ce8-aef5-c8500a2fb082', 1, 'Approve Product Review', 'App\\Models\\Ecommerce\\ProductReview', 1, 'App\\Models\\Ecommerce\\ProductReview', 1, 'App\\Models\\Ecommerce\\ProductReview', 1, 'a:0:{}', 'finished', '', '2019-10-23 16:05:14', '2019-10-23 16:05:14', NULL, NULL),
(38, '8ef930de-9cc4-4f1f-a330-f78aea460b54', 1, 'Create', 'App\\Models\\Ecommerce\\ProductAttribute', 5, 'App\\Models\\Ecommerce\\ProductAttribute', 5, 'App\\Models\\Ecommerce\\ProductAttribute', 5, '', 'finished', '', '2019-10-25 02:42:58', '2019-10-25 02:42:58', NULL, '{\"name\":\"Model\",\"slug\":\"model\",\"product_id\":6,\"type\":\"model\",\"is_variation\":false,\"show_on_product_page\":true,\"updated_at\":\"2019-10-25 13:12:58\",\"created_at\":\"2019-10-25 13:12:58\",\"id\":5}'),
(39, '8ef93109-462c-4581-84a3-42781eb5620a', 1, 'Create', 'App\\Models\\Ecommerce\\ProductAttributeOption', 9, 'App\\Models\\Ecommerce\\ProductAttributeOption', 9, 'App\\Models\\Ecommerce\\ProductAttributeOption', 9, '', 'finished', '', '2019-10-25 02:43:26', '2019-10-25 02:43:26', NULL, '{\"product_attribute_id\":5,\"name\":\"MG001\",\"slug\":\"mg001\",\"value\":\"mg001\",\"updated_at\":\"2019-10-25 13:13:26\",\"created_at\":\"2019-10-25 13:13:26\",\"id\":9}'),
(40, '8ef93118-3ab7-4f51-8981-e0af8c772106', 1, 'Create', 'App\\Models\\Ecommerce\\ProductAttributeOption', 10, 'App\\Models\\Ecommerce\\ProductAttributeOption', 10, 'App\\Models\\Ecommerce\\ProductAttributeOption', 10, '', 'finished', '', '2019-10-25 02:43:36', '2019-10-25 02:43:36', NULL, '{\"product_attribute_id\":5,\"name\":\"MG001B\",\"slug\":\"mg001b\",\"value\":\"mg001b\",\"updated_at\":\"2019-10-25 13:13:36\",\"created_at\":\"2019-10-25 13:13:36\",\"id\":10}'),
(41, '8efaf58c-42db-4eb6-aeff-ef4e3dc4b96c', 1, 'Update', 'MOIREI\\Vouchers\\Models\\Voucher', 4, 'MOIREI\\Vouchers\\Models\\Voucher', 4, 'MOIREI\\Vouchers\\Models\\Voucher', 4, '', 'finished', '', '2019-10-25 23:48:45', '2019-10-25 23:48:45', '{\"reward\":null,\"only_users\":null,\"except_users\":null}', '{\"reward\":\"10\",\"only_users\":\"[]\",\"except_users\":\"[]\"}'),
(42, '8efaf856-81b7-444e-9040-31df7d03a5d8', 1, 'Update', 'MOIREI\\Vouchers\\Models\\Voucher', 3, 'MOIREI\\Vouchers\\Models\\Voucher', 3, 'MOIREI\\Vouchers\\Models\\Voucher', 3, '', 'finished', '', '2019-10-25 23:56:33', '2019-10-25 23:56:33', '{\"reward_type\":\"percentage\",\"reward\":null,\"only_users\":null,\"except_users\":null}', '{\"reward_type\":\"monetary\",\"reward\":\"15\",\"only_users\":\"[]\",\"except_users\":\"[]\"}'),
(43, '8efaf981-fac6-4fb8-bd90-0a1d3e9c3da0', 1, 'Update', 'MOIREI\\Vouchers\\Models\\Voucher', 3, 'MOIREI\\Vouchers\\Models\\Voucher', 3, 'MOIREI\\Vouchers\\Models\\Voucher', 3, '', 'finished', '', '2019-10-25 23:59:50', '2019-10-25 23:59:50', '{\"currency_code\":\"USD\"}', '{\"currency_code\":\"NGN\"}'),
(44, '8efb165f-12ff-42dd-9c5f-36a548ecea82', 1, 'Update', 'MOIREI\\Vouchers\\Models\\Voucher', 10, 'MOIREI\\Vouchers\\Models\\Voucher', 10, 'MOIREI\\Vouchers\\Models\\Voucher', 10, '', 'finished', '', '2019-10-26 01:20:32', '2019-10-26 01:20:32', '{\"only_users\":null,\"except_users\":null}', '{\"only_users\":\"[]\",\"except_users\":\"[]\"}'),
(45, '8efb1673-aa6b-45c1-ad24-ba0f58b699c6', 1, 'Update', 'MOIREI\\Vouchers\\Models\\Voucher', 10, 'MOIREI\\Vouchers\\Models\\Voucher', 10, 'MOIREI\\Vouchers\\Models\\Voucher', 10, '', 'finished', '', '2019-10-26 01:20:46', '2019-10-26 01:20:46', '{\"only_users\":\"[]\"}', '{\"only_users\":\"[\\\"{\\\\\\\"voucherable_type\\\\\\\":\\\\\\\"\\\\\\\\\\\\\\\\App\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\User\\\\\\\",\\\\\\\"voucherable_id\\\\\\\":2}\\\"]\"}'),
(46, '8efb168f-4834-4eb3-a8b6-2a54e257ed82', 1, 'Update', 'MOIREI\\Vouchers\\Models\\Voucher', 10, 'MOIREI\\Vouchers\\Models\\Voucher', 10, 'MOIREI\\Vouchers\\Models\\Voucher', 10, '', 'finished', '', '2019-10-26 01:21:04', '2019-10-26 01:21:04', '{\"except_users\":\"[]\"}', '{\"except_users\":\"[\\\"{\\\\\\\"voucherable_type\\\\\\\":\\\\\\\"\\\\\\\\\\\\\\\\App\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\Guest\\\\\\\",\\\\\\\"voucherable_id\\\\\\\":1}\\\",\\\"{\\\\\\\"voucherable_type\\\\\\\":\\\\\\\"\\\\\\\\\\\\\\\\App\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\User\\\\\\\",\\\\\\\"voucherable_id\\\\\\\":5}\\\"]\"}'),
(47, '8efb2087-8f82-4602-ac19-197b74dc1c5b', 1, 'Update', 'MOIREI\\Vouchers\\Models\\Voucher', 10, 'MOIREI\\Vouchers\\Models\\Voucher', 10, 'MOIREI\\Vouchers\\Models\\Voucher', 10, '', 'finished', '', '2019-10-26 01:48:56', '2019-10-26 01:48:56', '{\"only_users\":\"[\\\"{\\\\\\\"voucherable_type\\\\\\\":\\\\\\\"\\\\\\\\\\\\\\\\App\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\User\\\\\\\",\\\\\\\"voucherable_id\\\\\\\":2}\\\"]\",\"except_users\":\"[\\\"{\\\\\\\"voucherable_type\\\\\\\":\\\\\\\"\\\\\\\\\\\\\\\\App\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\Guest\\\\\\\",\\\\\\\"voucherable_id\\\\\\\":1}\\\",\\\"{\\\\\\\"voucherable_type\\\\\\\":\\\\\\\"\\\\\\\\\\\\\\\\App\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\User\\\\\\\",\\\\\\\"voucherable_id\\\\\\\":5}\\\"]\"}', '{\"only_users\":\"\\\"[\\\\\\\"{\\\\\\\\\\\\\\\"voucherable_type\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\App\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\User\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"voucherable_id\\\\\\\\\\\\\\\":2}\\\\\\\"]\\\"\",\"except_users\":\"\\\"[\\\\\\\"{\\\\\\\\\\\\\\\"voucherable_type\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\App\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Guest\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"voucherable_id\\\\\\\\\\\\\\\":1}\\\\\\\",\\\\\\\"{\\\\\\\\\\\\\\\"voucherable_type\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\App\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\User\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"voucherable_id\\\\\\\\\\\\\\\":5}\\\\\\\"]\\\"\"}'),
(48, '8efb2098-b97f-418b-90e2-65ed1ca9acf9', 1, 'Update', 'MOIREI\\Vouchers\\Models\\Voucher', 10, 'MOIREI\\Vouchers\\Models\\Voucher', 10, 'MOIREI\\Vouchers\\Models\\Voucher', 10, '', 'finished', '', '2019-10-26 01:49:08', '2019-10-26 01:49:08', '{\"except_users\":\"\\\"[\\\\\\\"{\\\\\\\\\\\\\\\"voucherable_type\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\App\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Guest\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"voucherable_id\\\\\\\\\\\\\\\":1}\\\\\\\",\\\\\\\"{\\\\\\\\\\\\\\\"voucherable_type\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\App\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\User\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"voucherable_id\\\\\\\\\\\\\\\":5}\\\\\\\"]\\\"\"}', '{\"except_users\":\"\\\"[\\\\\\\"{\\\\\\\\\\\\\\\"voucherable_type\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\App\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Guest\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"voucherable_id\\\\\\\\\\\\\\\":1}\\\\\\\"]\\\"\"}'),
(51, '8efb2db1-43c1-4d28-a30f-c2cff761bbfc', 1, 'Create Vouchers', 'MOIREI\\Vouchers\\Models\\Voucher', 10, 'MOIREI\\Vouchers\\Models\\Voucher', 10, 'MOIREI\\Vouchers\\Models\\Voucher', 10, 'a:9:{s:8:\"model_id\";s:1:\"4\";s:6:\"amount\";N;s:13:\"currency_code\";s:3:\"AUD\";s:11:\"reward_type\";s:10:\"percentage\";s:6:\"reward\";N;s:8:\"quantity\";s:1:\"0\";s:10:\"expires_at\";N;s:10:\"only_users\";s:2:\"[]\";s:12:\"except_users\";s:2:\"[]\";}', 'finished', '', '2019-10-26 02:25:45', '2019-10-26 02:25:45', NULL, NULL),
(52, '8efb2dee-9cb0-4018-94b1-a648997110ce', 1, 'Delete', 'MOIREI\\Vouchers\\Models\\Voucher', 5, 'MOIREI\\Vouchers\\Models\\Voucher', 5, 'MOIREI\\Vouchers\\Models\\Voucher', 5, '', 'finished', '', '2019-10-26 02:26:25', '2019-10-26 02:26:25', NULL, NULL),
(53, '8efb2dee-d6da-4f8f-b5a3-2a9e6249d56a', 1, 'Delete', 'MOIREI\\Vouchers\\Models\\Voucher', 6, 'MOIREI\\Vouchers\\Models\\Voucher', 6, 'MOIREI\\Vouchers\\Models\\Voucher', 6, '', 'finished', '', '2019-10-26 02:26:25', '2019-10-26 02:26:25', NULL, NULL),
(54, '8efb2dee-e98f-432f-95c6-cd825ba0472d', 1, 'Delete', 'MOIREI\\Vouchers\\Models\\Voucher', 7, 'MOIREI\\Vouchers\\Models\\Voucher', 7, 'MOIREI\\Vouchers\\Models\\Voucher', 7, '', 'finished', '', '2019-10-26 02:26:25', '2019-10-26 02:26:25', NULL, NULL),
(55, '8efb2dee-f7e1-41c6-bc12-175a3eff8912', 1, 'Delete', 'MOIREI\\Vouchers\\Models\\Voucher', 8, 'MOIREI\\Vouchers\\Models\\Voucher', 8, 'MOIREI\\Vouchers\\Models\\Voucher', 8, '', 'finished', '', '2019-10-26 02:26:25', '2019-10-26 02:26:25', NULL, NULL),
(56, '8efb2dee-fe68-4458-8aad-8339675fc434', 1, 'Delete', 'MOIREI\\Vouchers\\Models\\Voucher', 9, 'MOIREI\\Vouchers\\Models\\Voucher', 9, 'MOIREI\\Vouchers\\Models\\Voucher', 9, '', 'finished', '', '2019-10-26 02:26:25', '2019-10-26 02:26:25', NULL, NULL),
(57, '8efb2def-11d3-4771-b5d1-36021f5955cd', 1, 'Delete', 'MOIREI\\Vouchers\\Models\\Voucher', 10, 'MOIREI\\Vouchers\\Models\\Voucher', 10, 'MOIREI\\Vouchers\\Models\\Voucher', 10, '', 'finished', '', '2019-10-26 02:26:25', '2019-10-26 02:26:25', NULL, NULL),
(58, '8efb2def-1e03-46d7-8fc9-bb342fe59d1b', 1, 'Delete', 'MOIREI\\Vouchers\\Models\\Voucher', 12, 'MOIREI\\Vouchers\\Models\\Voucher', 12, 'MOIREI\\Vouchers\\Models\\Voucher', 12, '', 'finished', '', '2019-10-26 02:26:25', '2019-10-26 02:26:25', NULL, NULL),
(59, '8efb2e97-d20c-4936-b3ee-4d5a14dbc941', 1, 'Create Vouchers', 'MOIREI\\Vouchers\\Models\\Voucher', 4, 'MOIREI\\Vouchers\\Models\\Voucher', 4, 'MOIREI\\Vouchers\\Models\\Voucher', 4, 'a:9:{s:8:\"model_id\";s:1:\"1\";s:6:\"amount\";s:1:\"3\";s:13:\"currency_code\";s:3:\"AUD\";s:11:\"reward_type\";s:8:\"monetary\";s:6:\"reward\";s:2:\"15\";s:8:\"quantity\";N;s:10:\"expires_at\";N;s:10:\"only_users\";s:77:\"[\"{\\\"voucherable_type\\\":\\\"\\\\\\\\App\\\\\\\\Models\\\\\\\\User\\\",\\\"voucherable_id\\\":5}\"]\";s:12:\"except_users\";s:2:\"[]\";}', 'finished', '', '2019-10-26 02:28:16', '2019-10-26 02:28:16', NULL, NULL),
(61, '8efb2f46-48f8-42b5-b42f-8087737bd140', 1, 'Create Vouchers', 'MOIREI\\Vouchers\\Models\\Voucher', 13, 'MOIREI\\Vouchers\\Models\\Voucher', 13, 'MOIREI\\Vouchers\\Models\\Voucher', 13, 'a:9:{s:8:\"model_id\";s:1:\"2\";s:6:\"amount\";s:1:\"4\";s:13:\"currency_code\";s:3:\"AUD\";s:11:\"reward_type\";s:10:\"percentage\";s:6:\"reward\";N;s:8:\"quantity\";N;s:10:\"expires_at\";N;s:10:\"only_users\";s:2:\"[]\";s:12:\"except_users\";s:2:\"[]\";}', 'finished', '', '2019-10-26 02:30:10', '2019-10-26 02:30:10', NULL, NULL),
(62, '8efb2fb9-08b2-4295-8c00-d7a7e874c464', 1, 'Create Vouchers', 'MOIREI\\Vouchers\\Models\\Voucher', 14, 'MOIREI\\Vouchers\\Models\\Voucher', 14, 'MOIREI\\Vouchers\\Models\\Voucher', 14, 'a:9:{s:8:\"model_id\";s:1:\"2\";s:6:\"amount\";s:1:\"5\";s:13:\"currency_code\";s:3:\"AUD\";s:11:\"reward_type\";s:10:\"percentage\";s:6:\"reward\";s:1:\"5\";s:8:\"quantity\";N;s:10:\"expires_at\";N;s:10:\"only_users\";s:2:\"[]\";s:12:\"except_users\";s:2:\"[]\";}', 'finished', '', '2019-10-26 02:31:25', '2019-10-26 02:31:26', NULL, NULL),
(63, '8efb3005-e1c8-420d-b2ac-c683313544e7', 1, 'Delete', 'MOIREI\\Vouchers\\Models\\Voucher', 1, 'MOIREI\\Vouchers\\Models\\Voucher', 1, 'MOIREI\\Vouchers\\Models\\Voucher', 1, '', 'finished', '', '2019-10-26 02:32:16', '2019-10-26 02:32:16', NULL, NULL),
(64, '8efb3005-e65a-4281-bbea-3bca72d01d56', 1, 'Delete', 'MOIREI\\Vouchers\\Models\\Voucher', 2, 'MOIREI\\Vouchers\\Models\\Voucher', 2, 'MOIREI\\Vouchers\\Models\\Voucher', 2, '', 'finished', '', '2019-10-26 02:32:16', '2019-10-26 02:32:16', NULL, NULL),
(65, '8efb3005-ea2b-4757-af33-93abdbb54e8a', 1, 'Delete', 'MOIREI\\Vouchers\\Models\\Voucher', 3, 'MOIREI\\Vouchers\\Models\\Voucher', 3, 'MOIREI\\Vouchers\\Models\\Voucher', 3, '', 'finished', '', '2019-10-26 02:32:16', '2019-10-26 02:32:16', NULL, NULL),
(66, '8efb3005-ed54-43e8-8bc6-f787f775a3cb', 1, 'Delete', 'MOIREI\\Vouchers\\Models\\Voucher', 4, 'MOIREI\\Vouchers\\Models\\Voucher', 4, 'MOIREI\\Vouchers\\Models\\Voucher', 4, '', 'finished', '', '2019-10-26 02:32:16', '2019-10-26 02:32:16', NULL, NULL),
(67, '8efb3006-0eee-49cd-9683-fea0143504d4', 1, 'Delete', 'MOIREI\\Vouchers\\Models\\Voucher', 13, 'MOIREI\\Vouchers\\Models\\Voucher', 13, 'MOIREI\\Vouchers\\Models\\Voucher', 13, '', 'finished', '', '2019-10-26 02:32:16', '2019-10-26 02:32:16', NULL, NULL),
(68, '8efb3006-1468-4a9c-9872-5aebac1a2996', 1, 'Delete', 'MOIREI\\Vouchers\\Models\\Voucher', 14, 'MOIREI\\Vouchers\\Models\\Voucher', 14, 'MOIREI\\Vouchers\\Models\\Voucher', 14, '', 'finished', '', '2019-10-26 02:32:16', '2019-10-26 02:32:16', NULL, NULL),
(69, '8efb3006-19ef-4ca0-9358-f16aaa687ba2', 1, 'Delete', 'MOIREI\\Vouchers\\Models\\Voucher', 15, 'MOIREI\\Vouchers\\Models\\Voucher', 15, 'MOIREI\\Vouchers\\Models\\Voucher', 15, '', 'finished', '', '2019-10-26 02:32:16', '2019-10-26 02:32:16', NULL, NULL),
(70, '8efb3006-1fb8-4253-887b-c06caf64ba8e', 1, 'Delete', 'MOIREI\\Vouchers\\Models\\Voucher', 16, 'MOIREI\\Vouchers\\Models\\Voucher', 16, 'MOIREI\\Vouchers\\Models\\Voucher', 16, '', 'finished', '', '2019-10-26 02:32:16', '2019-10-26 02:32:16', NULL, NULL),
(71, '8efb3006-2549-4eff-b790-70806555e2ae', 1, 'Delete', 'MOIREI\\Vouchers\\Models\\Voucher', 17, 'MOIREI\\Vouchers\\Models\\Voucher', 17, 'MOIREI\\Vouchers\\Models\\Voucher', 17, '', 'finished', '', '2019-10-26 02:32:16', '2019-10-26 02:32:16', NULL, NULL),
(72, '8efb3006-290d-4a96-9440-372219ad3fc7', 1, 'Delete', 'MOIREI\\Vouchers\\Models\\Voucher', 18, 'MOIREI\\Vouchers\\Models\\Voucher', 18, 'MOIREI\\Vouchers\\Models\\Voucher', 18, '', 'finished', '', '2019-10-26 02:32:16', '2019-10-26 02:32:16', NULL, NULL),
(73, '8efb3006-2ce9-48a2-a261-821705aa6c11', 1, 'Delete', 'MOIREI\\Vouchers\\Models\\Voucher', 19, 'MOIREI\\Vouchers\\Models\\Voucher', 19, 'MOIREI\\Vouchers\\Models\\Voucher', 19, '', 'finished', '', '2019-10-26 02:32:16', '2019-10-26 02:32:16', NULL, NULL),
(74, '8efb3b8d-161f-4df9-9d92-e0c121e6a566', 1, 'Update', 'MOIREI\\Vouchers\\Models\\Voucher', 21, 'MOIREI\\Vouchers\\Models\\Voucher', 21, 'MOIREI\\Vouchers\\Models\\Voucher', 21, '', 'finished', '', '2019-10-26 03:04:30', '2019-10-26 03:04:30', '{\"only_users\":\"[{\\\"voucherable_type\\\":\\\"\\\\\\\\App\\\\\\\\Models\\\\\\\\User\\\",\\\"voucherable_id\\\":2},{\\\"voucherable_type\\\":\\\"\\\\\\\\App\\\\\\\\Models\\\\\\\\User\\\",\\\"voucherable_id\\\":3}]\",\"except_users\":\"[{\\\"voucherable_type\\\":\\\"\\\\\\\\App\\\\\\\\Models\\\\\\\\Guest\\\",\\\"voucherable_id\\\":1}]\"}', '{\"only_users\":\"[\\\"{\\\\\\\"voucherable_type\\\\\\\":\\\\\\\"\\\\\\\\\\\\\\\\App\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\User\\\\\\\",\\\\\\\"voucherable_id\\\\\\\":2}\\\"]\",\"except_users\":\"\\\"[]\\\"\"}'),
(75, '8efb3b95-eb7f-4db3-8590-9d95ed070450', 1, 'Update', 'MOIREI\\Vouchers\\Models\\Voucher', 21, 'MOIREI\\Vouchers\\Models\\Voucher', 21, 'MOIREI\\Vouchers\\Models\\Voucher', 21, '', 'finished', '', '2019-10-26 03:04:36', '2019-10-26 03:04:36', '[]', '[]'),
(76, '8efb4383-f761-4f6f-aeb3-512b362dbb22', 1, 'Delete', 'MOIREI\\Vouchers\\Models\\Voucher', 22, 'MOIREI\\Vouchers\\Models\\Voucher', 22, 'MOIREI\\Vouchers\\Models\\Voucher', 22, '', 'finished', '', '2019-10-26 03:26:46', '2019-10-26 03:26:46', NULL, NULL),
(77, '8efb473e-e495-41a3-bb4e-6baed2cf9e41', 1, 'Delete', 'MOIREI\\Vouchers\\Models\\Voucher', 23, 'MOIREI\\Vouchers\\Models\\Voucher', 23, 'MOIREI\\Vouchers\\Models\\Voucher', 23, '', 'finished', '', '2019-10-26 03:37:12', '2019-10-26 03:37:12', NULL, NULL),
(78, '8efb473f-1e93-4289-97ee-7233f29b9036', 1, 'Delete', 'MOIREI\\Vouchers\\Models\\Voucher', 24, 'MOIREI\\Vouchers\\Models\\Voucher', 24, 'MOIREI\\Vouchers\\Models\\Voucher', 24, '', 'finished', '', '2019-10-26 03:37:12', '2019-10-26 03:37:12', NULL, NULL),
(79, '8efb4b7f-655d-4b52-951e-c7508aea3e8d', 1, 'Delete', 'MOIREI\\Vouchers\\Models\\Voucher', 25, 'MOIREI\\Vouchers\\Models\\Voucher', 25, 'MOIREI\\Vouchers\\Models\\Voucher', 25, '', 'finished', '', '2019-10-26 03:49:05', '2019-10-26 03:49:05', NULL, NULL),
(80, '8efb4b7f-8e08-40ce-8d4a-594bb4ffd5ce', 1, 'Delete', 'MOIREI\\Vouchers\\Models\\Voucher', 26, 'MOIREI\\Vouchers\\Models\\Voucher', 26, 'MOIREI\\Vouchers\\Models\\Voucher', 26, '', 'finished', '', '2019-10-26 03:49:05', '2019-10-26 03:49:05', NULL, NULL),
(81, '8efb4c30-a74d-4280-be3d-7b14a3355b52', 1, 'Delete', 'MOIREI\\Vouchers\\Models\\Voucher', 27, 'MOIREI\\Vouchers\\Models\\Voucher', 27, 'MOIREI\\Vouchers\\Models\\Voucher', 27, '', 'finished', '', '2019-10-26 03:51:02', '2019-10-26 03:51:02', NULL, NULL),
(82, '8efb4d37-30d6-4489-9292-cd5222255ec3', 1, 'Create', 'MOIREI\\Vouchers\\Models\\Voucher', 29, 'MOIREI\\Vouchers\\Models\\Voucher', 29, 'MOIREI\\Vouchers\\Models\\Voucher', 29, '', 'finished', '', '2019-10-26 03:53:53', '2019-10-26 03:53:53', NULL, '{\"model_type\":\"App\\\\Models\\\\Ecommerce\\\\Product\",\"model_id\":\"1\",\"currency_code\":\"AUD\",\"reward_type\":\"percentage\",\"reward\":\"34\",\"quantity\":\"0\",\"expires_at\":null,\"only_users\":[],\"except_users\":[],\"code\":\"RSGW-QFE4-Z48V\",\"updated_at\":\"2019-10-26 14:23:53\",\"created_at\":\"2019-10-26 14:23:53\",\"id\":29}'),
(83, '8efb4dcd-80ad-4a47-908b-3326e4d3820c', 1, 'Update', 'MOIREI\\Vouchers\\Models\\Voucher', 29, 'MOIREI\\Vouchers\\Models\\Voucher', 29, 'MOIREI\\Vouchers\\Models\\Voucher', 29, '', 'finished', '', '2019-10-26 03:55:32', '2019-10-26 03:55:32', '{\"only_users\":\"[]\",\"except_users\":\"[]\"}', '{\"only_users\":\"[\\\"{\\\\\\\"voucherable_type\\\\\\\":\\\\\\\"App\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\User\\\\\\\",\\\\\\\"voucherable_id\\\\\\\":2}\\\",\\\"{\\\\\\\"voucherable_type\\\\\\\":\\\\\\\"App\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\User\\\\\\\",\\\\\\\"voucherable_id\\\\\\\":3}\\\"]\",\"except_users\":\"\\\"[\\\\\\\"{\\\\\\\\\\\\\\\"voucherable_type\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"App\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Guest\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"voucherable_id\\\\\\\\\\\\\\\":1}\\\\\\\"]\\\"\"}'),
(84, '8efb58a3-e154-4b8a-8cda-0a308f24bc57', 1, 'Delete', 'MOIREI\\Vouchers\\Models\\Voucher', 29, 'MOIREI\\Vouchers\\Models\\Voucher', 29, 'MOIREI\\Vouchers\\Models\\Voucher', 29, '', 'finished', '', '2019-10-26 04:25:50', '2019-10-26 04:25:50', NULL, NULL),
(85, '8efb58a3-e95a-49d4-9076-8470d8a3b7bc', 1, 'Delete', 'MOIREI\\Vouchers\\Models\\Voucher', 30, 'MOIREI\\Vouchers\\Models\\Voucher', 30, 'MOIREI\\Vouchers\\Models\\Voucher', 30, '', 'finished', '', '2019-10-26 04:25:50', '2019-10-26 04:25:50', NULL, NULL),
(86, '8efb5907-eff8-4945-bbab-a8ac64a366bb', 1, 'Update', 'MOIREI\\Vouchers\\Models\\Voucher', 31, 'MOIREI\\Vouchers\\Models\\Voucher', 31, 'MOIREI\\Vouchers\\Models\\Voucher', 31, '', 'finished', '', '2019-10-26 04:26:56', '2019-10-26 04:26:56', '{\"only_users\":\"[{\\\"voucherable_type\\\":\\\"App\\\\\\\\Models\\\\\\\\User\\\",\\\"voucherable_id\\\":1},{\\\"voucherable_type\\\":\\\"App\\\\\\\\Models\\\\\\\\User\\\",\\\"voucherable_id\\\":2}]\",\"except_users\":\"[{\\\"voucherable_type\\\":\\\"App\\\\\\\\Models\\\\\\\\Guest\\\",\\\"voucherable_id\\\":1}]\"}', '{\"only_users\":\"[\\\"{\\\\\\\"voucherable_type\\\\\\\":\\\\\\\"App\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\User\\\\\\\",\\\\\\\"voucherable_id\\\\\\\":2}\\\",\\\"{\\\\\\\"voucherable_type\\\\\\\":\\\\\\\"App\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\User\\\\\\\",\\\\\\\"voucherable_id\\\\\\\":4}\\\"]\",\"except_users\":\"\\\"[\\\\\\\"{\\\\\\\\\\\\\\\"voucherable_type\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"App\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\User\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"voucherable_id\\\\\\\\\\\\\\\":5}\\\\\\\"]\\\"\"}'),
(87, '8efb597a-c015-4d7e-9e2b-1c3b331b24cc', 1, 'Update', 'MOIREI\\Vouchers\\Models\\Voucher', 31, 'MOIREI\\Vouchers\\Models\\Voucher', 31, 'MOIREI\\Vouchers\\Models\\Voucher', 31, '', 'finished', '', '2019-10-26 04:28:11', '2019-10-26 04:28:11', '{\"only_users\":null,\"except_users\":null}', '{\"only_users\":\"[\\\"{\\\\\\\"voucherable_type\\\\\\\":\\\\\\\"App\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\User\\\\\\\",\\\\\\\"voucherable_id\\\\\\\":2}\\\"]\",\"except_users\":\"\\\"[\\\\\\\"{\\\\\\\\\\\\\\\"voucherable_type\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"App\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\User\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"voucherable_id\\\\\\\\\\\\\\\":2}\\\\\\\",\\\\\\\"{\\\\\\\\\\\\\\\"voucherable_type\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"App\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\User\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"voucherable_id\\\\\\\\\\\\\\\":4}\\\\\\\"]\\\"\"}'),
(88, '8efb6c6d-0436-47be-892f-e540b1bc41e2', 1, 'Update', 'MOIREI\\Vouchers\\Models\\Voucher', 31, 'MOIREI\\Vouchers\\Models\\Voucher', 31, 'MOIREI\\Vouchers\\Models\\Voucher', 31, '', 'finished', '', '2019-10-26 05:21:10', '2019-10-26 05:21:10', '{\"only_users\":\"[\\\"{\\\\\\\"voucherable_type\\\\\\\":\\\\\\\"App\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\User\\\\\\\",\\\\\\\"voucherable_id\\\\\\\":2}\\\"]\"}', '{\"only_users\":\"[]\"}'),
(89, '8efb6c93-2990-45f8-a0c6-588102a0e6da', 1, 'Update', 'MOIREI\\Vouchers\\Models\\Voucher', 31, 'MOIREI\\Vouchers\\Models\\Voucher', 31, 'MOIREI\\Vouchers\\Models\\Voucher', 31, '', 'finished', '', '2019-10-26 05:21:35', '2019-10-26 05:21:35', '{\"except_users\":\"\\\"[\\\\\\\"{\\\\\\\\\\\\\\\"voucherable_type\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"App\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\User\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"voucherable_id\\\\\\\\\\\\\\\":2}\\\\\\\",\\\\\\\"{\\\\\\\\\\\\\\\"voucherable_type\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"App\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\User\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"voucherable_id\\\\\\\\\\\\\\\":4}\\\\\\\"]\\\"\"}', '{\"except_users\":\"\\\"[\\\\\\\"{\\\\\\\\\\\\\\\"voucherable_type\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"App\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\User\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"voucherable_id\\\\\\\\\\\\\\\":2}\\\\\\\",\\\\\\\"{\\\\\\\\\\\\\\\"voucherable_type\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"App\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\User\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"voucherable_id\\\\\\\\\\\\\\\":4}\\\\\\\",\\\\\\\"{\\\\\\\\\\\\\\\"voucherable_type\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"App\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\User\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"voucherable_id\\\\\\\\\\\\\\\":1}\\\\\\\"]\\\"\"}'),
(90, '8efb715c-f6f3-4fe3-b917-3d510ad63891', 1, 'Update', 'MOIREI\\Vouchers\\Models\\Voucher', 31, 'MOIREI\\Vouchers\\Models\\Voucher', 31, 'MOIREI\\Vouchers\\Models\\Voucher', 31, '', 'finished', '', '2019-10-26 05:34:58', '2019-10-26 05:34:58', '{\"except_users\":\"\\\"[\\\\\\\"{\\\\\\\\\\\\\\\"voucherable_type\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"App\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\User\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"voucherable_id\\\\\\\\\\\\\\\":2}\\\\\\\",\\\\\\\"{\\\\\\\\\\\\\\\"voucherable_type\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"App\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\User\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"voucherable_id\\\\\\\\\\\\\\\":4}\\\\\\\",\\\\\\\"{\\\\\\\\\\\\\\\"voucherable_type\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"App\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\User\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"voucherable_id\\\\\\\\\\\\\\\":1}\\\\\\\"]\\\"\"}', '{\"except_users\":\"\\\"[\\\\\\\"{\\\\\\\\\\\\\\\"voucherable_type\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"App\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\User\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"voucherable_id\\\\\\\\\\\\\\\":2}\\\\\\\",\\\\\\\"{\\\\\\\\\\\\\\\"voucherable_type\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"App\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\User\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"voucherable_id\\\\\\\\\\\\\\\":4}\\\\\\\"]\\\"\"}'),
(91, '8efb8f91-5a58-46f9-8352-f30c155051f6', 1, 'Create', 'MOIREI\\Vouchers\\Models\\Voucher', 32, 'MOIREI\\Vouchers\\Models\\Voucher', 32, 'MOIREI\\Vouchers\\Models\\Voucher', 32, '', 'finished', '', '2019-10-26 06:59:26', '2019-10-26 06:59:26', NULL, '{\"model_type\":\"App\\\\Models\\\\Ecommerce\\\\Product\",\"model_id\":\"4\",\"currency_code\":\"AUD\",\"reward_type\":\"percentage\",\"reward\":\"7\",\"quantity\":\"0\",\"expires_at\":null,\"only_users\":[],\"except_users\":\"[]\",\"code\":\"ZRK8-Q5NW-G3UN\",\"updated_at\":\"2019-10-26 17:29:25\",\"created_at\":\"2019-10-26 17:29:25\",\"id\":32}'),
(92, '8efc4063-e9b1-42f5-9585-7452cdb82dd8', 1, 'Detach', 'App\\Models\\User', 1, 'MOIREI\\Vouchers\\Models\\Voucher', 31, 'Illuminate\\Database\\Eloquent\\Relations\\MorphPivot', NULL, '', 'finished', '', '2019-10-26 15:13:51', '2019-10-26 15:13:51', NULL, NULL),
(93, '8efc4063-f7e1-426f-8cb9-46ba568037df', 1, 'Detach', 'App\\Models\\User', 1, 'MOIREI\\Vouchers\\Models\\Voucher', 31, 'Illuminate\\Database\\Eloquent\\Relations\\MorphPivot', NULL, '', 'finished', '', '2019-10-26 15:13:51', '2019-10-26 15:13:51', NULL, NULL),
(94, '8efc4064-1766-47b6-bb97-9e45d2ce4918', 1, 'Detach', 'App\\Models\\User', 1, 'MOIREI\\Vouchers\\Models\\Voucher', 31, 'Illuminate\\Database\\Eloquent\\Relations\\MorphPivot', NULL, '', 'finished', '', '2019-10-26 15:13:52', '2019-10-26 15:13:52', NULL, NULL),
(95, '8efc4064-1f65-4b37-963f-c9904ab30ac8', 1, 'Detach', 'App\\Models\\User', 1, 'MOIREI\\Vouchers\\Models\\Voucher', 31, 'Illuminate\\Database\\Eloquent\\Relations\\MorphPivot', NULL, '', 'finished', '', '2019-10-26 15:13:52', '2019-10-26 15:13:52', NULL, NULL),
(96, '8efc41b9-0b29-4603-ba04-f01fc83f7547', 1, 'Detach', 'App\\Models\\User', 2, 'MOIREI\\Vouchers\\Models\\Voucher', 32, 'Illuminate\\Database\\Eloquent\\Relations\\MorphPivot', NULL, '', 'finished', '', '2019-10-26 15:17:35', '2019-10-26 15:17:35', NULL, NULL),
(97, '8efc5216-2663-48dc-8a86-bfa4d6f0ce4b', 1, 'Create', 'MOIREI\\Vouchers\\Models\\Voucher', 1, 'MOIREI\\Vouchers\\Models\\Voucher', 1, 'MOIREI\\Vouchers\\Models\\Voucher', 1, '', 'finished', '', '2019-10-26 16:03:20', '2019-10-26 16:03:20', NULL, '{\"model_type\":\"App\\\\Models\\\\Ecommerce\\\\Product\",\"model_id\":\"2\",\"currency_code\":\"AUD\",\"reward_type\":\"percentage\",\"reward\":\"10\",\"is_disposable\":true,\"quantity\":1,\"expires_at\":\"2019-10-10 00:00:00\",\"code\":\"S8ER-UFQT-ECTU\",\"updated_at\":\"2019-10-27 02:33:20\",\"created_at\":\"2019-10-27 02:33:20\",\"id\":1}'),
(98, '8efc52e3-b8ef-401e-bff7-233b34ebab37', 1, 'Update', 'MOIREI\\Vouchers\\Models\\Voucher', 1, 'MOIREI\\Vouchers\\Models\\Voucher', 1, 'MOIREI\\Vouchers\\Models\\Voucher', 1, '', 'finished', '', '2019-10-26 16:05:35', '2019-10-26 16:05:35', '{\"can_redeem\":null,\"cannot_redeem\":null,\"expires_at\":\"2019-10-10 00:00:00\"}', '{\"can_redeem\":\"[]\",\"cannot_redeem\":\"\\\"[]\\\"\",\"expires_at\":\"2019-10-31 00:00:00\"}'),
(99, '8efc5439-db10-40d1-a446-703653384011', 1, 'Create', 'MOIREI\\Vouchers\\Models\\Voucher', 2, 'MOIREI\\Vouchers\\Models\\Voucher', 2, 'MOIREI\\Vouchers\\Models\\Voucher', 2, '', 'finished', '', '2019-10-26 16:09:19', '2019-10-26 16:09:19', NULL, '{\"model_type\":\"App\\\\Models\\\\Ecommerce\\\\Product\",\"model_id\":\"3\",\"currency_code\":\"AUD\",\"reward_type\":\"monetary\",\"reward\":\"20\",\"is_disposable\":false,\"quantity\":2,\"expires_at\":null,\"can_redeem\":[],\"cannot_redeem\":\"[]\",\"code\":\"QN6V-UDQ7-9JP6\",\"updated_at\":\"2019-10-27 02:39:19\",\"created_at\":\"2019-10-27 02:39:19\",\"id\":2}'),
(100, '8efc57fa-3ecb-49a9-84e1-d37ddc643feb', 1, 'Update', 'MOIREI\\Vouchers\\Models\\Voucher', 2, 'MOIREI\\Vouchers\\Models\\Voucher', 2, 'MOIREI\\Vouchers\\Models\\Voucher', 2, '', 'finished', '', '2019-10-26 16:19:49', '2019-10-26 16:19:49', '{\"quantity\":-1}', '{\"quantity\":\"0\"}'),
(101, '8efc5813-2634-4874-8204-7c51b4836e22', 1, 'Detach', 'App\\Models\\User', 1, 'MOIREI\\Vouchers\\Models\\Voucher', 2, 'Illuminate\\Database\\Eloquent\\Relations\\MorphPivot', NULL, '', 'finished', '', '2019-10-26 16:20:05', '2019-10-26 16:20:05', NULL, NULL),
(102, '8efc5813-2da7-4107-ab0f-40335618051c', 1, 'Detach', 'App\\Models\\User', 1, 'MOIREI\\Vouchers\\Models\\Voucher', 2, 'Illuminate\\Database\\Eloquent\\Relations\\MorphPivot', NULL, '', 'finished', '', '2019-10-26 16:20:05', '2019-10-26 16:20:05', NULL, NULL),
(103, '8efd2627-b9da-4bc5-8adc-5057ff2d3d1d', 1, 'Create', 'MOIREI\\Vouchers\\Models\\Voucher', 3, 'MOIREI\\Vouchers\\Models\\Voucher', 3, 'MOIREI\\Vouchers\\Models\\Voucher', 3, '', 'finished', '', '2019-10-27 01:56:20', '2019-10-27 01:56:20', NULL, '{\"model_type\":\"App\\\\Models\\\\Ecommerce\\\\Product\",\"model_id\":\"6\",\"currency_code\":\"AUD\",\"reward_type\":\"monetary\",\"reward\":\"10\",\"is_disposable\":true,\"quantity\":1,\"expires_at\":null,\"can_redeem\":[],\"cannot_redeem\":\"[]\",\"code\":\"FNU3-3ZCC-CAKD\",\"updated_at\":\"2019-10-27 12:26:19\",\"created_at\":\"2019-10-27 12:26:19\",\"id\":3}'),
(104, '8efefa28-1bb0-4084-abe6-3bde06acfa18', 1, 'Update', 'MOIREI\\Vouchers\\Models\\Voucher', 3, 'MOIREI\\Vouchers\\Models\\Voucher', 3, 'MOIREI\\Vouchers\\Models\\Voucher', 3, '', 'finished', '', '2019-10-27 23:44:57', '2019-10-27 23:44:57', '{\"reward_type\":\"monetary\"}', '{\"reward_type\":\"percentage\"}'),
(105, '8efefcca-ec47-4308-8d56-b05263976951', 1, 'Update', 'MOIREI\\Vouchers\\Models\\Voucher', 3, 'MOIREI\\Vouchers\\Models\\Voucher', 3, 'MOIREI\\Vouchers\\Models\\Voucher', 3, '', 'finished', '', '2019-10-27 23:52:19', '2019-10-27 23:52:19', '{\"reward_type\":\"percentage\"}', '{\"reward_type\":\"monetary\"}'),
(106, '8efefea4-2b84-4eff-80dc-d4c1224e9663', 1, 'Update', 'MOIREI\\Vouchers\\Models\\Voucher', 3, 'MOIREI\\Vouchers\\Models\\Voucher', 3, 'MOIREI\\Vouchers\\Models\\Voucher', 3, '', 'finished', '', '2019-10-27 23:57:30', '2019-10-27 23:57:30', '{\"currency_code\":\"AUD\"}', '{\"currency_code\":\"USD\"}'),
(107, '8f014c14-e114-469d-93d6-9b1a95b77baa', 1, 'Create', 'MOIREI\\Vouchers\\Models\\Voucher', 5, 'MOIREI\\Vouchers\\Models\\Voucher', 5, 'MOIREI\\Vouchers\\Models\\Voucher', 5, '', 'finished', '', '2019-10-29 03:25:41', '2019-10-29 03:25:41', NULL, '{\"model_type\":\"App\\\\Models\\\\Ecommerce\\\\Product\",\"model_id\":\"6\",\"currency_code\":\"AUD\",\"reward_type\":\"monetary\",\"reward\":\"10\",\"is_disposable\":true,\"quantity\":1,\"expires_at\":\"2019-11-29 00:00:00\",\"can_redeem\":[],\"cannot_redeem\":\"[]\",\"code\":\"WVP2-NAA4-WV6B\",\"updated_at\":\"2019-10-29 13:55:41\",\"created_at\":\"2019-10-29 13:55:41\",\"id\":5}'),
(108, '8f0359fd-7788-4d3b-aa7a-6ad0f9d7c4c8', 1, 'Approve Product Review', 'App\\Models\\Ecommerce\\ProductReview', 3, 'App\\Models\\Ecommerce\\ProductReview', 3, 'App\\Models\\Ecommerce\\ProductReview', 3, 'a:0:{}', 'finished', '', '2019-10-30 03:56:14', '2019-10-30 03:56:15', NULL, NULL),
(109, '8f035a0a-eb9a-4c07-ba28-0d0c2ed920df', 1, 'Approve Product Review', 'App\\Models\\Ecommerce\\ProductReview', 2, 'App\\Models\\Ecommerce\\ProductReview', 2, 'App\\Models\\Ecommerce\\ProductReview', 2, 'a:0:{}', 'finished', '', '2019-10-30 03:56:23', '2019-10-30 03:56:23', NULL, NULL),
(116, '8f0e40da-245c-469a-8a6c-e34c8db88be6', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-04 14:00:03', '2019-11-04 14:00:03', '{\"purchasable\":1,\"sale_price_2\":null,\"misc\":null,\"on_sale\":0,\"rating\":\"0.00\",\"stock\":null,\"unstocked\":0,\"shipping_class_id\":null,\"url\":null,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0,\"countries_available_to\":null,\"countries_hidden_from\":null,\"faqs\":null,\"return_policy_id\":null}', '{\"purchasable\":true,\"sale_price_2\":\"[]\",\"misc\":\"[]\",\"on_sale\":false,\"rating\":\"0\",\"stock\":\"[]\",\"unstocked\":false,\"shipping_class_id\":2,\"url\":\"https:\\/\\/moirei.com\\/shop\\/products\\/lumo\",\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"countries_available_to\":\"[]\",\"countries_hidden_from\":\"[]\",\"faqs\":\"[]\",\"return_policy_id\":1}'),
(118, '8f0e4182-4e53-4bc1-a21e-c851d1f0b005', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-04 14:01:53', '2019-11-04 14:01:53', '{\"purchasable\":1,\"on_sale\":0,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(119, '8f0e4229-b980-455d-835a-fe55fe8f86be', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-04 14:03:43', '2019-11-04 14:03:43', '{\"purchasable\":1,\"on_sale\":0,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(121, '8f0e43d8-663f-4d32-899b-9865f6db0c9b', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-04 14:08:25', '2019-11-04 14:08:25', '{\"purchasable\":1,\"on_sale\":0,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(122, '8f0e5f77-24fe-429f-a967-948289ec0d68', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-04 15:25:39', '2019-11-04 15:25:39', '{\"purchasable\":1,\"on_sale\":0,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}');
INSERT INTO `action_events` (`id`, `batch_id`, `user_id`, `name`, `actionable_type`, `actionable_id`, `target_type`, `target_id`, `model_type`, `model_id`, `fields`, `status`, `exception`, `created_at`, `updated_at`, `original`, `changes`) VALUES
(123, '8f0e6900-6010-4c26-9885-189d2cd5da21', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-04 15:52:19', '2019-11-04 15:52:19', '{\"purchasable\":1,\"on_sale\":0,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(124, '8f0e6941-471f-4f1e-8ddf-0ee18b232e91', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-04 15:53:02', '2019-11-04 15:53:02', '{\"purchasable\":1,\"price\":\"79.00\",\"on_sale\":0,\"unstocked\":0,\"url\":null,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"price\":\"79.99\",\"on_sale\":false,\"unstocked\":false,\"url\":\"https:\\/\\/moirei.com\\/shop\\/products\\/wireless-power-bank\",\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(125, '8f0e85e8-bf35-473a-a265-7ebc8631737e', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-04 17:13:09', '2019-11-04 17:13:09', '{\"purchasable\":1,\"on_sale\":0,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(126, '8f0e8617-7dea-4785-96ec-a4a4b82cbf36', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-04 17:13:40', '2019-11-04 17:13:40', '{\"purchasable\":1,\"on_sale\":0,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(127, '8f0ea750-ce9f-4413-86d7-1a531808f3d7', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-04 18:46:34', '2019-11-04 18:46:34', '{\"purchasable\":1,\"on_sale\":0,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(128, '8f0ee3c9-a376-4ecc-af0d-a063ed884841', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-04 21:35:39', '2019-11-04 21:35:39', '{\"purchasable\":1,\"on_sale\":0,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(129, '8f0ee404-e679-4ab1-9c74-22356392111f', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-04 21:36:18', '2019-11-04 21:36:18', '{\"purchasable\":1,\"on_sale\":0,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(130, '8f0f01c8-8d53-4d25-841e-a92cc33634f2', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-04 22:59:32', '2019-11-04 22:59:32', '{\"purchasable\":1,\"on_sale\":0,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(131, '8f1262fd-b6a2-4935-bddc-ecb434979906', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-06 15:18:49', '2019-11-06 15:18:49', '{\"purchasable\":1,\"on_sale\":0,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(135, '8f12645d-fec2-4094-b47c-7e2d93344185', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-06 15:22:40', '2019-11-06 15:22:40', '{\"purchasable\":1,\"on_sale\":0,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(136, '8f126489-58af-4d1d-b9b2-e8a8a06ee521', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-06 15:23:09', '2019-11-06 15:23:09', '{\"purchasable\":1,\"on_sale\":0,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(137, '8f1264bd-ef92-4a3f-a079-018560af4512', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-06 15:23:43', '2019-11-06 15:23:43', '{\"purchasable\":1,\"on_sale\":0,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(138, '8f1264df-0b92-4387-a3b5-a3997fd28d73', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-06 15:24:05', '2019-11-06 15:24:05', '{\"purchasable\":1,\"on_sale\":0,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(139, '8f126564-05a9-4026-99c0-156933132c34', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-06 15:25:32', '2019-11-06 15:25:32', '{\"purchasable\":1,\"on_sale\":0,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(140, '8f12658a-5bde-4911-8ca6-8123197f6ca2', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-06 15:25:57', '2019-11-06 15:25:57', '{\"purchasable\":1,\"on_sale\":0,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(141, '8f1265c9-1803-4f7e-91a0-a43d12fbe92d', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-06 15:26:38', '2019-11-06 15:26:38', '{\"purchasable\":1,\"on_sale\":0,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(142, '8f1265d8-eda9-4109-ad1f-f2edd7d69da6', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-06 15:26:48', '2019-11-06 15:26:48', '{\"purchasable\":1,\"on_sale\":0,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(143, '8f126629-2b5b-4a6a-aca6-5f0229185d94', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-06 15:27:41', '2019-11-06 15:27:41', '{\"purchasable\":1,\"on_sale\":0,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(144, '8f126639-724a-4b0b-ae83-0988ae9a5b89', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-06 15:27:52', '2019-11-06 15:27:52', '{\"purchasable\":1,\"on_sale\":0,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(145, '8f126646-7565-4cbb-997f-c2376d966431', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-06 15:28:00', '2019-11-06 15:28:00', '{\"purchasable\":1,\"on_sale\":0,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(152, '8f1267da-c638-40f7-9748-7d45358d50f5', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-06 15:32:25', '2019-11-06 15:32:25', '{\"purchasable\":1,\"on_sale\":0,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(153, '8f1267eb-fdbb-44c7-890f-60cff817b3c2', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-06 15:32:37', '2019-11-06 15:32:37', '{\"purchasable\":1,\"on_sale\":0,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(154, '8f1267fe-a0fe-45b9-bd6e-56287c24e4f4', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-06 15:32:49', '2019-11-06 15:32:49', '{\"purchasable\":1,\"on_sale\":0,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(155, '8f128d67-497c-4fd5-bb5e-7cb6d3e76f09', 1, 'Update', 'App\\Models\\Ecommerce\\Shipping', 2, 'App\\Models\\Ecommerce\\Shipping', 2, 'App\\Models\\Ecommerce\\Shipping', 2, '', 'finished', '', '2019-11-06 17:17:25', '2019-11-06 17:17:25', '{\"rate\":\"10.00\",\"regional_min_business_days\":null,\"regional_max_business_days\":null,\"publicly_optional\":0}', '{\"rate\":\"10.10\",\"regional_min_business_days\":\"[]\",\"regional_max_business_days\":\"[]\",\"publicly_optional\":false}'),
(156, '8f128d7a-7460-45ea-af6a-a74f0153bae5', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-06 17:17:37', '2019-11-06 17:17:37', '{\"purchasable\":1,\"on_sale\":0,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"on_sale\":false,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(157, '8f12b970-bad7-408a-964e-043da9431f92', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-06 19:20:33', '2019-11-06 19:20:33', '{\"purchasable\":1,\"date_on_sale_to\":null,\"on_sale\":0,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"date_on_sale_to\":\"2019-11-15 01:30:00\",\"on_sale\":false,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(159, '8f12c101-75bd-4198-9868-17d92d474058', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-06 19:41:42', '2019-11-06 19:41:42', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(160, '8f147c9d-f2d2-451e-9d0f-1ea4ddd5bcbc', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-07 16:22:08', '2019-11-07 16:22:08', '{\"purchasable\":1,\"sale_price\":null,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"sale_price\":\"30\",\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(162, '8f14e73f-5373-4e96-ac70-5ad90f7d732b', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-07 21:20:18', '2019-11-07 21:20:18', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(163, '8f17336a-ab80-4f23-9f38-ed5d40272c41', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-09 00:44:56', '2019-11-09 00:44:56', '{\"purchasable\":1,\"unstocked\":0,\"url\":\"https:\\/\\/moirei.com\\/shop\\/products\\/wireless-power-bank\",\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"unstocked\":false,\"url\":null,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(164, '8f173388-6f99-4aba-a686-8364c9539bd2', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-09 00:45:15', '2019-11-09 00:45:15', '{\"purchasable\":1,\"unstocked\":0,\"url\":null,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"unstocked\":false,\"url\":\"h\",\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(165, '8f1734e5-500e-43fc-bdc7-632ff57805e7', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-09 00:49:04', '2019-11-09 00:49:04', '{\"purchasable\":1,\"unstocked\":0,\"url\":\"h\",\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"unstocked\":false,\"url\":\"https:\\/\\/moirei.com\\/mg001\",\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(166, '8f1911be-5fab-4a3c-91f8-498c32e7bba4', 1, 'Update', 'App\\Models\\Ecommerce\\ProductAttributeOption', 8, 'App\\Models\\Ecommerce\\ProductAttributeOption', 8, 'App\\Models\\Ecommerce\\ProductAttributeOption', 8, '', 'finished', '', '2019-11-09 23:02:26', '2019-11-09 23:02:26', '{\"product_images\":null}', '{\"product_images\":\"[\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portab-1571132538-TBjEQ.jpg\\\"]\"}'),
(167, '8f1911d6-022a-40ac-977c-7c863e437e67', 1, 'Update', 'App\\Models\\Ecommerce\\ProductAttributeOption', 7, 'App\\Models\\Ecommerce\\ProductAttributeOption', 7, 'App\\Models\\Ecommerce\\ProductAttributeOption', 7, '', 'finished', '', '2019-11-09 23:02:41', '2019-11-09 23:02:41', '{\"product_images\":null}', '{\"product_images\":\"[\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/new-moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-po-1571132539-v52oz.jpg\\\"]\"}'),
(168, '8f1ac71d-2a56-4faa-93ad-99d1d943f989', 1, 'Update', 'App\\Models\\Ecommerce\\ProductAttributeOption', 7, 'App\\Models\\Ecommerce\\ProductAttributeOption', 7, 'App\\Models\\Ecommerce\\ProductAttributeOption', 7, '', 'finished', '', '2019-11-10 19:25:24', '2019-11-10 19:25:24', '{\"product_images\":null}', '{\"product_images\":\"[\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/new-moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-po-1571132539-v52oz.jpg\\\"]\"}'),
(169, '8f1ac731-d00f-4df2-a51c-8485314526a3', 1, 'Update', 'App\\Models\\Ecommerce\\ProductAttributeOption', 8, 'App\\Models\\Ecommerce\\ProductAttributeOption', 8, 'App\\Models\\Ecommerce\\ProductAttributeOption', 8, '', 'finished', '', '2019-11-10 19:25:38', '2019-11-10 19:25:38', '{\"product_images\":null}', '{\"product_images\":\"[\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portab-1571132538-TBjEQ.jpg\\\"]\"}'),
(170, '8f1af3c5-a990-4acf-b822-f912803b78ac', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-10 21:30:17', '2019-11-10 21:30:17', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(171, '8f1af549-e99a-4eb6-b367-f2af03fcbbd7', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 4, 'App\\Models\\Ecommerce\\Product', 4, 'App\\Models\\Ecommerce\\Product', 4, '', 'finished', '', '2019-11-10 21:34:31', '2019-11-10 21:34:31', '{\"seo_title\":null,\"purchasable\":1,\"price_2\":null,\"sale_price_2\":null,\"misc\":null,\"rating\":\"0.00\",\"stock\":null,\"unstocked\":0,\"shipping_class_id\":null,\"url\":null,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0,\"countries_available_to\":null,\"countries_hidden_from\":null,\"faqs\":null,\"return_policy_id\":null}', '{\"seo_title\":\"S812 Bluetooth Speaker\",\"purchasable\":true,\"price_2\":\"[]\",\"sale_price_2\":\"[]\",\"misc\":\"[]\",\"rating\":\"0\",\"stock\":\"[]\",\"unstocked\":false,\"shipping_class_id\":1,\"url\":\"https:\\/\\/moirei.com\\/shop\\/product\\/s812-bluetooth-speaker\",\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"countries_available_to\":\"[]\",\"countries_hidden_from\":\"[]\",\"faqs\":\"[]\",\"return_policy_id\":1}'),
(172, '8f1af594-d6c4-47e6-8157-c71fad4e5ba5', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 4, 'App\\Models\\Ecommerce\\Product', 4, 'App\\Models\\Ecommerce\\Product', 4, '', 'finished', '', '2019-11-10 21:35:20', '2019-11-10 21:35:20', '{\"purchasable\":1,\"sale_price_2\":\"[]\",\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"sale_price_2\":\"[{\\\"currency_code\\\":\\\"AUD\\\",\\\"price\\\":\\\"3\\\"}]\",\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(173, '8f1b3a93-8e90-430a-92aa-129f3d8389d3', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-11 00:48:16', '2019-11-11 00:48:16', '{\"purchasable\":1,\"short_description\":null,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"short_description\":\"<div>Power up quickly with the MG001 Wireless Power Bank, featuring wireless 5W PD and 5V@2A fast charge standard USB connector.<\\/div>\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(174, '8f1b3bbb-5cb6-4086-8450-d89fe1439494', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-11 00:51:30', '2019-11-11 00:51:30', '{\"purchasable\":1,\"description\":null,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"description\":\"<div>Never run out of phone battery again and enjoy the convenience of wireless charging. The MG001 Wireless Power Bank has in store, 10,000 mAh which can charge up a standard smart phone up to three times over.&nbsp;<br><br><\\/div><h1>Popular use cases<\\/h1><div><br><\\/div><ul><li><strong>iPhone X:<\\/strong> Recharge 3.4 times<\\/li><li><strong>iPhone 8:<\\/strong> Recharge 2.3 times<\\/li><li><strong>Samsung Galaxy S8:<\\/strong> Recharge 2.4 times<\\/li><\\/ul><div>&nbsp;<br><br><\\/div><h1>High-capacity, high-speed, portable charging.<\\/h1><div><br><\\/div><div>Unlike most power banks, the MG001 is extremely lightweight and portable, equipped with high-speed Type-C and standard USB, delivering up to 2A.<br><br><\\/div>\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(175, '8f1b3be2-575a-4357-b536-4ce08bd63448', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-11 00:51:55', '2019-11-11 00:51:55', '{\"purchasable\":1,\"description\":\"<div>Never run out of phone battery again and enjoy the convenience of wireless charging. The MG001 Wireless Power Bank has in store, 10,000 mAh which can charge up a standard smart phone up to three times over.&nbsp;<br><br><\\/div><h1>Popular use cases<\\/h1><div><br><\\/div><ul><li><strong>iPhone X:<\\/strong> Recharge 3.4 times<\\/li><li><strong>iPhone 8:<\\/strong> Recharge 2.3 times<\\/li><li><strong>Samsung Galaxy S8:<\\/strong> Recharge 2.4 times<\\/li><\\/ul><div>&nbsp;<br><br><\\/div><h1>High-capacity, high-speed, portable charging.<\\/h1><div><br><\\/div><div>Unlike most power banks, the MG001 is extremely lightweight and portable, equipped with high-speed Type-C and standard USB, delivering up to 2A.<br><br><\\/div>\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"description\":\"<div>Never run out of phone battery again and enjoy the convenience of wireless charging. The MG001 Wireless Power Bank has in store, 10,000 mAh which can charge up a standard smart phone up to three times over.&nbsp;<br><br><\\/div><div><strong>Popular use cases<\\/strong><\\/div><div><br><\\/div><ul><li><strong>iPhone X:<\\/strong> Recharge 3.4 times<\\/li><li><strong>iPhone 8:<\\/strong> Recharge 2.3 times<\\/li><li><strong>Samsung Galaxy S8:<\\/strong> Recharge 2.4 times<\\/li><\\/ul><div>&nbsp;<br><br><\\/div><div><strong>High-capacity, high-speed, portable charging.<\\/strong><\\/div><div><br><\\/div><div>Unlike most power banks, the MG001 is extremely lightweight and portable, equipped with high-speed Type-C and standard USB, delivering up to 2A.<br><br><\\/div>\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(176, '8f1b3c36-8497-4dd8-9f46-74ae0eeeea9d', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-11 00:52:50', '2019-11-11 00:52:50', '{\"purchasable\":1,\"description\":\"<div>Never run out of phone battery again and enjoy the convenience of wireless charging. The MG001 Wireless Power Bank has in store, 10,000 mAh which can charge up a standard smart phone up to three times over.&nbsp;<br><br><\\/div><div><strong>Popular use cases<\\/strong><\\/div><div><br><\\/div><ul><li><strong>iPhone X:<\\/strong> Recharge 3.4 times<\\/li><li><strong>iPhone 8:<\\/strong> Recharge 2.3 times<\\/li><li><strong>Samsung Galaxy S8:<\\/strong> Recharge 2.4 times<\\/li><\\/ul><div>&nbsp;<br><br><\\/div><div><strong>High-capacity, high-speed, portable charging.<\\/strong><\\/div><div><br><\\/div><div>Unlike most power banks, the MG001 is extremely lightweight and portable, equipped with high-speed Type-C and standard USB, delivering up to 2A.<br><br><\\/div>\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"description\":\"<div>Never run out of phone battery again and enjoy the convenience of wireless charging. The MG001 Wireless Power Bank has in store, 10,000 mAh which can charge up a standard smart phone up to three times over.&nbsp;<br><br><\\/div><div><strong>POPULAR USE CASES<\\/strong><\\/div><div><br><\\/div><ul><li><strong>iPhone X:<\\/strong> Recharge 3.4 times<\\/li><li><strong>iPhone 8:<\\/strong> Recharge 2.3 times<\\/li><li><strong>Samsung Galaxy S8:<\\/strong> Recharge 2.4 times<\\/li><\\/ul><div>&nbsp;<br><br><\\/div><div><strong>HIGH-CAPACITY, HIGH-SPEED, PORTABLE CHARGING.<\\/strong><\\/div><div><br><\\/div><div>Unlike most power banks, the MG001 is extremely lightweight and portable, equipped with high-speed Type-C and standard USB, delivering up to 2A.<br><br><\\/div>\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(177, '8f1b46f4-cc15-4ff3-a77e-91e573ba025e', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-11 01:22:53', '2019-11-11 01:22:53', '{\"purchasable\":1,\"description\":\"<div>Never run out of phone battery again and enjoy the convenience of wireless charging. The MG001 Wireless Power Bank has in store, 10,000 mAh which can charge up a standard smart phone up to three times over.&nbsp;<br><br><\\/div><div><strong>POPULAR USE CASES<\\/strong><\\/div><div><br><\\/div><ul><li><strong>iPhone X:<\\/strong> Recharge 3.4 times<\\/li><li><strong>iPhone 8:<\\/strong> Recharge 2.3 times<\\/li><li><strong>Samsung Galaxy S8:<\\/strong> Recharge 2.4 times<\\/li><\\/ul><div>&nbsp;<br><br><\\/div><div><strong>HIGH-CAPACITY, HIGH-SPEED, PORTABLE CHARGING.<\\/strong><\\/div><div><br><\\/div><div>Unlike most power banks, the MG001 is extremely lightweight and portable, equipped with high-speed Type-C and standard USB, delivering up to 2A.<br><br><\\/div>\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"description\":\"<div>Never run out of phone battery again and enjoy the convenience of wireless charging. The MG001 Wireless Power Bank has in store, 10,000 mAh which can charge up a standard smart phone up to three times over.&nbsp;<br><br><\\/div><div><strong>POPULAR USE CASES<\\/strong><\\/div><div><br><\\/div><ul><li><strong>iPhone X:<\\/strong> Recharge 3.4 times<\\/li><li><strong>iPhone 8:<\\/strong> Recharge 2.3 times<\\/li><li><strong>Samsung Galaxy S8:<\\/strong> Recharge 2.4 times<\\/li><\\/ul><div>&nbsp;<br><br><\\/div><div><strong>HIGH-CAPACITY, HIGH-SPEED, PORTABLE CHARGING<br><\\/strong><br><\\/div><div>Unlike most power banks, the MG001 is extremely lightweight, incredibly compact power bank \\u2013 just 16.8mm thickness \\u2013 equipped with high-speed Type-C and standard USB, delivering up to 2A.<br><br><\\/div><div>&nbsp;<\\/div><div><strong>POWER UP IN STYLE, POWER UP SAFE<br><\\/strong><br><\\/div><div>The MG001 is integrated with high density lithium polymer batteries with surge protection, short circuit protection and more advanced safety features keep you and your devices safe.&nbsp;<br><br><\\/div><div><br><\\/div><div><strong>UNIVERSAL CONNECTIVITY<br><\\/strong><br><\\/div><div>It\'s so convenient! The MG001 is compatible with a wide range of mobile devices. Can connect up to three devices at the same time with 1 ultra-fast 2A PD output.<br><br><\\/div>\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(178, '8f1b49de-ba92-44bf-9a7b-999604496537', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-11 01:31:02', '2019-11-11 01:31:02', '{\"purchasable\":1,\"short_description\":\"<div>Power up quickly with the MG001 Wireless Power Bank, featuring wireless 5W PD and 5V@2A fast charge standard USB connector.<\\/div>\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"short_description\":\"<div>Power up quickly with the MG001 Wireless Power Bank, featuring wireless 5W PD and 5V@2A fast charge standard USB connector. Recharge your mobile device anywhere, anytime, with ease.<\\/div>\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(179, '8f1f6682-7962-443b-9015-47406f3e08ba', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-13 02:34:25', '2019-11-13 02:34:25', '{\"purchasable\":1,\"price\":\"79.99\",\"sale_price_2\":\"[{\\\"currency_code\\\":null,\\\"price\\\":null}]\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"price\":\"79\",\"sale_price_2\":\"[{\\\"currency_code\\\":\\\"AUD\\\",\\\"price\\\":\\\"74.99\\\"}]\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(180, '8f1f67b4-0cce-43f8-93a1-16d06a27b2e3', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-11-13 02:37:46', '2019-11-13 02:37:46', '{\"purchasable\":1,\"sale_price\":\"59.25\",\"sale_price_2\":\"[{\\\"currency_code\\\":\\\"AUD\\\",\\\"price\\\":\\\"74.99\\\"}]\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"sale_price\":\"74.99\",\"sale_price_2\":\"[]\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(181, '8f1f67fb-c7db-49c8-91e6-1000a136190f', 1, 'Create', 'MOIREI\\Vouchers\\Models\\Voucher', 6, 'MOIREI\\Vouchers\\Models\\Voucher', 6, 'MOIREI\\Vouchers\\Models\\Voucher', 6, '', 'finished', '', '2019-11-13 02:38:33', '2019-11-13 02:38:33', NULL, '{\"model_type\":\"App\\\\Models\\\\Ecommerce\\\\Product\",\"model_id\":\"6\",\"currency_code\":\"AUD\",\"reward_type\":\"percentage\",\"reward\":\"10\",\"is_disposable\":true,\"quantity\":100,\"expires_at\":null,\"can_redeem\":[],\"cannot_redeem\":\"[]\",\"code\":\"X8P8-45XC-2AEU\",\"updated_at\":\"2019-11-13 13:08:33\",\"created_at\":\"2019-11-13 13:08:33\",\"id\":6}'),
(182, '8f219562-86a5-4809-891e-cab7a868858a', 1, 'Update', 'MOIREI\\Vouchers\\Models\\Voucher', 6, 'MOIREI\\Vouchers\\Models\\Voucher', 6, 'MOIREI\\Vouchers\\Models\\Voucher', 6, '', 'finished', '', '2019-11-14 04:37:09', '2019-11-14 04:37:09', '{\"expires_at\":null}', '{\"expires_at\":\"2019-11-29 00:00:00\"}'),
(183, '8f22674f-9842-4411-8221-0bf1ad4735c0', 1, 'Update', 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, '', 'finished', '', '2019-11-14 14:24:09', '2019-11-14 14:24:09', '{\"cannot_redeem\":\"\\\"[]\\\"\"}', '{\"cannot_redeem\":\"\\\"[\\\\\\\"{\\\\\\\\\\\\\\\"voucherable_type\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"App\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\User\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"voucherable_id\\\\\\\\\\\\\\\":3}\\\\\\\"]\\\"\"}'),
(184, '8f227147-4c86-472e-8847-f8e97f3f923c', 1, 'Update', 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, '', 'finished', '', '2019-11-14 14:52:01', '2019-11-14 14:52:01', '[]', '{\"model_data\":[\" test \"]}'),
(185, '8f227159-e5bd-423d-a166-8fb9c27663c6', 1, 'Update', 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, '', 'finished', '', '2019-11-14 14:52:13', '2019-11-14 14:52:13', '[]', '[]'),
(186, '8f22716b-5da4-42af-b99e-ebc44df0f8a2', 1, 'Update', 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, '', 'finished', '', '2019-11-14 14:52:25', '2019-11-14 14:52:25', '[]', '[]'),
(187, '8f22767e-3594-4f78-b15c-009e9afe8205', 1, 'Update', 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, '', 'finished', '', '2019-11-14 15:06:36', '2019-11-14 15:06:36', '[]', '[]'),
(188, '8f2276b8-19ec-404e-9338-281c1b7a6289', 1, 'Update', 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, '', 'finished', '', '2019-11-14 15:07:14', '2019-11-14 15:07:14', '[]', '[]'),
(189, '8f227737-3021-4dbd-9118-33e01fda40e1', 1, 'Update', 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, '', 'finished', '', '2019-11-14 15:08:37', '2019-11-14 15:08:37', '[]', '[]'),
(194, '8f2309aa-5769-4aa9-89d0-dd371898888a', 1, 'Update', 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, '', 'finished', '', '2019-11-14 21:58:07', '2019-11-14 21:58:07', '[]', '{\"test_data\":null}'),
(195, '8f2309ce-0ba4-40b9-8937-51c0db4a1798', 1, 'Update', 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, '', 'finished', '', '2019-11-14 21:58:31', '2019-11-14 21:58:31', '[]', '{\"test_data\":null}'),
(196, '8f2309f6-8c51-4dba-9046-01881c4125c8', 1, 'Update', 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, '', 'finished', '', '2019-11-14 21:58:57', '2019-11-14 21:58:57', '[]', '{\"test_data\":null}'),
(197, '8f230a1b-b513-4b2a-97b6-d2ee533401fb', 1, 'Update', 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, '', 'finished', '', '2019-11-14 21:59:22', '2019-11-14 21:59:22', '[]', '{\"test_data\":null}'),
(198, '8f230a51-8890-4443-9ff6-f3e345d43489', 1, 'Update', 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, '', 'finished', '', '2019-11-14 21:59:57', '2019-11-14 21:59:57', '[]', '{\"test_data\":null}'),
(199, '8f230a6d-cdec-4bed-8292-d7abdbaa9bea', 1, 'Update', 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, '', 'finished', '', '2019-11-14 22:00:15', '2019-11-14 22:00:15', '[]', '{\"test_data\":null}'),
(200, '8f230a84-420e-421b-a9df-d8df946beee7', 1, 'Update', 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, '', 'finished', '', '2019-11-14 22:00:30', '2019-11-14 22:00:30', '[]', '{\"test_data\":null}'),
(201, '8f230ba1-36e8-4cc7-909a-a17cb06618e5', 1, 'Update', 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, '', 'finished', '', '2019-11-14 22:03:37', '2019-11-14 22:03:37', '[]', '[]'),
(202, '8f230bf6-cc8b-4ad5-a72f-bfcc7f4db4fd', 1, 'Update', 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, '', 'finished', '', '2019-11-14 22:04:33', '2019-11-14 22:04:33', '[]', '{\"model_data\":[\"hi\"]}'),
(203, '8f230d54-7092-4a35-b785-1df904bc0c3d', 1, 'Update', 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, '', 'finished', '', '2019-11-14 22:08:22', '2019-11-14 22:08:22', '[]', '{\"model_data\":[\"Hi\"]}'),
(204, '8f2311a2-d3da-42b4-84c5-ca1e3a9549ec', 1, 'Update', 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, '', 'finished', '', '2019-11-14 22:20:25', '2019-11-14 22:20:25', '[]', '{\"model_data\":[]}'),
(205, '8f231200-d13f-471a-a91c-e0d2f22aa42b', 1, 'Update', 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, '', 'finished', '', '2019-11-14 22:21:26', '2019-11-14 22:21:26', '[]', '{\"model_data\":null}'),
(206, '8f231259-880e-4e97-a720-f1ac5db14852', 1, 'Update', 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, '', 'finished', '', '2019-11-14 22:22:24', '2019-11-14 22:22:24', '[]', '{\"model_data\":null}'),
(207, '8f231855-ce32-4f62-9f7f-dd594b07f07a', 1, 'Update', 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, '', 'finished', '', '2019-11-14 22:39:09', '2019-11-14 22:39:09', '[]', '{\"model_data\":null}'),
(208, '8f2318e8-4271-47df-a4e9-bef0a7a2cdb8', 1, 'Update', 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, '', 'finished', '', '2019-11-14 22:40:45', '2019-11-14 22:40:45', '[]', '{\"model_data\":null}'),
(209, '8f2318f6-31c2-409f-9837-342405324530', 1, 'Update', 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, '', 'finished', '', '2019-11-14 22:40:54', '2019-11-14 22:40:54', '[]', '{\"model_data\":\"Hi\"}'),
(213, '8f231a0f-8d3b-4b3e-8454-49874e35c57a', 1, 'Update', 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, '', 'finished', '', '2019-11-14 22:43:58', '2019-11-14 22:43:58', '[]', '{\"model_data\":\"Hi\"}'),
(214, '8f231d12-656b-4a48-86e6-868affbd2736', 1, 'Update', 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, '', 'finished', '', '2019-11-14 22:52:23', '2019-11-14 22:52:23', '[]', '{\"model_data\":[]}'),
(215, '8f231d18-37a5-40ff-a34a-943f555fb02e', 1, 'Update', 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, 'App\\Models\\Ecommerce\\Voucher', 6, '', 'finished', '', '2019-11-14 22:52:27', '2019-11-14 22:52:27', '[]', '{\"model_data\":[\"Hi\"]}'),
(216, '8f232356-9a13-4c27-b181-f3012ec0e1e1', 1, 'Update', 'MOIREI\\Vouchers\\Models\\Voucher', 6, 'MOIREI\\Vouchers\\Models\\Voucher', 6, 'MOIREI\\Vouchers\\Models\\Voucher', 6, '', 'finished', '', '2019-11-14 23:09:55', '2019-11-14 23:09:55', '[]', '[]'),
(217, '8f2323b2-274d-4e77-9568-4795e78374f9', 1, 'Update', 'MOIREI\\Vouchers\\Models\\Voucher', 6, 'MOIREI\\Vouchers\\Models\\Voucher', 6, 'MOIREI\\Vouchers\\Models\\Voucher', 6, '', 'finished', '', '2019-11-14 23:10:55', '2019-11-14 23:10:55', '[]', '[]'),
(218, '8f23240c-7f19-4db1-b494-f5aef2a67682', 1, 'Update', 'MOIREI\\ModelData\\ModelData', 31, 'MOIREI\\ModelData\\ModelData', 31, 'MOIREI\\ModelData\\ModelData', 31, '', 'finished', '', '2019-11-14 23:11:54', '2019-11-14 23:11:54', '{\"data\":null}', '{\"data\":\"\\\"[\\\\n\\\\t\\\\\\\"Hi there\\\\\\\"\\\\t\\\\n]\\\"\"}'),
(219, '8f25214b-54bf-4ed5-ba84-afcc666cd088', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-15 22:55:51', '2019-11-15 22:55:51', '{\"purchasable\":1,\"description\":null,\"gallery\":null,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"description\":\"<div><br><figure data-trix-attachment=\\\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:1043,&quot;url&quot;:&quot;https:\\/\\/ae01.alicdn.com\\/kf\\/Hd06b15fa7b4d444787f959383f0e10a0C.jpg&quot;,&quot;width&quot;:960}\\\" data-trix-content-type=\\\"image\\\" class=\\\"attachment attachment--preview\\\"><img src=\\\"https:\\/\\/ae01.alicdn.com\\/kf\\/Hd06b15fa7b4d444787f959383f0e10a0C.jpg\\\" width=\\\"960\\\" height=\\\"1043\\\"><figcaption class=\\\"attachment__caption\\\"><\\/figcaption><\\/figure><figure data-trix-attachment=\\\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:975,&quot;url&quot;:&quot;https:\\/\\/ae01.alicdn.com\\/kf\\/H08e6cdd2870548aa9309cefc041addc3s.jpg&quot;,&quot;width&quot;:960}\\\" data-trix-content-type=\\\"image\\\" class=\\\"attachment attachment--preview\\\"><img src=\\\"https:\\/\\/ae01.alicdn.com\\/kf\\/H08e6cdd2870548aa9309cefc041addc3s.jpg\\\" width=\\\"960\\\" height=\\\"975\\\"><figcaption class=\\\"attachment__caption\\\"><\\/figcaption><\\/figure><figure data-trix-attachment=\\\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:953,&quot;url&quot;:&quot;https:\\/\\/ae01.alicdn.com\\/kf\\/H46bce8097b4f4625a5317b89f1bd36872.jpg&quot;,&quot;width&quot;:960}\\\" data-trix-content-type=\\\"image\\\" class=\\\"attachment attachment--preview\\\"><img src=\\\"https:\\/\\/ae01.alicdn.com\\/kf\\/H46bce8097b4f4625a5317b89f1bd36872.jpg\\\" width=\\\"960\\\" height=\\\"953\\\"><figcaption class=\\\"attachment__caption\\\"><\\/figcaption><\\/figure><figure data-trix-attachment=\\\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:884,&quot;url&quot;:&quot;https:\\/\\/ae01.alicdn.com\\/kf\\/H52c9cae6ba594396a539199a620ea2946.jpg&quot;,&quot;width&quot;:960}\\\" data-trix-content-type=\\\"image\\\" class=\\\"attachment attachment--preview\\\"><img src=\\\"https:\\/\\/ae01.alicdn.com\\/kf\\/H52c9cae6ba594396a539199a620ea2946.jpg\\\" width=\\\"960\\\" height=\\\"884\\\"><figcaption class=\\\"attachment__caption\\\"><\\/figcaption><\\/figure><figure data-trix-attachment=\\\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:975,&quot;url&quot;:&quot;https:\\/\\/ae01.alicdn.com\\/kf\\/H3bff629e9d454957a6fdc7bfafe65f2cV.jpg&quot;,&quot;width&quot;:960}\\\" data-trix-content-type=\\\"image\\\" class=\\\"attachment attachment--preview\\\"><img src=\\\"https:\\/\\/ae01.alicdn.com\\/kf\\/H3bff629e9d454957a6fdc7bfafe65f2cV.jpg\\\" width=\\\"960\\\" height=\\\"975\\\"><figcaption class=\\\"attachment__caption\\\"><\\/figcaption><\\/figure><figure data-trix-attachment=\\\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:1451,&quot;url&quot;:&quot;https:\\/\\/ae01.alicdn.com\\/kf\\/H94d582b35cc04674be3ffba3c634dd0fV.jpg&quot;,&quot;width&quot;:960}\\\" data-trix-content-type=\\\"image\\\" class=\\\"attachment attachment--preview\\\"><img src=\\\"https:\\/\\/ae01.alicdn.com\\/kf\\/H94d582b35cc04674be3ffba3c634dd0fV.jpg\\\" width=\\\"960\\\" height=\\\"1451\\\"><figcaption class=\\\"attachment__caption\\\"><\\/figcaption><\\/figure><figure data-trix-attachment=\\\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:998,&quot;url&quot;:&quot;https:\\/\\/ae01.alicdn.com\\/kf\\/Hf47a1c39b37e4f3d98f43d704ffe843dI.jpg&quot;,&quot;width&quot;:960}\\\" data-trix-content-type=\\\"image\\\" class=\\\"attachment attachment--preview\\\"><img src=\\\"https:\\/\\/ae01.alicdn.com\\/kf\\/Hf47a1c39b37e4f3d98f43d704ffe843dI.jpg\\\" width=\\\"960\\\" height=\\\"998\\\"><figcaption class=\\\"attachment__caption\\\"><\\/figcaption><\\/figure><figure data-trix-attachment=\\\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:998,&quot;url&quot;:&quot;https:\\/\\/ae01.alicdn.com\\/kf\\/Hd9aa4430268546aaa2cda794f6f1755ei.jpg&quot;,&quot;width&quot;:960}\\\" data-trix-content-type=\\\"image\\\" class=\\\"attachment attachment--preview\\\"><img src=\\\"https:\\/\\/ae01.alicdn.com\\/kf\\/Hd9aa4430268546aaa2cda794f6f1755ei.jpg\\\" width=\\\"960\\\" height=\\\"998\\\"><figcaption class=\\\"attachment__caption\\\"><\\/figcaption><\\/figure><figure data-trix-attachment=\\\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:680,&quot;url&quot;:&quot;https:\\/\\/ae01.alicdn.com\\/kf\\/Hf0576058199c4bf5b06fdf051ae68223V.jpg&quot;,&quot;width&quot;:960}\\\" data-trix-content-type=\\\"image\\\" class=\\\"attachment attachment--preview\\\"><img src=\\\"https:\\/\\/ae01.alicdn.com\\/kf\\/Hf0576058199c4bf5b06fdf051ae68223V.jpg\\\" width=\\\"960\\\" height=\\\"680\\\"><figcaption class=\\\"attachment__caption\\\"><\\/figcaption><\\/figure><figure data-trix-attachment=\\\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:901,&quot;url&quot;:&quot;https:\\/\\/ae01.alicdn.com\\/kf\\/Hee1c134ebff144549479a1fe95e336a3J.jpg&quot;,&quot;width&quot;:960}\\\" data-trix-content-type=\\\"image\\\" class=\\\"attachment attachment--preview\\\"><img src=\\\"https:\\/\\/ae01.alicdn.com\\/kf\\/Hee1c134ebff144549479a1fe95e336a3J.jpg\\\" width=\\\"960\\\" height=\\\"901\\\"><figcaption class=\\\"attachment__caption\\\"><\\/figcaption><\\/figure><\\/div>\",\"gallery\":\"[\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/1-1573896289-F6NtY.jpg\\\",\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/2-1573896293-4HUut.jpg\\\",\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/4-1573896299-iNhUv.jpg\\\",\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/3-1573896297-3NTAs.jpg\\\",\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/5-1573896302-SGOby.jpg\\\"]\",\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(220, '8f355247-4314-4009-9edb-20988bea91ce', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-24 00:06:04', '2019-11-24 00:06:04', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":true}');
INSERT INTO `action_events` (`id`, `batch_id`, `user_id`, `name`, `actionable_type`, `actionable_id`, `target_type`, `target_id`, `model_type`, `model_id`, `fields`, `status`, `exception`, `created_at`, `updated_at`, `original`, `changes`) VALUES
(221, '8f355463-a19f-4f5b-995e-ab0f0deeef95', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-24 00:11:58', '2019-11-24 00:11:58', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":false}'),
(222, '8f35549c-1fa4-4fc5-bf20-e9c8737ef1b7', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-24 00:12:35', '2019-11-24 00:12:35', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":true}'),
(223, '8f356154-653d-4863-bc85-1bf719f22da0', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-24 00:48:09', '2019-11-24 00:48:09', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":true}'),
(224, '8f35617d-3429-46b4-964e-bb602b063389', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-24 00:48:36', '2019-11-24 00:48:36', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":false}'),
(225, '8f3561cc-99bf-43b9-9fdf-220cd5ddadc8', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-24 00:49:28', '2019-11-24 00:49:28', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":false}'),
(226, '8f356210-8558-4b62-83c2-754fc2ebae5a', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-24 00:50:12', '2019-11-24 00:50:12', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":false}'),
(229, '8f357a33-89fa-4048-9eb2-ec3059c51961', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-24 01:57:42', '2019-11-24 01:57:42', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":false}'),
(230, '8f357a60-040f-475f-85cd-e486e7c02e6b', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-24 01:58:11', '2019-11-24 01:58:11', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":false}'),
(233, '8f357b01-168b-4774-b3df-6a8d4b33e85d', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-24 01:59:57', '2019-11-24 01:59:57', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":false}'),
(234, '8f357b55-2c75-4d0c-9ad9-c4af4dbfeaed', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-24 02:00:52', '2019-11-24 02:00:52', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":true}'),
(235, '8f357b72-b7a8-47fa-b668-d1680f270e27', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-24 02:01:11', '2019-11-24 02:01:11', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":false}'),
(236, '8f357bc0-8f07-40e7-a249-49749389b393', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-24 02:02:02', '2019-11-24 02:02:02', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":true}'),
(237, '8f357bd6-e87b-431b-b689-86586be8e438', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-24 02:02:17', '2019-11-24 02:02:17', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":false}'),
(238, '8f357c45-48bb-4459-89fc-9112e91e68d8', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-24 02:03:29', '2019-11-24 02:03:29', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":false}'),
(239, '8f357cba-4a9d-46ce-9e3f-baaa483d7e06', 1, 'Update', 'MOIREI\\ModelData\\ModelData', 51, 'MOIREI\\ModelData\\ModelData', 51, 'MOIREI\\ModelData\\ModelData', 51, '', 'finished', '', '2019-11-24 02:04:46', '2019-11-24 02:04:46', '{\"data\":\"{\\\"available_on_gm\\\":true}\"}', '{\"data\":\"{\\\"available_on_gm\\\":false}\"}'),
(240, '8f357d3f-5371-42a8-b7ba-f90c270296dc', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-24 02:06:13', '2019-11-24 02:06:13', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":true}'),
(241, '8f357d85-8028-4bdf-8650-ddc0c04f74df', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-24 02:06:59', '2019-11-24 02:06:59', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":false}'),
(242, '8f357da1-1f4b-4eb1-bde5-0024ba9e994f', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-11-24 02:07:17', '2019-11-24 02:07:17', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":true}'),
(243, '8f4fef2f-5c81-4692-a58f-8ff32b9d2384', 1, 'Create', 'App\\Models\\General\\QR', 1, 'App\\Models\\General\\QR', 1, 'App\\Models\\General\\QR', 1, '', 'finished', '', '2019-12-07 05:36:20', '2019-12-07 05:36:20', NULL, '{\"key\":\"861751025084\",\"qrcodable_type\":\"App\\\\Models\\\\Ecommerce\\\\Product\",\"qrcodable_id\":\"6\",\"type\":\"product\",\"status\":\"draft\",\"updated_at\":\"2019-12-07 16:06:20\",\"created_at\":\"2019-12-07 16:06:20\",\"id\":1}'),
(244, '8f4ff177-049c-4d8e-a474-0dad707cebbc', 1, 'Update', 'App\\Models\\General\\QR', 1, 'App\\Models\\General\\QR', 1, 'App\\Models\\General\\QR', 1, '', 'finished', '', '2019-12-07 05:42:42', '2019-12-07 05:42:42', '{\"code\":null}', '{\"code\":\"https:\\/\\/www.moirei-dev.com\\/quick-response\\/861751025084\"}'),
(245, '8f5b11a9-fa20-4254-b4cc-950e6d2a8c4a', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-12-12 18:26:51', '2019-12-12 18:26:51', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":false}'),
(246, '8f5b11dc-d0c2-4721-b221-0185ad27488d', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-12-12 18:27:24', '2019-12-12 18:27:24', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":false}'),
(247, '8f5b122f-7e57-4313-9176-e1ec01359e4f', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-12-12 18:28:18', '2019-12-12 18:28:18', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":true}'),
(248, '8f5b1389-93d7-4b58-9bf2-b756413d1aa1', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-12-12 18:32:05', '2019-12-12 18:32:05', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":true}'),
(249, '8f5b1399-9a0f-42ba-a5a1-b9a7a960d66e', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-12-12 18:32:16', '2019-12-12 18:32:16', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":true}'),
(251, '8f5b143e-3174-4f98-8bce-79bb2d32c9b2', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-12-12 18:34:04', '2019-12-12 18:34:04', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":false}'),
(252, '8f5b1454-1e70-4bff-9423-c61cbfdecc50', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-12-12 18:34:18', '2019-12-12 18:34:18', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":true}'),
(253, '8f5b1476-1c4b-429e-a100-17cddc632f5b', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-12-12 18:34:40', '2019-12-12 18:34:40', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":false}'),
(254, '8f5b1546-aa76-4949-9873-675930ba13a8', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-12-12 18:36:57', '2019-12-12 18:36:57', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":true}'),
(255, '8f5b159d-2bd7-47db-a26c-8dd33652c8d0', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-12-12 18:37:54', '2019-12-12 18:37:54', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"available_on_gm\":\"Hi there\"}'),
(256, '8f5b193d-f2f4-4ee4-8a41-52044b50261d', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-12-12 18:48:02', '2019-12-12 18:48:02', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(257, '8f5b1983-3a28-468d-986a-b666f4cdda87', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-12-12 18:48:48', '2019-12-12 18:48:48', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(258, '8f5b19d4-59c4-48c1-ba0a-d0cf3b9dbbd0', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-12-12 18:49:41', '2019-12-12 18:49:41', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(259, '8f5b1a00-185e-4bcc-ba38-a3fc4d9d9298', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-12-12 18:50:10', '2019-12-12 18:50:10', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(260, '8f5b2143-3a18-4846-a3a3-9ffc919314d6', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-12-12 19:10:28', '2019-12-12 19:10:28', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0,\"meta\":\"{\\\"available_on_gm\\\":false}\"}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"meta\":\"{\\\"available_on_gm\\\":true}\"}'),
(261, '8f5b2154-de0e-45d4-b7c6-f459603d6479', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-12-12 19:10:40', '2019-12-12 19:10:40', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0,\"meta\":\"{\\\"available_on_gm\\\":true}\"}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"meta\":\"{\\\"available_on_gm\\\":false}\"}'),
(262, '8f5b2165-9f38-45a1-87ce-6ace7906b511', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-12-12 19:10:51', '2019-12-12 19:10:51', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0,\"meta\":\"{\\\"available_on_gm\\\":false}\"}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"meta\":\"{\\\"available_on_gm\\\":true}\"}'),
(263, '8f5b218b-ae1c-4b03-8233-2b740c8a3ec9', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-12-12 19:11:15', '2019-12-12 19:11:15', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(264, '8f5b2198-cce8-40aa-ab73-2201f5e4a3e2', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-12-12 19:11:24', '2019-12-12 19:11:24', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0,\"meta\":\"{\\\"available_on_gm\\\":true}\"}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"meta\":\"{\\\"available_on_gm\\\":false}\"}'),
(265, '8f5b21a7-acb2-4fd7-833b-56f9649266fe', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-12-12 19:11:34', '2019-12-12 19:11:34', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0,\"meta\":\"{\\\"available_on_gm\\\":false}\"}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"meta\":\"{\\\"available_on_gm\\\":true}\"}'),
(266, '8f5b2332-48b6-45df-82b1-9e316536401f', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-12-12 19:15:52', '2019-12-12 19:15:52', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(267, '8f5b2340-4970-452e-a07c-44693d979da7', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-12-12 19:16:02', '2019-12-12 19:16:02', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0,\"meta\":\"{\\\"available_on_gm\\\":true}\"}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"meta\":\"{\\\"available_on_gm\\\":false}\"}'),
(268, '8f5b238d-502d-4723-bfb1-d7e570a045b1', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-12-12 19:16:52', '2019-12-12 19:16:52', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0,\"meta\":null}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"meta\":\"{\\\"available_on_gm\\\":true}\"}'),
(269, '8f5d425d-125c-45ff-b968-8ec1025d4a3c', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-12-13 20:34:41', '2019-12-13 20:34:41', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(270, '8f5d4295-a8d4-490f-b9ef-2cbd11fd6276', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-12-13 20:35:18', '2019-12-13 20:35:18', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0,\"countries_hidden_from\":\"[]\"}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"countries_hidden_from\":\"[\\\"NZ\\\"]\"}'),
(271, '8f5d449c-60ff-4342-b2ad-882a8878e72d', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-12-13 20:40:58', '2019-12-13 20:40:58', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0,\"countries_hidden_from\":\"[\\\"NZ\\\"]\"}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"countries_hidden_from\":\"[]\"}'),
(272, '8f66defc-215b-4257-9adb-2f81972a0bce', 1, 'Create', 'App\\Models\\General\\News', 1, 'App\\Models\\General\\News', 1, 'App\\Models\\General\\News', 1, '', 'finished', '', '2019-12-18 15:15:05', '2019-12-18 15:15:05', NULL, '{\"name\":\"How to Wireless Charge your iPhone and the Qi Standard Explained\",\"slug\":\"how-to-wireless-charge-your-iphone-and-the-qi-standard-explained\",\"seo_title\":null,\"type\":\"update\",\"description\":\"To enable an easy charging experience, Apple\\u2019s iPhone 8 or later contain integrated wireless charging. The iPhone has a glass back that works with Qi-certified...\",\"visibility\":\"public\",\"status\":\"release\",\"article\":\"<div>To enable an easy charging experience, Apple\\u2019s iPhone 8 or later contain integrated wireless charging. The iPhone has a glass back that works with Qi-certified chargers which are available as accessories in hotels, cafes,&nbsp; cars, airports, etc. In general, any Qi-enabled wireless charger will have 5W of charging because that is the base minimum. When wirelessly charging, there is currently two charging speeds available for iPhone users: the 5W and 7.5W. You will have to make sure your wireless charger supports 7.5W wireless charging. Created when the iPhone adopted \\u201cfast\\u201d wireless charging, the 7.5W is a special use case.<br><br><\\/div><div><figure data-trix-attachment=\\\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:300,&quot;url&quot;:&quot;https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0276\\/6463\\/products\\/300x300-3_large.jpg?v=1546292950&quot;,&quot;width&quot;:300}\\\" data-trix-content-type=\\\"image\\\" class=\\\"attachment attachment--preview\\\"><img src=\\\"https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0276\\/6463\\/products\\/300x300-3_large.jpg?v=1546292950\\\" width=\\\"300\\\" height=\\\"300\\\"><figcaption class=\\\"attachment__caption\\\"><\\/figcaption><\\/figure><\\/div><h1>The Qi Standard Explained<\\/h1><div>Qi is an open, universal charging standard created by the Wireless Power Consortium (WPC). Mobile device manufacturers that are working with the standard include Apple, Asus, Google, HTC, Huawei, LG Electronics, Motorola Mobility, Nokia, Samsung, BlackBerry, Xiaomi, and Sony.<br><br><\\/div><div>Qi defines wireless power transfer using inductive charging over distances of up to 1.6 inches, Developed by the WPC, the system uses a charging pad and a compatible device, which is placed on top of the pad, charging through resonant inductive coupling.Under the Qi specification, \\\"low power\\\" inductive transfers deliver power below 5 W using inductive coupling between two planar coils. These coils tend to be 5 mm apart, however they can be up to 40 mm apart.<br><br><\\/div><div><figure data-trix-attachment=\\\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:300,&quot;url&quot;:&quot;https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0276\\/6463\\/products\\/300x300-1_large.jpg?v=1546292925&quot;,&quot;width&quot;:300}\\\" data-trix-content-type=\\\"image\\\" class=\\\"attachment attachment--preview\\\"><img src=\\\"https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0276\\/6463\\/products\\/300x300-1_large.jpg?v=1546292925\\\" width=\\\"300\\\" height=\\\"300\\\"><figcaption class=\\\"attachment__caption\\\"><\\/figcaption><\\/figure><\\/div><div>Regulation of the output voltage is provided by a digital control loop where the power receiver communicates with the power transmitter and requests more or less power. Communication is unidirectional from the power receiver to the power transmitter via backscatter modulation. In backscatter modulation, the power-receiver coil is loaded, changing the current draw at the power transmitter. These current changes are monitored and demodulated into the information required for the two devices to work together. (Source: Wikipedia)<br><br><\\/div><h1>Qi Standard Incorporation<\\/h1><div>The Qi standard, first released in 2008, had been incorporated into more than 140 smartphones, tablets and other devices by 2016. In 2012, Nokia first adopted Qi in its Lumia 920 phone. Later that year, the Google\\/LG Nexus 4 followed. In 2015, IKEA introduced lamps and tables with integrated wireless chargers, As well, The Lexus NX introduced an optional Qi charging pad in the center console.<br><br><\\/div><div>In 2015, an estimated 120 million wireless charging phones were sold. The Samsung Galaxy supported both Qi and the competing Power Matters Alliance standards. By early 2017, Qi had superseded the competing standards. On September 12, 2017, Apple announced that their new smartphones, the iPhone 8, iPhone 8 Plus, and the iPhone X, all will support the Qi standard.<br><br><\\/div><div><figure data-trix-attachment=\\\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:480,&quot;url&quot;:&quot;https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0276\\/6463\\/files\\/Capture_large.JPG?v=1560365234&quot;,&quot;width&quot;:428}\\\" data-trix-content-type=\\\"image\\\" class=\\\"attachment attachment--preview\\\"><img src=\\\"https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0276\\/6463\\/files\\/Capture_large.JPG?v=1560365234\\\" width=\\\"428\\\" height=\\\"480\\\"><figcaption class=\\\"attachment__caption\\\"><\\/figcaption><\\/figure><\\/div><div>There are many Qi-certified chargers available on the market with charging mats which charge an iPhone with the latest version of iOS at rates up to 7.5 watts. The iPhone 8 and later + can wireless charge. Other brand companies include: Samsung, Sony, LG, Nokia, Huawei, Microsoft Lumia, Google, Nexus, and BlackBerry.<br><br><\\/div><h1>How to Wireless Charge Your iPhone<\\/h1><ol><li>Connect your charger to power.<\\/li><li>Use the power adapter that came with your accessory or a power adapter recommended by the manufacturer.<\\/li><li>Place your iPhone on the wireless charger with the display facing up. Make sure the middle of the phone lines up with your wireless charger. For best performance, place it in the center of the charger or in the location recommended by the manufacturer.<\\/li><li>Your iPhone should start charging a few seconds after you place it on your wireless charger.<\\/li><\\/ol><div><figure data-trix-attachment=\\\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:300,&quot;url&quot;:&quot;https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0276\\/6463\\/products\\/300x300-2_large.jpg?v=1546292926&quot;,&quot;width&quot;:300}\\\" data-trix-content-type=\\\"image\\\" class=\\\"attachment attachment--preview\\\"><img src=\\\"https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0276\\/6463\\/products\\/300x300-2_large.jpg?v=1546292926\\\" width=\\\"300\\\" height=\\\"300\\\"><figcaption class=\\\"attachment__caption\\\"><\\/figcaption><\\/figure><\\/div><div>Your iPhone will display it\\u2019s charging the same way it does when your iPhone is plugged in over USB and charging. If your wireless charging has an LED light, make sure it is lit. Magnetic cases, mounts, or other items that have magnetic properties situated between your iPhone and the charger could reduce performance or damage the magnetic strips or RFID chips. This is because wireless charging uses magnetic induction to charge your iPhone. Don\'t place anything like a credit card between your iPhone and the charger. It is best to remove all sensitive items before charging. In addition, your iPhone won\'t charge wirelessly when connected to USB, however, if your iPhone is connected to your computer with USB, or if it\'s connected to a USB power adapter, it will charge using the USB connection.<br><br><\\/div><div>Zendure\\u2019s <a href=\\\"https:\\/\\/zendure.com\\/products\\/q4-wireless-charger-bundle\\\">Q4 Luxury Wireless Charger Bundle<\\/a> (QC 3.0 AC adapter included) is an example of a quality iPhone wireless charger. Enjoy the 7.5W rapid charging for iPhone Xs Max\\/ XR\\/ X\\/ 8\\/ 8 Plus and 10W fast charging for Samsung Galaxy S9+\\/ S9\\/ S8+\\/ S8\\/ S7 \\/ S7 Edge \\/ S6 Edge Plus \\/ Note 5 series devices when using Quick Charge 2.0\\/3.0 charger.<br><br><\\/div><div><figure data-trix-attachment=\\\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:480,&quot;url&quot;:&quot;https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0276\\/6463\\/files\\/Capture_8ae6e3b5-4925-45b9-b267-1a2f3ee3fda2_large.JPG?v=1560365349&quot;,&quot;width&quot;:397}\\\" data-trix-content-type=\\\"image\\\" class=\\\"attachment attachment--preview\\\"><img src=\\\"https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0276\\/6463\\/files\\/Capture_8ae6e3b5-4925-45b9-b267-1a2f3ee3fda2_large.JPG?v=1560365349\\\" width=\\\"397\\\" height=\\\"480\\\"><figcaption class=\\\"attachment__caption\\\"><\\/figcaption><\\/figure><\\/div><div>Wireless charging your iPhone means less wear and tear on both ports and cable life. Most are lightweight and can be used with a wireless battery charger for traveling. Fewer cables frees up the phone port for other uses. It reduces the chance of a power surge to the phone. It can charge multiple devices at the same time with larger charging pads. Newer phones charge faster at 7.5 watts, 9 watts, or even 15 watts. As well, wireless charging pads release negligibly low levels of EMF and the Qi standard includes radiation shielding.<br><br><\\/div>\",\"updated_at\":\"2019-12-19 01:45:04\",\"created_at\":\"2019-12-19 01:45:04\",\"id\":1}'),
(273, '8f670609-617d-4c43-a5bf-b26760a7035f', 1, 'Update', 'App\\Models\\General\\News', 1, 'App\\Models\\General\\News', 1, 'App\\Models\\General\\News', 1, '', 'finished', '', '2019-12-18 17:04:16', '2019-12-18 17:04:16', '{\"status\":\"release\"}', '{\"status\":\"draft\"}'),
(274, '8f670625-9893-4373-b3cb-e3abd28d2ae9', 1, 'Update', 'App\\Models\\General\\News', 1, 'App\\Models\\General\\News', 1, 'App\\Models\\General\\News', 1, '', 'finished', '', '2019-12-18 17:04:35', '2019-12-18 17:04:35', '{\"status\":\"draft\"}', '{\"status\":\"release\"}'),
(275, '8f6792ca-a613-438c-b52f-abf2a63df09b', 1, 'Create', 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, '', 'finished', '', '2019-12-18 23:37:51', '2019-12-18 23:37:51', NULL, '{\"name\":\"SUPERCORD CABLES RETURN TO INDIEGOGO\",\"slug\":\"supercord-cables-return-to-indiegogo\",\"seo_title\":null,\"type\":\"feature\",\"description\":\"Zendure has re-released their SuperCord line of extremely durable USB cables on Indiegogo InDemand, and they have added a new option: USB-C to Lightning.\",\"visibility\":\"public\",\"status\":\"release\",\"article\":\"<div>Zendure has re-released their SuperCord line of extremely durable USB cables on Indiegogo InDemand, and they have added a new option: USB-C to Lightning.<br><br>SuperCord cables are designed to be extremely durable, featuring a mixture of highly resilient materials inside and around each cable. This construction lends the product enough durability to withstand an industry-leading 50,000-cycle bend test. The connectors themselves are made with stainless steel for long-term usability and corrosion resistance.<br><br>The newest model, a USB-C to Lightning cable, is MFi certified and sets a new standard for quality in one of the most popular cable types on the market. SuperCord cables can deliver up to 3A of current and are compatible with the latest USB fast-charging technology.<br><br>SuperCord USB cables feature a lifetime warranty. The USB-A to Lightning cable and the new USB-C to Lightning cable each come in black, red, or gray and feature an integrated leather strap for organization and storage.<\\/div>\",\"updated_at\":\"2019-12-19 10:07:51\",\"created_at\":\"2019-12-19 10:07:51\",\"id\":2}'),
(276, '8f6dbd41-8751-4fd7-8164-cbb452ef45e4', 1, 'Update', 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, '', 'finished', '', '2019-12-22 01:11:33', '2019-12-22 01:11:33', '{\"image\":null}', '{\"image\":\"iXidcXEapLXz2n1g4Obmi9tUsPhRobYFpWoeCJdM.jpeg\"}'),
(277, '8f6dc1bf-22fe-4ca0-8146-2ebf6deb117f', 1, 'Update', 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, '', 'finished', '', '2019-12-22 01:24:07', '2019-12-22 01:24:07', '[]', '[]'),
(278, '8f6dc201-a5d2-4a6a-aaf4-ad39a4e354a6', 1, 'Update', 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, '', 'finished', '', '2019-12-22 01:24:50', '2019-12-22 01:24:50', '{\"name\":\"SUPERCORD CABLES RETURN TO INDIEGOGO\"}', '{\"name\":\"Supercord Cables return to Indiegogo\"}'),
(279, '8f6dc26d-2f40-4268-aa00-69b55701b339', 1, 'Update', 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, '', 'finished', '', '2019-12-22 01:26:01', '2019-12-22 01:26:01', '{\"image\":null}', '{\"image\":\"iXltTd55lIUYxW6ipRAUgYSMZTu9zqtVDY04KHy2.jpeg\"}'),
(280, '8f6dc35c-8d44-4b82-bf00-402eaac38234', 1, 'Update', 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, '', 'finished', '', '2019-12-22 01:28:38', '2019-12-22 01:28:38', '[]', '[]'),
(281, '8f6dc3e9-2960-4b77-8e1c-8918a6cde04e', 1, 'Update', 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, '', 'finished', '', '2019-12-22 01:30:10', '2019-12-22 01:30:10', '{\"image\":null}', '{\"image\":\"pZXa0KpOuKBLepH0ojB6Sq9zSpkXZTeAfrT2nLK5.jpeg\"}'),
(282, '8f6dc4ab-67be-476e-a4fb-55e9581bb12f', 1, 'Update', 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, '', 'finished', '', '2019-12-22 01:32:17', '2019-12-22 01:32:17', '[]', '[]'),
(283, '8f6dc4d9-3580-4fcc-8806-8777895a2b52', 1, 'Update', 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, '', 'finished', '', '2019-12-22 01:32:47', '2019-12-22 01:32:47', '{\"image\":null}', '{\"image\":\"img\\/news\\/\\/OzsrUsy9VJfbSsVYULjmfTqpVWjT05YHGHNNwjNT.jpeg\"}'),
(284, '8f6dd1d1-3e27-4356-89c1-3576789b9cbb', 1, 'Update', 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, '', 'finished', '', '2019-12-22 02:09:03', '2019-12-22 02:09:03', '[]', '[]'),
(285, '8f6dd1e4-ffbb-47b1-a434-c85c50629c79', 1, 'Update', 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, '', 'finished', '', '2019-12-22 02:09:16', '2019-12-22 02:09:16', '{\"image\":null}', '{\"image\":\"img\\/news\\/4Q3IwNH6eUJ3HboYPxU2hD4n2rbkV2pNYmva5GTR.jpeg\"}'),
(286, '8f6de085-e8eb-465b-968b-20f502967a38', 1, 'Update', 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, '', 'finished', '', '2019-12-22 02:50:10', '2019-12-22 02:50:10', '{\"visibility\":\"public\"}', '{\"visibility\":\"private\"}'),
(287, '8f6de1de-4e0b-43fe-8c63-d26f971612db', 1, 'Update', 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, '', 'finished', '', '2019-12-22 02:53:56', '2019-12-22 02:53:56', '{\"visibility\":\"private\"}', '{\"visibility\":\"public\"}'),
(288, '8f6def6c-c81c-442c-bc2d-ae283a7b9fef', 1, 'Update', 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, '', 'finished', '', '2019-12-22 03:31:50', '2019-12-22 03:31:50', '{\"type\":\"feature\"}', '{\"type\":\"update\"}'),
(289, '8f6def8b-2021-4ab9-b78c-9489791b4f0b', 1, 'Update', 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, '', 'finished', '', '2019-12-22 03:32:10', '2019-12-22 03:32:10', '{\"type\":\"update\"}', '{\"type\":\"feature\"}'),
(290, '8f6defbc-d785-421d-ba89-ec8aa9b5f356', 1, 'Update', 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, '', 'finished', '', '2019-12-22 03:32:43', '2019-12-22 03:32:43', '{\"seo_title\":null}', '{\"seo_title\":\"iPhone\"}'),
(291, '8f6df029-3cb7-4037-ace7-69e50d80e127', 1, 'Update', 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, '', 'finished', '', '2019-12-22 03:33:54', '2019-12-22 03:33:54', '{\"seo_title\":\"iPhone\"}', '{\"seo_title\":null}'),
(292, '8f719884-ec73-4478-afa8-222fb36c2cb2', 1, 'Update', 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, 'App\\Models\\General\\News', 2, '', 'finished', '', '2019-12-23 23:12:09', '2019-12-23 23:12:09', '{\"article\":\"<div>Zendure has re-released their SuperCord line of extremely durable USB cables on Indiegogo InDemand, and they have added a new option: USB-C to Lightning.<br><br>SuperCord cables are designed to be extremely durable, featuring a mixture of highly resilient materials inside and around each cable. This construction lends the product enough durability to withstand an industry-leading 50,000-cycle bend test. The connectors themselves are made with stainless steel for long-term usability and corrosion resistance.<br><br>The newest model, a USB-C to Lightning cable, is MFi certified and sets a new standard for quality in one of the most popular cable types on the market. SuperCord cables can deliver up to 3A of current and are compatible with the latest USB fast-charging technology.<br><br>SuperCord USB cables feature a lifetime warranty. The USB-A to Lightning cable and the new USB-C to Lightning cable each come in black, red, or gray and feature an integrated leather strap for organization and storage.<\\/div>\"}', '{\"article\":\"<div>Zendure has re-released their SuperCord line of extremely durable USB cables on Indiegogo InDemand, and they have added a new option: USB-C to Lightning.<br><figure data-trix-attachment=\\\"{&quot;contentType&quot;:&quot;image\\/jpeg&quot;,&quot;filename&quot;:&quot;New MOIREI QI Wireless Power Bank 10000 mAh Fast Charge, Type-C, USB QC, Wireless PD Charging Mobile Portable Wireless Charger Powerbank with QR.jpg&quot;,&quot;filesize&quot;:152284,&quot;height&quot;:3000,&quot;href&quot;:&quot;https:\\/\\/mrsc.moirei-dev.com\\/storage\\/FNyZLvPRFN8jRm0Yb5kVK5BIZZMy36MuUWCFmckq.jpeg&quot;,&quot;url&quot;:&quot;https:\\/\\/mrsc.moirei-dev.com\\/storage\\/FNyZLvPRFN8jRm0Yb5kVK5BIZZMy36MuUWCFmckq.jpeg&quot;,&quot;width&quot;:3000}\\\" data-trix-content-type=\\\"image\\/jpeg\\\" data-trix-attributes=\\\"{&quot;presentation&quot;:&quot;gallery&quot;}\\\" class=\\\"attachment attachment--preview attachment--jpg\\\"><a href=\\\"https:\\/\\/mrsc.moirei-dev.com\\/storage\\/FNyZLvPRFN8jRm0Yb5kVK5BIZZMy36MuUWCFmckq.jpeg\\\"><img src=\\\"https:\\/\\/mrsc.moirei-dev.com\\/storage\\/FNyZLvPRFN8jRm0Yb5kVK5BIZZMy36MuUWCFmckq.jpeg\\\" width=\\\"3000\\\" height=\\\"3000\\\"><figcaption class=\\\"attachment__caption\\\"><span class=\\\"attachment__name\\\">New MOIREI QI Wireless Power Bank 10000 mAh Fast Charge, Type-C, USB QC, Wireless PD Charging Mobile Portable Wireless Charger Powerbank with QR.jpg<\\/span> <span class=\\\"attachment__size\\\">148.71 KB<\\/span><\\/figcaption><\\/a><\\/figure><br>SuperCord cables are designed to be extremely durable, featuring a mixture of highly resilient materials inside and around each cable. This construction lends the product enough durability to withstand an industry-leading 50,000-cycle bend test. The connectors themselves are made with stainless steel for long-term usability and corrosion resistance.<br><br>The newest model, a USB-C to Lightning cable, is MFi certified and sets a new standard for quality in one of the most popular cable types on the market. SuperCord cables can deliver up to 3A of current and are compatible with the latest USB fast-charging technology.<br><br>SuperCord USB cables feature a lifetime warranty. The USB-A to Lightning cable and the new USB-C to Lightning cable each come in black, red, or gray and feature an integrated leather strap for organization and storage.<\\/div>\"}'),
(293, '8f77a133-69eb-41f3-a707-eb1afa745a1e', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-12-26 23:11:23', '2019-12-26 23:11:23', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0,\"countries_available_to\":\"[]\"}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"countries_available_to\":\"[\\\"AU\\\"]\"}'),
(294, '8f7c2e8c-09c5-4d9e-89b0-e77d60bab05d', 1, 'Create', 'App\\Models\\Support\\FAQs', 1, 'App\\Models\\Support\\FAQs', 1, 'App\\Models\\Support\\FAQs', 1, '', 'finished', '', '2019-12-29 05:29:56', '2019-12-29 05:29:56', NULL, '{\"group\":\"Ordering\",\"question\":\"Can I cancel my order?\",\"answer\":null,\"updated_at\":\"2019-12-29 15:59:56\",\"created_at\":\"2019-12-29 15:59:56\",\"id\":1}'),
(295, '8f7c301a-15de-4ef8-8506-697540297890', 1, 'Create', 'App\\Models\\Support\\FAQs', 2, 'App\\Models\\Support\\FAQs', 2, 'App\\Models\\Support\\FAQs', 2, '', 'finished', '', '2019-12-29 05:34:17', '2019-12-29 05:34:17', NULL, '{\"group\":\"1\",\"question\":\"Can I track my order status?\",\"answer\":null,\"updated_at\":\"2019-12-29 16:04:17\",\"created_at\":\"2019-12-29 16:04:17\",\"id\":2}'),
(296, '8f7c31fb-08e2-4f3b-95dd-83a6f6c3e689', 1, 'Delete', 'App\\Models\\Support\\FAQs', 2, 'App\\Models\\Support\\FAQs', 2, 'App\\Models\\Support\\FAQs', 2, '', 'finished', '', '2019-12-29 05:39:32', '2019-12-29 05:39:32', NULL, NULL),
(297, '8f7c3274-4036-440d-a151-56bad6bf8364', 1, 'Create', 'App\\Models\\Support\\FAQs', 3, 'App\\Models\\Support\\FAQs', 3, 'App\\Models\\Support\\FAQs', 3, '', 'finished', '', '2019-12-29 05:40:51', '2019-12-29 05:40:51', NULL, '{\"group\":\"0\",\"question\":\"Can I track my order status?\",\"answer\":null,\"updated_at\":\"2019-12-29 16:10:51\",\"created_at\":\"2019-12-29 16:10:51\",\"id\":3}'),
(298, '8f7c3544-79f3-49ed-abe2-7b425707ba9a', 1, 'Delete', 'App\\Models\\Support\\FAQs', 3, 'App\\Models\\Support\\FAQs', 3, 'App\\Models\\Support\\FAQs', 3, '', 'finished', '', '2019-12-29 05:48:43', '2019-12-29 05:48:43', NULL, NULL),
(299, '8f7c3573-0eba-4804-b398-c8d52b2f7839', 1, 'Create', 'App\\Models\\Support\\FAQs', 4, 'App\\Models\\Support\\FAQs', 4, 'App\\Models\\Support\\FAQs', 4, '', 'finished', '', '2019-12-29 05:49:14', '2019-12-29 05:49:14', NULL, '{\"group\":\"General\",\"question\":\"Can I track my order status?\",\"answer\":null,\"updated_at\":\"2019-12-29 16:19:14\",\"created_at\":\"2019-12-29 16:19:14\",\"id\":4}'),
(300, '8f7c3a2b-8e1c-4d95-9750-15bc1eefc754', 1, 'Update', 'App\\Models\\Support\\FAQs', 4, 'App\\Models\\Support\\FAQs', 4, 'App\\Models\\Support\\FAQs', 4, '', 'finished', '', '2019-12-29 06:02:26', '2019-12-29 06:02:26', '{\"answer\":null}', '{\"answer\":\"You will have 90 minutes to complete 2 questions. The time remaining will be shown in the right hand corner of the screen throughout the test. Once the timer starts, it will not stop. Please ensure you have sufficient time to complete the test in one sitting before you begin. If time runs out, your last code entry will be saved.\"}'),
(301, '8f7c3a61-f7b4-422d-bc3f-54d49f7264d6', 1, 'Update', 'App\\Models\\Support\\FAQs', 1, 'App\\Models\\Support\\FAQs', 1, 'App\\Models\\Support\\FAQs', 1, '', 'finished', '', '2019-12-29 06:03:02', '2019-12-29 06:03:02', '{\"answer\":null}', '{\"answer\":\"will have the option of coding in Java, Python, C++, C, C#, Ruby, Javascript, or Swift. Both questions must be answered to be considered. You may use different coding languages for the two questions; however, switching your\"}');
INSERT INTO `action_events` (`id`, `batch_id`, `user_id`, `name`, `actionable_type`, `actionable_id`, `target_type`, `target_id`, `model_type`, `model_id`, `fields`, `status`, `exception`, `created_at`, `updated_at`, `original`, `changes`) VALUES
(302, '8f7c3dc1-6be6-48b9-9918-3913b643c179', 1, 'Create', 'App\\Models\\Support\\FAQs', 5, 'App\\Models\\Support\\FAQs', 5, 'App\\Models\\Support\\FAQs', 5, '', 'finished', '', '2019-12-29 06:12:28', '2019-12-29 06:12:28', NULL, '{\"group\":\"General\",\"question\":\"What payment methods do you accept?\",\"answer\":null,\"updated_at\":\"2019-12-29 16:42:28\",\"created_at\":\"2019-12-29 16:42:28\",\"id\":5}'),
(303, '8f7c4e01-6008-451f-9040-276feb01da74', 1, 'Update', 'App\\Models\\Support\\FAQs', 5, 'App\\Models\\Support\\FAQs', 5, 'App\\Models\\Support\\FAQs', 5, '', 'finished', '', '2019-12-29 06:57:54', '2019-12-29 06:57:54', '{\"answer\":null}', '{\"answer\":\"Once you are satisfied with your code and confirm your code compiles, please click the \\u201cSUBMIT\\u201d button to submit your code test. You will not be able to review or change your code after is it submitted. You have to compile your code at least once before you submit.\"}'),
(304, '8f7cefa9-f1be-48df-aa4d-d42292248a60', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-12-29 14:29:56', '2019-12-29 14:29:56', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0,\"faqs\":\"[]\"}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"faqs\":\"[{\\\"question\\\":\\\"How does it work?\\\",\\\"answer\\\":\\\"The MG001 works like every other power bank with traditional USB outputs. But to use the wireless charging, you simply place your device on the power bank then push the side button. You can check your device\\\\u2019s wireless charging here.\\\"}]\"}'),
(305, '8f7cf03f-b870-402f-a63d-92e409399aa2', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2019-12-29 14:31:34', '2019-12-29 14:31:34', '{\"purchasable\":1,\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0,\"faqs\":\"[{\\\"question\\\":\\\"How does it work?\\\",\\\"answer\\\":\\\"The MG001 works like every other power bank with traditional USB outputs. But to use the wireless charging, you simply place your device on the power bank then push the side button. You can check your device\\\\u2019s wireless charging here.\\\"}]\"}', '{\"purchasable\":true,\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"faqs\":\"[{\\\"question\\\":\\\"Where are you based? Where do you ship from?\\\",\\\"answer\\\":\\\"We\'re based in the Adelaide, Australia. All MG001 orders ship directly from our office in Adelaide.\\\"},{\\\"question\\\":\\\"How does it work?\\\",\\\"answer\\\":\\\"The MG001 works like every other power bank with traditional USB outputs. But to use the wireless charging, you simply place your device on the power bank then push the side button. You can check your device\\\\u2019s wireless charging <a href=\\\\\\\"#\\\\\\\">here<\\\\\\/a>.\\\"},{\\\"question\\\":\\\"How long will it take for my order to arrive?\\\",\\\"answer\\\":\\\"We ship all orders placed Monday - Friday before 1:30 PM ACST the same day. For customers within Australia, your order should arrive within 3 business days via Post Standard Delivery. If you do not receive your order within 4 days, please check your mailbox and tracking number, then contact us. Average delivery time for international orders is 6-9 business days. However, international shipping delays can occur due to your country\'s customs process. Once your order arrives in your country, it is transferred to your local postal carrier for final delivery. In a small minority of cases, delivery can take longer. If it\'s been more than 5 weeks, contact us and we will help track down your order.\\\"}]\"}'),
(306, '8f7d191a-d18f-407f-9803-d74ba2a423f8', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-12-29 16:25:48', '2019-12-29 16:25:48', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0,\"faqs\":\"[]\"}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"faqs\":\"[{\\\"question\\\":\\\"How long does the battery last?\\\",\\\"answer\\\":\\\"The backup power can last between 4 and 5 hours. Depending on your usage.\\\"},{\\\"question\\\":\\\"Why audio\\\",\\\"answer\\\":\\\"lumo B+ has integrated audio to help a user better recognise when the household power is out on not\\\"}]\"}'),
(307, '8f7d19a9-c7fa-41ac-af66-162d0269cc7b', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, 'App\\Models\\Ecommerce\\Product', 5, '', 'finished', '', '2019-12-29 16:27:22', '2019-12-29 16:27:22', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0,\"faqs\":\"[{\\\"question\\\":\\\"How long does the battery last?\\\",\\\"answer\\\":\\\"The backup power can last between 4 and 5 hours. Depending on your usage.\\\"},{\\\"question\\\":\\\"Why audio\\\",\\\"answer\\\":\\\"lumo B+ has integrated audio to help a user better recognise when the household power is out on not\\\"}]\"}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"faqs\":\"[{\\\"question\\\":\\\"How long does the battery last?\\\",\\\"answer\\\":\\\"The backup power can last between 4 and 5 hours. Depending on your usage.\\\"},{\\\"question\\\":\\\"Why audio?\\\",\\\"answer\\\":\\\"lumo B+ has integrated audio to help a user better recognise when the household power is out on not\\\"}]\"}'),
(308, '8f7d8c36-0c6f-4903-92cc-44b07490c622', 1, 'Create', 'App\\Models\\Support\\FAQs', 6, 'App\\Models\\Support\\FAQs', 6, 'App\\Models\\Support\\FAQs', 6, '', 'finished', '', '2019-12-29 21:47:40', '2019-12-29 21:47:40', NULL, '{\"group\":\"Wireless Power Bank\",\"question\":\"How heavy is it?\",\"answer\":\"It doesn\'t weight much. Only 203g.\",\"updated_at\":\"2019-12-30 08:17:40\",\"created_at\":\"2019-12-30 08:17:40\",\"id\":6}'),
(312, '8f853a30-c422-4022-a8f6-d2f8596a3ef1', 1, 'Resolve Faq Inquiry', 'App\\Models\\Support\\Inquiry', 9, 'App\\Models\\Support\\Inquiry', 9, 'App\\Models\\Support\\Inquiry', 9, 'a:1:{s:6:\"answer\";s:11:\"No, u can\'t\";}', 'finished', '', '2020-01-02 17:24:56', '2020-01-02 17:24:58', NULL, NULL),
(319, '8f854a40-6039-4cdf-adab-5368dcf85cb8', 1, 'Resolve Faq Inquiry', 'App\\Models\\Support\\Inquiry', 10, 'App\\Models\\Support\\Inquiry', 10, 'App\\Models\\Support\\Inquiry', 10, 'a:2:{s:8:\"question\";s:51:\"Can I still use cable with the wireless power bank?\";s:6:\"answer\";s:17:\"Yes, very much so\";}', 'finished', '', '2020-01-02 18:09:51', '2020-01-02 18:09:52', NULL, NULL),
(320, '8f854cc6-64b1-4a08-a989-648e009ea9e9', 1, 'Resolve Faq Inquiry', 'App\\Models\\Support\\Inquiry', 11, 'App\\Models\\Support\\Inquiry', 11, 'App\\Models\\Support\\Inquiry', 11, 'a:2:{s:8:\"question\";s:26:\"Test 3: Just a random text\";s:6:\"answer\";s:19:\"Random answer given\";}', 'finished', '', '2020-01-02 18:16:54', '2020-01-02 18:16:56', NULL, NULL),
(321, '8f86f042-687a-42dc-a41f-50421309ea50', 1, 'Update', 'App\\Models\\Support\\FAQs', 8, 'App\\Models\\Support\\FAQs', 8, 'App\\Models\\Support\\FAQs', 8, '', 'finished', '', '2020-01-03 13:49:52', '2020-01-03 13:49:52', '{\"answer\":\"No, u can\'t\"}', '{\"answer\":\"<div>No, u can\'t. See <a href=\\\"https:\\/\\/moirei-dev.com\\\">here<\\/a>.<\\/div>\"}'),
(322, '8f86f19b-fe6f-4a38-a130-772a7b42cd4d', 1, 'Update', 'App\\Models\\Support\\FAQs', 8, 'App\\Models\\Support\\FAQs', 8, 'App\\Models\\Support\\FAQs', 8, '', 'finished', '', '2020-01-03 13:53:39', '2020-01-03 13:53:39', '{\"answer\":\"<div>No, u can\'t. See <a href=\\\"https:\\/\\/moirei-dev.com\\\">here<\\/a>.<\\/div>\"}', '{\"answer\":\"<div>No, u can\'t. See <a href=\\\"https:\\/\\/moirei-dev.com\\\">here<\\/a>.<\\/div><ul><li>This is even a stupid question<\\/li><\\/ul>\"}'),
(323, '8f87017c-a0d6-4e80-8d58-fb5494ec0476', 1, 'Create', 'App\\Models\\Support\\FAQs', 17, 'App\\Models\\Support\\FAQs', 17, 'App\\Models\\Support\\FAQs', 17, '', 'finished', '', '2020-01-03 14:38:03', '2020-01-03 14:38:03', NULL, '{\"group\":\"Ordering\",\"question\":\"Where do I enter my promo code?\",\"answer\":\"<div>&nbsp;| Promo codes can be entered via on checkout by selecting \\\"Apply* a promotional code\\\" and entering the code provided. Please note that promo codes are case sensitive.<\\/div>\",\"updated_at\":\"2020-01-04 01:08:03\",\"created_at\":\"2020-01-04 01:08:03\",\"id\":17}'),
(324, '8f870209-ef48-49ad-ba1c-babe9ecc9407', 1, 'Update', 'App\\Models\\Support\\FAQs', 17, 'App\\Models\\Support\\FAQs', 17, 'App\\Models\\Support\\FAQs', 17, '', 'finished', '', '2020-01-03 14:39:35', '2020-01-03 14:39:35', '{\"answer\":\"<div>&nbsp;| Promo codes can be entered via on checkout by selecting \\\"Apply* a promotional code\\\" and entering the code provided. Please note that promo codes are case sensitive.<\\/div>\"}', '{\"answer\":\"<div>&nbsp;Promo codes can be entered via on checkout by selecting \\\"Apply* a promotional code\\\" and entering the code provided. Please note that promo codes are case sensitive.<\\/div>\"}'),
(325, '8f87debc-9258-4d5a-aff7-9ef02061e422', 1, 'Resolve Faq Inquiry', 'App\\Models\\Support\\Inquiry', 12, 'App\\Models\\Support\\Inquiry', 12, 'App\\Models\\Support\\Inquiry', 12, 'a:2:{s:8:\"question\";s:28:\"Hi, this is a test question?\";s:6:\"answer\";s:14:\"Okay. Replied!\";}', 'finished', '', '2020-01-04 00:56:42', '2020-01-04 00:56:47', NULL, NULL),
(326, '8f89492c-ad1c-4ea8-97a0-ce3a6de17a33', 1, 'Mark Order As Delivered', 'App\\Models\\Ecommerce\\Order', 16, 'App\\Models\\Ecommerce\\Order', 16, 'App\\Models\\Ecommerce\\Order', 16, 'a:0:{}', 'finished', '', '2020-01-04 17:50:09', '2020-01-04 17:50:10', NULL, NULL),
(327, '8f8ff3a3-eb5f-43ba-91bc-eab1837a2dd1', 1, 'Delete', 'App\\Models\\Support\\Inquiry', 14, 'App\\Models\\Support\\Inquiry', 14, 'App\\Models\\Support\\Inquiry', 14, '', 'finished', '', '2020-01-08 01:21:47', '2020-01-08 01:21:47', NULL, NULL),
(328, '8f8ff3a3-f18d-43e0-9eee-f701bef3847b', 1, 'Delete', 'App\\Models\\Support\\Inquiry', 15, 'App\\Models\\Support\\Inquiry', 15, 'App\\Models\\Support\\Inquiry', 15, '', 'finished', '', '2020-01-08 01:21:47', '2020-01-08 01:21:47', NULL, NULL),
(329, '8f8ff3a3-f4a0-47fc-b281-cde1548def0d', 1, 'Delete', 'App\\Models\\Support\\Inquiry', 16, 'App\\Models\\Support\\Inquiry', 16, 'App\\Models\\Support\\Inquiry', 16, '', 'finished', '', '2020-01-08 01:21:47', '2020-01-08 01:21:47', NULL, NULL),
(330, '8f8ff3a3-f7ab-4987-b3d9-9bd13a82d1d6', 1, 'Delete', 'App\\Models\\Support\\Inquiry', 17, 'App\\Models\\Support\\Inquiry', 17, 'App\\Models\\Support\\Inquiry', 17, '', 'finished', '', '2020-01-08 01:21:47', '2020-01-08 01:21:47', NULL, NULL),
(331, '8f8ff3a3-fa53-4427-958e-b4eb273a82d7', 1, 'Delete', 'App\\Models\\Support\\Inquiry', 18, 'App\\Models\\Support\\Inquiry', 18, 'App\\Models\\Support\\Inquiry', 18, '', 'finished', '', '2020-01-08 01:21:47', '2020-01-08 01:21:47', NULL, NULL),
(332, '8f8ff3a3-fccc-47b4-a8e9-e1ca8ec5aefc', 1, 'Delete', 'App\\Models\\Support\\Inquiry', 19, 'App\\Models\\Support\\Inquiry', 19, 'App\\Models\\Support\\Inquiry', 19, '', 'finished', '', '2020-01-08 01:21:47', '2020-01-08 01:21:47', NULL, NULL),
(333, '8f8ff3a3-fffd-4cdc-9ac9-f13a8a81434c', 1, 'Delete', 'App\\Models\\Support\\Inquiry', 20, 'App\\Models\\Support\\Inquiry', 20, 'App\\Models\\Support\\Inquiry', 20, '', 'finished', '', '2020-01-08 01:21:47', '2020-01-08 01:21:47', NULL, NULL),
(334, '8f8ff3a4-0320-40d8-a922-c43a7d5e637e', 1, 'Delete', 'App\\Models\\Support\\Inquiry', 21, 'App\\Models\\Support\\Inquiry', 21, 'App\\Models\\Support\\Inquiry', 21, '', 'finished', '', '2020-01-08 01:21:47', '2020-01-08 01:21:47', NULL, NULL),
(335, '8f8ff3a4-0699-4ad9-b190-d2f3aa0c10cc', 1, 'Delete', 'App\\Models\\Support\\Inquiry', 22, 'App\\Models\\Support\\Inquiry', 22, 'App\\Models\\Support\\Inquiry', 22, '', 'finished', '', '2020-01-08 01:21:47', '2020-01-08 01:21:47', NULL, NULL),
(336, '8f900670-8441-46e6-8b6c-c0b6a6c67baa', 1, 'Resolve Faq Inquiry', 'App\\Models\\Support\\Inquiry', 27, 'App\\Models\\Support\\Inquiry', 27, 'App\\Models\\Support\\Inquiry', 27, 'a:2:{s:8:\"question\";s:23:\"Do you buy second-hand?\";s:6:\"answer\";s:3:\"No!\";}', 'finished', '', '2020-01-08 02:14:21', '2020-01-08 02:14:22', NULL, NULL),
(337, '8fa1da35-06a0-4332-80ef-b90ec0fda8c8', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 1, 'App\\Models\\Ecommerce\\Product', 1, 'App\\Models\\Ecommerce\\Product', 1, '', 'finished', '', '2020-01-16 22:55:34', '2020-01-16 22:55:34', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0,\"meta\":\"{\\\"test_2\\\":\\\"Works\\\"}\"}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"meta\":\"{\\\"test_2\\\":\\\"Works\\\",\\\"available_on_gm\\\":false}\"}'),
(341, '8fa1dd78-0729-45f8-b062-3d8dd88ec3dd', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 1, 'App\\Models\\Ecommerce\\Product', 1, 'App\\Models\\Ecommerce\\Product', 1, '', 'finished', '', '2020-01-16 23:04:41', '2020-01-16 23:04:41', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(342, '8fa1debe-98ec-4ade-bf28-be33f56ad9ba', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 1, 'App\\Models\\Ecommerce\\Product', 1, 'App\\Models\\Ecommerce\\Product', 1, '', 'finished', '', '2020-01-16 23:08:15', '2020-01-16 23:08:15', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(343, '8fa1df94-8240-459a-b72f-a2fad355155a', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 1, 'App\\Models\\Ecommerce\\Product', 1, 'App\\Models\\Ecommerce\\Product', 1, '', 'finished', '', '2020-01-16 23:10:35', '2020-01-16 23:10:35', '{\"purchasable\":1,\"rating\":\"0.00\",\"unstocked\":0,\"url\":null,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"purchasable\":true,\"rating\":\"0\",\"unstocked\":false,\"url\":\"\\/lumo\",\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(346, '8fe9abd7-7884-483e-ae48-2a079f50c6e5', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2020-02-21 15:45:31', '2020-02-21 15:45:31', '[]', '[]'),
(347, '8fe9ad47-54b7-4af0-a7e4-c4091edbe7c4', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2020-02-21 15:49:32', '2020-02-21 15:49:32', '[]', '[]'),
(348, '8fe9ad66-da7f-427b-ad9c-5f4450564c32', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2020-02-21 15:49:53', '2020-02-21 15:49:53', '[]', '[]'),
(349, '8fe9ae6f-11f9-4c17-8a05-4e8eb6b3d43d', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2020-02-21 15:52:46', '2020-02-21 15:52:46', '[]', '[]'),
(350, '8fe9aeb4-9ca0-4719-8e44-9af46dbd1c7d', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2020-02-21 15:53:32', '2020-02-21 15:53:32', '[]', '[]'),
(351, '8fe9aef3-02d0-4b21-9539-2dc89e75186b', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2020-02-21 15:54:13', '2020-02-21 15:54:13', '[]', '[]'),
(352, '8fe9af29-fbbc-46b3-add4-e60f106f201f', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2020-02-21 15:54:49', '2020-02-21 15:54:49', '[]', '[]'),
(353, '8fe9af7a-a5b4-4c74-9d4b-0edb6ed91003', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2020-02-21 15:55:42', '2020-02-21 15:55:42', '{\"gallery\":\"[\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/new-moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-po-1571132547-4k3ux.jpg\\\",\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/new-moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-po-1571132539-v52oz.jpg\\\",\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/new-moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-po-1571132543-GSrT6.jpg\\\",\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portab-1571132538-TBjEQ.jpg\\\",\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portab-1571132536-SEYdS.jpg\\\",\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portab-1571132533-48V7r.jpg\\\",\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portab-1571132530-wNKcx.jpg\\\",\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portab-1571132528-pPAeQ.jpg\\\",\\\"https:\\\\\\/\\\\\\/mrsc.moirei-dev.com\\\\\\/storage\\\\\\/media\\\\\\/moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portab-1571132531-zcPVB.jpg\\\"]\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0,\"countries_hidden_from\":\"[]\"}', '{\"gallery\":\"[3,4,5,6,7,8,9,10]\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false,\"countries_hidden_from\":\"null\"}'),
(355, '8febcdf0-ca32-494b-9bed-ed0d245a0299', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2020-02-22 17:12:31', '2020-02-22 17:12:31', '{\"gallery\":\"[3,4,5,6,7,8,9,10]\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"gallery\":\"[10,3,4,5,6,7,8,9]\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}'),
(356, '8febebdd-49ec-4435-b564-32be82d9968c', 1, 'Update', 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, 'App\\Models\\Ecommerce\\Product', 6, '', 'finished', '', '2020-02-22 18:36:12', '2020-02-22 18:36:12', '{\"gallery\":\"[10,3,4,5,6,7,8,9]\",\"unstocked\":0,\"allow_reviews\":1,\"allow_backorders\":0,\"downloadable\":0,\"virtual\":0,\"featured\":0}', '{\"gallery\":\"[3,10,4,5,6,7,8,9]\",\"unstocked\":false,\"allow_reviews\":true,\"allow_backorders\":false,\"downloadable\":false,\"virtual\":false,\"featured\":false}');

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
(1, 'default', 'created', 1, 'App\\Models\\Admin', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-09 19:09:08', '2019-10-09 19:09:08'),
(2, 'default', 'created', 2, 'App\\Models\\Admin', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-09 19:09:08', '2019-10-09 19:09:08'),
(3, 'default', 'created', 3, 'App\\Models\\Admin', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-09 19:09:09', '2019-10-09 19:09:09'),
(4, 'default', 'created', 4, 'App\\Models\\Admin', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-09 19:09:09', '2019-10-09 19:09:09'),
(5, 'default', 'created', 5, 'App\\Models\\Admin', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-09 19:09:09', '2019-10-09 19:09:09'),
(6, 'default', 'created', 6, 'App\\Models\\Admin', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-09 19:09:09', '2019-10-09 19:09:09'),
(7, 'default', 'created', 1, 'App\\Models\\User', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-09 19:09:09', '2019-10-09 19:09:09'),
(8, 'default', 'created', 2, 'App\\Models\\User', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-09 19:09:10', '2019-10-09 19:09:10'),
(9, 'default', 'created', 1, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-09 21:12:46', '2019-10-09 21:12:46'),
(10, 'default', 'updated', 1, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-09 21:12:47', '2019-10-09 21:12:47'),
(11, 'default', 'created', 1, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-10 12:27:42', '2019-10-10 12:27:42'),
(12, 'default', 'updated', 1, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-10 12:27:42', '2019-10-10 12:27:42'),
(13, 'default', 'updated', 1, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-10 12:27:43', '2019-10-10 12:27:43'),
(14, 'default', 'updated', 1, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-10 12:28:23', '2019-10-10 12:28:23'),
(15, 'default', 'created', 2, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-10 12:28:55', '2019-10-10 12:28:55'),
(16, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-10 12:28:55', '2019-10-10 12:28:55'),
(17, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-10 12:28:55', '2019-10-10 12:28:55'),
(18, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-10 12:28:55', '2019-10-10 12:28:55'),
(19, 'default', 'updated', 1, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-10 16:24:46', '2019-10-10 16:24:46'),
(20, 'default', 'deleted', 1, 'App\\Models\\Ecommerce\\Cart', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2019-10-10 18:23:07', '2019-10-10 18:23:07'),
(21, 'default', 'created', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-10 18:23:27', '2019-10-10 18:23:27'),
(22, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-10 19:09:23', '2019-10-10 19:09:23'),
(23, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-10 19:11:05', '2019-10-10 19:11:05'),
(24, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-10 20:22:38', '2019-10-10 20:22:38'),
(25, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-10 21:45:26', '2019-10-10 21:45:26'),
(26, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-10 21:52:52', '2019-10-10 21:52:52'),
(27, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-10 21:54:03', '2019-10-10 21:54:03'),
(28, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-10 21:56:43', '2019-10-10 21:56:43'),
(29, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 00:13:01', '2019-10-11 00:13:01'),
(30, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 00:26:11', '2019-10-11 00:26:11'),
(31, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 00:39:58', '2019-10-11 00:39:58'),
(32, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 00:40:40', '2019-10-11 00:40:40'),
(33, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 00:40:53', '2019-10-11 00:40:53'),
(34, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 00:42:07', '2019-10-11 00:42:07'),
(35, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 00:42:38', '2019-10-11 00:42:38'),
(36, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 00:45:12', '2019-10-11 00:45:12'),
(37, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 00:45:39', '2019-10-11 00:45:39'),
(38, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 00:46:21', '2019-10-11 00:46:21'),
(39, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 00:46:33', '2019-10-11 00:46:33'),
(40, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 00:46:56', '2019-10-11 00:46:56'),
(41, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 00:47:33', '2019-10-11 00:47:33'),
(42, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 00:48:28', '2019-10-11 00:48:28'),
(43, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 00:49:21', '2019-10-11 00:49:21'),
(44, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 00:49:58', '2019-10-11 00:49:58'),
(45, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 00:50:19', '2019-10-11 00:50:19'),
(46, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 01:22:20', '2019-10-11 01:22:20'),
(47, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 01:22:32', '2019-10-11 01:22:32'),
(48, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 02:12:20', '2019-10-11 02:12:20'),
(49, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 02:14:01', '2019-10-11 02:14:01'),
(50, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 02:15:23', '2019-10-11 02:15:23'),
(51, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 02:25:50', '2019-10-11 02:25:50'),
(52, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 02:25:59', '2019-10-11 02:25:59'),
(53, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 02:26:07', '2019-10-11 02:26:07'),
(54, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 02:26:44', '2019-10-11 02:26:44'),
(55, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 02:40:17', '2019-10-11 02:40:17'),
(56, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 02:40:18', '2019-10-11 02:40:18'),
(57, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 02:40:20', '2019-10-11 02:40:20'),
(58, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 02:40:22', '2019-10-11 02:40:22'),
(59, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 02:40:23', '2019-10-11 02:40:23'),
(60, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 02:40:24', '2019-10-11 02:40:24'),
(61, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 02:40:26', '2019-10-11 02:40:26'),
(62, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 02:40:28', '2019-10-11 02:40:28'),
(63, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 02:40:29', '2019-10-11 02:40:29'),
(64, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 02:44:34', '2019-10-11 02:44:34'),
(65, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 02:44:46', '2019-10-11 02:44:46'),
(66, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 03:34:52', '2019-10-11 03:34:52'),
(67, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 03:35:18', '2019-10-11 03:35:18'),
(68, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 03:35:30', '2019-10-11 03:35:30'),
(69, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-11 03:35:47', '2019-10-11 03:35:47'),
(70, 'default', 'created', 3, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-12 23:58:01', '2019-10-12 23:58:01'),
(71, 'default', 'updated', 3, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-12 23:58:01', '2019-10-12 23:58:01'),
(72, 'default', 'updated', 3, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-12 23:58:02', '2019-10-12 23:58:02'),
(73, 'default', 'updated', 3, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-12 23:58:52', '2019-10-12 23:58:52'),
(74, 'default', 'updated', 3, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2019-10-13 01:02:21', '2019-10-13 01:02:21'),
(75, 'default', 'updated', 3, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2019-10-13 01:14:08', '2019-10-13 01:14:08'),
(76, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-13 15:48:44', '2019-10-13 15:48:44'),
(77, 'default', 'created', 4, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-16 02:57:12', '2019-10-16 02:57:12'),
(78, 'default', 'updated', 4, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-16 02:57:12', '2019-10-16 02:57:12'),
(79, 'default', 'updated', 4, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-16 02:57:13', '2019-10-16 02:57:13'),
(80, 'default', 'updated', 4, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-16 02:58:02', '2019-10-16 02:58:02'),
(81, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-17 02:06:31', '2019-10-17 02:06:31'),
(82, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-17 02:07:41', '2019-10-17 02:07:41'),
(83, 'default', 'created', 5, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-17 02:08:01', '2019-10-17 02:08:01'),
(84, 'default', 'updated', 5, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-17 02:08:01', '2019-10-17 02:08:01'),
(85, 'default', 'updated', 5, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-17 02:08:02', '2019-10-17 02:08:02'),
(86, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-17 23:06:47', '2019-10-17 23:06:47'),
(87, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-17 23:09:37', '2019-10-17 23:09:37'),
(88, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-17 23:09:50', '2019-10-17 23:09:50'),
(89, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-17 23:47:46', '2019-10-17 23:47:46'),
(90, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-17 23:49:06', '2019-10-17 23:49:06'),
(91, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-17 23:49:14', '2019-10-17 23:49:14'),
(92, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-17 23:50:11', '2019-10-17 23:50:11'),
(93, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-17 23:53:53', '2019-10-17 23:53:53'),
(94, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-17 23:56:04', '2019-10-17 23:56:04'),
(95, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-17 23:57:20', '2019-10-17 23:57:20'),
(96, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 00:10:49', '2019-10-18 00:10:49'),
(97, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 00:17:32', '2019-10-18 00:17:32'),
(98, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 00:17:56', '2019-10-18 00:17:56'),
(99, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 00:19:11', '2019-10-18 00:19:11'),
(100, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 00:19:18', '2019-10-18 00:19:18'),
(101, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 00:22:19', '2019-10-18 00:22:19'),
(102, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 00:26:08', '2019-10-18 00:26:08'),
(103, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 00:27:37', '2019-10-18 00:27:37'),
(104, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 00:27:50', '2019-10-18 00:27:50'),
(105, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 00:28:06', '2019-10-18 00:28:06'),
(106, 'default', 'created', 6, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:41:59', '2019-10-18 18:41:59'),
(107, 'default', 'updated', 6, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:41:59', '2019-10-18 18:41:59'),
(108, 'default', 'updated', 6, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:41:59', '2019-10-18 18:41:59'),
(109, 'default', 'updated', 6, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:41:59', '2019-10-18 18:41:59'),
(110, 'default', 'updated', 2, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:42:11', '2019-10-18 18:42:11'),
(111, 'default', 'updated', 6, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:42:11', '2019-10-18 18:42:11'),
(112, 'default', 'created', 3, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:46:30', '2019-10-18 18:46:30'),
(113, 'default', 'created', 7, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:46:33', '2019-10-18 18:46:33'),
(114, 'default', 'updated', 7, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:46:33', '2019-10-18 18:46:33'),
(115, 'default', 'updated', 7, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:46:33', '2019-10-18 18:46:33'),
(116, 'default', 'updated', 7, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:48:52', '2019-10-18 18:48:52'),
(117, 'default', 'updated', 7, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:48:52', '2019-10-18 18:48:52'),
(118, 'default', 'updated', 7, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:48:52', '2019-10-18 18:48:52'),
(119, 'default', 'updated', 5, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:50:06', '2019-10-18 18:50:06'),
(120, 'default', 'updated', 5, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:50:06', '2019-10-18 18:50:06'),
(121, 'default', 'updated', 5, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:50:06', '2019-10-18 18:50:06'),
(122, 'default', 'updated', 5, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:50:16', '2019-10-18 18:50:16'),
(123, 'default', 'created', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:51:10', '2019-10-18 18:51:10'),
(124, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:51:10', '2019-10-18 18:51:10'),
(125, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:51:10', '2019-10-18 18:51:10'),
(126, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:52:47', '2019-10-18 18:52:47'),
(127, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:52:47', '2019-10-18 18:52:47'),
(128, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:52:47', '2019-10-18 18:52:47'),
(129, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:53:17', '2019-10-18 18:53:17'),
(130, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:53:17', '2019-10-18 18:53:17'),
(131, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:53:17', '2019-10-18 18:53:17'),
(132, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:53:31', '2019-10-18 18:53:31'),
(133, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:53:31', '2019-10-18 18:53:31'),
(134, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:53:31', '2019-10-18 18:53:31'),
(135, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:53:49', '2019-10-18 18:53:49'),
(136, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:53:49', '2019-10-18 18:53:49'),
(137, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:53:49', '2019-10-18 18:53:49'),
(138, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:55:33', '2019-10-18 18:55:33'),
(139, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:55:33', '2019-10-18 18:55:33'),
(140, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:55:33', '2019-10-18 18:55:33'),
(141, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:57:43', '2019-10-18 18:57:43'),
(142, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:57:43', '2019-10-18 18:57:43'),
(143, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:57:43', '2019-10-18 18:57:43'),
(144, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:58:04', '2019-10-18 18:58:04'),
(145, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:58:04', '2019-10-18 18:58:04'),
(146, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:58:04', '2019-10-18 18:58:04'),
(147, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:58:26', '2019-10-18 18:58:26'),
(148, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:58:26', '2019-10-18 18:58:26'),
(149, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:58:26', '2019-10-18 18:58:26'),
(150, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:58:56', '2019-10-18 18:58:56'),
(151, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:58:56', '2019-10-18 18:58:56'),
(152, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 18:58:56', '2019-10-18 18:58:56'),
(153, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 20:11:39', '2019-10-18 20:11:39'),
(154, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 20:11:39', '2019-10-18 20:11:39'),
(155, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 20:11:39', '2019-10-18 20:11:39'),
(156, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 20:13:41', '2019-10-18 20:13:41'),
(157, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 20:13:41', '2019-10-18 20:13:41'),
(158, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 20:13:41', '2019-10-18 20:13:41'),
(159, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 20:15:05', '2019-10-18 20:15:05'),
(160, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 20:15:05', '2019-10-18 20:15:05'),
(161, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 20:15:05', '2019-10-18 20:15:05'),
(162, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 20:51:05', '2019-10-18 20:51:05'),
(163, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 20:51:05', '2019-10-18 20:51:05'),
(164, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 20:51:05', '2019-10-18 20:51:05'),
(165, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 20:51:20', '2019-10-18 20:51:20'),
(166, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 20:51:20', '2019-10-18 20:51:20'),
(167, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 20:51:20', '2019-10-18 20:51:20'),
(168, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 20:52:05', '2019-10-18 20:52:05'),
(169, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 20:52:05', '2019-10-18 20:52:05'),
(170, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 20:52:05', '2019-10-18 20:52:05'),
(171, 'default', 'updated', 8, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 20:52:16', '2019-10-18 20:52:16'),
(172, 'default', 'created', 9, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 20:54:48', '2019-10-18 20:54:48'),
(173, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 20:54:48', '2019-10-18 20:54:48'),
(174, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 20:54:48', '2019-10-18 20:54:48'),
(175, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 20:56:11', '2019-10-18 20:56:11'),
(176, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 20:56:11', '2019-10-18 20:56:11'),
(177, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 20:56:12', '2019-10-18 20:56:12'),
(178, 'default', 'updated', 3, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 22:27:08', '2019-10-18 22:27:08'),
(179, 'default', 'updated', 7, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 22:27:23', '2019-10-18 22:27:23'),
(180, 'default', 'updated', 7, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 22:27:23', '2019-10-18 22:27:23'),
(181, 'default', 'updated', 7, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 22:27:23', '2019-10-18 22:27:23'),
(182, 'default', 'updated', 7, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 22:27:23', '2019-10-18 22:27:23'),
(183, 'default', 'updated', 7, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 22:27:49', '2019-10-18 22:27:49'),
(184, 'default', 'updated', 7, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 22:27:49', '2019-10-18 22:27:49'),
(185, 'default', 'updated', 7, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 22:27:49', '2019-10-18 22:27:49'),
(186, 'default', 'updated', 7, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 22:27:49', '2019-10-18 22:27:49'),
(187, 'default', 'updated', 7, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 22:29:21', '2019-10-18 22:29:21'),
(188, 'default', 'updated', 7, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 22:29:21', '2019-10-18 22:29:21'),
(189, 'default', 'updated', 7, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 22:29:21', '2019-10-18 22:29:21'),
(190, 'default', 'updated', 7, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 22:29:21', '2019-10-18 22:29:21'),
(191, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 22:39:18', '2019-10-18 22:39:18'),
(192, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 22:39:18', '2019-10-18 22:39:18'),
(193, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 22:39:18', '2019-10-18 22:39:18'),
(194, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 22:40:02', '2019-10-18 22:40:02'),
(195, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 22:40:02', '2019-10-18 22:40:02'),
(196, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 22:40:02', '2019-10-18 22:40:02'),
(197, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 22:46:43', '2019-10-18 22:46:43'),
(198, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 22:46:43', '2019-10-18 22:46:43'),
(199, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 22:46:43', '2019-10-18 22:46:43'),
(200, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 22:48:13', '2019-10-18 22:48:13'),
(201, 'default', 'updated', 7, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:38:57', '2019-10-18 23:38:57'),
(202, 'default', 'updated', 7, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:38:57', '2019-10-18 23:38:57'),
(203, 'default', 'updated', 7, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:38:57', '2019-10-18 23:38:57'),
(204, 'default', 'updated', 7, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:38:57', '2019-10-18 23:38:57'),
(205, 'default', 'updated', 3, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:39:09', '2019-10-18 23:39:09'),
(206, 'default', 'updated', 7, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:39:09', '2019-10-18 23:39:09'),
(207, 'default', 'created', 4, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:43:32', '2019-10-18 23:43:32'),
(208, 'default', 'created', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:43:51', '2019-10-18 23:43:51'),
(209, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:43:51', '2019-10-18 23:43:51'),
(210, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:43:51', '2019-10-18 23:43:51'),
(211, 'default', 'updated', 4, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:45:04', '2019-10-18 23:45:04'),
(212, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:45:25', '2019-10-18 23:45:25'),
(213, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:45:25', '2019-10-18 23:45:25'),
(214, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:45:25', '2019-10-18 23:45:25'),
(215, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:45:25', '2019-10-18 23:45:25'),
(216, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:46:25', '2019-10-18 23:46:25'),
(217, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:46:25', '2019-10-18 23:46:25'),
(218, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:46:25', '2019-10-18 23:46:25'),
(219, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:46:25', '2019-10-18 23:46:25'),
(220, 'default', 'updated', 4, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:47:02', '2019-10-18 23:47:02'),
(221, 'default', 'updated', 4, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:47:14', '2019-10-18 23:47:14'),
(222, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:47:29', '2019-10-18 23:47:29'),
(223, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:47:29', '2019-10-18 23:47:29'),
(224, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:47:29', '2019-10-18 23:47:29'),
(225, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:47:29', '2019-10-18 23:47:29'),
(226, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:48:54', '2019-10-18 23:48:54'),
(227, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:48:54', '2019-10-18 23:48:54'),
(228, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:48:54', '2019-10-18 23:48:54'),
(229, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:48:54', '2019-10-18 23:48:54'),
(230, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:51:14', '2019-10-18 23:51:14'),
(231, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:51:14', '2019-10-18 23:51:14'),
(232, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:51:14', '2019-10-18 23:51:14'),
(233, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:51:14', '2019-10-18 23:51:14'),
(234, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:54:14', '2019-10-18 23:54:14'),
(235, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-18 23:56:05', '2019-10-18 23:56:05'),
(236, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:11:38', '2019-10-19 01:11:38'),
(237, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:11:38', '2019-10-19 01:11:38'),
(238, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:11:38', '2019-10-19 01:11:38'),
(239, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:11:38', '2019-10-19 01:11:38'),
(240, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:18:55', '2019-10-19 01:18:55'),
(241, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:18:55', '2019-10-19 01:18:55'),
(242, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:18:55', '2019-10-19 01:18:55'),
(243, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:18:55', '2019-10-19 01:18:55'),
(244, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:47:25', '2019-10-19 01:47:25'),
(245, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:47:25', '2019-10-19 01:47:25'),
(246, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:47:25', '2019-10-19 01:47:25'),
(247, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:47:25', '2019-10-19 01:47:25'),
(248, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:52:04', '2019-10-19 01:52:04'),
(249, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:52:04', '2019-10-19 01:52:04'),
(250, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:52:04', '2019-10-19 01:52:04'),
(251, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:52:04', '2019-10-19 01:52:04'),
(252, 'default', 'created', 11, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:53:19', '2019-10-19 01:53:19'),
(253, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:53:19', '2019-10-19 01:53:19'),
(254, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:53:20', '2019-10-19 01:53:20'),
(255, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:55:55', '2019-10-19 01:55:55'),
(256, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:55:55', '2019-10-19 01:55:55'),
(257, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:55:55', '2019-10-19 01:55:55'),
(258, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:56:46', '2019-10-19 01:56:46'),
(259, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:56:46', '2019-10-19 01:56:46'),
(260, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:56:46', '2019-10-19 01:56:46'),
(261, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:56:46', '2019-10-19 01:56:46'),
(262, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:59:22', '2019-10-19 01:59:22'),
(263, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:59:22', '2019-10-19 01:59:22'),
(264, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:59:22', '2019-10-19 01:59:22'),
(265, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 01:59:22', '2019-10-19 01:59:22'),
(266, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:10:49', '2019-10-19 02:10:49'),
(267, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:10:49', '2019-10-19 02:10:49'),
(268, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:10:49', '2019-10-19 02:10:49'),
(269, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:10:49', '2019-10-19 02:10:49'),
(270, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:15:45', '2019-10-19 02:15:45'),
(271, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:15:45', '2019-10-19 02:15:45'),
(272, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:15:45', '2019-10-19 02:15:45'),
(273, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:15:45', '2019-10-19 02:15:45'),
(274, 'default', 'updated', 4, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:16:38', '2019-10-19 02:16:38'),
(275, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:17:24', '2019-10-19 02:17:24'),
(276, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:17:24', '2019-10-19 02:17:24'),
(277, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:17:24', '2019-10-19 02:17:24'),
(278, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:17:24', '2019-10-19 02:17:24'),
(279, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:17:24', '2019-10-19 02:17:24'),
(280, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:19:37', '2019-10-19 02:19:37'),
(281, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:20:36', '2019-10-19 02:20:36'),
(282, 'default', 'updated', 4, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:21:22', '2019-10-19 02:21:22'),
(283, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:25:04', '2019-10-19 02:25:04'),
(284, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:26:05', '2019-10-19 02:26:05'),
(285, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:26:05', '2019-10-19 02:26:05'),
(286, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:26:51', '2019-10-19 02:26:51'),
(287, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:26:51', '2019-10-19 02:26:51'),
(288, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:26:51', '2019-10-19 02:26:51'),
(289, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:26:51', '2019-10-19 02:26:51'),
(290, 'default', 'updated', 4, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:43:08', '2019-10-19 02:43:08'),
(291, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:43:22', '2019-10-19 02:43:22'),
(292, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:43:22', '2019-10-19 02:43:22'),
(293, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:43:22', '2019-10-19 02:43:22'),
(294, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:43:22', '2019-10-19 02:43:22'),
(295, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 02:43:22', '2019-10-19 02:43:22'),
(296, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 16:15:22', '2019-10-19 16:15:22'),
(297, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 16:15:22', '2019-10-19 16:15:22'),
(298, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 16:15:22', '2019-10-19 16:15:22'),
(299, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 18:12:52', '2019-10-19 18:12:52'),
(300, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 18:12:52', '2019-10-19 18:12:52'),
(301, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 18:12:52', '2019-10-19 18:12:52'),
(302, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 18:12:52', '2019-10-19 18:12:52'),
(303, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 18:12:52', '2019-10-19 18:12:52'),
(304, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 18:24:57', '2019-10-19 18:24:57'),
(305, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 18:24:57', '2019-10-19 18:24:57'),
(306, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 18:24:57', '2019-10-19 18:24:57'),
(307, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 18:24:57', '2019-10-19 18:24:57'),
(308, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 18:24:57', '2019-10-19 18:24:57'),
(309, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 18:25:30', '2019-10-19 18:25:30'),
(310, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 18:25:30', '2019-10-19 18:25:30'),
(311, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 18:25:31', '2019-10-19 18:25:31'),
(312, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 18:25:31', '2019-10-19 18:25:31'),
(313, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 18:25:31', '2019-10-19 18:25:31'),
(314, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 18:25:52', '2019-10-19 18:25:52'),
(315, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 18:25:52', '2019-10-19 18:25:52'),
(316, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 18:25:52', '2019-10-19 18:25:52'),
(317, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 18:25:52', '2019-10-19 18:25:52'),
(318, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 18:25:52', '2019-10-19 18:25:52'),
(319, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 18:56:38', '2019-10-19 18:56:38'),
(320, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 18:56:38', '2019-10-19 18:56:38'),
(321, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 18:56:38', '2019-10-19 18:56:38'),
(322, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 18:56:38', '2019-10-19 18:56:38'),
(323, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 18:56:38', '2019-10-19 18:56:38'),
(324, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:31:48', '2019-10-19 22:31:48'),
(325, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:31:48', '2019-10-19 22:31:48'),
(326, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:31:48', '2019-10-19 22:31:48'),
(327, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:31:49', '2019-10-19 22:31:49'),
(328, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:31:49', '2019-10-19 22:31:49'),
(329, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:32:52', '2019-10-19 22:32:52'),
(330, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:32:52', '2019-10-19 22:32:52'),
(331, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:32:52', '2019-10-19 22:32:52'),
(332, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:32:52', '2019-10-19 22:32:52'),
(333, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:32:52', '2019-10-19 22:32:52'),
(334, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:33:33', '2019-10-19 22:33:33'),
(335, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:33:33', '2019-10-19 22:33:33'),
(336, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:33:33', '2019-10-19 22:33:33'),
(337, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:33:33', '2019-10-19 22:33:33'),
(338, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:33:33', '2019-10-19 22:33:33'),
(339, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:50:47', '2019-10-19 22:50:47');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(340, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:50:47', '2019-10-19 22:50:47'),
(341, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:50:47', '2019-10-19 22:50:47'),
(342, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:50:47', '2019-10-19 22:50:47'),
(343, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:50:47', '2019-10-19 22:50:47'),
(344, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:51:07', '2019-10-19 22:51:07'),
(345, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:51:07', '2019-10-19 22:51:07'),
(346, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:51:07', '2019-10-19 22:51:07'),
(347, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:51:07', '2019-10-19 22:51:07'),
(348, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:51:07', '2019-10-19 22:51:07'),
(349, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:51:23', '2019-10-19 22:51:23'),
(350, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:51:23', '2019-10-19 22:51:23'),
(351, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:51:23', '2019-10-19 22:51:23'),
(352, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:51:23', '2019-10-19 22:51:23'),
(353, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:51:23', '2019-10-19 22:51:23'),
(354, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:51:42', '2019-10-19 22:51:42'),
(355, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:51:42', '2019-10-19 22:51:42'),
(356, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:51:42', '2019-10-19 22:51:42'),
(357, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:51:42', '2019-10-19 22:51:42'),
(358, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:51:42', '2019-10-19 22:51:42'),
(359, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:52:09', '2019-10-19 22:52:09'),
(360, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:52:09', '2019-10-19 22:52:09'),
(361, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:52:09', '2019-10-19 22:52:09'),
(362, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:52:09', '2019-10-19 22:52:09'),
(363, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:52:09', '2019-10-19 22:52:09'),
(364, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:56:48', '2019-10-19 22:56:48'),
(365, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:56:48', '2019-10-19 22:56:48'),
(366, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:56:48', '2019-10-19 22:56:48'),
(367, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:56:48', '2019-10-19 22:56:48'),
(368, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:56:48', '2019-10-19 22:56:48'),
(369, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:57:09', '2019-10-19 22:57:09'),
(370, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:57:10', '2019-10-19 22:57:10'),
(371, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:57:10', '2019-10-19 22:57:10'),
(372, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:57:10', '2019-10-19 22:57:10'),
(373, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 22:57:10', '2019-10-19 22:57:10'),
(374, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 23:13:53', '2019-10-19 23:13:53'),
(375, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 23:13:53', '2019-10-19 23:13:53'),
(376, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 23:13:53', '2019-10-19 23:13:53'),
(377, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 23:13:53', '2019-10-19 23:13:53'),
(378, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-19 23:13:53', '2019-10-19 23:13:53'),
(379, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 00:18:10', '2019-10-20 00:18:10'),
(380, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 00:18:10', '2019-10-20 00:18:10'),
(381, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 00:18:10', '2019-10-20 00:18:10'),
(382, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 00:18:10', '2019-10-20 00:18:10'),
(383, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 00:18:10', '2019-10-20 00:18:10'),
(384, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 00:20:01', '2019-10-20 00:20:01'),
(385, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 00:20:01', '2019-10-20 00:20:01'),
(386, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 00:20:01', '2019-10-20 00:20:01'),
(387, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 00:20:01', '2019-10-20 00:20:01'),
(388, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 00:20:01', '2019-10-20 00:20:01'),
(389, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 00:22:54', '2019-10-20 00:22:54'),
(390, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 00:22:54', '2019-10-20 00:22:54'),
(391, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 00:22:54', '2019-10-20 00:22:54'),
(392, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 00:22:54', '2019-10-20 00:22:54'),
(393, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 00:22:54', '2019-10-20 00:22:54'),
(394, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:21:09', '2019-10-20 01:21:09'),
(395, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:21:10', '2019-10-20 01:21:10'),
(396, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:21:10', '2019-10-20 01:21:10'),
(397, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:21:10', '2019-10-20 01:21:10'),
(398, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:21:10', '2019-10-20 01:21:10'),
(399, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:37:08', '2019-10-20 01:37:08'),
(400, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:37:08', '2019-10-20 01:37:08'),
(401, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:37:08', '2019-10-20 01:37:08'),
(402, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:37:08', '2019-10-20 01:37:08'),
(403, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:37:08', '2019-10-20 01:37:08'),
(404, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:37:42', '2019-10-20 01:37:42'),
(405, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:37:42', '2019-10-20 01:37:42'),
(406, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:37:42', '2019-10-20 01:37:42'),
(407, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:37:42', '2019-10-20 01:37:42'),
(408, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:37:42', '2019-10-20 01:37:42'),
(409, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:42:57', '2019-10-20 01:42:57'),
(410, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:42:57', '2019-10-20 01:42:57'),
(411, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:42:57', '2019-10-20 01:42:57'),
(412, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:42:57', '2019-10-20 01:42:57'),
(413, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:42:57', '2019-10-20 01:42:57'),
(414, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:44:06', '2019-10-20 01:44:06'),
(415, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:44:06', '2019-10-20 01:44:06'),
(416, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:44:06', '2019-10-20 01:44:06'),
(417, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:44:06', '2019-10-20 01:44:06'),
(418, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:44:06', '2019-10-20 01:44:06'),
(419, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:46:08', '2019-10-20 01:46:08'),
(420, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:46:08', '2019-10-20 01:46:08'),
(421, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:46:08', '2019-10-20 01:46:08'),
(422, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:46:08', '2019-10-20 01:46:08'),
(423, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:46:08', '2019-10-20 01:46:08'),
(424, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:52:41', '2019-10-20 01:52:41'),
(425, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:52:42', '2019-10-20 01:52:42'),
(426, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:52:42', '2019-10-20 01:52:42'),
(427, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:52:42', '2019-10-20 01:52:42'),
(428, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 01:52:42', '2019-10-20 01:52:42'),
(429, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:10:43', '2019-10-20 02:10:43'),
(430, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:10:43', '2019-10-20 02:10:43'),
(431, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:10:43', '2019-10-20 02:10:43'),
(432, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:10:43', '2019-10-20 02:10:43'),
(433, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:10:43', '2019-10-20 02:10:43'),
(434, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:11:02', '2019-10-20 02:11:02'),
(435, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:11:02', '2019-10-20 02:11:02'),
(436, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:11:02', '2019-10-20 02:11:02'),
(437, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:11:02', '2019-10-20 02:11:02'),
(438, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:11:02', '2019-10-20 02:11:02'),
(439, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:15:46', '2019-10-20 02:15:46'),
(440, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:15:46', '2019-10-20 02:15:46'),
(441, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:15:46', '2019-10-20 02:15:46'),
(442, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:15:46', '2019-10-20 02:15:46'),
(443, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:15:46', '2019-10-20 02:15:46'),
(444, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:17:19', '2019-10-20 02:17:19'),
(445, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:17:19', '2019-10-20 02:17:19'),
(446, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:17:19', '2019-10-20 02:17:19'),
(447, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:17:19', '2019-10-20 02:17:19'),
(448, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:17:19', '2019-10-20 02:17:19'),
(449, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:18:36', '2019-10-20 02:18:36'),
(450, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:18:36', '2019-10-20 02:18:36'),
(451, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:18:36', '2019-10-20 02:18:36'),
(452, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:18:36', '2019-10-20 02:18:36'),
(453, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:18:36', '2019-10-20 02:18:36'),
(454, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:21:23', '2019-10-20 02:21:23'),
(455, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:21:23', '2019-10-20 02:21:23'),
(456, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:21:23', '2019-10-20 02:21:23'),
(457, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:21:23', '2019-10-20 02:21:23'),
(458, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:21:23', '2019-10-20 02:21:23'),
(459, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:23:06', '2019-10-20 02:23:06'),
(460, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:23:06', '2019-10-20 02:23:06'),
(461, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:23:06', '2019-10-20 02:23:06'),
(462, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:23:06', '2019-10-20 02:23:06'),
(463, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:23:06', '2019-10-20 02:23:06'),
(464, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:23:44', '2019-10-20 02:23:44'),
(465, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:23:44', '2019-10-20 02:23:44'),
(466, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:23:44', '2019-10-20 02:23:44'),
(467, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:23:44', '2019-10-20 02:23:44'),
(468, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:23:44', '2019-10-20 02:23:44'),
(469, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:27:15', '2019-10-20 02:27:15'),
(470, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:27:15', '2019-10-20 02:27:15'),
(471, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:27:15', '2019-10-20 02:27:15'),
(472, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:27:15', '2019-10-20 02:27:15'),
(473, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:27:15', '2019-10-20 02:27:15'),
(474, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:28:58', '2019-10-20 02:28:58'),
(475, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:28:58', '2019-10-20 02:28:58'),
(476, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:28:58', '2019-10-20 02:28:58'),
(477, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:28:58', '2019-10-20 02:28:58'),
(478, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:28:58', '2019-10-20 02:28:58'),
(479, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:30:25', '2019-10-20 02:30:25'),
(480, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:30:25', '2019-10-20 02:30:25'),
(481, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:30:25', '2019-10-20 02:30:25'),
(482, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:30:25', '2019-10-20 02:30:25'),
(483, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:30:25', '2019-10-20 02:30:25'),
(484, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:31:44', '2019-10-20 02:31:44'),
(485, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:31:44', '2019-10-20 02:31:44'),
(486, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:31:44', '2019-10-20 02:31:44'),
(487, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:31:44', '2019-10-20 02:31:44'),
(488, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:31:44', '2019-10-20 02:31:44'),
(489, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:33:27', '2019-10-20 02:33:27'),
(490, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:33:27', '2019-10-20 02:33:27'),
(491, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:33:27', '2019-10-20 02:33:27'),
(492, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:33:27', '2019-10-20 02:33:27'),
(493, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:33:27', '2019-10-20 02:33:27'),
(494, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:34:54', '2019-10-20 02:34:54'),
(495, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:34:54', '2019-10-20 02:34:54'),
(496, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:34:54', '2019-10-20 02:34:54'),
(497, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:34:54', '2019-10-20 02:34:54'),
(498, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:34:54', '2019-10-20 02:34:54'),
(499, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:36:25', '2019-10-20 02:36:25'),
(500, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:36:25', '2019-10-20 02:36:25'),
(501, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:36:25', '2019-10-20 02:36:25'),
(502, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:36:25', '2019-10-20 02:36:25'),
(503, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:36:25', '2019-10-20 02:36:25'),
(504, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:37:04', '2019-10-20 02:37:04'),
(505, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:37:04', '2019-10-20 02:37:04'),
(506, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:37:04', '2019-10-20 02:37:04'),
(507, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:37:04', '2019-10-20 02:37:04'),
(508, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:37:04', '2019-10-20 02:37:04'),
(509, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:37:49', '2019-10-20 02:37:49'),
(510, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:37:49', '2019-10-20 02:37:49'),
(511, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:37:49', '2019-10-20 02:37:49'),
(512, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:37:49', '2019-10-20 02:37:49'),
(513, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:37:49', '2019-10-20 02:37:49'),
(514, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:40:02', '2019-10-20 02:40:02'),
(515, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:40:02', '2019-10-20 02:40:02'),
(516, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:40:02', '2019-10-20 02:40:02'),
(517, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:40:02', '2019-10-20 02:40:02'),
(518, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:40:02', '2019-10-20 02:40:02'),
(519, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:40:34', '2019-10-20 02:40:34'),
(520, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:40:34', '2019-10-20 02:40:34'),
(521, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:40:34', '2019-10-20 02:40:34'),
(522, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:40:34', '2019-10-20 02:40:34'),
(523, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:40:34', '2019-10-20 02:40:34'),
(524, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:41:14', '2019-10-20 02:41:14'),
(525, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:41:14', '2019-10-20 02:41:14'),
(526, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:41:14', '2019-10-20 02:41:14'),
(527, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:41:14', '2019-10-20 02:41:14'),
(528, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:41:14', '2019-10-20 02:41:14'),
(529, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:41:36', '2019-10-20 02:41:36'),
(530, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:41:37', '2019-10-20 02:41:37'),
(531, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:41:37', '2019-10-20 02:41:37'),
(532, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:41:37', '2019-10-20 02:41:37'),
(533, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:41:37', '2019-10-20 02:41:37'),
(534, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:43:43', '2019-10-20 02:43:43'),
(535, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:43:43', '2019-10-20 02:43:43'),
(536, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:43:43', '2019-10-20 02:43:43'),
(537, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:43:43', '2019-10-20 02:43:43'),
(538, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:43:43', '2019-10-20 02:43:43'),
(539, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:43:58', '2019-10-20 02:43:58'),
(540, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:43:58', '2019-10-20 02:43:58'),
(541, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:43:58', '2019-10-20 02:43:58'),
(542, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:43:58', '2019-10-20 02:43:58'),
(543, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:43:58', '2019-10-20 02:43:58'),
(544, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:46:12', '2019-10-20 02:46:12'),
(545, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:46:12', '2019-10-20 02:46:12'),
(546, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:46:12', '2019-10-20 02:46:12'),
(547, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:46:12', '2019-10-20 02:46:12'),
(548, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:46:12', '2019-10-20 02:46:12'),
(549, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:50:30', '2019-10-20 02:50:30'),
(550, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:50:30', '2019-10-20 02:50:30'),
(551, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:50:30', '2019-10-20 02:50:30'),
(552, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:50:30', '2019-10-20 02:50:30'),
(553, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:50:30', '2019-10-20 02:50:30'),
(554, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:51:15', '2019-10-20 02:51:15'),
(555, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:51:15', '2019-10-20 02:51:15'),
(556, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:51:15', '2019-10-20 02:51:15'),
(557, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:51:15', '2019-10-20 02:51:15'),
(558, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:51:15', '2019-10-20 02:51:15'),
(559, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:52:27', '2019-10-20 02:52:27'),
(560, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:52:27', '2019-10-20 02:52:27'),
(561, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:52:27', '2019-10-20 02:52:27'),
(562, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:52:27', '2019-10-20 02:52:27'),
(563, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:52:27', '2019-10-20 02:52:27'),
(564, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:53:11', '2019-10-20 02:53:11'),
(565, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:53:11', '2019-10-20 02:53:11'),
(566, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:53:11', '2019-10-20 02:53:11'),
(567, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:53:11', '2019-10-20 02:53:11'),
(568, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:53:11', '2019-10-20 02:53:11'),
(569, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:56:08', '2019-10-20 02:56:08'),
(570, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:56:08', '2019-10-20 02:56:08'),
(571, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:56:08', '2019-10-20 02:56:08'),
(572, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:56:08', '2019-10-20 02:56:08'),
(573, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:56:08', '2019-10-20 02:56:08'),
(574, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:59:23', '2019-10-20 02:59:23'),
(575, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:59:23', '2019-10-20 02:59:23'),
(576, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:59:23', '2019-10-20 02:59:23'),
(577, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:59:23', '2019-10-20 02:59:23'),
(578, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 02:59:23', '2019-10-20 02:59:23'),
(579, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:00:02', '2019-10-20 03:00:02'),
(580, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:00:02', '2019-10-20 03:00:02'),
(581, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:00:02', '2019-10-20 03:00:02'),
(582, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:00:02', '2019-10-20 03:00:02'),
(583, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:00:02', '2019-10-20 03:00:02'),
(584, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:26:07', '2019-10-20 03:26:07'),
(585, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:26:07', '2019-10-20 03:26:07'),
(586, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:26:07', '2019-10-20 03:26:07'),
(587, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:26:07', '2019-10-20 03:26:07'),
(588, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:26:07', '2019-10-20 03:26:07'),
(589, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:26:53', '2019-10-20 03:26:53'),
(590, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:26:53', '2019-10-20 03:26:53'),
(591, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:26:53', '2019-10-20 03:26:53'),
(592, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:26:53', '2019-10-20 03:26:53'),
(593, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:26:53', '2019-10-20 03:26:53'),
(594, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:29:01', '2019-10-20 03:29:01'),
(595, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:29:01', '2019-10-20 03:29:01'),
(596, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:29:01', '2019-10-20 03:29:01'),
(597, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:29:01', '2019-10-20 03:29:01'),
(598, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:29:01', '2019-10-20 03:29:01'),
(599, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:31:03', '2019-10-20 03:31:03'),
(600, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:31:03', '2019-10-20 03:31:03'),
(601, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:31:03', '2019-10-20 03:31:03'),
(602, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:31:03', '2019-10-20 03:31:03'),
(603, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:31:03', '2019-10-20 03:31:03'),
(604, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:31:28', '2019-10-20 03:31:28'),
(605, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:31:28', '2019-10-20 03:31:28'),
(606, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:31:28', '2019-10-20 03:31:28'),
(607, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:31:28', '2019-10-20 03:31:28'),
(608, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:31:28', '2019-10-20 03:31:28'),
(609, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:32:07', '2019-10-20 03:32:07'),
(610, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:32:07', '2019-10-20 03:32:07'),
(611, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:32:07', '2019-10-20 03:32:07'),
(612, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:32:07', '2019-10-20 03:32:07'),
(613, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:32:08', '2019-10-20 03:32:08'),
(614, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:34:15', '2019-10-20 03:34:15'),
(615, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:34:15', '2019-10-20 03:34:15'),
(616, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:34:15', '2019-10-20 03:34:15'),
(617, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:34:15', '2019-10-20 03:34:15'),
(618, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:34:15', '2019-10-20 03:34:15'),
(619, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:35:02', '2019-10-20 03:35:02'),
(620, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:35:02', '2019-10-20 03:35:02'),
(621, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:35:02', '2019-10-20 03:35:02'),
(622, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:35:02', '2019-10-20 03:35:02'),
(623, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:35:02', '2019-10-20 03:35:02'),
(624, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:36:59', '2019-10-20 03:36:59'),
(625, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:36:59', '2019-10-20 03:36:59'),
(626, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:36:59', '2019-10-20 03:36:59'),
(627, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:36:59', '2019-10-20 03:36:59'),
(628, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:36:59', '2019-10-20 03:36:59'),
(629, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:37:41', '2019-10-20 03:37:41'),
(630, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:37:42', '2019-10-20 03:37:42'),
(631, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:37:42', '2019-10-20 03:37:42'),
(632, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:37:42', '2019-10-20 03:37:42'),
(633, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:37:42', '2019-10-20 03:37:42'),
(634, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:38:20', '2019-10-20 03:38:20'),
(635, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:38:20', '2019-10-20 03:38:20'),
(636, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:38:20', '2019-10-20 03:38:20'),
(637, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:38:20', '2019-10-20 03:38:20'),
(638, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:38:20', '2019-10-20 03:38:20'),
(639, 'default', 'updated', 4, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:38:30', '2019-10-20 03:38:30'),
(640, 'default', 'updated', 10, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:38:30', '2019-10-20 03:38:30'),
(641, 'default', 'created', 5, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:38:50', '2019-10-20 03:38:50'),
(642, 'default', 'created', 12, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:38:52', '2019-10-20 03:38:52'),
(643, 'default', 'updated', 12, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:38:52', '2019-10-20 03:38:52'),
(644, 'default', 'updated', 12, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:38:52', '2019-10-20 03:38:52'),
(645, 'default', 'updated', 12, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:39:42', '2019-10-20 03:39:42'),
(646, 'default', 'updated', 12, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:39:42', '2019-10-20 03:39:42'),
(647, 'default', 'updated', 12, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:39:42', '2019-10-20 03:39:42'),
(648, 'default', 'updated', 12, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:51:51', '2019-10-20 03:51:51'),
(649, 'default', 'updated', 12, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:51:51', '2019-10-20 03:51:51'),
(650, 'default', 'updated', 12, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 03:51:51', '2019-10-20 03:51:51'),
(651, 'default', 'updated', 12, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 04:06:46', '2019-10-20 04:06:46'),
(652, 'default', 'updated', 12, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 04:06:46', '2019-10-20 04:06:46'),
(653, 'default', 'updated', 12, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 04:06:46', '2019-10-20 04:06:46'),
(654, 'default', 'deleted', 11, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2019-10-20 04:07:51', '2019-10-20 04:07:51'),
(655, 'default', 'deleted', 12, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2019-10-20 04:07:51', '2019-10-20 04:07:51'),
(656, 'default', 'created', 13, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 04:08:39', '2019-10-20 04:08:39'),
(657, 'default', 'updated', 13, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 04:08:39', '2019-10-20 04:08:39'),
(658, 'default', 'updated', 13, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 04:08:40', '2019-10-20 04:08:40'),
(659, 'default', 'updated', 13, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 04:10:55', '2019-10-20 04:10:55'),
(660, 'default', 'updated', 13, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 04:10:55', '2019-10-20 04:10:55'),
(661, 'default', 'updated', 13, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 04:10:55', '2019-10-20 04:10:55'),
(662, 'default', 'deleted', 13, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2019-10-20 04:13:36', '2019-10-20 04:13:36'),
(663, 'default', 'created', 14, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 04:13:56', '2019-10-20 04:13:56'),
(664, 'default', 'updated', 14, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 04:13:56', '2019-10-20 04:13:56'),
(665, 'default', 'updated', 14, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 04:13:57', '2019-10-20 04:13:57'),
(666, 'default', 'updated', 14, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2019-10-20 04:14:58', '2019-10-20 04:14:58'),
(667, 'default', 'deleted', 1, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2019-10-20 16:02:14', '2019-10-20 16:02:14'),
(668, 'default', 'deleted', 2, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2019-10-20 16:02:14', '2019-10-20 16:02:14'),
(669, 'default', 'deleted', 3, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2019-10-20 16:02:14', '2019-10-20 16:02:14'),
(670, 'default', 'deleted', 4, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2019-10-20 16:02:14', '2019-10-20 16:02:14'),
(671, 'default', 'deleted', 5, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2019-10-20 16:02:14', '2019-10-20 16:02:14'),
(672, 'default', 'deleted', 6, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2019-10-20 16:02:14', '2019-10-20 16:02:14'),
(673, 'default', 'deleted', 7, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2019-10-20 16:02:14', '2019-10-20 16:02:14'),
(674, 'default', 'deleted', 8, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2019-10-20 16:02:14', '2019-10-20 16:02:14');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(675, 'default', 'deleted', 9, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2019-10-20 16:02:14', '2019-10-20 16:02:14'),
(676, 'default', 'deleted', 10, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2019-10-20 16:02:14', '2019-10-20 16:02:14'),
(677, 'default', 'deleted', 14, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2019-10-20 16:02:14', '2019-10-20 16:02:14'),
(678, 'default', 'deleted', 2, 'App\\Models\\Ecommerce\\Cart', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2019-10-20 16:02:29', '2019-10-20 16:02:29'),
(679, 'default', 'deleted', 3, 'App\\Models\\Ecommerce\\Cart', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2019-10-20 16:02:29', '2019-10-20 16:02:29'),
(680, 'default', 'deleted', 4, 'App\\Models\\Ecommerce\\Cart', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2019-10-20 16:02:29', '2019-10-20 16:02:29'),
(681, 'default', 'deleted', 5, 'App\\Models\\Ecommerce\\Cart', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2019-10-20 16:02:29', '2019-10-20 16:02:29'),
(682, 'default', 'created', 6, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 16:02:56', '2019-10-20 16:02:56'),
(683, 'default', 'created', 15, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 16:27:48', '2019-10-20 16:27:48'),
(684, 'default', 'updated', 15, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 16:27:48', '2019-10-20 16:27:48'),
(685, 'default', 'updated', 15, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 16:27:49', '2019-10-20 16:27:49'),
(686, 'default', 'updated', 15, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 16:28:24', '2019-10-20 16:28:24'),
(687, 'default', 'updated', 15, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 16:28:24', '2019-10-20 16:28:24'),
(688, 'default', 'updated', 15, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 16:28:24', '2019-10-20 16:28:24'),
(689, 'default', 'updated', 15, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-20 16:32:57', '2019-10-20 16:32:57'),
(690, 'default', 'updated', 15, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2019-10-20 16:44:09', '2019-10-20 16:44:09'),
(691, 'default', 'created', 16, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-21 01:08:53', '2019-10-21 01:08:53'),
(692, 'default', 'updated', 16, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-21 01:08:53', '2019-10-21 01:08:53'),
(693, 'default', 'updated', 16, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-21 01:08:54', '2019-10-21 01:08:54'),
(694, 'default', 'updated', 16, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-21 01:09:32', '2019-10-21 01:09:32'),
(696, 'default', 'updated', 16, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2019-10-23 03:04:33', '2019-10-23 03:04:33'),
(697, 'default', 'created', 17, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-23 03:28:54', '2019-10-23 03:28:54'),
(698, 'default', 'updated', 17, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-23 03:28:54', '2019-10-23 03:28:54'),
(699, 'default', 'updated', 17, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-23 03:28:54', '2019-10-23 03:28:54'),
(700, 'default', 'updated', 17, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-23 03:29:32', '2019-10-23 03:29:32'),
(701, 'default', 'updated', 6, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 03:40:37', '2019-10-25 03:40:37'),
(702, 'default', 'updated', 6, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 03:43:13', '2019-10-25 03:43:13'),
(703, 'default', 'updated', 6, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 03:45:56', '2019-10-25 03:45:56'),
(704, 'default', 'updated', 6, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 03:48:21', '2019-10-25 03:48:21'),
(705, 'default', 'updated', 6, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 03:51:12', '2019-10-25 03:51:12'),
(706, 'default', 'updated', 6, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 03:55:48', '2019-10-25 03:55:48'),
(707, 'default', 'updated', 6, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 03:55:48', '2019-10-25 03:55:48'),
(708, 'default', 'updated', 6, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 03:55:49', '2019-10-25 03:55:49'),
(709, 'default', 'updated', 6, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 03:55:50', '2019-10-25 03:55:50'),
(710, 'default', 'updated', 6, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 03:56:29', '2019-10-25 03:56:29'),
(711, 'default', 'updated', 6, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 03:56:50', '2019-10-25 03:56:50'),
(712, 'default', 'updated', 6, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 03:57:36', '2019-10-25 03:57:36'),
(713, 'default', 'updated', 6, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 03:57:56', '2019-10-25 03:57:56'),
(714, 'default', 'updated', 6, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 04:10:58', '2019-10-25 04:10:58'),
(715, 'default', 'created', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:39:02', '2019-10-25 18:39:02'),
(716, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:39:02', '2019-10-25 18:39:02'),
(717, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:39:02', '2019-10-25 18:39:02'),
(718, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:39:02', '2019-10-25 18:39:02'),
(719, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:39:02', '2019-10-25 18:39:02'),
(720, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:39:02', '2019-10-25 18:39:02'),
(721, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:41:00', '2019-10-25 18:41:00'),
(722, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:41:00', '2019-10-25 18:41:00'),
(723, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:41:00', '2019-10-25 18:41:00'),
(724, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:41:00', '2019-10-25 18:41:00'),
(725, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:41:00', '2019-10-25 18:41:00'),
(726, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:41:00', '2019-10-25 18:41:00'),
(727, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:41:32', '2019-10-25 18:41:32'),
(728, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:41:32', '2019-10-25 18:41:32'),
(729, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:41:32', '2019-10-25 18:41:32'),
(730, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:41:32', '2019-10-25 18:41:32'),
(731, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:41:32', '2019-10-25 18:41:32'),
(732, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:41:32', '2019-10-25 18:41:32'),
(733, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:44:09', '2019-10-25 18:44:09'),
(734, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:44:09', '2019-10-25 18:44:09'),
(735, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:44:09', '2019-10-25 18:44:09'),
(736, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:44:09', '2019-10-25 18:44:09'),
(737, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:44:09', '2019-10-25 18:44:09'),
(738, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:44:09', '2019-10-25 18:44:09'),
(739, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:52:41', '2019-10-25 18:52:41'),
(740, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:52:41', '2019-10-25 18:52:41'),
(741, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:52:41', '2019-10-25 18:52:41'),
(742, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:52:41', '2019-10-25 18:52:41'),
(743, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:52:41', '2019-10-25 18:52:41'),
(744, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 18:52:41', '2019-10-25 18:52:41'),
(745, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 19:08:41', '2019-10-25 19:08:41'),
(746, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 19:08:41', '2019-10-25 19:08:41'),
(747, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 19:08:41', '2019-10-25 19:08:41'),
(748, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 19:08:41', '2019-10-25 19:08:41'),
(749, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 19:08:41', '2019-10-25 19:08:41'),
(750, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-25 19:08:41', '2019-10-25 19:08:41'),
(751, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 02:37:17', '2019-10-28 02:37:17'),
(752, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 02:37:17', '2019-10-28 02:37:17'),
(753, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 02:37:18', '2019-10-28 02:37:18'),
(754, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 02:39:57', '2019-10-28 02:39:57'),
(755, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 02:39:57', '2019-10-28 02:39:57'),
(756, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 02:39:57', '2019-10-28 02:39:57'),
(757, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 02:42:11', '2019-10-28 02:42:11'),
(758, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 02:42:11', '2019-10-28 02:42:11'),
(759, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 02:42:11', '2019-10-28 02:42:11'),
(760, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 02:42:40', '2019-10-28 02:42:40'),
(761, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 02:42:40', '2019-10-28 02:42:40'),
(762, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 02:42:40', '2019-10-28 02:42:40'),
(763, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 02:43:49', '2019-10-28 02:43:49'),
(764, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 02:43:49', '2019-10-28 02:43:49'),
(765, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 02:43:49', '2019-10-28 02:43:49'),
(766, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 02:44:11', '2019-10-28 02:44:11'),
(767, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 02:44:11', '2019-10-28 02:44:11'),
(768, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 02:44:11', '2019-10-28 02:44:11'),
(769, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 02:45:26', '2019-10-28 02:45:26'),
(770, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 02:45:26', '2019-10-28 02:45:26'),
(771, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 02:45:26', '2019-10-28 02:45:26'),
(772, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 02:45:56', '2019-10-28 02:45:56'),
(773, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 02:45:56', '2019-10-28 02:45:56'),
(774, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 02:45:56', '2019-10-28 02:45:56'),
(775, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 02:45:56', '2019-10-28 02:45:56'),
(776, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:06:47', '2019-10-28 03:06:47'),
(777, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:06:47', '2019-10-28 03:06:47'),
(778, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:06:47', '2019-10-28 03:06:47'),
(779, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:06:47', '2019-10-28 03:06:47'),
(780, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:30:57', '2019-10-28 03:30:57'),
(781, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:30:57', '2019-10-28 03:30:57'),
(782, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:30:58', '2019-10-28 03:30:58'),
(783, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:30:58', '2019-10-28 03:30:58'),
(784, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:31:16', '2019-10-28 03:31:16'),
(785, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:31:16', '2019-10-28 03:31:16'),
(786, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:31:16', '2019-10-28 03:31:16'),
(787, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:31:16', '2019-10-28 03:31:16'),
(788, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:31:57', '2019-10-28 03:31:57'),
(789, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:31:57', '2019-10-28 03:31:57'),
(790, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:31:57', '2019-10-28 03:31:57'),
(791, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:31:57', '2019-10-28 03:31:57'),
(792, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:32:12', '2019-10-28 03:32:12'),
(793, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:32:12', '2019-10-28 03:32:12'),
(794, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:32:13', '2019-10-28 03:32:13'),
(795, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:32:13', '2019-10-28 03:32:13'),
(796, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:33:23', '2019-10-28 03:33:23'),
(797, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:33:23', '2019-10-28 03:33:23'),
(798, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:33:24', '2019-10-28 03:33:24'),
(799, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:34:18', '2019-10-28 03:34:18'),
(800, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:34:18', '2019-10-28 03:34:18'),
(801, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:34:18', '2019-10-28 03:34:18'),
(802, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:34:18', '2019-10-28 03:34:18'),
(803, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:36:00', '2019-10-28 03:36:00'),
(804, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:36:00', '2019-10-28 03:36:00'),
(805, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:36:00', '2019-10-28 03:36:00'),
(806, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:36:00', '2019-10-28 03:36:00'),
(807, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:39:45', '2019-10-28 03:39:45'),
(808, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:39:45', '2019-10-28 03:39:45'),
(809, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:39:45', '2019-10-28 03:39:45'),
(810, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:41:07', '2019-10-28 03:41:07'),
(811, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:41:07', '2019-10-28 03:41:07'),
(812, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:41:07', '2019-10-28 03:41:07'),
(813, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:41:07', '2019-10-28 03:41:07'),
(814, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:42:17', '2019-10-28 03:42:17'),
(815, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:42:17', '2019-10-28 03:42:17'),
(816, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:42:17', '2019-10-28 03:42:17'),
(817, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:42:17', '2019-10-28 03:42:17'),
(818, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:49:50', '2019-10-28 03:49:50'),
(819, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:49:50', '2019-10-28 03:49:50'),
(820, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:49:50', '2019-10-28 03:49:50'),
(821, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:49:50', '2019-10-28 03:49:50'),
(822, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:50:22', '2019-10-28 03:50:22'),
(823, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:50:22', '2019-10-28 03:50:22'),
(824, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:50:22', '2019-10-28 03:50:22'),
(825, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 03:50:22', '2019-10-28 03:50:22'),
(826, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:33:45', '2019-10-28 15:33:45'),
(827, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:33:45', '2019-10-28 15:33:45'),
(828, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:33:45', '2019-10-28 15:33:45'),
(829, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:33:45', '2019-10-28 15:33:45'),
(830, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:34:33', '2019-10-28 15:34:33'),
(831, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:34:33', '2019-10-28 15:34:33'),
(832, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:34:33', '2019-10-28 15:34:33'),
(833, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:34:33', '2019-10-28 15:34:33'),
(834, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:35:11', '2019-10-28 15:35:11'),
(835, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:35:12', '2019-10-28 15:35:12'),
(836, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:35:12', '2019-10-28 15:35:12'),
(837, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:35:12', '2019-10-28 15:35:12'),
(838, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:43:22', '2019-10-28 15:43:22'),
(839, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:43:22', '2019-10-28 15:43:22'),
(840, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:43:22', '2019-10-28 15:43:22'),
(841, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:43:22', '2019-10-28 15:43:22'),
(842, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:44:15', '2019-10-28 15:44:15'),
(843, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:44:15', '2019-10-28 15:44:15'),
(844, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:44:15', '2019-10-28 15:44:15'),
(845, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:44:15', '2019-10-28 15:44:15'),
(846, 'default', 'updated', 6, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:45:38', '2019-10-28 15:45:38'),
(847, 'default', 'updated', 6, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:45:50', '2019-10-28 15:45:50'),
(848, 'default', 'updated', 6, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:45:57', '2019-10-28 15:45:57'),
(849, 'default', 'updated', 6, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:45:58', '2019-10-28 15:45:58'),
(850, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:46:31', '2019-10-28 15:46:31'),
(851, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:46:31', '2019-10-28 15:46:31'),
(852, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:46:31', '2019-10-28 15:46:31'),
(853, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:46:31', '2019-10-28 15:46:31'),
(854, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:46:31', '2019-10-28 15:46:31'),
(855, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:46:31', '2019-10-28 15:46:31'),
(856, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:47:13', '2019-10-28 15:47:13'),
(857, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:47:13', '2019-10-28 15:47:13'),
(858, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:47:13', '2019-10-28 15:47:13'),
(859, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:47:13', '2019-10-28 15:47:13'),
(860, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:47:13', '2019-10-28 15:47:13'),
(861, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:47:13', '2019-10-28 15:47:13'),
(862, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:48:31', '2019-10-28 15:48:31'),
(863, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:48:32', '2019-10-28 15:48:32'),
(864, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:48:32', '2019-10-28 15:48:32'),
(865, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:48:32', '2019-10-28 15:48:32'),
(866, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:48:32', '2019-10-28 15:48:32'),
(867, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 15:48:32', '2019-10-28 15:48:32'),
(868, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:24:27', '2019-10-28 17:24:27'),
(869, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:24:27', '2019-10-28 17:24:27'),
(870, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:24:27', '2019-10-28 17:24:27'),
(871, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:24:27', '2019-10-28 17:24:27'),
(872, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:24:27', '2019-10-28 17:24:27'),
(873, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:24:27', '2019-10-28 17:24:27'),
(874, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:26:59', '2019-10-28 17:26:59'),
(875, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:26:59', '2019-10-28 17:26:59'),
(876, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:26:59', '2019-10-28 17:26:59'),
(877, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:26:59', '2019-10-28 17:26:59'),
(878, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:26:59', '2019-10-28 17:26:59'),
(879, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:26:59', '2019-10-28 17:26:59'),
(880, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:28:13', '2019-10-28 17:28:13'),
(881, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:28:13', '2019-10-28 17:28:13'),
(882, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:28:13', '2019-10-28 17:28:13'),
(883, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:28:13', '2019-10-28 17:28:13'),
(884, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:28:13', '2019-10-28 17:28:13'),
(885, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:28:13', '2019-10-28 17:28:13'),
(886, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:29:29', '2019-10-28 17:29:29'),
(887, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:29:29', '2019-10-28 17:29:29'),
(888, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:29:29', '2019-10-28 17:29:29'),
(889, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:29:29', '2019-10-28 17:29:29'),
(890, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:29:29', '2019-10-28 17:29:29'),
(891, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:29:29', '2019-10-28 17:29:29'),
(892, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:29:48', '2019-10-28 17:29:48'),
(893, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:29:48', '2019-10-28 17:29:48'),
(894, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:29:48', '2019-10-28 17:29:48'),
(895, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:29:48', '2019-10-28 17:29:48'),
(896, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:29:48', '2019-10-28 17:29:48'),
(897, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:29:48', '2019-10-28 17:29:48'),
(898, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:30:38', '2019-10-28 17:30:38'),
(899, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:30:38', '2019-10-28 17:30:38'),
(900, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:30:38', '2019-10-28 17:30:38'),
(901, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:30:38', '2019-10-28 17:30:38'),
(902, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:30:38', '2019-10-28 17:30:38'),
(903, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:30:38', '2019-10-28 17:30:38'),
(904, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:44:35', '2019-10-28 17:44:35'),
(905, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:44:35', '2019-10-28 17:44:35'),
(906, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:44:35', '2019-10-28 17:44:35'),
(907, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:44:35', '2019-10-28 17:44:35'),
(908, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:44:35', '2019-10-28 17:44:35'),
(909, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:44:35', '2019-10-28 17:44:35'),
(910, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:45:09', '2019-10-28 17:45:09'),
(911, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:45:09', '2019-10-28 17:45:09'),
(912, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:45:09', '2019-10-28 17:45:09'),
(913, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:45:09', '2019-10-28 17:45:09'),
(914, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:45:09', '2019-10-28 17:45:09'),
(915, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:45:09', '2019-10-28 17:45:09'),
(916, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:45:36', '2019-10-28 17:45:36'),
(917, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:45:36', '2019-10-28 17:45:36'),
(918, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:45:36', '2019-10-28 17:45:36'),
(919, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:45:36', '2019-10-28 17:45:36'),
(920, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:45:36', '2019-10-28 17:45:36'),
(921, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:45:36', '2019-10-28 17:45:36'),
(922, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:46:16', '2019-10-28 17:46:16'),
(923, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:46:16', '2019-10-28 17:46:16'),
(924, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:46:17', '2019-10-28 17:46:17'),
(925, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:46:17', '2019-10-28 17:46:17'),
(926, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:46:17', '2019-10-28 17:46:17'),
(927, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:46:17', '2019-10-28 17:46:17'),
(928, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:46:39', '2019-10-28 17:46:39'),
(929, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:46:39', '2019-10-28 17:46:39'),
(930, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:46:39', '2019-10-28 17:46:39'),
(931, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:46:39', '2019-10-28 17:46:39'),
(932, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:46:39', '2019-10-28 17:46:39'),
(933, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:46:39', '2019-10-28 17:46:39'),
(934, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:47:11', '2019-10-28 17:47:11'),
(935, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:47:11', '2019-10-28 17:47:11'),
(936, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:47:11', '2019-10-28 17:47:11'),
(937, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:47:11', '2019-10-28 17:47:11'),
(938, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:47:11', '2019-10-28 17:47:11'),
(939, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:47:12', '2019-10-28 17:47:12'),
(940, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:48:51', '2019-10-28 17:48:51'),
(941, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:48:51', '2019-10-28 17:48:51'),
(942, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:48:51', '2019-10-28 17:48:51'),
(943, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:48:51', '2019-10-28 17:48:51'),
(944, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:48:51', '2019-10-28 17:48:51'),
(945, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:48:51', '2019-10-28 17:48:51'),
(946, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:49:31', '2019-10-28 17:49:31'),
(947, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:49:31', '2019-10-28 17:49:31'),
(948, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:49:31', '2019-10-28 17:49:31'),
(949, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:49:31', '2019-10-28 17:49:31'),
(950, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:49:31', '2019-10-28 17:49:31'),
(951, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:49:31', '2019-10-28 17:49:31'),
(952, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:52:33', '2019-10-28 17:52:33'),
(953, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:52:33', '2019-10-28 17:52:33'),
(954, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:52:33', '2019-10-28 17:52:33'),
(955, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:52:33', '2019-10-28 17:52:33'),
(956, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:52:33', '2019-10-28 17:52:33'),
(957, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:52:33', '2019-10-28 17:52:33'),
(958, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:53:02', '2019-10-28 17:53:02'),
(959, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:53:02', '2019-10-28 17:53:02'),
(960, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:53:02', '2019-10-28 17:53:02'),
(961, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:53:02', '2019-10-28 17:53:02'),
(962, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:53:02', '2019-10-28 17:53:02'),
(963, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:53:02', '2019-10-28 17:53:02'),
(964, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:53:50', '2019-10-28 17:53:50'),
(965, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:53:50', '2019-10-28 17:53:50'),
(966, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:53:50', '2019-10-28 17:53:50'),
(967, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:53:50', '2019-10-28 17:53:50'),
(968, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:53:50', '2019-10-28 17:53:50'),
(969, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:53:50', '2019-10-28 17:53:50'),
(970, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:55:06', '2019-10-28 17:55:06'),
(971, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:55:06', '2019-10-28 17:55:06'),
(972, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:55:06', '2019-10-28 17:55:06'),
(973, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:55:06', '2019-10-28 17:55:06'),
(974, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:55:06', '2019-10-28 17:55:06'),
(975, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 17:55:06', '2019-10-28 17:55:06'),
(976, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 18:20:32', '2019-10-28 18:20:32'),
(977, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 18:20:32', '2019-10-28 18:20:32'),
(978, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 18:20:32', '2019-10-28 18:20:32'),
(979, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 18:20:32', '2019-10-28 18:20:32'),
(980, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 18:20:32', '2019-10-28 18:20:32'),
(981, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 18:20:32', '2019-10-28 18:20:32'),
(982, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 18:24:38', '2019-10-28 18:24:38'),
(983, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 18:24:38', '2019-10-28 18:24:38'),
(984, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 18:24:38', '2019-10-28 18:24:38'),
(985, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 18:24:38', '2019-10-28 18:24:38'),
(986, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 18:24:38', '2019-10-28 18:24:38'),
(987, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 18:24:38', '2019-10-28 18:24:38'),
(988, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 18:24:56', '2019-10-28 18:24:56'),
(989, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 18:24:56', '2019-10-28 18:24:56'),
(990, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 18:24:56', '2019-10-28 18:24:56'),
(991, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 18:24:56', '2019-10-28 18:24:56'),
(992, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 18:24:56', '2019-10-28 18:24:56'),
(993, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 18:24:56', '2019-10-28 18:24:56'),
(994, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 18:26:31', '2019-10-28 18:26:31'),
(995, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 18:26:31', '2019-10-28 18:26:31'),
(996, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 18:26:31', '2019-10-28 18:26:31'),
(997, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 18:26:31', '2019-10-28 18:26:31'),
(998, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 18:26:31', '2019-10-28 18:26:31'),
(999, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-28 18:26:31', '2019-10-28 18:26:31'),
(1000, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 01:46:42', '2019-10-29 01:46:42'),
(1001, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 01:46:42', '2019-10-29 01:46:42'),
(1002, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 01:46:42', '2019-10-29 01:46:42'),
(1003, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 01:46:43', '2019-10-29 01:46:43'),
(1004, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 01:46:43', '2019-10-29 01:46:43'),
(1005, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 01:46:43', '2019-10-29 01:46:43'),
(1006, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 01:47:11', '2019-10-29 01:47:11'),
(1007, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 01:47:11', '2019-10-29 01:47:11'),
(1008, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 01:47:11', '2019-10-29 01:47:11'),
(1009, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 01:47:11', '2019-10-29 01:47:11'),
(1010, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 01:47:11', '2019-10-29 01:47:11'),
(1011, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 01:47:12', '2019-10-29 01:47:12');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1012, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 03:44:10', '2019-10-29 03:44:10'),
(1013, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 03:44:10', '2019-10-29 03:44:10'),
(1014, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 03:44:10', '2019-10-29 03:44:10'),
(1015, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 03:44:10', '2019-10-29 03:44:10'),
(1016, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 03:44:10', '2019-10-29 03:44:10'),
(1017, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 03:44:10', '2019-10-29 03:44:10'),
(1018, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 03:45:19', '2019-10-29 03:45:19'),
(1019, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 03:45:20', '2019-10-29 03:45:20'),
(1020, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 03:45:20', '2019-10-29 03:45:20'),
(1021, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 03:45:20', '2019-10-29 03:45:20'),
(1022, 'default', 'created', 7, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 12:56:19', '2019-10-29 12:56:19'),
(1023, 'default', 'created', 8, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 13:01:25', '2019-10-29 13:01:25'),
(1024, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 15:41:21', '2019-10-29 15:41:21'),
(1025, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 15:41:21', '2019-10-29 15:41:21'),
(1026, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 15:41:22', '2019-10-29 15:41:22'),
(1027, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 15:41:22', '2019-10-29 15:41:22'),
(1028, 'default', 'updated', 6, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 15:43:40', '2019-10-29 15:43:40'),
(1029, 'default', 'updated', 18, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 15:43:40', '2019-10-29 15:43:40'),
(1030, 'default', 'created', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-29 15:43:53', '2019-10-29 15:43:53'),
(1031, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-10-30 22:19:41', '2019-10-30 22:19:41'),
(1032, 'default', 'created', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:23:39', '2019-11-07 22:23:39'),
(1033, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:23:39', '2019-11-07 22:23:39'),
(1034, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:23:40', '2019-11-07 22:23:40'),
(1035, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:24:26', '2019-11-07 22:24:26'),
(1036, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:24:26', '2019-11-07 22:24:26'),
(1037, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:24:26', '2019-11-07 22:24:26'),
(1038, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:25:53', '2019-11-07 22:25:53'),
(1039, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:25:53', '2019-11-07 22:25:53'),
(1040, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:25:54', '2019-11-07 22:25:54'),
(1041, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:29:37', '2019-11-07 22:29:37'),
(1042, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:29:37', '2019-11-07 22:29:37'),
(1043, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:29:37', '2019-11-07 22:29:37'),
(1044, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:29:45', '2019-11-07 22:29:45'),
(1045, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:29:45', '2019-11-07 22:29:45'),
(1046, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:29:45', '2019-11-07 22:29:45'),
(1047, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:30:02', '2019-11-07 22:30:02'),
(1048, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:30:02', '2019-11-07 22:30:02'),
(1049, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:30:02', '2019-11-07 22:30:02'),
(1050, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:30:17', '2019-11-07 22:30:17'),
(1051, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:30:17', '2019-11-07 22:30:17'),
(1052, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:30:17', '2019-11-07 22:30:17'),
(1053, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:30:40', '2019-11-07 22:30:40'),
(1054, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:30:40', '2019-11-07 22:30:40'),
(1055, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:30:40', '2019-11-07 22:30:40'),
(1056, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:31:08', '2019-11-07 22:31:08'),
(1057, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:31:08', '2019-11-07 22:31:08'),
(1058, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:31:08', '2019-11-07 22:31:08'),
(1059, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:31:15', '2019-11-07 22:31:15'),
(1060, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:31:15', '2019-11-07 22:31:15'),
(1061, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:31:15', '2019-11-07 22:31:15'),
(1062, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:31:41', '2019-11-07 22:31:41'),
(1063, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:31:41', '2019-11-07 22:31:41'),
(1064, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:31:41', '2019-11-07 22:31:41'),
(1065, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:32:31', '2019-11-07 22:32:31'),
(1066, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:32:31', '2019-11-07 22:32:31'),
(1067, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:33:29', '2019-11-07 22:33:29'),
(1068, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:33:29', '2019-11-07 22:33:29'),
(1069, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:33:29', '2019-11-07 22:33:29'),
(1070, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:33:54', '2019-11-07 22:33:54'),
(1071, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:33:54', '2019-11-07 22:33:54'),
(1072, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:33:54', '2019-11-07 22:33:54'),
(1073, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:34:47', '2019-11-07 22:34:47'),
(1074, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:34:47', '2019-11-07 22:34:47'),
(1075, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:34:47', '2019-11-07 22:34:47'),
(1076, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:35:48', '2019-11-07 22:35:48'),
(1077, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:35:48', '2019-11-07 22:35:48'),
(1078, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:35:48', '2019-11-07 22:35:48'),
(1079, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:36:19', '2019-11-07 22:36:19'),
(1080, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:36:19', '2019-11-07 22:36:19'),
(1081, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:36:19', '2019-11-07 22:36:19'),
(1082, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:37:10', '2019-11-07 22:37:10'),
(1083, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:37:10', '2019-11-07 22:37:10'),
(1084, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:37:38', '2019-11-07 22:37:38'),
(1085, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:37:38', '2019-11-07 22:37:38'),
(1086, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:39:15', '2019-11-07 22:39:15'),
(1087, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:39:15', '2019-11-07 22:39:15'),
(1088, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:39:16', '2019-11-07 22:39:16'),
(1089, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:39:52', '2019-11-07 22:39:52'),
(1090, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:39:52', '2019-11-07 22:39:52'),
(1091, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:39:52', '2019-11-07 22:39:52'),
(1092, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:40:00', '2019-11-07 22:40:00'),
(1093, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:40:00', '2019-11-07 22:40:00'),
(1094, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:40:10', '2019-11-07 22:40:10'),
(1095, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:40:10', '2019-11-07 22:40:10'),
(1096, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:40:20', '2019-11-07 22:40:20'),
(1097, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:40:20', '2019-11-07 22:40:20'),
(1098, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:40:20', '2019-11-07 22:40:20'),
(1099, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:40:28', '2019-11-07 22:40:28'),
(1100, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:40:28', '2019-11-07 22:40:28'),
(1101, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:40:28', '2019-11-07 22:40:28'),
(1102, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:41:05', '2019-11-07 22:41:05'),
(1103, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:41:05', '2019-11-07 22:41:05'),
(1104, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:41:05', '2019-11-07 22:41:05'),
(1105, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:41:29', '2019-11-07 22:41:29'),
(1106, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:41:29', '2019-11-07 22:41:29'),
(1107, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:41:30', '2019-11-07 22:41:30'),
(1108, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:41:41', '2019-11-07 22:41:41'),
(1109, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:41:41', '2019-11-07 22:41:41'),
(1110, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:41:41', '2019-11-07 22:41:41'),
(1111, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:42:45', '2019-11-07 22:42:45'),
(1112, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:42:45', '2019-11-07 22:42:45'),
(1113, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:42:45', '2019-11-07 22:42:45'),
(1114, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:43:35', '2019-11-07 22:43:35'),
(1115, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:43:35', '2019-11-07 22:43:35'),
(1116, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:43:35', '2019-11-07 22:43:35'),
(1117, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:43:45', '2019-11-07 22:43:45'),
(1118, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:43:45', '2019-11-07 22:43:45'),
(1119, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:43:45', '2019-11-07 22:43:45'),
(1120, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:44:13', '2019-11-07 22:44:13'),
(1121, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:44:13', '2019-11-07 22:44:13'),
(1122, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:44:13', '2019-11-07 22:44:13'),
(1123, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:44:28', '2019-11-07 22:44:28'),
(1124, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:44:28', '2019-11-07 22:44:28'),
(1125, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:44:28', '2019-11-07 22:44:28'),
(1126, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:45:20', '2019-11-07 22:45:20'),
(1127, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:45:20', '2019-11-07 22:45:20'),
(1128, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:45:20', '2019-11-07 22:45:20'),
(1129, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:45:30', '2019-11-07 22:45:30'),
(1130, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:45:30', '2019-11-07 22:45:30'),
(1131, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:45:30', '2019-11-07 22:45:30'),
(1132, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:45:53', '2019-11-07 22:45:53'),
(1133, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:45:53', '2019-11-07 22:45:53'),
(1134, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:45:53', '2019-11-07 22:45:53'),
(1135, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:46:21', '2019-11-07 22:46:21'),
(1136, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:46:21', '2019-11-07 22:46:21'),
(1137, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:46:22', '2019-11-07 22:46:22'),
(1138, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:47:06', '2019-11-07 22:47:06'),
(1139, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:47:06', '2019-11-07 22:47:06'),
(1140, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:47:06', '2019-11-07 22:47:06'),
(1141, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:47:17', '2019-11-07 22:47:17'),
(1142, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:47:17', '2019-11-07 22:47:17'),
(1143, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:47:17', '2019-11-07 22:47:17'),
(1144, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:47:33', '2019-11-07 22:47:33'),
(1145, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:47:33', '2019-11-07 22:47:33'),
(1146, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:47:33', '2019-11-07 22:47:33'),
(1147, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:51:25', '2019-11-07 22:51:25'),
(1148, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:51:25', '2019-11-07 22:51:25'),
(1149, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:51:25', '2019-11-07 22:51:25'),
(1150, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:52:07', '2019-11-07 22:52:07'),
(1151, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:52:07', '2019-11-07 22:52:07'),
(1152, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:52:07', '2019-11-07 22:52:07'),
(1153, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:52:39', '2019-11-07 22:52:39'),
(1154, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:52:39', '2019-11-07 22:52:39'),
(1155, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-07 22:52:39', '2019-11-07 22:52:39'),
(1156, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-08 01:52:04', '2019-11-08 01:52:04'),
(1157, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-08 01:52:04', '2019-11-08 01:52:04'),
(1158, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-08 01:52:04', '2019-11-08 01:52:04'),
(1159, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-08 01:52:58', '2019-11-08 01:52:58'),
(1160, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-08 01:52:58', '2019-11-08 01:52:58'),
(1161, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-08 01:52:58', '2019-11-08 01:52:58'),
(1162, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:16:12', '2019-11-13 02:16:12'),
(1163, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:16:13', '2019-11-13 02:16:13'),
(1164, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:16:13', '2019-11-13 02:16:13'),
(1165, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:16:13', '2019-11-13 02:16:13'),
(1166, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:16:30', '2019-11-13 02:16:30'),
(1167, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:16:30', '2019-11-13 02:16:30'),
(1168, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:16:30', '2019-11-13 02:16:30'),
(1169, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:16:30', '2019-11-13 02:16:30'),
(1170, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:18:14', '2019-11-13 02:18:14'),
(1171, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:18:14', '2019-11-13 02:18:14'),
(1172, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:18:14', '2019-11-13 02:18:14'),
(1173, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:18:14', '2019-11-13 02:18:14'),
(1174, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:25:23', '2019-11-13 02:25:23'),
(1175, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:25:23', '2019-11-13 02:25:23'),
(1176, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:25:23', '2019-11-13 02:25:23'),
(1177, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:25:23', '2019-11-13 02:25:23'),
(1178, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:29:01', '2019-11-13 02:29:01'),
(1179, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:29:01', '2019-11-13 02:29:01'),
(1180, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:29:02', '2019-11-13 02:29:02'),
(1181, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:29:02', '2019-11-13 02:29:02'),
(1182, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:30:22', '2019-11-13 02:30:22'),
(1183, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:30:22', '2019-11-13 02:30:22'),
(1184, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:30:22', '2019-11-13 02:30:22'),
(1185, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:30:22', '2019-11-13 02:30:22'),
(1186, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:36:16', '2019-11-13 02:36:16'),
(1187, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:36:16', '2019-11-13 02:36:16'),
(1188, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:36:16', '2019-11-13 02:36:16'),
(1189, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:36:16', '2019-11-13 02:36:16'),
(1190, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:37:52', '2019-11-13 02:37:52'),
(1191, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:37:52', '2019-11-13 02:37:52'),
(1192, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:37:52', '2019-11-13 02:37:52'),
(1193, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:37:52', '2019-11-13 02:37:52'),
(1194, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:39:12', '2019-11-13 02:39:12'),
(1195, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:39:12', '2019-11-13 02:39:12'),
(1196, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:39:12', '2019-11-13 02:39:12'),
(1197, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:39:12', '2019-11-13 02:39:12'),
(1198, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:40:03', '2019-11-13 02:40:03'),
(1199, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:40:03', '2019-11-13 02:40:03'),
(1200, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:40:03', '2019-11-13 02:40:03'),
(1201, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:40:03', '2019-11-13 02:40:03'),
(1202, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:42:21', '2019-11-13 02:42:21'),
(1203, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:42:21', '2019-11-13 02:42:21'),
(1204, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:42:21', '2019-11-13 02:42:21'),
(1205, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:42:21', '2019-11-13 02:42:21'),
(1206, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:42:41', '2019-11-13 02:42:41'),
(1207, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:42:41', '2019-11-13 02:42:41'),
(1208, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:42:42', '2019-11-13 02:42:42'),
(1209, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:42:42', '2019-11-13 02:42:42'),
(1210, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:43:15', '2019-11-13 02:43:15'),
(1211, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:43:15', '2019-11-13 02:43:15'),
(1212, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:43:59', '2019-11-13 02:43:59'),
(1213, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:43:59', '2019-11-13 02:43:59'),
(1214, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:44:42', '2019-11-13 02:44:42'),
(1215, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:44:42', '2019-11-13 02:44:42'),
(1216, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:46:52', '2019-11-13 02:46:52'),
(1217, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:46:52', '2019-11-13 02:46:52'),
(1218, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:47:47', '2019-11-13 02:47:47'),
(1219, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:47:47', '2019-11-13 02:47:47'),
(1220, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:47:47', '2019-11-13 02:47:47'),
(1221, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:47:47', '2019-11-13 02:47:47'),
(1222, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:48:49', '2019-11-13 02:48:49'),
(1223, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:48:49', '2019-11-13 02:48:49'),
(1224, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:48:49', '2019-11-13 02:48:49'),
(1225, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:48:49', '2019-11-13 02:48:49'),
(1226, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:50:16', '2019-11-13 02:50:16'),
(1227, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:50:16', '2019-11-13 02:50:16'),
(1228, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:50:16', '2019-11-13 02:50:16'),
(1229, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:50:16', '2019-11-13 02:50:16'),
(1230, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:57:06', '2019-11-13 02:57:06'),
(1231, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:57:07', '2019-11-13 02:57:07'),
(1232, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:57:07', '2019-11-13 02:57:07'),
(1233, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 02:57:07', '2019-11-13 02:57:07'),
(1234, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 03:06:50', '2019-11-13 03:06:50'),
(1235, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 03:06:50', '2019-11-13 03:06:50'),
(1236, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 03:06:50', '2019-11-13 03:06:50'),
(1237, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 03:06:50', '2019-11-13 03:06:50'),
(1238, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 03:07:58', '2019-11-13 03:07:58'),
(1239, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 03:07:58', '2019-11-13 03:07:58'),
(1240, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 03:07:58', '2019-11-13 03:07:58'),
(1241, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 03:07:59', '2019-11-13 03:07:59'),
(1242, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 03:09:16', '2019-11-13 03:09:16'),
(1243, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 03:09:16', '2019-11-13 03:09:16'),
(1244, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 03:09:16', '2019-11-13 03:09:16'),
(1245, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 03:09:16', '2019-11-13 03:09:16'),
(1246, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 03:09:57', '2019-11-13 03:09:57'),
(1247, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 03:09:57', '2019-11-13 03:09:57'),
(1248, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 03:09:57', '2019-11-13 03:09:57'),
(1249, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 03:09:58', '2019-11-13 03:09:58'),
(1250, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 03:10:11', '2019-11-13 03:10:11'),
(1251, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 03:10:11', '2019-11-13 03:10:11'),
(1252, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 03:10:11', '2019-11-13 03:10:11'),
(1253, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-13 03:10:11', '2019-11-13 03:10:11'),
(1254, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-17 19:45:06', '2019-11-17 19:45:06'),
(1255, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-17 19:45:06', '2019-11-17 19:45:06'),
(1256, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-17 19:45:06', '2019-11-17 19:45:06'),
(1257, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-17 19:45:06', '2019-11-17 19:45:06'),
(1258, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-17 19:46:31', '2019-11-17 19:46:31'),
(1259, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-17 19:46:31', '2019-11-17 19:46:31'),
(1260, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-17 19:46:31', '2019-11-17 19:46:31'),
(1261, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-17 19:46:31', '2019-11-17 19:46:31'),
(1262, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 01:24:29', '2019-11-18 01:24:29'),
(1263, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 01:24:29', '2019-11-18 01:24:29'),
(1264, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 01:24:29', '2019-11-18 01:24:29'),
(1265, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 01:28:38', '2019-11-18 01:28:38'),
(1266, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 01:28:38', '2019-11-18 01:28:38'),
(1267, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 01:28:38', '2019-11-18 01:28:38'),
(1268, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 01:43:41', '2019-11-18 01:43:41'),
(1269, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 01:43:41', '2019-11-18 01:43:41'),
(1270, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 01:43:42', '2019-11-18 01:43:42'),
(1271, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 02:08:15', '2019-11-18 02:08:15'),
(1272, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 02:08:15', '2019-11-18 02:08:15'),
(1273, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 02:08:15', '2019-11-18 02:08:15'),
(1274, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 02:11:58', '2019-11-18 02:11:58'),
(1275, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 02:11:58', '2019-11-18 02:11:58'),
(1276, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 02:11:58', '2019-11-18 02:11:58'),
(1277, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 02:15:09', '2019-11-18 02:15:09'),
(1278, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 02:15:09', '2019-11-18 02:15:09'),
(1279, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 02:15:09', '2019-11-18 02:15:09'),
(1280, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 02:16:05', '2019-11-18 02:16:05'),
(1281, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 02:16:05', '2019-11-18 02:16:05'),
(1282, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 02:16:05', '2019-11-18 02:16:05'),
(1283, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 02:28:24', '2019-11-18 02:28:24'),
(1284, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 02:28:24', '2019-11-18 02:28:24'),
(1285, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 02:28:24', '2019-11-18 02:28:24'),
(1286, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 21:44:00', '2019-11-18 21:44:00'),
(1287, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 21:45:03', '2019-11-18 21:45:03'),
(1288, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 21:57:32', '2019-11-18 21:57:32'),
(1289, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 21:58:02', '2019-11-18 21:58:02'),
(1290, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 21:59:44', '2019-11-18 21:59:44'),
(1291, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:01:32', '2019-11-18 22:01:32'),
(1292, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:03:52', '2019-11-18 22:03:52'),
(1293, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:05:15', '2019-11-18 22:05:15'),
(1294, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:07:31', '2019-11-18 22:07:31'),
(1295, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:08:00', '2019-11-18 22:08:00'),
(1296, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:08:06', '2019-11-18 22:08:06'),
(1297, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:08:10', '2019-11-18 22:08:10'),
(1298, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:08:12', '2019-11-18 22:08:12'),
(1299, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:08:14', '2019-11-18 22:08:14'),
(1300, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:08:16', '2019-11-18 22:08:16'),
(1301, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:08:18', '2019-11-18 22:08:18'),
(1302, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:08:26', '2019-11-18 22:08:26'),
(1303, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:08:28', '2019-11-18 22:08:28'),
(1304, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:08:30', '2019-11-18 22:08:30'),
(1305, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:10:10', '2019-11-18 22:10:10'),
(1306, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:20:56', '2019-11-18 22:20:56'),
(1307, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:20:56', '2019-11-18 22:20:56'),
(1308, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:20:56', '2019-11-18 22:20:56'),
(1309, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:29:01', '2019-11-18 22:29:01'),
(1310, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:29:01', '2019-11-18 22:29:01'),
(1311, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:29:01', '2019-11-18 22:29:01'),
(1312, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:30:20', '2019-11-18 22:30:20'),
(1313, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:30:20', '2019-11-18 22:30:20'),
(1314, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:30:20', '2019-11-18 22:30:20'),
(1315, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:49:51', '2019-11-18 22:49:51'),
(1316, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:49:51', '2019-11-18 22:49:51'),
(1317, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:49:52', '2019-11-18 22:49:52'),
(1318, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:51:16', '2019-11-18 22:51:16'),
(1319, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:51:16', '2019-11-18 22:51:16'),
(1320, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:51:16', '2019-11-18 22:51:16'),
(1321, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:52:09', '2019-11-18 22:52:09'),
(1322, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:52:09', '2019-11-18 22:52:09'),
(1323, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:52:09', '2019-11-18 22:52:09'),
(1324, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:54:40', '2019-11-18 22:54:40'),
(1325, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:54:40', '2019-11-18 22:54:40'),
(1326, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:54:40', '2019-11-18 22:54:40'),
(1327, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:55:24', '2019-11-18 22:55:24'),
(1328, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:55:24', '2019-11-18 22:55:24'),
(1329, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 22:55:24', '2019-11-18 22:55:24'),
(1330, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 23:00:12', '2019-11-18 23:00:12'),
(1331, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 23:00:13', '2019-11-18 23:00:13'),
(1332, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 23:00:13', '2019-11-18 23:00:13'),
(1333, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 23:41:11', '2019-11-18 23:41:11'),
(1334, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 23:41:11', '2019-11-18 23:41:11'),
(1335, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 23:41:11', '2019-11-18 23:41:11'),
(1336, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 23:41:24', '2019-11-18 23:41:24'),
(1337, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 23:41:24', '2019-11-18 23:41:24'),
(1338, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 23:41:24', '2019-11-18 23:41:24'),
(1339, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 23:46:40', '2019-11-18 23:46:40'),
(1340, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 23:46:40', '2019-11-18 23:46:40'),
(1341, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-18 23:46:40', '2019-11-18 23:46:40'),
(1342, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-19 06:32:11', '2019-11-19 06:32:11'),
(1343, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-19 06:33:16', '2019-11-19 06:33:16'),
(1344, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-19 23:25:19', '2019-11-19 23:25:19'),
(1345, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-19 23:25:19', '2019-11-19 23:25:19');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1346, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-19 23:25:19', '2019-11-19 23:25:19'),
(1347, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 17:20:58', '2019-11-20 17:20:58'),
(1348, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 17:20:58', '2019-11-20 17:20:58'),
(1349, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 17:20:58', '2019-11-20 17:20:58'),
(1350, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 17:26:06', '2019-11-20 17:26:06'),
(1351, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 17:26:06', '2019-11-20 17:26:06'),
(1352, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 17:26:06', '2019-11-20 17:26:06'),
(1353, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 17:26:40', '2019-11-20 17:26:40'),
(1354, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 17:26:40', '2019-11-20 17:26:40'),
(1355, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 17:26:40', '2019-11-20 17:26:40'),
(1356, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 17:27:49', '2019-11-20 17:27:49'),
(1357, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 17:27:49', '2019-11-20 17:27:49'),
(1358, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 17:27:49', '2019-11-20 17:27:49'),
(1359, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:37:09', '2019-11-20 19:37:09'),
(1360, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:37:09', '2019-11-20 19:37:09'),
(1361, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:37:09', '2019-11-20 19:37:09'),
(1362, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:38:12', '2019-11-20 19:38:12'),
(1363, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:38:12', '2019-11-20 19:38:12'),
(1364, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:38:12', '2019-11-20 19:38:12'),
(1365, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:39:04', '2019-11-20 19:39:04'),
(1366, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:39:04', '2019-11-20 19:39:04'),
(1367, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:39:04', '2019-11-20 19:39:04'),
(1368, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:42:59', '2019-11-20 19:42:59'),
(1369, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:42:59', '2019-11-20 19:42:59'),
(1370, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:42:59', '2019-11-20 19:42:59'),
(1371, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:43:34', '2019-11-20 19:43:34'),
(1372, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:43:34', '2019-11-20 19:43:34'),
(1373, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:43:34', '2019-11-20 19:43:34'),
(1374, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:44:04', '2019-11-20 19:44:04'),
(1375, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:44:04', '2019-11-20 19:44:04'),
(1376, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:44:04', '2019-11-20 19:44:04'),
(1377, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:44:48', '2019-11-20 19:44:48'),
(1378, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:44:48', '2019-11-20 19:44:48'),
(1379, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:44:48', '2019-11-20 19:44:48'),
(1380, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:45:49', '2019-11-20 19:45:49'),
(1381, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:45:49', '2019-11-20 19:45:49'),
(1382, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:45:49', '2019-11-20 19:45:49'),
(1383, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:46:05', '2019-11-20 19:46:05'),
(1384, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:46:05', '2019-11-20 19:46:05'),
(1385, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:46:05', '2019-11-20 19:46:05'),
(1386, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:46:44', '2019-11-20 19:46:44'),
(1387, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:46:44', '2019-11-20 19:46:44'),
(1388, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:46:44', '2019-11-20 19:46:44'),
(1389, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:47:45', '2019-11-20 19:47:45'),
(1390, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:47:45', '2019-11-20 19:47:45'),
(1391, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:47:45', '2019-11-20 19:47:45'),
(1392, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:47:59', '2019-11-20 19:47:59'),
(1393, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:47:59', '2019-11-20 19:47:59'),
(1394, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 19:47:59', '2019-11-20 19:47:59'),
(1395, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:09:13', '2019-11-20 20:09:13'),
(1396, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:09:13', '2019-11-20 20:09:13'),
(1397, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:09:13', '2019-11-20 20:09:13'),
(1398, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:11:34', '2019-11-20 20:11:34'),
(1399, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:11:34', '2019-11-20 20:11:34'),
(1400, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:11:34', '2019-11-20 20:11:34'),
(1401, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:12:07', '2019-11-20 20:12:07'),
(1402, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:12:07', '2019-11-20 20:12:07'),
(1403, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:12:07', '2019-11-20 20:12:07'),
(1404, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:12:39', '2019-11-20 20:12:39'),
(1405, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:12:39', '2019-11-20 20:12:39'),
(1406, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:12:40', '2019-11-20 20:12:40'),
(1407, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:12:54', '2019-11-20 20:12:54'),
(1408, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:12:54', '2019-11-20 20:12:54'),
(1409, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:12:54', '2019-11-20 20:12:54'),
(1410, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:13:04', '2019-11-20 20:13:04'),
(1411, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:13:04', '2019-11-20 20:13:04'),
(1412, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:13:04', '2019-11-20 20:13:04'),
(1413, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:13:25', '2019-11-20 20:13:25'),
(1414, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:13:25', '2019-11-20 20:13:25'),
(1415, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:13:25', '2019-11-20 20:13:25'),
(1416, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:14:34', '2019-11-20 20:14:34'),
(1417, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:14:34', '2019-11-20 20:14:34'),
(1418, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:14:34', '2019-11-20 20:14:34'),
(1419, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:15:12', '2019-11-20 20:15:12'),
(1420, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:15:12', '2019-11-20 20:15:12'),
(1421, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:15:12', '2019-11-20 20:15:12'),
(1422, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:19:03', '2019-11-20 20:19:03'),
(1423, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:19:03', '2019-11-20 20:19:03'),
(1424, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:19:03', '2019-11-20 20:19:03'),
(1425, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:19:52', '2019-11-20 20:19:52'),
(1426, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:19:52', '2019-11-20 20:19:52'),
(1427, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:19:52', '2019-11-20 20:19:52'),
(1428, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:20:24', '2019-11-20 20:20:24'),
(1429, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:20:24', '2019-11-20 20:20:24'),
(1430, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:20:24', '2019-11-20 20:20:24'),
(1431, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:20:51', '2019-11-20 20:20:51'),
(1432, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:20:51', '2019-11-20 20:20:51'),
(1433, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:20:51', '2019-11-20 20:20:51'),
(1434, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:21:20', '2019-11-20 20:21:20'),
(1435, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:21:20', '2019-11-20 20:21:20'),
(1436, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:21:20', '2019-11-20 20:21:20'),
(1437, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:21:37', '2019-11-20 20:21:37'),
(1438, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:21:37', '2019-11-20 20:21:37'),
(1439, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:21:37', '2019-11-20 20:21:37'),
(1440, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:24:54', '2019-11-20 20:24:54'),
(1441, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:24:54', '2019-11-20 20:24:54'),
(1442, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:24:54', '2019-11-20 20:24:54'),
(1443, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:25:28', '2019-11-20 20:25:28'),
(1444, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:25:28', '2019-11-20 20:25:28'),
(1445, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:25:28', '2019-11-20 20:25:28'),
(1446, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:25:58', '2019-11-20 20:25:58'),
(1447, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:25:59', '2019-11-20 20:25:59'),
(1448, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:25:59', '2019-11-20 20:25:59'),
(1449, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:33:18', '2019-11-20 20:33:18'),
(1450, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:33:18', '2019-11-20 20:33:18'),
(1451, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:33:18', '2019-11-20 20:33:18'),
(1452, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:35:50', '2019-11-20 20:35:50'),
(1453, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:35:50', '2019-11-20 20:35:50'),
(1454, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:35:50', '2019-11-20 20:35:50'),
(1455, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:36:32', '2019-11-20 20:36:32'),
(1456, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:36:32', '2019-11-20 20:36:32'),
(1457, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:36:32', '2019-11-20 20:36:32'),
(1458, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:37:01', '2019-11-20 20:37:01'),
(1459, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:37:01', '2019-11-20 20:37:01'),
(1460, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:37:01', '2019-11-20 20:37:01'),
(1461, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:41:47', '2019-11-20 20:41:47'),
(1462, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:41:47', '2019-11-20 20:41:47'),
(1463, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:41:47', '2019-11-20 20:41:47'),
(1464, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:42:51', '2019-11-20 20:42:51'),
(1465, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:42:51', '2019-11-20 20:42:51'),
(1466, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:42:51', '2019-11-20 20:42:51'),
(1467, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:42:57', '2019-11-20 20:42:57'),
(1468, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:42:57', '2019-11-20 20:42:57'),
(1469, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:42:57', '2019-11-20 20:42:57'),
(1470, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:44:03', '2019-11-20 20:44:03'),
(1471, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:44:03', '2019-11-20 20:44:03'),
(1472, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:44:03', '2019-11-20 20:44:03'),
(1473, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:44:44', '2019-11-20 20:44:44'),
(1474, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:44:44', '2019-11-20 20:44:44'),
(1475, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 20:44:44', '2019-11-20 20:44:44'),
(1476, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:10:49', '2019-11-20 21:10:49'),
(1477, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:10:49', '2019-11-20 21:10:49'),
(1478, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:10:49', '2019-11-20 21:10:49'),
(1479, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:15:43', '2019-11-20 21:15:43'),
(1480, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:15:43', '2019-11-20 21:15:43'),
(1481, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:15:43', '2019-11-20 21:15:43'),
(1482, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:17:17', '2019-11-20 21:17:17'),
(1483, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:17:17', '2019-11-20 21:17:17'),
(1484, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:17:17', '2019-11-20 21:17:17'),
(1485, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:17:23', '2019-11-20 21:17:23'),
(1486, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:17:23', '2019-11-20 21:17:23'),
(1487, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:17:23', '2019-11-20 21:17:23'),
(1488, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:19:00', '2019-11-20 21:19:00'),
(1489, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:19:00', '2019-11-20 21:19:00'),
(1490, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:19:00', '2019-11-20 21:19:00'),
(1491, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:20:27', '2019-11-20 21:20:27'),
(1492, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:20:27', '2019-11-20 21:20:27'),
(1493, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:20:27', '2019-11-20 21:20:27'),
(1494, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:22:58', '2019-11-20 21:22:58'),
(1495, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:22:58', '2019-11-20 21:22:58'),
(1496, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:22:58', '2019-11-20 21:22:58'),
(1497, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:28:17', '2019-11-20 21:28:17'),
(1498, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:28:17', '2019-11-20 21:28:17'),
(1499, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:28:17', '2019-11-20 21:28:17'),
(1500, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:28:17', '2019-11-20 21:28:17'),
(1501, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:31:32', '2019-11-20 21:31:32'),
(1502, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:31:32', '2019-11-20 21:31:32'),
(1503, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:31:33', '2019-11-20 21:31:33'),
(1504, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:31:33', '2019-11-20 21:31:33'),
(1505, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:33:59', '2019-11-20 21:33:59'),
(1506, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:33:59', '2019-11-20 21:33:59'),
(1507, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 21:33:59', '2019-11-20 21:33:59'),
(1508, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:06:45', '2019-11-20 22:06:45'),
(1509, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:06:45', '2019-11-20 22:06:45'),
(1510, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:06:45', '2019-11-20 22:06:45'),
(1511, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:07:15', '2019-11-20 22:07:15'),
(1512, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:07:16', '2019-11-20 22:07:16'),
(1513, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:07:16', '2019-11-20 22:07:16'),
(1514, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:07:23', '2019-11-20 22:07:23'),
(1515, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:07:23', '2019-11-20 22:07:23'),
(1516, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:07:23', '2019-11-20 22:07:23'),
(1517, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:07:42', '2019-11-20 22:07:42'),
(1518, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:07:42', '2019-11-20 22:07:42'),
(1519, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:07:42', '2019-11-20 22:07:42'),
(1520, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:08:00', '2019-11-20 22:08:00'),
(1521, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:08:01', '2019-11-20 22:08:01'),
(1522, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:08:01', '2019-11-20 22:08:01'),
(1523, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:08:12', '2019-11-20 22:08:12'),
(1524, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:08:12', '2019-11-20 22:08:12'),
(1525, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:08:12', '2019-11-20 22:08:12'),
(1526, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:08:26', '2019-11-20 22:08:26'),
(1527, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:08:26', '2019-11-20 22:08:26'),
(1528, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:08:26', '2019-11-20 22:08:26'),
(1529, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:08:37', '2019-11-20 22:08:37'),
(1530, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:08:37', '2019-11-20 22:08:37'),
(1531, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:08:37', '2019-11-20 22:08:37'),
(1532, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:08:50', '2019-11-20 22:08:50'),
(1533, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:08:50', '2019-11-20 22:08:50'),
(1534, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 22:08:50', '2019-11-20 22:08:50'),
(1535, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:28:29', '2019-11-20 23:28:29'),
(1536, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:28:29', '2019-11-20 23:28:29'),
(1537, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:28:29', '2019-11-20 23:28:29'),
(1538, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:28:45', '2019-11-20 23:28:45'),
(1539, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:28:45', '2019-11-20 23:28:45'),
(1540, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:28:45', '2019-11-20 23:28:45'),
(1541, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:28:54', '2019-11-20 23:28:54'),
(1542, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:28:54', '2019-11-20 23:28:54'),
(1543, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:28:54', '2019-11-20 23:28:54'),
(1544, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:29:13', '2019-11-20 23:29:13'),
(1545, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:29:13', '2019-11-20 23:29:13'),
(1546, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:29:13', '2019-11-20 23:29:13'),
(1547, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:38:06', '2019-11-20 23:38:06'),
(1548, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:38:06', '2019-11-20 23:38:06'),
(1549, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:38:06', '2019-11-20 23:38:06'),
(1550, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:38:17', '2019-11-20 23:38:17'),
(1551, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:38:17', '2019-11-20 23:38:17'),
(1552, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:38:17', '2019-11-20 23:38:17'),
(1553, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:38:39', '2019-11-20 23:38:39'),
(1554, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:38:39', '2019-11-20 23:38:39'),
(1555, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:38:39', '2019-11-20 23:38:39'),
(1556, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:39:00', '2019-11-20 23:39:00'),
(1557, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:39:00', '2019-11-20 23:39:00'),
(1558, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:39:00', '2019-11-20 23:39:00'),
(1559, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:45:17', '2019-11-20 23:45:17'),
(1560, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:45:17', '2019-11-20 23:45:17'),
(1561, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:45:17', '2019-11-20 23:45:17'),
(1562, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:45:42', '2019-11-20 23:45:42'),
(1563, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:45:42', '2019-11-20 23:45:42'),
(1564, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:45:42', '2019-11-20 23:45:42'),
(1565, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:46:20', '2019-11-20 23:46:20'),
(1566, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:46:20', '2019-11-20 23:46:20'),
(1567, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:46:20', '2019-11-20 23:46:20'),
(1568, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:46:20', '2019-11-20 23:46:20'),
(1569, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:46:52', '2019-11-20 23:46:52'),
(1570, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:47:18', '2019-11-20 23:47:18'),
(1571, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:47:24', '2019-11-20 23:47:24'),
(1572, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:48:56', '2019-11-20 23:48:56'),
(1573, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:48:56', '2019-11-20 23:48:56'),
(1574, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:48:56', '2019-11-20 23:48:56'),
(1575, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-20 23:48:56', '2019-11-20 23:48:56'),
(1576, 'default', 'created', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:04:47', '2019-11-21 01:04:47'),
(1577, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:04:47', '2019-11-21 01:04:47'),
(1578, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:04:47', '2019-11-21 01:04:47'),
(1579, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:04:47', '2019-11-21 01:04:47'),
(1580, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:04:47', '2019-11-21 01:04:47'),
(1581, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:04:47', '2019-11-21 01:04:47'),
(1582, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:04:47', '2019-11-21 01:04:47'),
(1583, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:04:47', '2019-11-21 01:04:47'),
(1584, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:04:48', '2019-11-21 01:04:48'),
(1585, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:05:16', '2019-11-21 01:05:16'),
(1586, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:05:16', '2019-11-21 01:05:16'),
(1587, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:05:16', '2019-11-21 01:05:16'),
(1588, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:05:16', '2019-11-21 01:05:16'),
(1589, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:05:16', '2019-11-21 01:05:16'),
(1590, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:05:16', '2019-11-21 01:05:16'),
(1591, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:05:16', '2019-11-21 01:05:16'),
(1592, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:05:16', '2019-11-21 01:05:16'),
(1593, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:05:16', '2019-11-21 01:05:16'),
(1594, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:06:12', '2019-11-21 01:06:12'),
(1595, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:06:12', '2019-11-21 01:06:12'),
(1596, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:06:12', '2019-11-21 01:06:12'),
(1597, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:06:12', '2019-11-21 01:06:12'),
(1598, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:06:12', '2019-11-21 01:06:12'),
(1599, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:06:12', '2019-11-21 01:06:12'),
(1600, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:06:12', '2019-11-21 01:06:12'),
(1601, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:06:12', '2019-11-21 01:06:12'),
(1602, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:06:12', '2019-11-21 01:06:12'),
(1603, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:06:37', '2019-11-21 01:06:37'),
(1604, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:06:37', '2019-11-21 01:06:37'),
(1605, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:06:37', '2019-11-21 01:06:37'),
(1606, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:06:37', '2019-11-21 01:06:37'),
(1607, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:06:37', '2019-11-21 01:06:37'),
(1608, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:06:37', '2019-11-21 01:06:37'),
(1609, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:06:37', '2019-11-21 01:06:37'),
(1610, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:06:37', '2019-11-21 01:06:37'),
(1611, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:06:37', '2019-11-21 01:06:37'),
(1612, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:07:11', '2019-11-21 01:07:11'),
(1613, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:07:15', '2019-11-21 01:07:15'),
(1614, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:07:20', '2019-11-21 01:07:20'),
(1615, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:07:25', '2019-11-21 01:07:25'),
(1616, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:07:28', '2019-11-21 01:07:28'),
(1617, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:08:12', '2019-11-21 01:08:12'),
(1618, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:08:12', '2019-11-21 01:08:12'),
(1619, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:08:12', '2019-11-21 01:08:12'),
(1620, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:08:12', '2019-11-21 01:08:12'),
(1621, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:08:12', '2019-11-21 01:08:12'),
(1622, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:10:19', '2019-11-21 01:10:19'),
(1623, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:10:19', '2019-11-21 01:10:19'),
(1624, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:10:20', '2019-11-21 01:10:20'),
(1625, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:10:20', '2019-11-21 01:10:20'),
(1626, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:10:20', '2019-11-21 01:10:20'),
(1627, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:10:20', '2019-11-21 01:10:20'),
(1628, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:12:25', '2019-11-21 01:12:25'),
(1629, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:12:25', '2019-11-21 01:12:25'),
(1630, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:12:25', '2019-11-21 01:12:25'),
(1631, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:12:25', '2019-11-21 01:12:25'),
(1632, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:12:25', '2019-11-21 01:12:25'),
(1633, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:12:25', '2019-11-21 01:12:25'),
(1634, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:12:55', '2019-11-21 01:12:55'),
(1635, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:12:55', '2019-11-21 01:12:55'),
(1636, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:12:55', '2019-11-21 01:12:55'),
(1637, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:12:55', '2019-11-21 01:12:55'),
(1638, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:12:55', '2019-11-21 01:12:55'),
(1639, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:12:55', '2019-11-21 01:12:55'),
(1640, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:14:25', '2019-11-21 01:14:25'),
(1641, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:14:26', '2019-11-21 01:14:26'),
(1642, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:14:26', '2019-11-21 01:14:26'),
(1643, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:14:26', '2019-11-21 01:14:26'),
(1644, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:14:26', '2019-11-21 01:14:26'),
(1645, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:14:26', '2019-11-21 01:14:26'),
(1646, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:15:55', '2019-11-21 01:15:55'),
(1647, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:15:56', '2019-11-21 01:15:56'),
(1648, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:15:56', '2019-11-21 01:15:56'),
(1649, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:15:56', '2019-11-21 01:15:56'),
(1650, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:15:56', '2019-11-21 01:15:56'),
(1651, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:25:38', '2019-11-21 01:25:38'),
(1652, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:25:38', '2019-11-21 01:25:38'),
(1653, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:25:38', '2019-11-21 01:25:38'),
(1654, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:25:38', '2019-11-21 01:25:38'),
(1655, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:25:38', '2019-11-21 01:25:38'),
(1656, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:27:46', '2019-11-21 01:27:46'),
(1657, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:27:46', '2019-11-21 01:27:46'),
(1658, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:27:46', '2019-11-21 01:27:46'),
(1659, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:27:46', '2019-11-21 01:27:46'),
(1660, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:27:46', '2019-11-21 01:27:46'),
(1661, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:31:40', '2019-11-21 01:31:40'),
(1662, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:31:40', '2019-11-21 01:31:40'),
(1663, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:31:40', '2019-11-21 01:31:40'),
(1664, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:31:40', '2019-11-21 01:31:40'),
(1665, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:31:40', '2019-11-21 01:31:40'),
(1666, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:32:14', '2019-11-21 01:32:14'),
(1667, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:32:14', '2019-11-21 01:32:14'),
(1668, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:32:14', '2019-11-21 01:32:14'),
(1669, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:32:14', '2019-11-21 01:32:14'),
(1670, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:32:14', '2019-11-21 01:32:14'),
(1671, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:34:14', '2019-11-21 01:34:14'),
(1672, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:34:14', '2019-11-21 01:34:14'),
(1673, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:34:14', '2019-11-21 01:34:14'),
(1674, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:34:14', '2019-11-21 01:34:14'),
(1675, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:34:14', '2019-11-21 01:34:14'),
(1676, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:40:00', '2019-11-21 01:40:00'),
(1677, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:40:00', '2019-11-21 01:40:00'),
(1678, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:40:00', '2019-11-21 01:40:00'),
(1679, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:40:00', '2019-11-21 01:40:00');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1680, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:40:00', '2019-11-21 01:40:00'),
(1681, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:40:10', '2019-11-21 01:40:10'),
(1682, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:40:10', '2019-11-21 01:40:10'),
(1683, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:40:10', '2019-11-21 01:40:10'),
(1684, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:40:10', '2019-11-21 01:40:10'),
(1685, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:40:10', '2019-11-21 01:40:10'),
(1686, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:41:04', '2019-11-21 01:41:04'),
(1687, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:41:04', '2019-11-21 01:41:04'),
(1688, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:41:04', '2019-11-21 01:41:04'),
(1689, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:41:04', '2019-11-21 01:41:04'),
(1690, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:41:04', '2019-11-21 01:41:04'),
(1691, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:41:13', '2019-11-21 01:41:13'),
(1692, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:41:13', '2019-11-21 01:41:13'),
(1693, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:41:13', '2019-11-21 01:41:13'),
(1694, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:41:13', '2019-11-21 01:41:13'),
(1695, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 01:41:13', '2019-11-21 01:41:13'),
(1696, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 02:22:03', '2019-11-21 02:22:03'),
(1697, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 02:22:03', '2019-11-21 02:22:03'),
(1698, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 02:22:03', '2019-11-21 02:22:03'),
(1699, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 02:22:03', '2019-11-21 02:22:03'),
(1700, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 02:22:29', '2019-11-21 02:22:29'),
(1701, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 02:22:29', '2019-11-21 02:22:29'),
(1702, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 02:22:29', '2019-11-21 02:22:29'),
(1703, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-21 02:22:29', '2019-11-21 02:22:29'),
(1704, 'default', 'created', 10, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-22 02:24:23', '2019-11-22 02:24:23'),
(1705, 'default', 'updated', 9, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-22 03:20:27', '2019-11-22 03:20:27'),
(1706, 'default', 'updated', 20, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-22 03:20:27', '2019-11-22 03:20:27'),
(1707, 'default', 'created', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-22 03:30:14', '2019-11-22 03:30:14'),
(1708, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-23 17:10:53', '2019-11-23 17:10:53'),
(1709, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-23 17:13:32', '2019-11-23 17:13:32'),
(1710, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-23 17:13:43', '2019-11-23 17:13:43'),
(1711, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-23 17:14:49', '2019-11-23 17:14:49'),
(1712, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-23 17:15:01', '2019-11-23 17:15:01'),
(1713, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-23 17:16:32', '2019-11-23 17:16:32'),
(1714, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-23 17:16:43', '2019-11-23 17:16:43'),
(1715, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-23 17:23:52', '2019-11-23 17:23:52'),
(1716, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-23 17:23:55', '2019-11-23 17:23:55'),
(1717, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-23 17:23:59', '2019-11-23 17:23:59'),
(1718, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-23 17:24:38', '2019-11-23 17:24:38'),
(1719, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-23 17:25:45', '2019-11-23 17:25:45'),
(1720, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-23 17:25:47', '2019-11-23 17:25:47'),
(1721, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-26 22:49:28', '2019-11-26 22:49:28'),
(1722, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 00:03:19', '2019-11-27 00:03:19'),
(1723, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 00:03:21', '2019-11-27 00:03:21'),
(1724, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 00:03:33', '2019-11-27 00:03:33'),
(1725, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 00:58:40', '2019-11-27 00:58:40'),
(1726, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 00:58:42', '2019-11-27 00:58:42'),
(1727, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 03:10:15', '2019-11-27 03:10:15'),
(1728, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 03:36:23', '2019-11-27 03:36:23'),
(1729, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 03:45:49', '2019-11-27 03:45:49'),
(1730, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 03:45:56', '2019-11-27 03:45:56'),
(1731, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 03:49:29', '2019-11-27 03:49:29'),
(1732, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 03:50:24', '2019-11-27 03:50:24'),
(1733, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 03:50:41', '2019-11-27 03:50:41'),
(1734, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 03:50:43', '2019-11-27 03:50:43'),
(1735, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 03:51:38', '2019-11-27 03:51:38'),
(1736, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 03:51:40', '2019-11-27 03:51:40'),
(1737, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 03:51:42', '2019-11-27 03:51:42'),
(1738, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 03:51:44', '2019-11-27 03:51:44'),
(1739, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 03:51:45', '2019-11-27 03:51:45'),
(1740, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 03:51:48', '2019-11-27 03:51:48'),
(1741, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 03:55:52', '2019-11-27 03:55:52'),
(1742, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 03:55:55', '2019-11-27 03:55:55'),
(1743, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 03:56:31', '2019-11-27 03:56:31'),
(1744, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:06:46', '2019-11-27 04:06:46'),
(1745, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:09:33', '2019-11-27 04:09:33'),
(1746, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:09:41', '2019-11-27 04:09:41'),
(1747, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:12:00', '2019-11-27 04:12:00'),
(1748, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:12:37', '2019-11-27 04:12:37'),
(1749, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:12:39', '2019-11-27 04:12:39'),
(1750, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:12:44', '2019-11-27 04:12:44'),
(1751, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:12:49', '2019-11-27 04:12:49'),
(1752, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:13:17', '2019-11-27 04:13:17'),
(1753, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:13:22', '2019-11-27 04:13:22'),
(1754, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:13:28', '2019-11-27 04:13:28'),
(1755, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:13:31', '2019-11-27 04:13:31'),
(1756, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:14:23', '2019-11-27 04:14:23'),
(1757, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:14:48', '2019-11-27 04:14:48'),
(1758, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:14:59', '2019-11-27 04:14:59'),
(1759, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:15:10', '2019-11-27 04:15:10'),
(1760, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:15:42', '2019-11-27 04:15:42'),
(1761, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:15:48', '2019-11-27 04:15:48'),
(1762, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:17:13', '2019-11-27 04:17:13'),
(1763, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:17:51', '2019-11-27 04:17:51'),
(1764, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:18:42', '2019-11-27 04:18:42'),
(1765, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:18:51', '2019-11-27 04:18:51'),
(1766, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:20:18', '2019-11-27 04:20:18'),
(1767, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:20:24', '2019-11-27 04:20:24'),
(1768, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:20:45', '2019-11-27 04:20:45'),
(1769, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:20:51', '2019-11-27 04:20:51'),
(1770, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:20:55', '2019-11-27 04:20:55'),
(1771, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:22:40', '2019-11-27 04:22:40'),
(1772, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:22:48', '2019-11-27 04:22:48'),
(1773, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:41:06', '2019-11-27 04:41:06'),
(1774, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:41:14', '2019-11-27 04:41:14'),
(1775, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:42:58', '2019-11-27 04:42:58'),
(1776, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:43:04', '2019-11-27 04:43:04'),
(1777, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:43:26', '2019-11-27 04:43:26'),
(1778, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:43:35', '2019-11-27 04:43:35'),
(1779, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:45:06', '2019-11-27 04:45:06'),
(1780, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:45:13', '2019-11-27 04:45:13'),
(1781, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:46:05', '2019-11-27 04:46:05'),
(1782, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:46:13', '2019-11-27 04:46:13'),
(1783, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:47:27', '2019-11-27 04:47:27'),
(1784, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:47:33', '2019-11-27 04:47:33'),
(1785, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:51:29', '2019-11-27 04:51:29'),
(1786, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:51:43', '2019-11-27 04:51:43'),
(1787, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:51:49', '2019-11-27 04:51:49'),
(1788, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 04:51:53', '2019-11-27 04:51:53'),
(1789, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:14:09', '2019-11-27 13:14:09'),
(1790, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:16:29', '2019-11-27 13:16:29'),
(1791, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:17:27', '2019-11-27 13:17:27'),
(1792, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:17:33', '2019-11-27 13:17:33'),
(1793, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:19:22', '2019-11-27 13:19:22'),
(1794, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:19:27', '2019-11-27 13:19:27'),
(1795, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:20:02', '2019-11-27 13:20:02'),
(1796, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:20:08', '2019-11-27 13:20:08'),
(1797, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:21:13', '2019-11-27 13:21:13'),
(1798, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:21:19', '2019-11-27 13:21:19'),
(1799, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:21:59', '2019-11-27 13:21:59'),
(1800, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:22:05', '2019-11-27 13:22:05'),
(1801, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:23:19', '2019-11-27 13:23:19'),
(1802, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:23:25', '2019-11-27 13:23:25'),
(1803, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:24:11', '2019-11-27 13:24:11'),
(1804, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:24:17', '2019-11-27 13:24:17'),
(1805, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:25:47', '2019-11-27 13:25:47'),
(1806, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:25:52', '2019-11-27 13:25:52'),
(1807, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:28:04', '2019-11-27 13:28:04'),
(1808, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:28:08', '2019-11-27 13:28:08'),
(1809, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:29:25', '2019-11-27 13:29:25'),
(1810, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:29:31', '2019-11-27 13:29:31'),
(1811, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:35:00', '2019-11-27 13:35:00'),
(1812, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:35:04', '2019-11-27 13:35:04'),
(1813, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:36:57', '2019-11-27 13:36:57'),
(1814, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:37:01', '2019-11-27 13:37:01'),
(1815, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:37:48', '2019-11-27 13:37:48'),
(1816, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:37:53', '2019-11-27 13:37:53'),
(1817, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:38:57', '2019-11-27 13:38:57'),
(1818, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:39:04', '2019-11-27 13:39:04'),
(1819, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:39:43', '2019-11-27 13:39:43'),
(1820, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:39:48', '2019-11-27 13:39:48'),
(1821, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:40:23', '2019-11-27 13:40:23'),
(1822, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:40:30', '2019-11-27 13:40:30'),
(1823, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:42:48', '2019-11-27 13:42:48'),
(1824, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:42:53', '2019-11-27 13:42:53'),
(1825, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:58:16', '2019-11-27 13:58:16'),
(1826, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:58:16', '2019-11-27 13:58:16'),
(1827, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 13:58:16', '2019-11-27 13:58:16'),
(1828, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 14:00:02', '2019-11-27 14:00:02'),
(1829, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 14:00:02', '2019-11-27 14:00:02'),
(1830, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 14:00:02', '2019-11-27 14:00:02'),
(1831, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 14:00:24', '2019-11-27 14:00:24'),
(1832, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 14:00:24', '2019-11-27 14:00:24'),
(1833, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 14:00:24', '2019-11-27 14:00:24'),
(1834, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 14:04:44', '2019-11-27 14:04:44'),
(1835, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 14:04:44', '2019-11-27 14:04:44'),
(1836, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 14:04:44', '2019-11-27 14:04:44'),
(1837, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 14:05:35', '2019-11-27 14:05:35'),
(1838, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 14:05:35', '2019-11-27 14:05:35'),
(1839, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 14:05:35', '2019-11-27 14:05:35'),
(1840, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 14:05:50', '2019-11-27 14:05:50'),
(1841, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 14:05:50', '2019-11-27 14:05:50'),
(1842, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-27 14:05:50', '2019-11-27 14:05:50'),
(1843, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-29 00:38:32', '2019-11-29 00:38:32'),
(1844, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-29 00:38:32', '2019-11-29 00:38:32'),
(1845, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-29 00:38:32', '2019-11-29 00:38:32'),
(1846, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-29 00:48:26', '2019-11-29 00:48:26'),
(1847, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-29 00:48:26', '2019-11-29 00:48:26'),
(1848, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-29 00:48:26', '2019-11-29 00:48:26'),
(1849, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-29 10:59:18', '2019-11-29 10:59:18'),
(1850, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-29 10:59:18', '2019-11-29 10:59:18'),
(1851, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-29 10:59:18', '2019-11-29 10:59:18'),
(1852, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-29 11:00:56', '2019-11-29 11:00:56'),
(1853, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-29 11:00:56', '2019-11-29 11:00:56'),
(1854, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-29 11:00:56', '2019-11-29 11:00:56'),
(1855, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-29 11:01:33', '2019-11-29 11:01:33'),
(1856, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-29 11:01:33', '2019-11-29 11:01:33'),
(1857, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-29 11:01:33', '2019-11-29 11:01:33'),
(1858, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-11-29 20:57:16', '2019-11-29 20:57:16'),
(1859, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-13 18:48:27', '2019-12-13 18:48:27'),
(1860, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-13 18:48:27', '2019-12-13 18:48:27'),
(1861, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-13 18:48:27', '2019-12-13 18:48:27'),
(1862, 'default', 'updated', 19, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-13 18:49:52', '2019-12-13 18:49:52'),
(1863, 'default', 'created', 21, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-13 18:51:28', '2019-12-13 18:51:28'),
(1864, 'default', 'updated', 21, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-13 18:51:29', '2019-12-13 18:51:29'),
(1865, 'default', 'updated', 21, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-13 18:51:29', '2019-12-13 18:51:29'),
(1866, 'default', 'updated', 21, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-13 18:54:10', '2019-12-13 18:54:10'),
(1867, 'default', 'updated', 21, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-13 18:54:10', '2019-12-13 18:54:10'),
(1868, 'default', 'updated', 21, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-13 18:54:10', '2019-12-13 18:54:10'),
(1869, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-24 18:40:11', '2019-12-24 18:40:11'),
(1870, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-25 00:24:08', '2019-12-25 00:24:08'),
(1871, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-25 04:11:19', '2019-12-25 04:11:19'),
(1872, 'default', 'created', 7, 'App\\Models\\User', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-25 15:03:01', '2019-12-25 15:03:01'),
(1873, 'default', 'updated', 7, 'App\\Models\\User', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-25 15:03:01', '2019-12-25 15:03:01'),
(1874, 'default', 'updated', 7, 'App\\Models\\User', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-25 15:03:01', '2019-12-25 15:03:01'),
(1875, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-25 15:03:06', '2019-12-25 15:03:06'),
(1876, 'default', 'updated', 7, 'App\\Models\\User', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-25 15:03:06', '2019-12-25 15:03:06'),
(1877, 'default', 'updated', 7, 'App\\Models\\User', 7, 'App\\Models\\User', '{\"ip\":\"127.0.0.1\"}', '2019-12-25 15:14:14', '2019-12-25 15:14:14'),
(1878, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-30 17:29:24', '2019-12-30 17:29:24'),
(1879, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-30 17:29:26', '2019-12-30 17:29:26'),
(1880, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-30 17:29:43', '2019-12-30 17:29:43'),
(1881, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-30 17:29:51', '2019-12-30 17:29:51'),
(1882, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-30 17:30:31', '2019-12-30 17:30:31'),
(1883, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-30 17:31:10', '2019-12-30 17:31:10'),
(1884, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-30 17:31:12', '2019-12-30 17:31:12'),
(1885, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-30 17:31:15', '2019-12-30 17:31:15'),
(1886, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-30 17:31:24', '2019-12-30 17:31:24'),
(1887, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-30 17:31:30', '2019-12-30 17:31:30'),
(1888, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-30 17:31:37', '2019-12-30 17:31:37'),
(1889, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-30 17:31:43', '2019-12-30 17:31:43'),
(1890, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-30 17:31:49', '2019-12-30 17:31:49'),
(1891, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2019-12-30 17:31:55', '2019-12-30 17:31:55'),
(1892, 'default', 'created', 8, 'App\\Models\\User', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-02 04:26:54', '2020-01-02 04:26:54'),
(1893, 'default', 'updated', 8, 'App\\Models\\User', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-02 04:26:54', '2020-01-02 04:26:54'),
(1894, 'default', 'updated', 8, 'App\\Models\\User', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-02 04:26:55', '2020-01-02 04:26:55'),
(1895, 'default', 'updated', 11, 'App\\Models\\Ecommerce\\Cart', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-02 04:27:00', '2020-01-02 04:27:00'),
(1896, 'default', 'updated', 8, 'App\\Models\\User', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-02 04:27:00', '2020-01-02 04:27:00'),
(1897, 'default', 'updated', 8, 'App\\Models\\User', 8, 'App\\Models\\User', '{\"ip\":\"127.0.0.1\"}', '2020-01-02 04:31:11', '2020-01-02 04:31:11'),
(1898, 'default', 'updated', 16, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-01-04 17:50:09', '2020-01-04 17:50:09'),
(1899, 'default', 'created', 22, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 22:30:01', '2020-01-11 22:30:01'),
(1900, 'default', 'updated', 22, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 22:30:04', '2020-01-11 22:30:04'),
(1901, 'default', 'updated', 22, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 22:30:04', '2020-01-11 22:30:04'),
(1902, 'default', 'updated', 22, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 22:31:06', '2020-01-11 22:31:06'),
(1903, 'default', 'updated', 22, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 22:31:06', '2020-01-11 22:31:06'),
(1904, 'default', 'updated', 22, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 22:38:41', '2020-01-11 22:38:41'),
(1905, 'default', 'updated', 22, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 22:38:41', '2020-01-11 22:38:41'),
(1906, 'default', 'updated', 22, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 22:39:22', '2020-01-11 22:39:22'),
(1907, 'default', 'updated', 22, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 22:39:22', '2020-01-11 22:39:22'),
(1908, 'default', 'updated', 22, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 22:40:06', '2020-01-11 22:40:06'),
(1909, 'default', 'updated', 22, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 22:40:06', '2020-01-11 22:40:06'),
(1910, 'default', 'updated', 22, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 22:40:29', '2020-01-11 22:40:29'),
(1911, 'default', 'updated', 22, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 22:40:29', '2020-01-11 22:40:29'),
(1912, 'default', 'updated', 22, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 22:44:07', '2020-01-11 22:44:07'),
(1913, 'default', 'updated', 22, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 22:44:07', '2020-01-11 22:44:07'),
(1914, 'default', 'updated', 22, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 22:44:07', '2020-01-11 22:44:07'),
(1915, 'default', 'updated', 22, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 22:44:28', '2020-01-11 22:44:28'),
(1916, 'default', 'updated', 22, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 22:44:28', '2020-01-11 22:44:28'),
(1917, 'default', 'updated', 22, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 22:44:28', '2020-01-11 22:44:28'),
(1918, 'default', 'created', 23, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 22:48:21', '2020-01-11 22:48:21'),
(1919, 'default', 'updated', 23, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 22:48:23', '2020-01-11 22:48:23'),
(1920, 'default', 'updated', 23, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 22:48:24', '2020-01-11 22:48:24'),
(1921, 'default', 'updated', 23, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 22:48:24', '2020-01-11 22:48:24'),
(1922, 'default', 'updated', 23, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 23:15:13', '2020-01-11 23:15:13'),
(1923, 'default', 'updated', 23, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 23:15:13', '2020-01-11 23:15:13'),
(1924, 'default', 'updated', 23, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 23:15:13', '2020-01-11 23:15:13'),
(1925, 'default', 'updated', 23, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 23:16:51', '2020-01-11 23:16:51'),
(1926, 'default', 'updated', 23, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 23:16:51', '2020-01-11 23:16:51'),
(1927, 'default', 'updated', 23, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 23:16:51', '2020-01-11 23:16:51'),
(1928, 'default', 'created', 24, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 23:17:26', '2020-01-11 23:17:26'),
(1929, 'default', 'updated', 24, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 23:17:28', '2020-01-11 23:17:28'),
(1930, 'default', 'updated', 24, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 23:17:28', '2020-01-11 23:17:28'),
(1931, 'default', 'updated', 24, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 23:17:28', '2020-01-11 23:17:28'),
(1932, 'default', 'created', 25, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-01-11 23:23:12', '2020-01-11 23:23:12'),
(1933, 'default', 'created', 26, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-01-11 23:23:43', '2020-01-11 23:23:43'),
(1934, 'default', 'updated', 26, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-01-11 23:23:43', '2020-01-11 23:23:43'),
(1935, 'default', 'created', 27, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-01-11 23:25:42', '2020-01-11 23:25:42'),
(1936, 'default', 'updated', 27, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-01-11 23:25:42', '2020-01-11 23:25:42'),
(1937, 'default', 'created', 28, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 23:27:01', '2020-01-11 23:27:01'),
(1938, 'default', 'updated', 28, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 23:27:01', '2020-01-11 23:27:01'),
(1939, 'default', 'updated', 28, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 23:27:02', '2020-01-11 23:27:02'),
(1940, 'default', 'updated', 28, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 23:41:45', '2020-01-11 23:41:45'),
(1941, 'default', 'updated', 28, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 23:41:45', '2020-01-11 23:41:45'),
(1942, 'default', 'updated', 28, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 23:41:45', '2020-01-11 23:41:45'),
(1943, 'default', 'updated', 28, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 23:42:20', '2020-01-11 23:42:20'),
(1944, 'default', 'updated', 28, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 23:42:20', '2020-01-11 23:42:20'),
(1945, 'default', 'updated', 28, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 23:42:20', '2020-01-11 23:42:20'),
(1946, 'default', 'updated', 28, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-11 23:50:02', '2020-01-11 23:50:02'),
(1947, 'default', 'created', 29, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-12 00:00:59', '2020-01-12 00:00:59'),
(1948, 'default', 'updated', 29, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-12 00:00:59', '2020-01-12 00:00:59'),
(1949, 'default', 'updated', 29, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-01-12 00:00:59', '2020-01-12 00:00:59'),
(1950, 'default', 'created', 30, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:22:44', '2020-03-13 02:22:44'),
(1951, 'default', 'updated', 30, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:22:44', '2020-03-13 02:22:44'),
(1952, 'default', 'updated', 30, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:22:45', '2020-03-13 02:22:45'),
(1953, 'default', 'created', 31, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:23:15', '2020-03-13 02:23:15'),
(1954, 'default', 'updated', 31, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:23:15', '2020-03-13 02:23:15'),
(1955, 'default', 'updated', 31, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:23:15', '2020-03-13 02:23:15'),
(1956, 'default', 'created', 32, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:24:52', '2020-03-13 02:24:52'),
(1957, 'default', 'updated', 32, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:24:52', '2020-03-13 02:24:52'),
(1958, 'default', 'created', 33, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:25:46', '2020-03-13 02:25:46'),
(1959, 'default', 'updated', 33, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:25:46', '2020-03-13 02:25:46'),
(1960, 'default', 'updated', 30, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:26:36', '2020-03-13 02:26:36'),
(1961, 'default', 'created', 34, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:28:37', '2020-03-13 02:28:37'),
(1962, 'default', 'updated', 34, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:28:37', '2020-03-13 02:28:37'),
(1963, 'default', 'created', 35, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:29:06', '2020-03-13 02:29:06'),
(1964, 'default', 'updated', 35, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:29:06', '2020-03-13 02:29:06'),
(1965, 'default', 'created', 36, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:29:17', '2020-03-13 02:29:17'),
(1966, 'default', 'updated', 36, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:29:17', '2020-03-13 02:29:17'),
(1967, 'default', 'created', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:30:36', '2020-03-13 02:30:36'),
(1968, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:30:36', '2020-03-13 02:30:36'),
(1969, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:30:37', '2020-03-13 02:30:37'),
(1970, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:32:22', '2020-03-13 02:32:22'),
(1971, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:32:22', '2020-03-13 02:32:22'),
(1972, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:32:22', '2020-03-13 02:32:22'),
(1973, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:32:44', '2020-03-13 02:32:44'),
(1974, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:32:44', '2020-03-13 02:32:44'),
(1975, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:32:44', '2020-03-13 02:32:44'),
(1976, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:35:38', '2020-03-13 02:35:38'),
(1977, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:35:38', '2020-03-13 02:35:38'),
(1978, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:35:38', '2020-03-13 02:35:38'),
(1979, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:36:37', '2020-03-13 02:36:37'),
(1980, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:36:37', '2020-03-13 02:36:37'),
(1981, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:36:37', '2020-03-13 02:36:37'),
(1982, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:37:17', '2020-03-13 02:37:17'),
(1983, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:37:18', '2020-03-13 02:37:18'),
(1984, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:37:18', '2020-03-13 02:37:18'),
(1985, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:38:44', '2020-03-13 02:38:44'),
(1986, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:38:44', '2020-03-13 02:38:44'),
(1987, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:38:44', '2020-03-13 02:38:44'),
(1988, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:39:33', '2020-03-13 02:39:33'),
(1989, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:39:33', '2020-03-13 02:39:33'),
(1990, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:39:34', '2020-03-13 02:39:34'),
(1991, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:40:28', '2020-03-13 02:40:28'),
(1992, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:40:28', '2020-03-13 02:40:28'),
(1993, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:40:28', '2020-03-13 02:40:28'),
(1994, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:40:59', '2020-03-13 02:40:59'),
(1995, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:40:59', '2020-03-13 02:40:59'),
(1996, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:40:59', '2020-03-13 02:40:59'),
(1997, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:42:05', '2020-03-13 02:42:05'),
(1998, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:42:05', '2020-03-13 02:42:05'),
(1999, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:42:05', '2020-03-13 02:42:05'),
(2000, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:43:11', '2020-03-13 02:43:11'),
(2001, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:43:11', '2020-03-13 02:43:11'),
(2002, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:43:11', '2020-03-13 02:43:11'),
(2003, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:43:58', '2020-03-13 02:43:58'),
(2004, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:43:58', '2020-03-13 02:43:58'),
(2005, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:43:58', '2020-03-13 02:43:58'),
(2006, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:44:23', '2020-03-13 02:44:23'),
(2007, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:44:23', '2020-03-13 02:44:23'),
(2008, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:44:23', '2020-03-13 02:44:23'),
(2009, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:45:11', '2020-03-13 02:45:11'),
(2010, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:45:11', '2020-03-13 02:45:11'),
(2011, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:45:11', '2020-03-13 02:45:11'),
(2012, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:47:02', '2020-03-13 02:47:02'),
(2013, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:47:02', '2020-03-13 02:47:02');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(2014, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:47:02', '2020-03-13 02:47:02'),
(2015, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:49:18', '2020-03-13 02:49:18'),
(2016, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:49:18', '2020-03-13 02:49:18'),
(2017, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:49:18', '2020-03-13 02:49:18'),
(2018, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:51:25', '2020-03-13 02:51:25'),
(2019, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:51:25', '2020-03-13 02:51:25'),
(2020, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:51:25', '2020-03-13 02:51:25'),
(2021, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:54:43', '2020-03-13 02:54:43'),
(2022, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:54:43', '2020-03-13 02:54:43'),
(2023, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:54:43', '2020-03-13 02:54:43'),
(2024, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:57:32', '2020-03-13 02:57:32'),
(2025, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:57:32', '2020-03-13 02:57:32'),
(2026, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:57:32', '2020-03-13 02:57:32'),
(2027, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:58:23', '2020-03-13 02:58:23'),
(2028, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:58:23', '2020-03-13 02:58:23'),
(2029, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 02:58:23', '2020-03-13 02:58:23'),
(2030, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 03:06:27', '2020-03-13 03:06:27'),
(2031, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 03:06:27', '2020-03-13 03:06:27'),
(2032, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 03:06:27', '2020-03-13 03:06:27'),
(2033, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 03:07:53', '2020-03-13 03:07:53'),
(2034, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 03:07:53', '2020-03-13 03:07:53'),
(2035, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 03:07:53', '2020-03-13 03:07:53'),
(2036, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 03:08:16', '2020-03-13 03:08:16'),
(2037, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 03:08:16', '2020-03-13 03:08:16'),
(2038, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 03:08:16', '2020-03-13 03:08:16'),
(2039, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 03:09:40', '2020-03-13 03:09:40'),
(2040, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 03:09:40', '2020-03-13 03:09:40'),
(2041, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 03:09:40', '2020-03-13 03:09:40'),
(2042, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 03:10:17', '2020-03-13 03:10:17'),
(2043, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 03:10:17', '2020-03-13 03:10:17'),
(2044, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 03:10:17', '2020-03-13 03:10:17'),
(2045, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 03:11:09', '2020-03-13 03:11:09'),
(2046, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 03:11:09', '2020-03-13 03:11:09'),
(2047, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 03:11:09', '2020-03-13 03:11:09'),
(2048, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 03:12:00', '2020-03-13 03:12:00'),
(2049, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 03:12:00', '2020-03-13 03:12:00'),
(2050, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 03:12:00', '2020-03-13 03:12:00'),
(2051, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 03:21:21', '2020-03-13 03:21:21'),
(2052, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 03:21:21', '2020-03-13 03:21:21'),
(2053, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 03:21:21', '2020-03-13 03:21:21'),
(2054, 'default', 'updated', 37, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 03:22:02', '2020-03-13 03:22:02'),
(2055, 'default', 'created', 38, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 12:02:21', '2020-03-13 12:02:21'),
(2056, 'default', 'updated', 38, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 12:02:22', '2020-03-13 12:02:22'),
(2057, 'default', 'updated', 38, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 12:02:24', '2020-03-13 12:02:24'),
(2058, 'default', 'updated', 38, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 12:14:36', '2020-03-13 12:14:36'),
(2059, 'default', 'updated', 38, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 12:14:36', '2020-03-13 12:14:36'),
(2060, 'default', 'updated', 38, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 12:14:37', '2020-03-13 12:14:37'),
(2061, 'default', 'created', 39, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"10.0.0.20\"}', '2020-03-13 15:16:33', '2020-03-13 15:16:33'),
(2062, 'default', 'created', 40, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 15:35:35', '2020-03-13 15:35:35'),
(2063, 'default', 'updated', 40, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 15:35:35', '2020-03-13 15:35:35'),
(2064, 'default', 'updated', 40, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 15:35:36', '2020-03-13 15:35:36'),
(2065, 'default', 'created', 41, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 21:20:37', '2020-03-13 21:20:37'),
(2066, 'default', 'created', 42, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 21:20:49', '2020-03-13 21:20:49'),
(2067, 'default', 'created', 43, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:02:14', '2020-03-13 22:02:14'),
(2068, 'default', 'updated', 43, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:02:14', '2020-03-13 22:02:14'),
(2069, 'default', 'updated', 43, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:02:14', '2020-03-13 22:02:14'),
(2070, 'default', 'updated', 43, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:03:14', '2020-03-13 22:03:14'),
(2071, 'default', 'created', 44, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:11:36', '2020-03-13 22:11:36'),
(2072, 'default', 'updated', 44, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:11:36', '2020-03-13 22:11:36'),
(2073, 'default', 'updated', 44, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:11:37', '2020-03-13 22:11:37'),
(2074, 'default', 'updated', 44, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:14:54', '2020-03-13 22:14:54'),
(2075, 'default', 'updated', 44, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:14:54', '2020-03-13 22:14:54'),
(2076, 'default', 'updated', 44, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:14:54', '2020-03-13 22:14:54'),
(2077, 'default', 'updated', 44, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:15:24', '2020-03-13 22:15:24'),
(2078, 'default', 'created', 45, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:18:51', '2020-03-13 22:18:51'),
(2079, 'default', 'updated', 45, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:18:51', '2020-03-13 22:18:51'),
(2080, 'default', 'updated', 45, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:18:52', '2020-03-13 22:18:52'),
(2081, 'default', 'created', 46, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:28:16', '2020-03-13 22:28:16'),
(2082, 'default', 'updated', 46, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:28:16', '2020-03-13 22:28:16'),
(2083, 'default', 'updated', 46, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:28:17', '2020-03-13 22:28:17'),
(2084, 'default', 'created', 47, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:30:33', '2020-03-13 22:30:33'),
(2085, 'default', 'updated', 47, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:30:33', '2020-03-13 22:30:33'),
(2086, 'default', 'updated', 47, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:30:33', '2020-03-13 22:30:33'),
(2087, 'default', 'created', 48, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:31:48', '2020-03-13 22:31:48'),
(2088, 'default', 'updated', 48, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:31:48', '2020-03-13 22:31:48'),
(2089, 'default', 'updated', 48, 'App\\Models\\Ecommerce\\Order', 1, 'App\\Models\\Admin', '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:31:48', '2020-03-13 22:31:48'),
(2090, 'default', 'created', 49, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:33:35', '2020-03-13 22:33:35'),
(2091, 'default', 'updated', 49, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:33:35', '2020-03-13 22:33:35'),
(2092, 'default', 'updated', 49, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:33:36', '2020-03-13 22:33:36'),
(2093, 'default', 'updated', 49, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-13 22:34:05', '2020-03-13 22:34:05'),
(2094, 'default', 'created', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-14 01:22:19', '2020-03-14 01:22:19'),
(2095, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-14 01:22:19', '2020-03-14 01:22:19'),
(2096, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-14 01:22:20', '2020-03-14 01:22:20'),
(2097, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-14 06:02:11', '2020-03-14 06:02:11'),
(2098, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-14 06:02:11', '2020-03-14 06:02:11'),
(2099, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-14 06:02:11', '2020-03-14 06:02:11'),
(2100, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-14 06:02:31', '2020-03-14 06:02:31'),
(2101, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-14 06:02:31', '2020-03-14 06:02:31'),
(2102, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-14 06:02:31', '2020-03-14 06:02:31'),
(2103, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-14 06:02:57', '2020-03-14 06:02:57'),
(2104, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-14 06:02:57', '2020-03-14 06:02:57'),
(2105, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-14 06:02:57', '2020-03-14 06:02:57'),
(2106, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-14 06:03:20', '2020-03-14 06:03:20'),
(2107, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-14 06:03:20', '2020-03-14 06:03:20'),
(2108, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-14 06:03:20', '2020-03-14 06:03:20'),
(2109, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-14 06:03:34', '2020-03-14 06:03:34'),
(2110, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-14 06:03:34', '2020-03-14 06:03:34'),
(2111, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-14 06:03:34', '2020-03-14 06:03:34'),
(2112, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-16 03:58:37', '2020-03-16 03:58:37'),
(2113, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-16 03:58:37', '2020-03-16 03:58:37'),
(2114, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-16 03:58:37', '2020-03-16 03:58:37'),
(2115, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-16 04:00:02', '2020-03-16 04:00:02'),
(2116, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-16 04:00:02', '2020-03-16 04:00:02'),
(2117, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-16 04:00:02', '2020-03-16 04:00:02'),
(2118, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-16 04:06:30', '2020-03-16 04:06:30'),
(2119, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-16 04:06:30', '2020-03-16 04:06:30'),
(2120, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-16 04:06:30', '2020-03-16 04:06:30'),
(2121, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-16 04:06:42', '2020-03-16 04:06:42'),
(2122, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-16 04:06:42', '2020-03-16 04:06:42'),
(2123, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-16 04:06:42', '2020-03-16 04:06:42'),
(2124, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-16 04:07:45', '2020-03-16 04:07:45'),
(2125, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-16 04:07:45', '2020-03-16 04:07:45'),
(2126, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-16 04:07:45', '2020-03-16 04:07:45'),
(2127, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-16 20:58:17', '2020-03-16 20:58:17'),
(2128, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-16 20:58:18', '2020-03-16 20:58:18'),
(2129, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-16 20:58:18', '2020-03-16 20:58:18'),
(2130, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-18 01:44:04', '2020-03-18 01:44:04'),
(2131, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-18 01:44:04', '2020-03-18 01:44:04'),
(2132, 'default', 'updated', 50, 'App\\Models\\Ecommerce\\Order', NULL, NULL, '{\"ip\":\"127.0.0.1\"}', '2020-03-18 01:44:04', '2020-03-18 01:44:04');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `addressable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addressable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `street` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_extra` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `description` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` double(10,6) DEFAULT NULL,
  `lng` double(10,6) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `is_billing` tinyint(1) NOT NULL DEFAULT '0',
  `is_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `created_at`, `updated_at`, `addressable_type`, `addressable_id`, `street`, `street_extra`, `city`, `state`, `post_code`, `country_id`, `description`, `note`, `lat`, `lng`, `is_public`, `is_primary`, `is_billing`, `is_shipping`, `deleted_at`) VALUES
(1, '2019-10-09 19:09:07', '2019-10-09 19:09:07', 'App\\Models\\General\\Company', 1, 'Building A9, Longwangmiao Industry', 'Fuyong Town, Bao\'An District', 'Shenzhen', NULL, NULL, 156, NULL, NULL, NULL, NULL, 0, 1, 0, 0, NULL),
(2, '2019-10-09 19:09:07', '2019-10-09 19:09:07', 'App\\Models\\General\\Manufacturer', 1, 'Building B,Jienan road No.151,Xiaojiejiao Community', 'Humen Town, Dongguan city, Guangdong province', 'Dongguan', NULL, NULL, 156, NULL, NULL, NULL, NULL, 0, 1, 0, 0, NULL),
(3, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'App\\Models\\General\\Company', 2, '4th Floor, Building 2, #38, Longgang Road', 'Baiyun District', 'Guangzhou', NULL, '510445', 156, NULL, NULL, NULL, NULL, 0, 1, 0, 0, NULL),
(4, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'App\\Models\\Ecommerce\\Store', 1, 'Suite 33, 4 Francis Oremeji St. Ikeja', NULL, 'Lagos', NULL, NULL, 566, NULL, NULL, NULL, NULL, 1, 1, 0, 0, NULL),
(5, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'App\\Models\\Ecommerce\\Store', 2, 'MOIREI, Noritake Rd., Modbury Heights', NULL, 'Adelaide', NULL, '5092', 36, NULL, NULL, NULL, NULL, 1, 1, 0, 0, NULL),
(6, '2019-10-09 19:09:10', '2019-10-09 19:09:10', 'App\\Models\\User', 1, '6 Ajegunle', 'Olodi Apapa', 'Lagos', NULL, '0000', 566, NULL, NULL, NULL, NULL, 0, 1, 0, 0, NULL),
(7, '2019-10-10 12:27:41', '2019-10-10 12:28:54', 'App\\Models\\Guest', 6, '7 Noritake Rd', '', 'Modbury Heights', 'Australia', '5092', 36, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(8, '2019-10-10 12:27:42', '2019-10-10 12:28:55', 'App\\Models\\Guest', 6, '7 Noritake Rd', '', 'Modbury Heights', 'Australia', '5092', 36, NULL, NULL, NULL, NULL, 0, 0, 1, 0, NULL),
(9, '2019-10-12 23:58:00', '2019-12-13 18:54:09', 'App\\Models\\Guest', 7, '7 Noritake Rd', '', 'Modbury Heights', 'Australia', '5092', 36, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(10, '2019-10-12 23:58:00', '2019-12-13 18:54:09', 'App\\Models\\Guest', 7, '7 Noritake Rd', '', 'Modbury Heights', 'Australia', '5092', 36, NULL, NULL, NULL, NULL, 0, 0, 1, 0, NULL),
(11, '2020-01-11 22:30:00', '2020-01-12 00:00:57', 'App\\Models\\Guest', 11, '7 Noritake Rd', '', 'Modbury Heights', 'SA', '5012', 36, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(12, '2020-01-11 22:30:00', '2020-01-12 00:00:58', 'App\\Models\\Guest', 11, '7 Noritake Rd', '', 'Modbury Heights', 'SA', '5012', 36, NULL, NULL, NULL, NULL, 0, 0, 1, 0, NULL),
(13, '2020-03-13 00:54:56', '2020-03-13 03:21:19', 'App\\Models\\Guest', 16, '7 Noritake Rd', '', 'Modbury Heights', 'SA', '5012', 36, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(14, '2020-03-13 00:54:57', '2020-03-13 03:21:19', 'App\\Models\\Guest', 16, '7 Noritake Rd', '', 'Modbury Heights', 'SA', '5012', 36, NULL, NULL, NULL, NULL, 0, 0, 1, 0, NULL),
(15, '2020-03-13 12:02:19', '2020-03-13 12:14:34', 'App\\Models\\Guest', 17, '7 Noritake Rd', '', 'Modbury Heights', 'SA', '5012', 36, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(16, '2020-03-13 12:02:20', '2020-03-13 12:14:35', 'App\\Models\\Guest', 17, '7 Noritake Rd', '', 'Modbury Heights', 'SA', '5012', 36, NULL, NULL, NULL, NULL, 0, 0, 1, 0, NULL),
(17, '2020-03-13 15:35:32', '2020-03-13 15:35:32', 'App\\Models\\Guest', 18, '7 Noritake Rd', '', 'Modbury Heights', 'SA', '5012', 36, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(18, '2020-03-13 15:35:33', '2020-03-13 15:35:33', 'App\\Models\\Guest', 18, '7 Noritake Rd', '', 'Modbury Heights', 'SA', '5012', 36, NULL, NULL, NULL, NULL, 0, 0, 1, 0, NULL),
(19, '2020-03-13 22:02:11', '2020-03-13 22:02:11', 'App\\Models\\Guest', 19, '7 Noritake Rd', '', 'Modbury Heights', 'SA', '5012', 36, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(20, '2020-03-13 22:02:12', '2020-03-13 22:02:12', 'App\\Models\\Guest', 19, '7 Noritake Rd', '', 'Modbury Heights', 'SA', '5012', 36, NULL, NULL, NULL, NULL, 0, 0, 1, 0, NULL),
(21, '2020-03-13 22:11:35', '2020-03-13 22:14:53', 'App\\Models\\Guest', 20, '7 Noritake Rd', '', 'Modbury Heights', 'SA', '5012', 36, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(22, '2020-03-13 22:11:35', '2020-03-13 22:14:54', 'App\\Models\\Guest', 20, '7 Noritake Rd', '', 'Modbury Heights', 'SA', '5012', 36, NULL, NULL, NULL, NULL, 0, 0, 1, 0, NULL),
(23, '2020-03-13 22:18:50', '2020-03-13 22:18:50', 'App\\Models\\Guest', 21, '7 Noritake Rd', '', 'Modbury Heights', 'SA', '5012', 36, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(24, '2020-03-13 22:18:50', '2020-03-13 22:18:50', 'App\\Models\\Guest', 21, '7 Noritake Rd', '', 'Modbury Heights', 'SA', '5012', 36, NULL, NULL, NULL, NULL, 0, 0, 1, 0, NULL),
(25, '2020-03-13 22:33:33', '2020-03-13 22:33:33', 'App\\Models\\Guest', 22, '7 Noritake Rd', '', 'Modbury Heights', 'SA', '5012', 36, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(26, '2020-03-13 22:33:34', '2020-03-13 22:33:34', 'App\\Models\\Guest', 22, '7 Noritake Rd', '', 'Modbury Heights', 'SA', '5012', 36, NULL, NULL, NULL, NULL, 0, 0, 1, 0, NULL),
(27, '2020-03-13 23:11:27', '2020-03-18 01:44:01', 'App\\Models\\Guest', 24, '7 Noritake Rd', '', 'Modbury Heights', 'SA', '5012', 36, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(28, '2020-03-14 01:03:51', '2020-03-14 01:08:52', 'App\\Models\\Guest', 1, '7 Noritake Rd', '', 'Modbury Heights', 'SA', '5012', 36, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(29, '2020-03-14 01:22:17', '2020-03-18 01:44:01', 'App\\Models\\Guest', 24, '7 Noritake Rd', '', 'Modbury Heights', 'SA', '5012', 36, NULL, NULL, NULL, NULL, 0, 0, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'https://mrsc.moirei-dev.com/img/dummy/officer.png',
  `address_id` int(10) UNSIGNED DEFAULT NULL,
  `job_title` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `roles` text COLLATE utf8mb4_unicode_ci,
  `last_active` timestamp NULL DEFAULT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `activated_at` timestamp NULL DEFAULT NULL,
  `api_token` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `slug`, `first_name`, `last_name`, `image`, `address_id`, `job_title`, `employee_id`, `salary`, `start_date`, `end_date`, `roles`, `last_active`, `activation_code`, `persist_code`, `reset_password_code`, `gender`, `date_of_birth`, `activated`, `activated_at`, `api_token`, `deleted_at`) VALUES
(1, 'augustusokoye@moirei.com', '$2y$10$owYcwzUI.3UdbZbP1VsvzOu7./naNICE/yZURnsUpzLiG.fBW12Bu', NULL, '2019-10-09 19:09:08', '2019-10-09 19:09:08', NULL, 'Augustus', 'Okoye', 'https://mrsc.moirei-dev.com/img/dummy/officer.png', NULL, 'Business Development Executive', 'MAU00001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-10-09 19:09:08', NULL, NULL),
(2, 'cokoye@moirei.com', '$2y$10$PCrXSfwXBGD9Y4gBuOVl7.dQKe3WNS70hWTMG0ijhaGNsmIxDeV32', NULL, '2019-10-09 19:09:08', '2019-10-09 19:09:08', NULL, 'Cajetan', 'Okoye', 'https://mrsc.moirei-dev.com/img/dummy/officer.png', NULL, 'Sales Officer', 'MNG00001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-10-09 19:09:08', NULL, NULL),
(3, 'arister@moirei.com', '$2y$10$xPPs0UP2JKen3WLF9kzYG.epuMUYkXhX5oKhNESkiELCz.qSeAtIW', NULL, '2019-10-09 19:09:09', '2019-10-09 19:09:09', NULL, 'Arister', 'Okoye', 'https://mrsc.moirei-dev.com/img/dummy/officer.png', NULL, 'Marketing Operations', 'MNG00002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-10-09 19:09:09', NULL, NULL),
(4, 'iigor@moirei.com', '$2y$10$scDqh7xP7vn/GPFHoJOSVeYDca8/b4ROwRC4VNyEJllqkcAlrk.Ea', NULL, '2019-10-09 19:09:09', '2019-10-09 19:09:09', NULL, 'Igor', 'Igiraneza', 'https://mrsc.moirei-dev.com/img/dummy/officer.png', NULL, 'Business Development', 'MAU002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(5, 'dsmit@moirei.com', '$2y$10$DD502h4JGNpKeW5kVsbeLOZ2DRgpOgzQiCUClrPBrYSFInKYUD9Fm', NULL, '2019-10-09 19:09:09', '2019-10-09 19:09:09', NULL, 'Daniel', 'Smit', 'https://mrsc.moirei-dev.com/img/dummy/officer.png', NULL, 'Sales Officer', 'MAU001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(6, 'ikifebili@moirei.com', '$2y$10$bpDCkoeLjqNElRkAYUhXre1y4kQ4pWTaRV86DnNv5wWuVYOkxeWYq', NULL, '2019-10-09 19:09:09', '2019-10-09 19:09:09', NULL, 'IK', 'Ifebili', 'https://mrsc.moirei-dev.com/img/dummy/officer.png', NULL, 'Sales Representative', 'MAU39575', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `callback_requests`
--

CREATE TABLE `callback_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cbrkey` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `callbackable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `callbackable_id` bigint(20) UNSIGNED NOT NULL,
  `appointment` datetime NOT NULL,
  `called` tinyint(1) NOT NULL DEFAULT '0',
  `resolved_at` datetime DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `call_requests`
--

CREATE TABLE `call_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `carkey` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ep` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `callrequestable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `callrequestable_id` bigint(20) UNSIGNED NOT NULL,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `called` tinyint(1) NOT NULL DEFAULT '0',
  `resolved` tinyint(1) NOT NULL DEFAULT '0',
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `call_requests`
--

INSERT INTO `call_requests` (`id`, `created_at`, `updated_at`, `carkey`, `ep`, `callrequestable_type`, `callrequestable_id`, `started_at`, `ended_at`, `called`, `resolved`, `admin_id`, `deleted_at`) VALUES
(1, '2019-10-09 19:09:13', '2019-10-09 19:09:13', 'dIV3EiSoKNmHZUp6uUUc8MwnJeFD1h', 'endpoint1', 'App\\Models\\Guest', 1, NULL, NULL, 0, 0, NULL, NULL),
(2, '2019-10-09 19:09:13', '2019-10-09 19:09:13', 'UyzURPB5W5yYWVh3lkq5OQXcac7WQh', 'endpoint2', 'App\\Models\\Guest', 1, NULL, NULL, 0, 0, NULL, NULL),
(3, '2019-10-09 19:09:13', '2019-10-09 19:09:13', '2rdOeblUY8WXEk0L1qv7DSlkU9Mmqo', 'endpoint3', 'App\\Models\\Guest', 1, '2019-10-10 05:49:13', NULL, 1, 0, 1, NULL),
(4, '2019-10-09 19:09:13', '2019-10-09 19:09:13', 'fwXl0wcpAcjYH8LeokwwRZluuRUE2c', 'endpoint4', 'App\\Models\\Guest', 1, '2019-10-10 05:49:13', NULL, 1, 0, 2, NULL),
(5, '2019-10-09 18:54:13', '2019-10-09 19:09:13', 'iPjrpHxKdAjVKottZRmCMrfzdKFzzv', 'endpoint5', 'App\\Models\\Guest', 1, '2019-10-10 05:30:13', '2019-10-10 05:39:13', 1, 1, 2, NULL),
(6, '2019-10-09 18:56:13', '2019-10-09 19:09:13', '6PzNZO0Wj4vYFZPov6RpooHIzaiAMm', 'endpoint6', 'App\\Models\\Guest', 1, '2019-10-10 05:28:13', '2019-10-10 05:39:13', 1, 1, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `msucid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `currency_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'AUD',
  `cart_total` decimal(8,2) NOT NULL DEFAULT '0.00',
  `shipping_total` decimal(8,2) NOT NULL DEFAULT '0.00',
  `total_price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `item_count` int(11) NOT NULL DEFAULT '0',
  `placed_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `created_at`, `updated_at`, `user_id`, `msucid`, `name`, `status`, `currency_code`, `cart_total`, `shipping_total`, `total_price`, `item_count`, `placed_at`, `completed_at`) VALUES
(6, '2019-10-20 16:02:56', '2019-10-29 15:43:40', NULL, '2f0f0c70-dc3d-11e9-a0eb-959534c32ec9', 'default', 'pending', 'AUD', '242.48', '20.00', '262.48', 5, '2019-10-29 15:43:40', NULL),
(7, '2019-10-29 12:56:19', '2019-10-29 12:56:19', NULL, '036dbf40-ad54-11e9-a180-17d519c4c826', 'default', 'active', 'AUD', '0.00', '0.00', '0.00', 0, NULL, NULL),
(8, '2019-10-29 13:01:25', '2019-10-29 13:01:25', NULL, 'e372a240-faa3-11e9-a164-791d0bfd73f1', 'default', 'active', 'AUD', '0.00', '0.00', '0.00', 0, NULL, NULL),
(9, '2019-10-29 15:43:53', '2019-11-22 03:20:27', NULL, '2f0f0c70-dc3d-11e9-a0eb-959534c32ec9', 'default', 'pending', 'AUD', '155.46', '20.00', '175.46', 3, '2019-11-22 03:20:27', NULL),
(10, '2019-11-22 02:24:23', '2019-11-22 02:24:23', NULL, '707b98b0-b849-11e9-af98-23b84c238552', 'default', 'active', 'AUD', '0.00', '0.00', '0.00', 0, NULL, NULL),
(11, '2019-11-22 03:30:14', '2020-01-02 04:27:00', 8, '2f0f0c70-dc3d-11e9-a0eb-959534c32ec9', 'default', 'active', 'AUD', '0.00', '0.00', '0.00', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `unit_price` decimal(8,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `created_at`, `updated_at`, `cart_id`, `product_id`, `quantity`, `unit_price`, `options`) VALUES
(1, '2019-10-25 03:40:37', '2019-10-28 15:45:38', 6, 6, 4, '59.25', NULL),
(4, '2019-10-28 15:45:50', '2019-10-28 15:45:50', 6, 1, 1, '5.48', NULL),
(17, '2019-11-19 06:33:16', '2019-11-21 01:07:20', 9, 6, 2, '74.99', '[{\"attribute\":\"Colour\",\"name\":\"Black\",\"value\":\"black\"},{\"attribute\":\"Model\",\"name\":\"MG001B\",\"value\":\"mg001b\"}]'),
(18, '2019-11-20 23:46:52', '2019-11-20 23:46:52', 9, 1, 1, '5.48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart_storage`
--

CREATE TABLE `cart_storage` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_storage`
--

INSERT INTO `cart_storage` (`id`, `cart_data`, `created_at`, `updated_at`) VALUES
('AU:20e3d6e0-65d0-11ea-a31e-bdb91a082474_cart_items', 'O:32:\"Darryldecode\\Cart\\CartCollection\":1:{s:8:\"\0*\0items\";a:1:{i:1584175719;O:32:\"Darryldecode\\Cart\\ItemCollection\":2:{s:9:\"\0*\0config\";a:6:{s:14:\"format_numbers\";b:0;s:8:\"decimals\";i:0;s:9:\"dec_point\";s:1:\".\";s:13:\"thousands_sep\";s:1:\",\";s:7:\"storage\";s:18:\"App\\Cart\\DBStorage\";s:6:\"events\";N;}s:8:\"\0*\0items\";a:7:{s:2:\"id\";i:1584175719;s:4:\"name\";s:19:\"Wireless Power Bank\";s:5:\"price\";d:74.99;s:8:\"quantity\";i:1;s:10:\"attributes\";O:41:\"Darryldecode\\Cart\\ItemAttributeCollection\":1:{s:8:\"\0*\0items\";a:2:{i:0;O:8:\"stdClass\":3:{s:9:\"attribute\";s:6:\"Colour\";s:4:\"name\";s:5:\"Black\";s:5:\"value\";s:5:\"black\";}i:1;O:8:\"stdClass\":3:{s:9:\"attribute\";s:5:\"Model\";s:4:\"name\";s:6:\"MG001B\";s:5:\"value\";s:6:\"mg001b\";}}}s:10:\"conditions\";O:31:\"Darryldecode\\Cart\\CartCondition\":2:{s:37:\"\0Darryldecode\\Cart\\CartCondition\0args\";a:3:{s:4:\"name\";s:8:\"Shipping\";s:4:\"type\";s:8:\"shipping\";s:5:\"value\";s:3:\"+10\";}s:14:\"parsedRawValue\";N;}s:15:\"associatedModel\";O:28:\"App\\Models\\Ecommerce\\Product\":28:{s:11:\"\0*\0fillable\";a:35:{i:0;s:4:\"name\";i:1;s:9:\"seo_title\";i:2;s:13:\"currency_code\";i:3;s:11:\"purchasable\";i:4;s:5:\"price\";i:5;s:10:\"sale_price\";i:6;s:13:\"regular_price\";i:7;s:4:\"misc\";i:8;s:5:\"brand\";i:9;s:6:\"slogan\";i:10;s:9:\"sale_note\";i:11;s:11:\"description\";i:12;s:17:\"short_description\";i:13;s:3:\"mpn\";i:14;s:3:\"sku\";i:15;s:11:\"weight_unit\";i:16;s:11:\"volume_unit\";i:17;s:5:\"width\";i:18;s:6:\"length\";i:19;s:6:\"height\";i:20;s:6:\"weight\";i:21;s:11:\"theme_color\";i:22;s:13:\"purchase_note\";i:23;s:3:\"url\";i:24;s:13:\"allow_reviews\";i:25;s:16:\"allow_backorders\";i:26;s:8:\"featured\";i:27;s:10:\"visibility\";i:28;s:18:\"catalog_visibility\";i:29;s:6:\"status\";i:30;s:22:\"countries_available_to\";i:31;s:21:\"countries_hidden_from\";i:32;s:4:\"faqs\";i:33;s:15:\"available_on_gm\";i:34;s:4:\"meta\";}s:8:\"\0*\0table\";s:8:\"products\";s:8:\"\0*\0casts\";a:11:{s:7:\"gallery\";s:5:\"array\";s:7:\"price_2\";s:5:\"array\";s:12:\"sale_price_2\";s:5:\"array\";s:15:\"regular_price_2\";s:5:\"array\";s:17:\"date_on_sale_from\";s:8:\"datetime\";s:15:\"date_on_sale_to\";s:8:\"datetime\";s:5:\"stock\";s:5:\"array\";s:4:\"misc\";s:5:\"array\";s:4:\"meta\";s:5:\"array\";s:4:\"faqs\";s:5:\"array\";s:11:\"purchasable\";s:7:\"boolean\";}s:10:\"\0*\0appends\";a:10:{i:0;s:5:\"image\";i:1;s:6:\"images\";i:2;s:8:\"currency\";i:3;s:12:\"availability\";i:4;s:9:\"image_url\";i:5;s:9:\"gm_images\";i:6;s:28:\"gm_sale_price_effective_date\";i:7;s:14:\"gm_description\";i:8;s:17:\"gm_shipping_label\";i:9;s:15:\"available_on_gm\";}s:9:\"\0*\0hidden\";a:11:{i:0;s:22:\"countries_available_to\";i:1;s:21:\"countries_hidden_from\";i:2;s:14:\"shipping_class\";i:3;s:7:\"price_2\";i:4;s:12:\"sale_price_2\";i:5;s:5:\"stock\";i:6;s:9:\"unstocked\";i:7;s:6:\"status\";i:8;s:10:\"visibility\";i:9;s:18:\"catalog_visibility\";i:10;s:4:\"meta\";}s:10:\"model_data\";s:4:\"meta\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:68:{s:2:\"id\";i:6;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2020-02-23 05:06:12\";s:15:\"manufacturer_id\";N;s:9:\"parent_id\";N;s:4:\"name\";s:19:\"Wireless Power Bank\";s:4:\"slug\";s:19:\"wireless-power-bank\";s:9:\"seo_title\";s:131:\"New MOIREI QI Wireless Power Bank 10000 mAh Type-C, USB QC, Wireless PD Charging Mobile Portable Wireless Charger Powerbank with QR\";s:13:\"currency_code\";s:3:\"AUD\";s:11:\"purchasable\";i:1;s:17:\"date_on_sale_from\";N;s:15:\"date_on_sale_to\";s:19:\"2019-11-15 01:30:00\";s:5:\"price\";s:5:\"74.99\";s:10:\"sale_price\";s:5:\"74.99\";s:7:\"price_2\";s:38:\"[{\"currency_code\":\"NGN\",\"price\":7000}]\";s:12:\"sale_price_2\";s:2:\"[]\";s:4:\"misc\";s:2:\"[]\";s:5:\"brand\";s:6:\"MOIREI\";s:6:\"slogan\";s:51:\"Faster and safer charging with advanced technology.\";s:9:\"sale_note\";s:13:\"Free Delivery\";s:13:\"purchase_note\";s:0:\"\";s:7:\"on_sale\";i:1;s:17:\"short_description\";s:192:\"<div>Power up quickly with the MG001 Wireless Power Bank, featuring wireless 5W PD and 5V@2A fast charge standard USB connector. Recharge your mobile device anywhere, anytime, with ease.</div>\";s:11:\"description\";s:1330:\"<div>Never run out of phone battery again and enjoy the convenience of wireless charging. The MG001 Wireless Power Bank has in store, 10,000 mAh which can charge up a standard smart phone up to three times over.&nbsp;<br><br></div><div><strong>POPULAR USE CASES</strong></div><div><br></div><ul><li><strong>iPhone X:</strong> Recharge 3.4 times</li><li><strong>iPhone 8:</strong> Recharge 2.3 times</li><li><strong>Samsung Galaxy S8:</strong> Recharge 2.4 times</li></ul><div>&nbsp;<br><br></div><div><strong>HIGH-CAPACITY, HIGH-SPEED, PORTABLE CHARGING<br></strong><br></div><div>Unlike most power banks, the MG001 is extremely lightweight, incredibly compact power bank – just 16.8mm thickness – equipped with high-speed Type-C and standard USB, delivering up to 2A.<br><br></div><div>&nbsp;</div><div><strong>POWER UP IN STYLE, POWER UP SAFE<br></strong><br></div><div>The MG001 is integrated with high density lithium polymer batteries with surge protection, short circuit protection and more advanced safety features keep you and your devices safe.&nbsp;<br><br></div><div><br></div><div><strong>UNIVERSAL CONNECTIVITY<br></strong><br></div><div>It\'s so convenient! The MG001 is compatible with a wide range of mobile devices. Can connect up to three devices at the same time with 1 ultra-fast 2A PD output.<br><br></div>\";s:7:\"gallery\";s:18:\"[3,10,4,5,6,7,8,9]\";s:6:\"rating\";d:3.5;s:3:\"mpn\";s:8:\"MGC29008\";s:3:\"sku\";s:4:\"7188\";s:15:\"warranty_period\";N;s:8:\"material\";N;s:5:\"stock\";s:2:\"[]\";s:9:\"unstocked\";i:0;s:14:\"shipping_price\";i:10;s:11:\"weight_unit\";s:2:\"kg\";s:11:\"volume_unit\";s:2:\"cm\";s:5:\"width\";s:4:\"8.50\";s:6:\"length\";s:4:\"2.68\";s:6:\"height\";s:5:\"17.00\";s:6:\"weight\";s:4:\"0.31\";s:17:\"shipping_class_id\";i:2;s:11:\"theme_color\";N;s:3:\"url\";s:24:\"https://moirei.com/mg001\";s:13:\"allow_reviews\";i:1;s:16:\"allow_backorders\";i:0;s:12:\"downloadable\";i:0;s:7:\"virtual\";i:0;s:8:\"featured\";i:0;s:22:\"countries_available_to\";s:6:\"[\"AU\"]\";s:21:\"countries_hidden_from\";s:4:\"null\";s:4:\"meta\";s:25:\"{\"available_on_gm\":false}\";s:6:\"status\";s:7:\"release\";s:10:\"visibility\";s:6:\"public\";s:18:\"catalog_visibility\";s:11:\"shop-search\";s:10:\"deleted_at\";N;s:4:\"faqs\";s:1246:\"[{\"question\":\"Where are you based? Where do you ship from?\",\"answer\":\"We\'re based in the Adelaide, Australia. All MG001 orders ship directly from our office in Adelaide.\"},{\"question\":\"How does it work?\",\"answer\":\"The MG001 works like every other power bank with traditional USB outputs. But to use the wireless charging, you simply place your device on the power bank then push the side button. You can check your device\\u2019s wireless charging <a href=\\\"#\\\">here<\\/a>.\"},{\"question\":\"How long will it take for my order to arrive?\",\"answer\":\"We ship all orders placed Monday - Friday before 1:30 PM ACST the same day. For customers within Australia, your order should arrive within 3 business days via Post Standard Delivery. If you do not receive your order within 4 days, please check your mailbox and tracking number, then contact us. Average delivery time for international orders is 6-9 business days. However, international shipping delays can occur due to your country\'s customs process. Once your order arrives in your country, it is transferred to your local postal carrier for final delivery. In a small minority of cases, delivery can take longer. If it\'s been more than 5 weeks, contact us and we will help track down your order.\"}]\";s:16:\"return_policy_id\";i:1;s:13:\"regular_price\";s:5:\"79.00\";s:11:\"percent_off\";i:5;s:12:\"is_favourite\";b:0;s:8:\"is_liked\";b:0;s:10:\"is_in_cart\";b:0;s:13:\"shipping_html\";s:26:\"<strong> AUD $10 </strong>\";s:18:\"estimated_delivery\";s:44:\"Between <b>Mon. 30 Mar. and Fri. 03 Apr.</b>\";s:17:\"earliest_delivery\";s:12:\"Mon. 30 Mar.\";s:12:\"checkout_url\";s:68:\"https://www.moirei-dev.com/shop/checkout?product=wireless-power-bank\";s:10:\"attributes\";a:2:{i:0;O:8:\"stdClass\":6:{s:2:\"id\";i:4;s:4:\"name\";s:6:\"Colour\";s:10:\"product_id\";i:6;s:20:\"show_on_product_page\";i:1;s:4:\"type\";s:6:\"colour\";s:7:\"options\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":1:{s:8:\"\0*\0items\";a:2:{i:0;O:43:\"App\\Models\\Ecommerce\\ProductAttributeOption\":26:{s:11:\"\0*\0fillable\";a:2:{i:0;s:4:\"name\";i:1;s:5:\"value\";}s:9:\"\0*\0hidden\";a:1:{i:0;s:14:\"product_images\";}s:8:\"\0*\0casts\";a:1:{s:14:\"product_images\";s:5:\"array\";}s:10:\"\0*\0appends\";a:1:{i:0;s:6:\"images\";}s:8:\"\0*\0table\";s:25:\"product_attribute_options\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:7;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-11-11 05:55:25\";s:4:\"name\";s:5:\"White\";s:4:\"slug\";s:5:\"white\";s:5:\"value\";s:5:\"white\";s:20:\"product_attribute_id\";i:4;s:14:\"product_images\";s:172:\"[\"https:\\/\\/mrsc.moirei-dev.com\\/storage\\/media\\/new-moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-po-1571132539-v52oz.jpg\"]\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:7;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-11-11 05:55:25\";s:4:\"name\";s:5:\"White\";s:4:\"slug\";s:5:\"white\";s:5:\"value\";s:5:\"white\";s:20:\"product_attribute_id\";i:4;s:14:\"product_images\";s:172:\"[\"https:\\/\\/mrsc.moirei-dev.com\\/storage\\/media\\/new-moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-po-1571132539-v52oz.jpg\"]\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:43:\"App\\Models\\Ecommerce\\ProductAttributeOption\":26:{s:11:\"\0*\0fillable\";a:2:{i:0;s:4:\"name\";i:1;s:5:\"value\";}s:9:\"\0*\0hidden\";a:1:{i:0;s:14:\"product_images\";}s:8:\"\0*\0casts\";a:1:{s:14:\"product_images\";s:5:\"array\";}s:10:\"\0*\0appends\";a:1:{i:0;s:6:\"images\";}s:8:\"\0*\0table\";s:25:\"product_attribute_options\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:8;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-11-11 05:55:38\";s:4:\"name\";s:5:\"Black\";s:4:\"slug\";s:5:\"black\";s:5:\"value\";s:5:\"black\";s:20:\"product_attribute_id\";i:4;s:14:\"product_images\";s:172:\"[\"https:\\/\\/mrsc.moirei-dev.com\\/storage\\/media\\/moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portab-1571132538-TBjEQ.jpg\"]\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:8;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-11-11 05:55:38\";s:4:\"name\";s:5:\"Black\";s:4:\"slug\";s:5:\"black\";s:5:\"value\";s:5:\"black\";s:20:\"product_attribute_id\";i:4;s:14:\"product_images\";s:172:\"[\"https:\\/\\/mrsc.moirei-dev.com\\/storage\\/media\\/moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portab-1571132538-TBjEQ.jpg\"]\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}}i:1;O:8:\"stdClass\":6:{s:2:\"id\";i:5;s:4:\"name\";s:5:\"Model\";s:10:\"product_id\";i:6;s:20:\"show_on_product_page\";i:1;s:4:\"type\";s:5:\"model\";s:7:\"options\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":1:{s:8:\"\0*\0items\";a:2:{i:0;O:43:\"App\\Models\\Ecommerce\\ProductAttributeOption\":26:{s:11:\"\0*\0fillable\";a:2:{i:0;s:4:\"name\";i:1;s:5:\"value\";}s:9:\"\0*\0hidden\";a:1:{i:0;s:14:\"product_images\";}s:8:\"\0*\0casts\";a:1:{s:14:\"product_images\";s:5:\"array\";}s:10:\"\0*\0appends\";a:1:{i:0;s:6:\"images\";}s:8:\"\0*\0table\";s:25:\"product_attribute_options\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:9;s:10:\"created_at\";s:19:\"2019-10-25 13:13:26\";s:10:\"updated_at\";s:19:\"2019-10-25 13:13:26\";s:4:\"name\";s:5:\"MG001\";s:4:\"slug\";s:5:\"mg001\";s:5:\"value\";s:5:\"mg001\";s:20:\"product_attribute_id\";i:5;s:14:\"product_images\";N;}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:9;s:10:\"created_at\";s:19:\"2019-10-25 13:13:26\";s:10:\"updated_at\";s:19:\"2019-10-25 13:13:26\";s:4:\"name\";s:5:\"MG001\";s:4:\"slug\";s:5:\"mg001\";s:5:\"value\";s:5:\"mg001\";s:20:\"product_attribute_id\";i:5;s:14:\"product_images\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:43:\"App\\Models\\Ecommerce\\ProductAttributeOption\":26:{s:11:\"\0*\0fillable\";a:2:{i:0;s:4:\"name\";i:1;s:5:\"value\";}s:9:\"\0*\0hidden\";a:1:{i:0;s:14:\"product_images\";}s:8:\"\0*\0casts\";a:1:{s:14:\"product_images\";s:5:\"array\";}s:10:\"\0*\0appends\";a:1:{i:0;s:6:\"images\";}s:8:\"\0*\0table\";s:25:\"product_attribute_options\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:10;s:10:\"created_at\";s:19:\"2019-10-25 13:13:36\";s:10:\"updated_at\";s:19:\"2019-10-25 13:13:36\";s:4:\"name\";s:6:\"MG001B\";s:4:\"slug\";s:6:\"mg001b\";s:5:\"value\";s:6:\"mg001b\";s:20:\"product_attribute_id\";i:5;s:14:\"product_images\";N;}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:10;s:10:\"created_at\";s:19:\"2019-10-25 13:13:36\";s:10:\"updated_at\";s:19:\"2019-10-25 13:13:36\";s:4:\"name\";s:6:\"MG001B\";s:4:\"slug\";s:6:\"mg001b\";s:5:\"value\";s:6:\"mg001b\";s:20:\"product_attribute_id\";i:5;s:14:\"product_images\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}}}s:10:\"categories\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:36:\"App\\Models\\Ecommerce\\ProductCategory\":26:{s:11:\"\0*\0fillable\";a:3:{i:0;s:4:\"name\";i:1;s:4:\"slug\";i:2;s:11:\"description\";}s:9:\"\0*\0hidden\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:5:\"pivot\";}s:8:\"\0*\0table\";s:18:\"product_categories\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:3;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-10-10 05:39:08\";s:4:\"name\";s:14:\"Home Appliance\";s:4:\"slug\";s:14:\"home-appliance\";s:11:\"description\";N;}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:3;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-10-10 05:39:08\";s:4:\"name\";s:14:\"Home Appliance\";s:4:\"slug\";s:14:\"home-appliance\";s:11:\"description\";N;s:16:\"pivot_product_id\";i:6;s:25:\"pivot_product_category_id\";i:3;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"pivot\";O:44:\"Illuminate\\Database\\Eloquent\\Relations\\Pivot\":29:{s:12:\"incrementing\";b:0;s:10:\"\0*\0guarded\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:16:\"category_product\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:2:{s:10:\"product_id\";i:6;s:19:\"product_category_id\";i:3;}s:11:\"\0*\0original\";a:2:{s:10:\"product_id\";i:6;s:19:\"product_category_id\";i:3;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:11:\"pivotParent\";r:32;s:13:\"\0*\0foreignKey\";s:10:\"product_id\";s:13:\"\0*\0relatedKey\";s:19:\"product_category_id\";}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:7:\"reviews\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":1:{s:8:\"\0*\0items\";a:3:{i:0;O:34:\"App\\Models\\Ecommerce\\ProductReview\":26:{s:8:\"\0*\0table\";s:15:\"product_reviews\";s:11:\"\0*\0fillable\";a:10:{i:0;s:5:\"title\";i:1;s:4:\"body\";i:2;s:13:\"reviewer_name\";i:3;s:13:\"reviewer_meta\";i:4;s:14:\"reviewer_email\";i:5;s:11:\"recommended\";i:6;s:14:\"average_rating\";i:7;s:7:\"ratings\";i:8;s:10:\"product_id\";i:9;s:17:\"approver_admin_id\";}s:9:\"\0*\0hidden\";a:3:{i:0;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:2;s:6:\"public\";}s:8:\"\0*\0casts\";a:4:{s:6:\"rating\";s:5:\"float\";s:7:\"ratings\";s:5:\"array\";s:13:\"reviewer_meta\";s:5:\"array\";s:6:\"images\";s:5:\"array\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:22:{s:2:\"id\";i:3;s:10:\"created_at\";s:19:\"2019-10-30 14:25:09\";s:10:\"updated_at\";s:19:\"2019-10-30 14:26:15\";s:15:\"reviewable_type\";s:16:\"App\\Models\\Guest\";s:13:\"reviewable_id\";i:7;s:14:\"reviewer_email\";s:21:\"agstrscntw3@gmail.com\";s:5:\"title\";s:10:\"Awesome as\";s:13:\"reviewer_name\";s:14:\"Augustus Okoye\";s:4:\"body\";s:86:\"<div>Ive been using this product since the first samples and it\'s still solid as</div>\";s:4:\"city\";N;s:12:\"country_code\";s:0:\"\";s:11:\"recommended\";i:1;s:6:\"public\";i:1;s:6:\"rating\";s:4:\"0.00\";s:14:\"average_rating\";s:4:\"4.33\";s:7:\"ratings\";s:275:\"{\"quality\":{\"name\":\"Quality\",\"rating\":5},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":3},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":5},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":5},\"weight\":{\"name\":\"Weight\",\"rating\":4}}\";s:6:\"images\";N;s:13:\"reviewer_meta\";N;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:1;s:10:\"product_id\";i:6;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:22:{s:2:\"id\";i:3;s:10:\"created_at\";s:19:\"2019-10-30 14:25:09\";s:10:\"updated_at\";s:19:\"2019-10-30 14:26:15\";s:15:\"reviewable_type\";s:16:\"App\\Models\\Guest\";s:13:\"reviewable_id\";i:7;s:14:\"reviewer_email\";s:21:\"agstrscntw3@gmail.com\";s:5:\"title\";s:10:\"Awesome as\";s:13:\"reviewer_name\";s:14:\"Augustus Okoye\";s:4:\"body\";s:86:\"<div>Ive been using this product since the first samples and it\'s still solid as</div>\";s:4:\"city\";N;s:12:\"country_code\";s:0:\"\";s:11:\"recommended\";i:1;s:6:\"public\";i:1;s:6:\"rating\";s:4:\"0.00\";s:14:\"average_rating\";s:4:\"4.33\";s:7:\"ratings\";s:275:\"{\"quality\":{\"name\":\"Quality\",\"rating\":5},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":3},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":5},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":5},\"weight\":{\"name\":\"Weight\",\"rating\":4}}\";s:6:\"images\";N;s:13:\"reviewer_meta\";N;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:1;s:10:\"product_id\";i:6;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:34:\"App\\Models\\Ecommerce\\ProductReview\":26:{s:8:\"\0*\0table\";s:15:\"product_reviews\";s:11:\"\0*\0fillable\";a:10:{i:0;s:5:\"title\";i:1;s:4:\"body\";i:2;s:13:\"reviewer_name\";i:3;s:13:\"reviewer_meta\";i:4;s:14:\"reviewer_email\";i:5;s:11:\"recommended\";i:6;s:14:\"average_rating\";i:7;s:7:\"ratings\";i:8;s:10:\"product_id\";i:9;s:17:\"approver_admin_id\";}s:9:\"\0*\0hidden\";a:3:{i:0;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:2;s:6:\"public\";}s:8:\"\0*\0casts\";a:4:{s:6:\"rating\";s:5:\"float\";s:7:\"ratings\";s:5:\"array\";s:13:\"reviewer_meta\";s:5:\"array\";s:6:\"images\";s:5:\"array\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:22:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2019-10-30 14:24:25\";s:10:\"updated_at\";s:19:\"2019-10-30 14:26:23\";s:15:\"reviewable_type\";s:16:\"App\\Models\\Guest\";s:13:\"reviewable_id\";i:7;s:14:\"reviewer_email\";s:21:\"agstrscntw3@gmail.com\";s:5:\"title\";s:18:\"Works like a charm\";s:13:\"reviewer_name\";s:14:\"Augustus Okoye\";s:4:\"body\";s:86:\"<div>Ive been using this product since the first samples and it\'s still solid as</div>\";s:4:\"city\";N;s:12:\"country_code\";s:0:\"\";s:11:\"recommended\";i:1;s:6:\"public\";i:1;s:6:\"rating\";s:4:\"0.00\";s:14:\"average_rating\";s:4:\"3.83\";s:7:\"ratings\";s:275:\"{\"quality\":{\"name\":\"Quality\",\"rating\":4},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":4},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":3},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":4},\"weight\":{\"name\":\"Weight\",\"rating\":4}}\";s:6:\"images\";N;s:13:\"reviewer_meta\";N;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:1;s:10:\"product_id\";i:6;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:22:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2019-10-30 14:24:25\";s:10:\"updated_at\";s:19:\"2019-10-30 14:26:23\";s:15:\"reviewable_type\";s:16:\"App\\Models\\Guest\";s:13:\"reviewable_id\";i:7;s:14:\"reviewer_email\";s:21:\"agstrscntw3@gmail.com\";s:5:\"title\";s:18:\"Works like a charm\";s:13:\"reviewer_name\";s:14:\"Augustus Okoye\";s:4:\"body\";s:86:\"<div>Ive been using this product since the first samples and it\'s still solid as</div>\";s:4:\"city\";N;s:12:\"country_code\";s:0:\"\";s:11:\"recommended\";i:1;s:6:\"public\";i:1;s:6:\"rating\";s:4:\"0.00\";s:14:\"average_rating\";s:4:\"3.83\";s:7:\"ratings\";s:275:\"{\"quality\":{\"name\":\"Quality\",\"rating\":4},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":4},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":3},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":4},\"weight\":{\"name\":\"Weight\",\"rating\":4}}\";s:6:\"images\";N;s:13:\"reviewer_meta\";N;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:1;s:10:\"product_id\";i:6;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:34:\"App\\Models\\Ecommerce\\ProductReview\":26:{s:8:\"\0*\0table\";s:15:\"product_reviews\";s:11:\"\0*\0fillable\";a:10:{i:0;s:5:\"title\";i:1;s:4:\"body\";i:2;s:13:\"reviewer_name\";i:3;s:13:\"reviewer_meta\";i:4;s:14:\"reviewer_email\";i:5;s:11:\"recommended\";i:6;s:14:\"average_rating\";i:7;s:7:\"ratings\";i:8;s:10:\"product_id\";i:9;s:17:\"approver_admin_id\";}s:9:\"\0*\0hidden\";a:3:{i:0;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:2;s:6:\"public\";}s:8:\"\0*\0casts\";a:4:{s:6:\"rating\";s:5:\"float\";s:7:\"ratings\";s:5:\"array\";s:13:\"reviewer_meta\";s:5:\"array\";s:6:\"images\";s:5:\"array\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:22:{s:2:\"id\";i:1;s:10:\"created_at\";s:19:\"2019-10-24 02:34:56\";s:10:\"updated_at\";s:19:\"2019-10-24 02:35:14\";s:15:\"reviewable_type\";s:16:\"App\\Models\\Guest\";s:13:\"reviewable_id\";i:7;s:14:\"reviewer_email\";s:21:\"agstrscntw3@gmail.com\";s:5:\"title\";s:17:\"Excellent product\";s:13:\"reviewer_name\";s:14:\"Augustus Okoye\";s:4:\"body\";s:66:\"<div>I love this product and it works like magic. Great work</div>\";s:4:\"city\";N;s:12:\"country_code\";s:0:\"\";s:11:\"recommended\";i:1;s:6:\"public\";i:1;s:6:\"rating\";s:4:\"0.00\";s:14:\"average_rating\";s:4:\"3.67\";s:7:\"ratings\";s:275:\"{\"quality\":{\"name\":\"Quality\",\"rating\":3},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":4},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":3},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":4},\"weight\":{\"name\":\"Weight\",\"rating\":4}}\";s:6:\"images\";N;s:13:\"reviewer_meta\";N;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:1;s:10:\"product_id\";i:6;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:22:{s:2:\"id\";i:1;s:10:\"created_at\";s:19:\"2019-10-24 02:34:56\";s:10:\"updated_at\";s:19:\"2019-10-24 02:35:14\";s:15:\"reviewable_type\";s:16:\"App\\Models\\Guest\";s:13:\"reviewable_id\";i:7;s:14:\"reviewer_email\";s:21:\"agstrscntw3@gmail.com\";s:5:\"title\";s:17:\"Excellent product\";s:13:\"reviewer_name\";s:14:\"Augustus Okoye\";s:4:\"body\";s:66:\"<div>I love this product and it works like magic. Great work</div>\";s:4:\"city\";N;s:12:\"country_code\";s:0:\"\";s:11:\"recommended\";i:1;s:6:\"public\";i:1;s:6:\"rating\";s:4:\"0.00\";s:14:\"average_rating\";s:4:\"3.67\";s:7:\"ratings\";s:275:\"{\"quality\":{\"name\":\"Quality\",\"rating\":3},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":4},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":3},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":4},\"weight\":{\"name\":\"Weight\",\"rating\":4}}\";s:6:\"images\";N;s:13:\"reviewer_meta\";N;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:1;s:10:\"product_id\";i:6;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}}s:11:\"\0*\0original\";a:56:{s:2:\"id\";i:6;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2020-02-23 05:06:12\";s:15:\"manufacturer_id\";N;s:9:\"parent_id\";N;s:4:\"name\";s:19:\"Wireless Power Bank\";s:4:\"slug\";s:19:\"wireless-power-bank\";s:9:\"seo_title\";s:131:\"New MOIREI QI Wireless Power Bank 10000 mAh Type-C, USB QC, Wireless PD Charging Mobile Portable Wireless Charger Powerbank with QR\";s:13:\"currency_code\";s:3:\"AUD\";s:11:\"purchasable\";i:1;s:17:\"date_on_sale_from\";N;s:15:\"date_on_sale_to\";s:19:\"2019-11-15 01:30:00\";s:5:\"price\";s:5:\"79.00\";s:10:\"sale_price\";s:5:\"74.99\";s:7:\"price_2\";s:38:\"[{\"currency_code\":\"NGN\",\"price\":7000}]\";s:12:\"sale_price_2\";s:2:\"[]\";s:4:\"misc\";s:2:\"[]\";s:5:\"brand\";s:6:\"MOIREI\";s:6:\"slogan\";s:51:\"Faster and safer charging with advanced technology.\";s:9:\"sale_note\";s:13:\"Free Delivery\";s:13:\"purchase_note\";N;s:7:\"on_sale\";i:1;s:17:\"short_description\";s:192:\"<div>Power up quickly with the MG001 Wireless Power Bank, featuring wireless 5W PD and 5V@2A fast charge standard USB connector. Recharge your mobile device anywhere, anytime, with ease.</div>\";s:11:\"description\";s:1330:\"<div>Never run out of phone battery again and enjoy the convenience of wireless charging. The MG001 Wireless Power Bank has in store, 10,000 mAh which can charge up a standard smart phone up to three times over.&nbsp;<br><br></div><div><strong>POPULAR USE CASES</strong></div><div><br></div><ul><li><strong>iPhone X:</strong> Recharge 3.4 times</li><li><strong>iPhone 8:</strong> Recharge 2.3 times</li><li><strong>Samsung Galaxy S8:</strong> Recharge 2.4 times</li></ul><div>&nbsp;<br><br></div><div><strong>HIGH-CAPACITY, HIGH-SPEED, PORTABLE CHARGING<br></strong><br></div><div>Unlike most power banks, the MG001 is extremely lightweight, incredibly compact power bank – just 16.8mm thickness – equipped with high-speed Type-C and standard USB, delivering up to 2A.<br><br></div><div>&nbsp;</div><div><strong>POWER UP IN STYLE, POWER UP SAFE<br></strong><br></div><div>The MG001 is integrated with high density lithium polymer batteries with surge protection, short circuit protection and more advanced safety features keep you and your devices safe.&nbsp;<br><br></div><div><br></div><div><strong>UNIVERSAL CONNECTIVITY<br></strong><br></div><div>It\'s so convenient! The MG001 is compatible with a wide range of mobile devices. Can connect up to three devices at the same time with 1 ultra-fast 2A PD output.<br><br></div>\";s:7:\"gallery\";s:18:\"[3,10,4,5,6,7,8,9]\";s:6:\"rating\";s:4:\"3.94\";s:3:\"mpn\";s:8:\"MGC29008\";s:3:\"sku\";s:4:\"7188\";s:15:\"warranty_period\";N;s:8:\"material\";N;s:5:\"stock\";s:2:\"[]\";s:9:\"unstocked\";i:0;s:14:\"shipping_price\";N;s:11:\"weight_unit\";s:2:\"kg\";s:11:\"volume_unit\";s:2:\"cm\";s:5:\"width\";s:4:\"8.50\";s:6:\"length\";s:4:\"2.68\";s:6:\"height\";s:5:\"17.00\";s:6:\"weight\";s:4:\"0.31\";s:17:\"shipping_class_id\";i:2;s:11:\"theme_color\";N;s:3:\"url\";s:24:\"https://moirei.com/mg001\";s:13:\"allow_reviews\";i:1;s:16:\"allow_backorders\";i:0;s:12:\"downloadable\";i:0;s:7:\"virtual\";i:0;s:8:\"featured\";i:0;s:22:\"countries_available_to\";s:6:\"[\"AU\"]\";s:21:\"countries_hidden_from\";s:4:\"null\";s:4:\"meta\";s:25:\"{\"available_on_gm\":false}\";s:6:\"status\";s:7:\"release\";s:10:\"visibility\";s:6:\"public\";s:18:\"catalog_visibility\";s:11:\"shop-search\";s:10:\"deleted_at\";N;s:4:\"faqs\";s:1246:\"[{\"question\":\"Where are you based? Where do you ship from?\",\"answer\":\"We\'re based in the Adelaide, Australia. All MG001 orders ship directly from our office in Adelaide.\"},{\"question\":\"How does it work?\",\"answer\":\"The MG001 works like every other power bank with traditional USB outputs. But to use the wireless charging, you simply place your device on the power bank then push the side button. You can check your device\\u2019s wireless charging <a href=\\\"#\\\">here<\\/a>.\"},{\"question\":\"How long will it take for my order to arrive?\",\"answer\":\"We ship all orders placed Monday - Friday before 1:30 PM ACST the same day. For customers within Australia, your order should arrive within 3 business days via Post Standard Delivery. If you do not receive your order within 4 days, please check your mailbox and tracking number, then contact us. Average delivery time for international orders is 6-9 business days. However, international shipping delays can occur due to your country\'s customs process. Once your order arrives in your country, it is transferred to your local postal carrier for final delivery. In a small minority of cases, delivery can take longer. If it\'s been more than 5 weeks, contact us and we will help track down your order.\"}]\";s:16:\"return_policy_id\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:1:{i:0;s:10:\"deleted_at\";}s:13:\"\0*\0dateFormat\";N;s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:3:{s:14:\"shipping_class\";O:29:\"App\\Models\\Ecommerce\\Shipping\":26:{s:11:\"\0*\0fillable\";a:11:{i:0;s:4:\"name\";i:1;s:11:\"description\";i:2;s:4:\"rate\";i:3;s:13:\"currency_code\";i:4;s:6:\"rate_2\";i:5;s:8:\"services\";i:6;s:23:\"local_min_business_days\";i:7;s:23:\"local_max_business_days\";i:8;s:26:\"regional_min_business_days\";i:9;s:26:\"regional_max_business_days\";i:10;s:17:\"publicly_optional\";}s:8:\"\0*\0table\";s:16:\"shipping_classes\";s:8:\"\0*\0casts\";a:5:{s:6:\"rate_2\";s:5:\"array\";s:23:\"local_min_business_days\";s:5:\"array\";s:23:\"local_max_business_days\";s:5:\"array\";s:26:\"regional_min_business_days\";s:5:\"array\";s:26:\"regional_max_business_days\";s:5:\"array\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:15:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-11-07 03:47:25\";s:4:\"name\";s:9:\"Flat Rate\";s:4:\"slug\";s:9:\"flat-rate\";s:11:\"description\";N;s:4:\"rate\";s:5:\"10.10\";s:6:\"rate_2\";s:70:\"[{\"currency_code\":\"NGN\",\"rate\":500},{\"currency_code\":\"AUD\",\"rate\":10}]\";s:13:\"currency_code\";s:3:\"USD\";s:23:\"local_min_business_days\";s:59:\"[{\"store\":\"adelaide\",\"days\":11},{\"store\":\"ikeja\",\"days\":4}]\";s:23:\"local_max_business_days\";s:60:\"[{\"store\":\"adelaide\",\"days\":15},{\"store\":\"ikeja\",\"days\":14}]\";s:26:\"regional_min_business_days\";s:2:\"[]\";s:26:\"regional_max_business_days\";s:2:\"[]\";s:8:\"services\";N;s:17:\"publicly_optional\";i:0;}s:11:\"\0*\0original\";a:15:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-11-07 03:47:25\";s:4:\"name\";s:9:\"Flat Rate\";s:4:\"slug\";s:9:\"flat-rate\";s:11:\"description\";N;s:4:\"rate\";s:5:\"10.10\";s:6:\"rate_2\";s:70:\"[{\"currency_code\":\"NGN\",\"rate\":500},{\"currency_code\":\"AUD\",\"rate\":10}]\";s:13:\"currency_code\";s:3:\"USD\";s:23:\"local_min_business_days\";s:59:\"[{\"store\":\"adelaide\",\"days\":11},{\"store\":\"ikeja\",\"days\":4}]\";s:23:\"local_max_business_days\";s:60:\"[{\"store\":\"adelaide\",\"days\":15},{\"store\":\"ikeja\",\"days\":14}]\";s:26:\"regional_min_business_days\";s:2:\"[]\";s:26:\"regional_max_business_days\";s:2:\"[]\";s:8:\"services\";N;s:17:\"publicly_optional\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:10:\"attributes\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":1:{s:8:\"\0*\0items\";a:2:{i:0;O:37:\"App\\Models\\Ecommerce\\ProductAttribute\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:4:\"type\";i:2;s:12:\"is_variation\";i:3;s:20:\"show_on_product_page\";}s:8:\"\0*\0table\";s:18:\"product_attributes\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:4;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-10-10 05:39:08\";s:4:\"name\";s:6:\"Colour\";s:4:\"slug\";s:6:\"colour\";s:4:\"type\";s:6:\"colour\";s:12:\"is_variation\";i:0;s:20:\"show_on_product_page\";i:1;s:10:\"product_id\";i:6;}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:4;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-10-10 05:39:08\";s:4:\"name\";s:6:\"Colour\";s:4:\"slug\";s:6:\"colour\";s:4:\"type\";s:6:\"colour\";s:12:\"is_variation\";i:0;s:20:\"show_on_product_page\";i:1;s:10:\"product_id\";i:6;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:7:\"options\";r:188;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:37:\"App\\Models\\Ecommerce\\ProductAttribute\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:4:\"type\";i:2;s:12:\"is_variation\";i:3;s:20:\"show_on_product_page\";}s:8:\"\0*\0table\";s:18:\"product_attributes\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:5;s:10:\"created_at\";s:19:\"2019-10-25 13:12:58\";s:10:\"updated_at\";s:19:\"2019-10-25 13:12:58\";s:4:\"name\";s:5:\"Model\";s:4:\"slug\";s:5:\"model\";s:4:\"type\";s:5:\"model\";s:12:\"is_variation\";i:0;s:20:\"show_on_product_page\";i:1;s:10:\"product_id\";i:6;}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:5;s:10:\"created_at\";s:19:\"2019-10-25 13:12:58\";s:10:\"updated_at\";s:19:\"2019-10-25 13:12:58\";s:4:\"name\";s:5:\"Model\";s:4:\"slug\";s:5:\"model\";s:4:\"type\";s:5:\"model\";s:12:\"is_variation\";i:0;s:20:\"show_on_product_page\";i:1;s:10:\"product_id\";i:6;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:7:\"options\";r:294;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:10:\"categories\";r:394;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}}}}}', '2020-03-13 22:18:39', '2020-03-13 22:18:39');
INSERT INTO `cart_storage` (`id`, `cart_data`, `created_at`, `updated_at`) VALUES
('AU:32372160-65d5-11ea-8195-6917f5ea8708_cart_items', 'O:32:\"Darryldecode\\Cart\\CartCollection\":1:{s:8:\"\0*\0items\";a:1:{i:1584178845;O:32:\"Darryldecode\\Cart\\ItemCollection\":2:{s:9:\"\0*\0config\";a:6:{s:14:\"format_numbers\";b:0;s:8:\"decimals\";i:0;s:9:\"dec_point\";s:1:\".\";s:13:\"thousands_sep\";s:1:\",\";s:7:\"storage\";s:18:\"App\\Cart\\DBStorage\";s:6:\"events\";N;}s:8:\"\0*\0items\";a:7:{s:2:\"id\";i:1584178845;s:4:\"name\";s:19:\"Wireless Power Bank\";s:5:\"price\";d:74.99;s:8:\"quantity\";i:1;s:10:\"attributes\";O:41:\"Darryldecode\\Cart\\ItemAttributeCollection\":1:{s:8:\"\0*\0items\";a:2:{i:0;O:8:\"stdClass\":3:{s:9:\"attribute\";s:6:\"Colour\";s:4:\"name\";s:5:\"Black\";s:5:\"value\";s:5:\"black\";}i:1;O:8:\"stdClass\":3:{s:9:\"attribute\";s:5:\"Model\";s:4:\"name\";s:6:\"MG001B\";s:5:\"value\";s:6:\"mg001b\";}}}s:10:\"conditions\";O:31:\"Darryldecode\\Cart\\CartCondition\":2:{s:37:\"\0Darryldecode\\Cart\\CartCondition\0args\";a:3:{s:4:\"name\";s:8:\"Shipping\";s:4:\"type\";s:8:\"shipping\";s:5:\"value\";s:3:\"+10\";}s:14:\"parsedRawValue\";N;}s:15:\"associatedModel\";O:28:\"App\\Models\\Ecommerce\\Product\":28:{s:11:\"\0*\0fillable\";a:35:{i:0;s:4:\"name\";i:1;s:9:\"seo_title\";i:2;s:13:\"currency_code\";i:3;s:11:\"purchasable\";i:4;s:5:\"price\";i:5;s:10:\"sale_price\";i:6;s:13:\"regular_price\";i:7;s:4:\"misc\";i:8;s:5:\"brand\";i:9;s:6:\"slogan\";i:10;s:9:\"sale_note\";i:11;s:11:\"description\";i:12;s:17:\"short_description\";i:13;s:3:\"mpn\";i:14;s:3:\"sku\";i:15;s:11:\"weight_unit\";i:16;s:11:\"volume_unit\";i:17;s:5:\"width\";i:18;s:6:\"length\";i:19;s:6:\"height\";i:20;s:6:\"weight\";i:21;s:11:\"theme_color\";i:22;s:13:\"purchase_note\";i:23;s:3:\"url\";i:24;s:13:\"allow_reviews\";i:25;s:16:\"allow_backorders\";i:26;s:8:\"featured\";i:27;s:10:\"visibility\";i:28;s:18:\"catalog_visibility\";i:29;s:6:\"status\";i:30;s:22:\"countries_available_to\";i:31;s:21:\"countries_hidden_from\";i:32;s:4:\"faqs\";i:33;s:15:\"available_on_gm\";i:34;s:4:\"meta\";}s:8:\"\0*\0table\";s:8:\"products\";s:8:\"\0*\0casts\";a:11:{s:7:\"gallery\";s:5:\"array\";s:7:\"price_2\";s:5:\"array\";s:12:\"sale_price_2\";s:5:\"array\";s:15:\"regular_price_2\";s:5:\"array\";s:17:\"date_on_sale_from\";s:8:\"datetime\";s:15:\"date_on_sale_to\";s:8:\"datetime\";s:5:\"stock\";s:5:\"array\";s:4:\"misc\";s:5:\"array\";s:4:\"meta\";s:5:\"array\";s:4:\"faqs\";s:5:\"array\";s:11:\"purchasable\";s:7:\"boolean\";}s:10:\"\0*\0appends\";a:10:{i:0;s:5:\"image\";i:1;s:6:\"images\";i:2;s:8:\"currency\";i:3;s:12:\"availability\";i:4;s:9:\"image_url\";i:5;s:9:\"gm_images\";i:6;s:28:\"gm_sale_price_effective_date\";i:7;s:14:\"gm_description\";i:8;s:17:\"gm_shipping_label\";i:9;s:15:\"available_on_gm\";}s:9:\"\0*\0hidden\";a:11:{i:0;s:22:\"countries_available_to\";i:1;s:21:\"countries_hidden_from\";i:2;s:14:\"shipping_class\";i:3;s:7:\"price_2\";i:4;s:12:\"sale_price_2\";i:5;s:5:\"stock\";i:6;s:9:\"unstocked\";i:7;s:6:\"status\";i:8;s:10:\"visibility\";i:9;s:18:\"catalog_visibility\";i:10;s:4:\"meta\";}s:10:\"model_data\";s:4:\"meta\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:68:{s:2:\"id\";i:6;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2020-02-23 05:06:12\";s:15:\"manufacturer_id\";N;s:9:\"parent_id\";N;s:4:\"name\";s:19:\"Wireless Power Bank\";s:4:\"slug\";s:19:\"wireless-power-bank\";s:9:\"seo_title\";s:131:\"New MOIREI QI Wireless Power Bank 10000 mAh Type-C, USB QC, Wireless PD Charging Mobile Portable Wireless Charger Powerbank with QR\";s:13:\"currency_code\";s:3:\"AUD\";s:11:\"purchasable\";i:1;s:17:\"date_on_sale_from\";N;s:15:\"date_on_sale_to\";s:19:\"2019-11-15 01:30:00\";s:5:\"price\";s:5:\"74.99\";s:10:\"sale_price\";s:5:\"74.99\";s:7:\"price_2\";s:38:\"[{\"currency_code\":\"NGN\",\"price\":7000}]\";s:12:\"sale_price_2\";s:2:\"[]\";s:4:\"misc\";s:2:\"[]\";s:5:\"brand\";s:6:\"MOIREI\";s:6:\"slogan\";s:51:\"Faster and safer charging with advanced technology.\";s:9:\"sale_note\";s:13:\"Free Delivery\";s:13:\"purchase_note\";s:0:\"\";s:7:\"on_sale\";i:1;s:17:\"short_description\";s:192:\"<div>Power up quickly with the MG001 Wireless Power Bank, featuring wireless 5W PD and 5V@2A fast charge standard USB connector. Recharge your mobile device anywhere, anytime, with ease.</div>\";s:11:\"description\";s:1330:\"<div>Never run out of phone battery again and enjoy the convenience of wireless charging. The MG001 Wireless Power Bank has in store, 10,000 mAh which can charge up a standard smart phone up to three times over.&nbsp;<br><br></div><div><strong>POPULAR USE CASES</strong></div><div><br></div><ul><li><strong>iPhone X:</strong> Recharge 3.4 times</li><li><strong>iPhone 8:</strong> Recharge 2.3 times</li><li><strong>Samsung Galaxy S8:</strong> Recharge 2.4 times</li></ul><div>&nbsp;<br><br></div><div><strong>HIGH-CAPACITY, HIGH-SPEED, PORTABLE CHARGING<br></strong><br></div><div>Unlike most power banks, the MG001 is extremely lightweight, incredibly compact power bank – just 16.8mm thickness – equipped with high-speed Type-C and standard USB, delivering up to 2A.<br><br></div><div>&nbsp;</div><div><strong>POWER UP IN STYLE, POWER UP SAFE<br></strong><br></div><div>The MG001 is integrated with high density lithium polymer batteries with surge protection, short circuit protection and more advanced safety features keep you and your devices safe.&nbsp;<br><br></div><div><br></div><div><strong>UNIVERSAL CONNECTIVITY<br></strong><br></div><div>It\'s so convenient! The MG001 is compatible with a wide range of mobile devices. Can connect up to three devices at the same time with 1 ultra-fast 2A PD output.<br><br></div>\";s:7:\"gallery\";s:18:\"[3,10,4,5,6,7,8,9]\";s:6:\"rating\";d:3.5;s:3:\"mpn\";s:8:\"MGC29008\";s:3:\"sku\";s:4:\"7188\";s:15:\"warranty_period\";N;s:8:\"material\";N;s:5:\"stock\";s:2:\"[]\";s:9:\"unstocked\";i:0;s:14:\"shipping_price\";i:10;s:11:\"weight_unit\";s:2:\"kg\";s:11:\"volume_unit\";s:2:\"cm\";s:5:\"width\";s:4:\"8.50\";s:6:\"length\";s:4:\"2.68\";s:6:\"height\";s:5:\"17.00\";s:6:\"weight\";s:4:\"0.31\";s:17:\"shipping_class_id\";i:2;s:11:\"theme_color\";N;s:3:\"url\";s:24:\"https://moirei.com/mg001\";s:13:\"allow_reviews\";i:1;s:16:\"allow_backorders\";i:0;s:12:\"downloadable\";i:0;s:7:\"virtual\";i:0;s:8:\"featured\";i:0;s:22:\"countries_available_to\";s:6:\"[\"AU\"]\";s:21:\"countries_hidden_from\";s:4:\"null\";s:4:\"meta\";s:25:\"{\"available_on_gm\":false}\";s:6:\"status\";s:7:\"release\";s:10:\"visibility\";s:6:\"public\";s:18:\"catalog_visibility\";s:11:\"shop-search\";s:10:\"deleted_at\";N;s:4:\"faqs\";s:1246:\"[{\"question\":\"Where are you based? Where do you ship from?\",\"answer\":\"We\'re based in the Adelaide, Australia. All MG001 orders ship directly from our office in Adelaide.\"},{\"question\":\"How does it work?\",\"answer\":\"The MG001 works like every other power bank with traditional USB outputs. But to use the wireless charging, you simply place your device on the power bank then push the side button. You can check your device\\u2019s wireless charging <a href=\\\"#\\\">here<\\/a>.\"},{\"question\":\"How long will it take for my order to arrive?\",\"answer\":\"We ship all orders placed Monday - Friday before 1:30 PM ACST the same day. For customers within Australia, your order should arrive within 3 business days via Post Standard Delivery. If you do not receive your order within 4 days, please check your mailbox and tracking number, then contact us. Average delivery time for international orders is 6-9 business days. However, international shipping delays can occur due to your country\'s customs process. Once your order arrives in your country, it is transferred to your local postal carrier for final delivery. In a small minority of cases, delivery can take longer. If it\'s been more than 5 weeks, contact us and we will help track down your order.\"}]\";s:16:\"return_policy_id\";i:1;s:13:\"regular_price\";s:5:\"79.00\";s:11:\"percent_off\";i:5;s:12:\"is_favourite\";b:0;s:8:\"is_liked\";b:0;s:10:\"is_in_cart\";b:0;s:13:\"shipping_html\";s:26:\"<strong> AUD $10 </strong>\";s:18:\"estimated_delivery\";s:44:\"Between <b>Mon. 30 Mar. and Fri. 03 Apr.</b>\";s:17:\"earliest_delivery\";s:12:\"Mon. 30 Mar.\";s:12:\"checkout_url\";s:68:\"https://www.moirei-dev.com/shop/checkout?product=wireless-power-bank\";s:10:\"attributes\";a:2:{i:0;O:8:\"stdClass\":6:{s:2:\"id\";i:4;s:4:\"name\";s:6:\"Colour\";s:10:\"product_id\";i:6;s:20:\"show_on_product_page\";i:1;s:4:\"type\";s:6:\"colour\";s:7:\"options\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":1:{s:8:\"\0*\0items\";a:2:{i:0;O:43:\"App\\Models\\Ecommerce\\ProductAttributeOption\":26:{s:11:\"\0*\0fillable\";a:2:{i:0;s:4:\"name\";i:1;s:5:\"value\";}s:9:\"\0*\0hidden\";a:1:{i:0;s:14:\"product_images\";}s:8:\"\0*\0casts\";a:1:{s:14:\"product_images\";s:5:\"array\";}s:10:\"\0*\0appends\";a:1:{i:0;s:6:\"images\";}s:8:\"\0*\0table\";s:25:\"product_attribute_options\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:7;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-11-11 05:55:25\";s:4:\"name\";s:5:\"White\";s:4:\"slug\";s:5:\"white\";s:5:\"value\";s:5:\"white\";s:20:\"product_attribute_id\";i:4;s:14:\"product_images\";s:172:\"[\"https:\\/\\/mrsc.moirei-dev.com\\/storage\\/media\\/new-moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-po-1571132539-v52oz.jpg\"]\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:7;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-11-11 05:55:25\";s:4:\"name\";s:5:\"White\";s:4:\"slug\";s:5:\"white\";s:5:\"value\";s:5:\"white\";s:20:\"product_attribute_id\";i:4;s:14:\"product_images\";s:172:\"[\"https:\\/\\/mrsc.moirei-dev.com\\/storage\\/media\\/new-moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-po-1571132539-v52oz.jpg\"]\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:43:\"App\\Models\\Ecommerce\\ProductAttributeOption\":26:{s:11:\"\0*\0fillable\";a:2:{i:0;s:4:\"name\";i:1;s:5:\"value\";}s:9:\"\0*\0hidden\";a:1:{i:0;s:14:\"product_images\";}s:8:\"\0*\0casts\";a:1:{s:14:\"product_images\";s:5:\"array\";}s:10:\"\0*\0appends\";a:1:{i:0;s:6:\"images\";}s:8:\"\0*\0table\";s:25:\"product_attribute_options\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:8;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-11-11 05:55:38\";s:4:\"name\";s:5:\"Black\";s:4:\"slug\";s:5:\"black\";s:5:\"value\";s:5:\"black\";s:20:\"product_attribute_id\";i:4;s:14:\"product_images\";s:172:\"[\"https:\\/\\/mrsc.moirei-dev.com\\/storage\\/media\\/moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portab-1571132538-TBjEQ.jpg\"]\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:8;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-11-11 05:55:38\";s:4:\"name\";s:5:\"Black\";s:4:\"slug\";s:5:\"black\";s:5:\"value\";s:5:\"black\";s:20:\"product_attribute_id\";i:4;s:14:\"product_images\";s:172:\"[\"https:\\/\\/mrsc.moirei-dev.com\\/storage\\/media\\/moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portab-1571132538-TBjEQ.jpg\"]\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}}i:1;O:8:\"stdClass\":6:{s:2:\"id\";i:5;s:4:\"name\";s:5:\"Model\";s:10:\"product_id\";i:6;s:20:\"show_on_product_page\";i:1;s:4:\"type\";s:5:\"model\";s:7:\"options\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":1:{s:8:\"\0*\0items\";a:2:{i:0;O:43:\"App\\Models\\Ecommerce\\ProductAttributeOption\":26:{s:11:\"\0*\0fillable\";a:2:{i:0;s:4:\"name\";i:1;s:5:\"value\";}s:9:\"\0*\0hidden\";a:1:{i:0;s:14:\"product_images\";}s:8:\"\0*\0casts\";a:1:{s:14:\"product_images\";s:5:\"array\";}s:10:\"\0*\0appends\";a:1:{i:0;s:6:\"images\";}s:8:\"\0*\0table\";s:25:\"product_attribute_options\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:9;s:10:\"created_at\";s:19:\"2019-10-25 13:13:26\";s:10:\"updated_at\";s:19:\"2019-10-25 13:13:26\";s:4:\"name\";s:5:\"MG001\";s:4:\"slug\";s:5:\"mg001\";s:5:\"value\";s:5:\"mg001\";s:20:\"product_attribute_id\";i:5;s:14:\"product_images\";N;}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:9;s:10:\"created_at\";s:19:\"2019-10-25 13:13:26\";s:10:\"updated_at\";s:19:\"2019-10-25 13:13:26\";s:4:\"name\";s:5:\"MG001\";s:4:\"slug\";s:5:\"mg001\";s:5:\"value\";s:5:\"mg001\";s:20:\"product_attribute_id\";i:5;s:14:\"product_images\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:43:\"App\\Models\\Ecommerce\\ProductAttributeOption\":26:{s:11:\"\0*\0fillable\";a:2:{i:0;s:4:\"name\";i:1;s:5:\"value\";}s:9:\"\0*\0hidden\";a:1:{i:0;s:14:\"product_images\";}s:8:\"\0*\0casts\";a:1:{s:14:\"product_images\";s:5:\"array\";}s:10:\"\0*\0appends\";a:1:{i:0;s:6:\"images\";}s:8:\"\0*\0table\";s:25:\"product_attribute_options\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:10;s:10:\"created_at\";s:19:\"2019-10-25 13:13:36\";s:10:\"updated_at\";s:19:\"2019-10-25 13:13:36\";s:4:\"name\";s:6:\"MG001B\";s:4:\"slug\";s:6:\"mg001b\";s:5:\"value\";s:6:\"mg001b\";s:20:\"product_attribute_id\";i:5;s:14:\"product_images\";N;}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:10;s:10:\"created_at\";s:19:\"2019-10-25 13:13:36\";s:10:\"updated_at\";s:19:\"2019-10-25 13:13:36\";s:4:\"name\";s:6:\"MG001B\";s:4:\"slug\";s:6:\"mg001b\";s:5:\"value\";s:6:\"mg001b\";s:20:\"product_attribute_id\";i:5;s:14:\"product_images\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}}}s:10:\"categories\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:36:\"App\\Models\\Ecommerce\\ProductCategory\":26:{s:11:\"\0*\0fillable\";a:3:{i:0;s:4:\"name\";i:1;s:4:\"slug\";i:2;s:11:\"description\";}s:9:\"\0*\0hidden\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:5:\"pivot\";}s:8:\"\0*\0table\";s:18:\"product_categories\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:3;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-10-10 05:39:08\";s:4:\"name\";s:14:\"Home Appliance\";s:4:\"slug\";s:14:\"home-appliance\";s:11:\"description\";N;}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:3;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-10-10 05:39:08\";s:4:\"name\";s:14:\"Home Appliance\";s:4:\"slug\";s:14:\"home-appliance\";s:11:\"description\";N;s:16:\"pivot_product_id\";i:6;s:25:\"pivot_product_category_id\";i:3;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"pivot\";O:44:\"Illuminate\\Database\\Eloquent\\Relations\\Pivot\":29:{s:12:\"incrementing\";b:0;s:10:\"\0*\0guarded\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:16:\"category_product\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:2:{s:10:\"product_id\";i:6;s:19:\"product_category_id\";i:3;}s:11:\"\0*\0original\";a:2:{s:10:\"product_id\";i:6;s:19:\"product_category_id\";i:3;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:11:\"pivotParent\";r:32;s:13:\"\0*\0foreignKey\";s:10:\"product_id\";s:13:\"\0*\0relatedKey\";s:19:\"product_category_id\";}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:7:\"reviews\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":1:{s:8:\"\0*\0items\";a:3:{i:0;O:34:\"App\\Models\\Ecommerce\\ProductReview\":26:{s:8:\"\0*\0table\";s:15:\"product_reviews\";s:11:\"\0*\0fillable\";a:10:{i:0;s:5:\"title\";i:1;s:4:\"body\";i:2;s:13:\"reviewer_name\";i:3;s:13:\"reviewer_meta\";i:4;s:14:\"reviewer_email\";i:5;s:11:\"recommended\";i:6;s:14:\"average_rating\";i:7;s:7:\"ratings\";i:8;s:10:\"product_id\";i:9;s:17:\"approver_admin_id\";}s:9:\"\0*\0hidden\";a:3:{i:0;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:2;s:6:\"public\";}s:8:\"\0*\0casts\";a:4:{s:6:\"rating\";s:5:\"float\";s:7:\"ratings\";s:5:\"array\";s:13:\"reviewer_meta\";s:5:\"array\";s:6:\"images\";s:5:\"array\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:22:{s:2:\"id\";i:3;s:10:\"created_at\";s:19:\"2019-10-30 14:25:09\";s:10:\"updated_at\";s:19:\"2019-10-30 14:26:15\";s:15:\"reviewable_type\";s:16:\"App\\Models\\Guest\";s:13:\"reviewable_id\";i:7;s:14:\"reviewer_email\";s:21:\"agstrscntw3@gmail.com\";s:5:\"title\";s:10:\"Awesome as\";s:13:\"reviewer_name\";s:14:\"Augustus Okoye\";s:4:\"body\";s:86:\"<div>Ive been using this product since the first samples and it\'s still solid as</div>\";s:4:\"city\";N;s:12:\"country_code\";s:0:\"\";s:11:\"recommended\";i:1;s:6:\"public\";i:1;s:6:\"rating\";s:4:\"0.00\";s:14:\"average_rating\";s:4:\"4.33\";s:7:\"ratings\";s:275:\"{\"quality\":{\"name\":\"Quality\",\"rating\":5},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":3},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":5},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":5},\"weight\":{\"name\":\"Weight\",\"rating\":4}}\";s:6:\"images\";N;s:13:\"reviewer_meta\";N;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:1;s:10:\"product_id\";i:6;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:22:{s:2:\"id\";i:3;s:10:\"created_at\";s:19:\"2019-10-30 14:25:09\";s:10:\"updated_at\";s:19:\"2019-10-30 14:26:15\";s:15:\"reviewable_type\";s:16:\"App\\Models\\Guest\";s:13:\"reviewable_id\";i:7;s:14:\"reviewer_email\";s:21:\"agstrscntw3@gmail.com\";s:5:\"title\";s:10:\"Awesome as\";s:13:\"reviewer_name\";s:14:\"Augustus Okoye\";s:4:\"body\";s:86:\"<div>Ive been using this product since the first samples and it\'s still solid as</div>\";s:4:\"city\";N;s:12:\"country_code\";s:0:\"\";s:11:\"recommended\";i:1;s:6:\"public\";i:1;s:6:\"rating\";s:4:\"0.00\";s:14:\"average_rating\";s:4:\"4.33\";s:7:\"ratings\";s:275:\"{\"quality\":{\"name\":\"Quality\",\"rating\":5},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":3},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":5},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":5},\"weight\":{\"name\":\"Weight\",\"rating\":4}}\";s:6:\"images\";N;s:13:\"reviewer_meta\";N;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:1;s:10:\"product_id\";i:6;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:34:\"App\\Models\\Ecommerce\\ProductReview\":26:{s:8:\"\0*\0table\";s:15:\"product_reviews\";s:11:\"\0*\0fillable\";a:10:{i:0;s:5:\"title\";i:1;s:4:\"body\";i:2;s:13:\"reviewer_name\";i:3;s:13:\"reviewer_meta\";i:4;s:14:\"reviewer_email\";i:5;s:11:\"recommended\";i:6;s:14:\"average_rating\";i:7;s:7:\"ratings\";i:8;s:10:\"product_id\";i:9;s:17:\"approver_admin_id\";}s:9:\"\0*\0hidden\";a:3:{i:0;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:2;s:6:\"public\";}s:8:\"\0*\0casts\";a:4:{s:6:\"rating\";s:5:\"float\";s:7:\"ratings\";s:5:\"array\";s:13:\"reviewer_meta\";s:5:\"array\";s:6:\"images\";s:5:\"array\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:22:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2019-10-30 14:24:25\";s:10:\"updated_at\";s:19:\"2019-10-30 14:26:23\";s:15:\"reviewable_type\";s:16:\"App\\Models\\Guest\";s:13:\"reviewable_id\";i:7;s:14:\"reviewer_email\";s:21:\"agstrscntw3@gmail.com\";s:5:\"title\";s:18:\"Works like a charm\";s:13:\"reviewer_name\";s:14:\"Augustus Okoye\";s:4:\"body\";s:86:\"<div>Ive been using this product since the first samples and it\'s still solid as</div>\";s:4:\"city\";N;s:12:\"country_code\";s:0:\"\";s:11:\"recommended\";i:1;s:6:\"public\";i:1;s:6:\"rating\";s:4:\"0.00\";s:14:\"average_rating\";s:4:\"3.83\";s:7:\"ratings\";s:275:\"{\"quality\":{\"name\":\"Quality\",\"rating\":4},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":4},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":3},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":4},\"weight\":{\"name\":\"Weight\",\"rating\":4}}\";s:6:\"images\";N;s:13:\"reviewer_meta\";N;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:1;s:10:\"product_id\";i:6;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:22:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2019-10-30 14:24:25\";s:10:\"updated_at\";s:19:\"2019-10-30 14:26:23\";s:15:\"reviewable_type\";s:16:\"App\\Models\\Guest\";s:13:\"reviewable_id\";i:7;s:14:\"reviewer_email\";s:21:\"agstrscntw3@gmail.com\";s:5:\"title\";s:18:\"Works like a charm\";s:13:\"reviewer_name\";s:14:\"Augustus Okoye\";s:4:\"body\";s:86:\"<div>Ive been using this product since the first samples and it\'s still solid as</div>\";s:4:\"city\";N;s:12:\"country_code\";s:0:\"\";s:11:\"recommended\";i:1;s:6:\"public\";i:1;s:6:\"rating\";s:4:\"0.00\";s:14:\"average_rating\";s:4:\"3.83\";s:7:\"ratings\";s:275:\"{\"quality\":{\"name\":\"Quality\",\"rating\":4},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":4},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":3},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":4},\"weight\":{\"name\":\"Weight\",\"rating\":4}}\";s:6:\"images\";N;s:13:\"reviewer_meta\";N;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:1;s:10:\"product_id\";i:6;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:34:\"App\\Models\\Ecommerce\\ProductReview\":26:{s:8:\"\0*\0table\";s:15:\"product_reviews\";s:11:\"\0*\0fillable\";a:10:{i:0;s:5:\"title\";i:1;s:4:\"body\";i:2;s:13:\"reviewer_name\";i:3;s:13:\"reviewer_meta\";i:4;s:14:\"reviewer_email\";i:5;s:11:\"recommended\";i:6;s:14:\"average_rating\";i:7;s:7:\"ratings\";i:8;s:10:\"product_id\";i:9;s:17:\"approver_admin_id\";}s:9:\"\0*\0hidden\";a:3:{i:0;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:2;s:6:\"public\";}s:8:\"\0*\0casts\";a:4:{s:6:\"rating\";s:5:\"float\";s:7:\"ratings\";s:5:\"array\";s:13:\"reviewer_meta\";s:5:\"array\";s:6:\"images\";s:5:\"array\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:22:{s:2:\"id\";i:1;s:10:\"created_at\";s:19:\"2019-10-24 02:34:56\";s:10:\"updated_at\";s:19:\"2019-10-24 02:35:14\";s:15:\"reviewable_type\";s:16:\"App\\Models\\Guest\";s:13:\"reviewable_id\";i:7;s:14:\"reviewer_email\";s:21:\"agstrscntw3@gmail.com\";s:5:\"title\";s:17:\"Excellent product\";s:13:\"reviewer_name\";s:14:\"Augustus Okoye\";s:4:\"body\";s:66:\"<div>I love this product and it works like magic. Great work</div>\";s:4:\"city\";N;s:12:\"country_code\";s:0:\"\";s:11:\"recommended\";i:1;s:6:\"public\";i:1;s:6:\"rating\";s:4:\"0.00\";s:14:\"average_rating\";s:4:\"3.67\";s:7:\"ratings\";s:275:\"{\"quality\":{\"name\":\"Quality\",\"rating\":3},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":4},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":3},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":4},\"weight\":{\"name\":\"Weight\",\"rating\":4}}\";s:6:\"images\";N;s:13:\"reviewer_meta\";N;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:1;s:10:\"product_id\";i:6;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:22:{s:2:\"id\";i:1;s:10:\"created_at\";s:19:\"2019-10-24 02:34:56\";s:10:\"updated_at\";s:19:\"2019-10-24 02:35:14\";s:15:\"reviewable_type\";s:16:\"App\\Models\\Guest\";s:13:\"reviewable_id\";i:7;s:14:\"reviewer_email\";s:21:\"agstrscntw3@gmail.com\";s:5:\"title\";s:17:\"Excellent product\";s:13:\"reviewer_name\";s:14:\"Augustus Okoye\";s:4:\"body\";s:66:\"<div>I love this product and it works like magic. Great work</div>\";s:4:\"city\";N;s:12:\"country_code\";s:0:\"\";s:11:\"recommended\";i:1;s:6:\"public\";i:1;s:6:\"rating\";s:4:\"0.00\";s:14:\"average_rating\";s:4:\"3.67\";s:7:\"ratings\";s:275:\"{\"quality\":{\"name\":\"Quality\",\"rating\":3},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":4},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":3},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":4},\"weight\":{\"name\":\"Weight\",\"rating\":4}}\";s:6:\"images\";N;s:13:\"reviewer_meta\";N;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:1;s:10:\"product_id\";i:6;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}}s:11:\"\0*\0original\";a:56:{s:2:\"id\";i:6;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2020-02-23 05:06:12\";s:15:\"manufacturer_id\";N;s:9:\"parent_id\";N;s:4:\"name\";s:19:\"Wireless Power Bank\";s:4:\"slug\";s:19:\"wireless-power-bank\";s:9:\"seo_title\";s:131:\"New MOIREI QI Wireless Power Bank 10000 mAh Type-C, USB QC, Wireless PD Charging Mobile Portable Wireless Charger Powerbank with QR\";s:13:\"currency_code\";s:3:\"AUD\";s:11:\"purchasable\";i:1;s:17:\"date_on_sale_from\";N;s:15:\"date_on_sale_to\";s:19:\"2019-11-15 01:30:00\";s:5:\"price\";s:5:\"79.00\";s:10:\"sale_price\";s:5:\"74.99\";s:7:\"price_2\";s:38:\"[{\"currency_code\":\"NGN\",\"price\":7000}]\";s:12:\"sale_price_2\";s:2:\"[]\";s:4:\"misc\";s:2:\"[]\";s:5:\"brand\";s:6:\"MOIREI\";s:6:\"slogan\";s:51:\"Faster and safer charging with advanced technology.\";s:9:\"sale_note\";s:13:\"Free Delivery\";s:13:\"purchase_note\";N;s:7:\"on_sale\";i:1;s:17:\"short_description\";s:192:\"<div>Power up quickly with the MG001 Wireless Power Bank, featuring wireless 5W PD and 5V@2A fast charge standard USB connector. Recharge your mobile device anywhere, anytime, with ease.</div>\";s:11:\"description\";s:1330:\"<div>Never run out of phone battery again and enjoy the convenience of wireless charging. The MG001 Wireless Power Bank has in store, 10,000 mAh which can charge up a standard smart phone up to three times over.&nbsp;<br><br></div><div><strong>POPULAR USE CASES</strong></div><div><br></div><ul><li><strong>iPhone X:</strong> Recharge 3.4 times</li><li><strong>iPhone 8:</strong> Recharge 2.3 times</li><li><strong>Samsung Galaxy S8:</strong> Recharge 2.4 times</li></ul><div>&nbsp;<br><br></div><div><strong>HIGH-CAPACITY, HIGH-SPEED, PORTABLE CHARGING<br></strong><br></div><div>Unlike most power banks, the MG001 is extremely lightweight, incredibly compact power bank – just 16.8mm thickness – equipped with high-speed Type-C and standard USB, delivering up to 2A.<br><br></div><div>&nbsp;</div><div><strong>POWER UP IN STYLE, POWER UP SAFE<br></strong><br></div><div>The MG001 is integrated with high density lithium polymer batteries with surge protection, short circuit protection and more advanced safety features keep you and your devices safe.&nbsp;<br><br></div><div><br></div><div><strong>UNIVERSAL CONNECTIVITY<br></strong><br></div><div>It\'s so convenient! The MG001 is compatible with a wide range of mobile devices. Can connect up to three devices at the same time with 1 ultra-fast 2A PD output.<br><br></div>\";s:7:\"gallery\";s:18:\"[3,10,4,5,6,7,8,9]\";s:6:\"rating\";s:4:\"3.94\";s:3:\"mpn\";s:8:\"MGC29008\";s:3:\"sku\";s:4:\"7188\";s:15:\"warranty_period\";N;s:8:\"material\";N;s:5:\"stock\";s:2:\"[]\";s:9:\"unstocked\";i:0;s:14:\"shipping_price\";N;s:11:\"weight_unit\";s:2:\"kg\";s:11:\"volume_unit\";s:2:\"cm\";s:5:\"width\";s:4:\"8.50\";s:6:\"length\";s:4:\"2.68\";s:6:\"height\";s:5:\"17.00\";s:6:\"weight\";s:4:\"0.31\";s:17:\"shipping_class_id\";i:2;s:11:\"theme_color\";N;s:3:\"url\";s:24:\"https://moirei.com/mg001\";s:13:\"allow_reviews\";i:1;s:16:\"allow_backorders\";i:0;s:12:\"downloadable\";i:0;s:7:\"virtual\";i:0;s:8:\"featured\";i:0;s:22:\"countries_available_to\";s:6:\"[\"AU\"]\";s:21:\"countries_hidden_from\";s:4:\"null\";s:4:\"meta\";s:25:\"{\"available_on_gm\":false}\";s:6:\"status\";s:7:\"release\";s:10:\"visibility\";s:6:\"public\";s:18:\"catalog_visibility\";s:11:\"shop-search\";s:10:\"deleted_at\";N;s:4:\"faqs\";s:1246:\"[{\"question\":\"Where are you based? Where do you ship from?\",\"answer\":\"We\'re based in the Adelaide, Australia. All MG001 orders ship directly from our office in Adelaide.\"},{\"question\":\"How does it work?\",\"answer\":\"The MG001 works like every other power bank with traditional USB outputs. But to use the wireless charging, you simply place your device on the power bank then push the side button. You can check your device\\u2019s wireless charging <a href=\\\"#\\\">here<\\/a>.\"},{\"question\":\"How long will it take for my order to arrive?\",\"answer\":\"We ship all orders placed Monday - Friday before 1:30 PM ACST the same day. For customers within Australia, your order should arrive within 3 business days via Post Standard Delivery. If you do not receive your order within 4 days, please check your mailbox and tracking number, then contact us. Average delivery time for international orders is 6-9 business days. However, international shipping delays can occur due to your country\'s customs process. Once your order arrives in your country, it is transferred to your local postal carrier for final delivery. In a small minority of cases, delivery can take longer. If it\'s been more than 5 weeks, contact us and we will help track down your order.\"}]\";s:16:\"return_policy_id\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:1:{i:0;s:10:\"deleted_at\";}s:13:\"\0*\0dateFormat\";N;s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:3:{s:14:\"shipping_class\";O:29:\"App\\Models\\Ecommerce\\Shipping\":26:{s:11:\"\0*\0fillable\";a:11:{i:0;s:4:\"name\";i:1;s:11:\"description\";i:2;s:4:\"rate\";i:3;s:13:\"currency_code\";i:4;s:6:\"rate_2\";i:5;s:8:\"services\";i:6;s:23:\"local_min_business_days\";i:7;s:23:\"local_max_business_days\";i:8;s:26:\"regional_min_business_days\";i:9;s:26:\"regional_max_business_days\";i:10;s:17:\"publicly_optional\";}s:8:\"\0*\0table\";s:16:\"shipping_classes\";s:8:\"\0*\0casts\";a:5:{s:6:\"rate_2\";s:5:\"array\";s:23:\"local_min_business_days\";s:5:\"array\";s:23:\"local_max_business_days\";s:5:\"array\";s:26:\"regional_min_business_days\";s:5:\"array\";s:26:\"regional_max_business_days\";s:5:\"array\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:15:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-11-07 03:47:25\";s:4:\"name\";s:9:\"Flat Rate\";s:4:\"slug\";s:9:\"flat-rate\";s:11:\"description\";N;s:4:\"rate\";s:5:\"10.10\";s:6:\"rate_2\";s:70:\"[{\"currency_code\":\"NGN\",\"rate\":500},{\"currency_code\":\"AUD\",\"rate\":10}]\";s:13:\"currency_code\";s:3:\"USD\";s:23:\"local_min_business_days\";s:59:\"[{\"store\":\"adelaide\",\"days\":11},{\"store\":\"ikeja\",\"days\":4}]\";s:23:\"local_max_business_days\";s:60:\"[{\"store\":\"adelaide\",\"days\":15},{\"store\":\"ikeja\",\"days\":14}]\";s:26:\"regional_min_business_days\";s:2:\"[]\";s:26:\"regional_max_business_days\";s:2:\"[]\";s:8:\"services\";N;s:17:\"publicly_optional\";i:0;}s:11:\"\0*\0original\";a:15:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-11-07 03:47:25\";s:4:\"name\";s:9:\"Flat Rate\";s:4:\"slug\";s:9:\"flat-rate\";s:11:\"description\";N;s:4:\"rate\";s:5:\"10.10\";s:6:\"rate_2\";s:70:\"[{\"currency_code\":\"NGN\",\"rate\":500},{\"currency_code\":\"AUD\",\"rate\":10}]\";s:13:\"currency_code\";s:3:\"USD\";s:23:\"local_min_business_days\";s:59:\"[{\"store\":\"adelaide\",\"days\":11},{\"store\":\"ikeja\",\"days\":4}]\";s:23:\"local_max_business_days\";s:60:\"[{\"store\":\"adelaide\",\"days\":15},{\"store\":\"ikeja\",\"days\":14}]\";s:26:\"regional_min_business_days\";s:2:\"[]\";s:26:\"regional_max_business_days\";s:2:\"[]\";s:8:\"services\";N;s:17:\"publicly_optional\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:10:\"attributes\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":1:{s:8:\"\0*\0items\";a:2:{i:0;O:37:\"App\\Models\\Ecommerce\\ProductAttribute\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:4:\"type\";i:2;s:12:\"is_variation\";i:3;s:20:\"show_on_product_page\";}s:8:\"\0*\0table\";s:18:\"product_attributes\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:4;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-10-10 05:39:08\";s:4:\"name\";s:6:\"Colour\";s:4:\"slug\";s:6:\"colour\";s:4:\"type\";s:6:\"colour\";s:12:\"is_variation\";i:0;s:20:\"show_on_product_page\";i:1;s:10:\"product_id\";i:6;}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:4;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-10-10 05:39:08\";s:4:\"name\";s:6:\"Colour\";s:4:\"slug\";s:6:\"colour\";s:4:\"type\";s:6:\"colour\";s:12:\"is_variation\";i:0;s:20:\"show_on_product_page\";i:1;s:10:\"product_id\";i:6;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:7:\"options\";r:188;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:37:\"App\\Models\\Ecommerce\\ProductAttribute\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:4:\"type\";i:2;s:12:\"is_variation\";i:3;s:20:\"show_on_product_page\";}s:8:\"\0*\0table\";s:18:\"product_attributes\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:5;s:10:\"created_at\";s:19:\"2019-10-25 13:12:58\";s:10:\"updated_at\";s:19:\"2019-10-25 13:12:58\";s:4:\"name\";s:5:\"Model\";s:4:\"slug\";s:5:\"model\";s:4:\"type\";s:5:\"model\";s:12:\"is_variation\";i:0;s:20:\"show_on_product_page\";i:1;s:10:\"product_id\";i:6;}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:5;s:10:\"created_at\";s:19:\"2019-10-25 13:12:58\";s:10:\"updated_at\";s:19:\"2019-10-25 13:12:58\";s:4:\"name\";s:5:\"Model\";s:4:\"slug\";s:5:\"model\";s:4:\"type\";s:5:\"model\";s:12:\"is_variation\";i:0;s:20:\"show_on_product_page\";i:1;s:10:\"product_id\";i:6;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:7:\"options\";r:294;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:10:\"categories\";r:394;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}}}}}', '2020-03-13 23:10:45', '2020-03-13 23:10:45');
INSERT INTO `cart_storage` (`id`, `cart_data`, `created_at`, `updated_at`) VALUES
('AU:a0202b60-659b-11ea-ad80-4955833fd4e7_cart_items', 'O:32:\"Darryldecode\\Cart\\CartCollection\":1:{s:8:\"\0*\0items\";a:1:{i:1584172144;O:32:\"Darryldecode\\Cart\\ItemCollection\":2:{s:9:\"\0*\0config\";a:6:{s:14:\"format_numbers\";b:0;s:8:\"decimals\";i:0;s:9:\"dec_point\";s:1:\".\";s:13:\"thousands_sep\";s:1:\",\";s:7:\"storage\";s:18:\"App\\Cart\\DBStorage\";s:6:\"events\";N;}s:8:\"\0*\0items\";a:7:{s:2:\"id\";i:1584172144;s:4:\"name\";s:19:\"Wireless Power Bank\";s:5:\"price\";d:74.99;s:8:\"quantity\";i:1;s:10:\"attributes\";O:41:\"Darryldecode\\Cart\\ItemAttributeCollection\":1:{s:8:\"\0*\0items\";a:2:{i:0;O:8:\"stdClass\":3:{s:9:\"attribute\";s:6:\"Colour\";s:4:\"name\";s:5:\"Black\";s:5:\"value\";s:5:\"black\";}i:1;O:8:\"stdClass\":3:{s:9:\"attribute\";s:5:\"Model\";s:4:\"name\";s:6:\"MG001B\";s:5:\"value\";s:6:\"mg001b\";}}}s:10:\"conditions\";O:31:\"Darryldecode\\Cart\\CartCondition\":2:{s:37:\"\0Darryldecode\\Cart\\CartCondition\0args\";a:3:{s:4:\"name\";s:8:\"Shipping\";s:4:\"type\";s:8:\"shipping\";s:5:\"value\";s:3:\"+10\";}s:14:\"parsedRawValue\";N;}s:15:\"associatedModel\";O:28:\"App\\Models\\Ecommerce\\Product\":28:{s:11:\"\0*\0fillable\";a:35:{i:0;s:4:\"name\";i:1;s:9:\"seo_title\";i:2;s:13:\"currency_code\";i:3;s:11:\"purchasable\";i:4;s:5:\"price\";i:5;s:10:\"sale_price\";i:6;s:13:\"regular_price\";i:7;s:4:\"misc\";i:8;s:5:\"brand\";i:9;s:6:\"slogan\";i:10;s:9:\"sale_note\";i:11;s:11:\"description\";i:12;s:17:\"short_description\";i:13;s:3:\"mpn\";i:14;s:3:\"sku\";i:15;s:11:\"weight_unit\";i:16;s:11:\"volume_unit\";i:17;s:5:\"width\";i:18;s:6:\"length\";i:19;s:6:\"height\";i:20;s:6:\"weight\";i:21;s:11:\"theme_color\";i:22;s:13:\"purchase_note\";i:23;s:3:\"url\";i:24;s:13:\"allow_reviews\";i:25;s:16:\"allow_backorders\";i:26;s:8:\"featured\";i:27;s:10:\"visibility\";i:28;s:18:\"catalog_visibility\";i:29;s:6:\"status\";i:30;s:22:\"countries_available_to\";i:31;s:21:\"countries_hidden_from\";i:32;s:4:\"faqs\";i:33;s:15:\"available_on_gm\";i:34;s:4:\"meta\";}s:8:\"\0*\0table\";s:8:\"products\";s:8:\"\0*\0casts\";a:11:{s:7:\"gallery\";s:5:\"array\";s:7:\"price_2\";s:5:\"array\";s:12:\"sale_price_2\";s:5:\"array\";s:15:\"regular_price_2\";s:5:\"array\";s:17:\"date_on_sale_from\";s:8:\"datetime\";s:15:\"date_on_sale_to\";s:8:\"datetime\";s:5:\"stock\";s:5:\"array\";s:4:\"misc\";s:5:\"array\";s:4:\"meta\";s:5:\"array\";s:4:\"faqs\";s:5:\"array\";s:11:\"purchasable\";s:7:\"boolean\";}s:10:\"\0*\0appends\";a:10:{i:0;s:5:\"image\";i:1;s:6:\"images\";i:2;s:8:\"currency\";i:3;s:12:\"availability\";i:4;s:9:\"image_url\";i:5;s:9:\"gm_images\";i:6;s:28:\"gm_sale_price_effective_date\";i:7;s:14:\"gm_description\";i:8;s:17:\"gm_shipping_label\";i:9;s:15:\"available_on_gm\";}s:9:\"\0*\0hidden\";a:11:{i:0;s:22:\"countries_available_to\";i:1;s:21:\"countries_hidden_from\";i:2;s:14:\"shipping_class\";i:3;s:7:\"price_2\";i:4;s:12:\"sale_price_2\";i:5;s:5:\"stock\";i:6;s:9:\"unstocked\";i:7;s:6:\"status\";i:8;s:10:\"visibility\";i:9;s:18:\"catalog_visibility\";i:10;s:4:\"meta\";}s:10:\"model_data\";s:4:\"meta\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:68:{s:2:\"id\";i:6;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2020-02-23 05:06:12\";s:15:\"manufacturer_id\";N;s:9:\"parent_id\";N;s:4:\"name\";s:19:\"Wireless Power Bank\";s:4:\"slug\";s:19:\"wireless-power-bank\";s:9:\"seo_title\";s:131:\"New MOIREI QI Wireless Power Bank 10000 mAh Type-C, USB QC, Wireless PD Charging Mobile Portable Wireless Charger Powerbank with QR\";s:13:\"currency_code\";s:3:\"AUD\";s:11:\"purchasable\";i:1;s:17:\"date_on_sale_from\";N;s:15:\"date_on_sale_to\";s:19:\"2019-11-15 01:30:00\";s:5:\"price\";s:5:\"74.99\";s:10:\"sale_price\";s:5:\"74.99\";s:7:\"price_2\";s:38:\"[{\"currency_code\":\"NGN\",\"price\":7000}]\";s:12:\"sale_price_2\";s:2:\"[]\";s:4:\"misc\";s:2:\"[]\";s:5:\"brand\";s:6:\"MOIREI\";s:6:\"slogan\";s:51:\"Faster and safer charging with advanced technology.\";s:9:\"sale_note\";s:13:\"Free Delivery\";s:13:\"purchase_note\";s:0:\"\";s:7:\"on_sale\";i:1;s:17:\"short_description\";s:192:\"<div>Power up quickly with the MG001 Wireless Power Bank, featuring wireless 5W PD and 5V@2A fast charge standard USB connector. Recharge your mobile device anywhere, anytime, with ease.</div>\";s:11:\"description\";s:1330:\"<div>Never run out of phone battery again and enjoy the convenience of wireless charging. The MG001 Wireless Power Bank has in store, 10,000 mAh which can charge up a standard smart phone up to three times over.&nbsp;<br><br></div><div><strong>POPULAR USE CASES</strong></div><div><br></div><ul><li><strong>iPhone X:</strong> Recharge 3.4 times</li><li><strong>iPhone 8:</strong> Recharge 2.3 times</li><li><strong>Samsung Galaxy S8:</strong> Recharge 2.4 times</li></ul><div>&nbsp;<br><br></div><div><strong>HIGH-CAPACITY, HIGH-SPEED, PORTABLE CHARGING<br></strong><br></div><div>Unlike most power banks, the MG001 is extremely lightweight, incredibly compact power bank – just 16.8mm thickness – equipped with high-speed Type-C and standard USB, delivering up to 2A.<br><br></div><div>&nbsp;</div><div><strong>POWER UP IN STYLE, POWER UP SAFE<br></strong><br></div><div>The MG001 is integrated with high density lithium polymer batteries with surge protection, short circuit protection and more advanced safety features keep you and your devices safe.&nbsp;<br><br></div><div><br></div><div><strong>UNIVERSAL CONNECTIVITY<br></strong><br></div><div>It\'s so convenient! The MG001 is compatible with a wide range of mobile devices. Can connect up to three devices at the same time with 1 ultra-fast 2A PD output.<br><br></div>\";s:7:\"gallery\";s:18:\"[3,10,4,5,6,7,8,9]\";s:6:\"rating\";d:3.5;s:3:\"mpn\";s:8:\"MGC29008\";s:3:\"sku\";s:4:\"7188\";s:15:\"warranty_period\";N;s:8:\"material\";N;s:5:\"stock\";s:2:\"[]\";s:9:\"unstocked\";i:0;s:14:\"shipping_price\";i:10;s:11:\"weight_unit\";s:2:\"kg\";s:11:\"volume_unit\";s:2:\"cm\";s:5:\"width\";s:4:\"8.50\";s:6:\"length\";s:4:\"2.68\";s:6:\"height\";s:5:\"17.00\";s:6:\"weight\";s:4:\"0.31\";s:17:\"shipping_class_id\";i:2;s:11:\"theme_color\";N;s:3:\"url\";s:24:\"https://moirei.com/mg001\";s:13:\"allow_reviews\";i:1;s:16:\"allow_backorders\";i:0;s:12:\"downloadable\";i:0;s:7:\"virtual\";i:0;s:8:\"featured\";i:0;s:22:\"countries_available_to\";s:6:\"[\"AU\"]\";s:21:\"countries_hidden_from\";s:4:\"null\";s:4:\"meta\";s:25:\"{\"available_on_gm\":false}\";s:6:\"status\";s:7:\"release\";s:10:\"visibility\";s:6:\"public\";s:18:\"catalog_visibility\";s:11:\"shop-search\";s:10:\"deleted_at\";N;s:4:\"faqs\";s:1246:\"[{\"question\":\"Where are you based? Where do you ship from?\",\"answer\":\"We\'re based in the Adelaide, Australia. All MG001 orders ship directly from our office in Adelaide.\"},{\"question\":\"How does it work?\",\"answer\":\"The MG001 works like every other power bank with traditional USB outputs. But to use the wireless charging, you simply place your device on the power bank then push the side button. You can check your device\\u2019s wireless charging <a href=\\\"#\\\">here<\\/a>.\"},{\"question\":\"How long will it take for my order to arrive?\",\"answer\":\"We ship all orders placed Monday - Friday before 1:30 PM ACST the same day. For customers within Australia, your order should arrive within 3 business days via Post Standard Delivery. If you do not receive your order within 4 days, please check your mailbox and tracking number, then contact us. Average delivery time for international orders is 6-9 business days. However, international shipping delays can occur due to your country\'s customs process. Once your order arrives in your country, it is transferred to your local postal carrier for final delivery. In a small minority of cases, delivery can take longer. If it\'s been more than 5 weeks, contact us and we will help track down your order.\"}]\";s:16:\"return_policy_id\";i:1;s:13:\"regular_price\";s:5:\"79.00\";s:11:\"percent_off\";i:5;s:12:\"is_favourite\";b:0;s:8:\"is_liked\";b:0;s:10:\"is_in_cart\";b:0;s:13:\"shipping_html\";s:26:\"<strong> AUD $10 </strong>\";s:18:\"estimated_delivery\";s:44:\"Between <b>Mon. 30 Mar. and Fri. 03 Apr.</b>\";s:17:\"earliest_delivery\";s:12:\"Mon. 30 Mar.\";s:12:\"checkout_url\";s:68:\"https://www.moirei-dev.com/shop/checkout?product=wireless-power-bank\";s:10:\"attributes\";a:2:{i:0;O:8:\"stdClass\":6:{s:2:\"id\";i:4;s:4:\"name\";s:6:\"Colour\";s:10:\"product_id\";i:6;s:20:\"show_on_product_page\";i:1;s:4:\"type\";s:6:\"colour\";s:7:\"options\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":1:{s:8:\"\0*\0items\";a:2:{i:0;O:43:\"App\\Models\\Ecommerce\\ProductAttributeOption\":26:{s:11:\"\0*\0fillable\";a:2:{i:0;s:4:\"name\";i:1;s:5:\"value\";}s:9:\"\0*\0hidden\";a:1:{i:0;s:14:\"product_images\";}s:8:\"\0*\0casts\";a:1:{s:14:\"product_images\";s:5:\"array\";}s:10:\"\0*\0appends\";a:1:{i:0;s:6:\"images\";}s:8:\"\0*\0table\";s:25:\"product_attribute_options\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:7;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-11-11 05:55:25\";s:4:\"name\";s:5:\"White\";s:4:\"slug\";s:5:\"white\";s:5:\"value\";s:5:\"white\";s:20:\"product_attribute_id\";i:4;s:14:\"product_images\";s:172:\"[\"https:\\/\\/mrsc.moirei-dev.com\\/storage\\/media\\/new-moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-po-1571132539-v52oz.jpg\"]\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:7;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-11-11 05:55:25\";s:4:\"name\";s:5:\"White\";s:4:\"slug\";s:5:\"white\";s:5:\"value\";s:5:\"white\";s:20:\"product_attribute_id\";i:4;s:14:\"product_images\";s:172:\"[\"https:\\/\\/mrsc.moirei-dev.com\\/storage\\/media\\/new-moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-po-1571132539-v52oz.jpg\"]\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:43:\"App\\Models\\Ecommerce\\ProductAttributeOption\":26:{s:11:\"\0*\0fillable\";a:2:{i:0;s:4:\"name\";i:1;s:5:\"value\";}s:9:\"\0*\0hidden\";a:1:{i:0;s:14:\"product_images\";}s:8:\"\0*\0casts\";a:1:{s:14:\"product_images\";s:5:\"array\";}s:10:\"\0*\0appends\";a:1:{i:0;s:6:\"images\";}s:8:\"\0*\0table\";s:25:\"product_attribute_options\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:8;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-11-11 05:55:38\";s:4:\"name\";s:5:\"Black\";s:4:\"slug\";s:5:\"black\";s:5:\"value\";s:5:\"black\";s:20:\"product_attribute_id\";i:4;s:14:\"product_images\";s:172:\"[\"https:\\/\\/mrsc.moirei-dev.com\\/storage\\/media\\/moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portab-1571132538-TBjEQ.jpg\"]\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:8;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-11-11 05:55:38\";s:4:\"name\";s:5:\"Black\";s:4:\"slug\";s:5:\"black\";s:5:\"value\";s:5:\"black\";s:20:\"product_attribute_id\";i:4;s:14:\"product_images\";s:172:\"[\"https:\\/\\/mrsc.moirei-dev.com\\/storage\\/media\\/moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portab-1571132538-TBjEQ.jpg\"]\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}}i:1;O:8:\"stdClass\":6:{s:2:\"id\";i:5;s:4:\"name\";s:5:\"Model\";s:10:\"product_id\";i:6;s:20:\"show_on_product_page\";i:1;s:4:\"type\";s:5:\"model\";s:7:\"options\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":1:{s:8:\"\0*\0items\";a:2:{i:0;O:43:\"App\\Models\\Ecommerce\\ProductAttributeOption\":26:{s:11:\"\0*\0fillable\";a:2:{i:0;s:4:\"name\";i:1;s:5:\"value\";}s:9:\"\0*\0hidden\";a:1:{i:0;s:14:\"product_images\";}s:8:\"\0*\0casts\";a:1:{s:14:\"product_images\";s:5:\"array\";}s:10:\"\0*\0appends\";a:1:{i:0;s:6:\"images\";}s:8:\"\0*\0table\";s:25:\"product_attribute_options\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:9;s:10:\"created_at\";s:19:\"2019-10-25 13:13:26\";s:10:\"updated_at\";s:19:\"2019-10-25 13:13:26\";s:4:\"name\";s:5:\"MG001\";s:4:\"slug\";s:5:\"mg001\";s:5:\"value\";s:5:\"mg001\";s:20:\"product_attribute_id\";i:5;s:14:\"product_images\";N;}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:9;s:10:\"created_at\";s:19:\"2019-10-25 13:13:26\";s:10:\"updated_at\";s:19:\"2019-10-25 13:13:26\";s:4:\"name\";s:5:\"MG001\";s:4:\"slug\";s:5:\"mg001\";s:5:\"value\";s:5:\"mg001\";s:20:\"product_attribute_id\";i:5;s:14:\"product_images\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:43:\"App\\Models\\Ecommerce\\ProductAttributeOption\":26:{s:11:\"\0*\0fillable\";a:2:{i:0;s:4:\"name\";i:1;s:5:\"value\";}s:9:\"\0*\0hidden\";a:1:{i:0;s:14:\"product_images\";}s:8:\"\0*\0casts\";a:1:{s:14:\"product_images\";s:5:\"array\";}s:10:\"\0*\0appends\";a:1:{i:0;s:6:\"images\";}s:8:\"\0*\0table\";s:25:\"product_attribute_options\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:10;s:10:\"created_at\";s:19:\"2019-10-25 13:13:36\";s:10:\"updated_at\";s:19:\"2019-10-25 13:13:36\";s:4:\"name\";s:6:\"MG001B\";s:4:\"slug\";s:6:\"mg001b\";s:5:\"value\";s:6:\"mg001b\";s:20:\"product_attribute_id\";i:5;s:14:\"product_images\";N;}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:10;s:10:\"created_at\";s:19:\"2019-10-25 13:13:36\";s:10:\"updated_at\";s:19:\"2019-10-25 13:13:36\";s:4:\"name\";s:6:\"MG001B\";s:4:\"slug\";s:6:\"mg001b\";s:5:\"value\";s:6:\"mg001b\";s:20:\"product_attribute_id\";i:5;s:14:\"product_images\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}}}s:10:\"categories\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:36:\"App\\Models\\Ecommerce\\ProductCategory\":26:{s:11:\"\0*\0fillable\";a:3:{i:0;s:4:\"name\";i:1;s:4:\"slug\";i:2;s:11:\"description\";}s:9:\"\0*\0hidden\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:5:\"pivot\";}s:8:\"\0*\0table\";s:18:\"product_categories\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:3;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-10-10 05:39:08\";s:4:\"name\";s:14:\"Home Appliance\";s:4:\"slug\";s:14:\"home-appliance\";s:11:\"description\";N;}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:3;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-10-10 05:39:08\";s:4:\"name\";s:14:\"Home Appliance\";s:4:\"slug\";s:14:\"home-appliance\";s:11:\"description\";N;s:16:\"pivot_product_id\";i:6;s:25:\"pivot_product_category_id\";i:3;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"pivot\";O:44:\"Illuminate\\Database\\Eloquent\\Relations\\Pivot\":29:{s:12:\"incrementing\";b:0;s:10:\"\0*\0guarded\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:16:\"category_product\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:2:{s:10:\"product_id\";i:6;s:19:\"product_category_id\";i:3;}s:11:\"\0*\0original\";a:2:{s:10:\"product_id\";i:6;s:19:\"product_category_id\";i:3;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:11:\"pivotParent\";r:32;s:13:\"\0*\0foreignKey\";s:10:\"product_id\";s:13:\"\0*\0relatedKey\";s:19:\"product_category_id\";}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:7:\"reviews\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":1:{s:8:\"\0*\0items\";a:3:{i:0;O:34:\"App\\Models\\Ecommerce\\ProductReview\":26:{s:8:\"\0*\0table\";s:15:\"product_reviews\";s:11:\"\0*\0fillable\";a:10:{i:0;s:5:\"title\";i:1;s:4:\"body\";i:2;s:13:\"reviewer_name\";i:3;s:13:\"reviewer_meta\";i:4;s:14:\"reviewer_email\";i:5;s:11:\"recommended\";i:6;s:14:\"average_rating\";i:7;s:7:\"ratings\";i:8;s:10:\"product_id\";i:9;s:17:\"approver_admin_id\";}s:9:\"\0*\0hidden\";a:3:{i:0;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:2;s:6:\"public\";}s:8:\"\0*\0casts\";a:4:{s:6:\"rating\";s:5:\"float\";s:7:\"ratings\";s:5:\"array\";s:13:\"reviewer_meta\";s:5:\"array\";s:6:\"images\";s:5:\"array\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:22:{s:2:\"id\";i:3;s:10:\"created_at\";s:19:\"2019-10-30 14:25:09\";s:10:\"updated_at\";s:19:\"2019-10-30 14:26:15\";s:15:\"reviewable_type\";s:16:\"App\\Models\\Guest\";s:13:\"reviewable_id\";i:7;s:14:\"reviewer_email\";s:21:\"agstrscntw3@gmail.com\";s:5:\"title\";s:10:\"Awesome as\";s:13:\"reviewer_name\";s:14:\"Augustus Okoye\";s:4:\"body\";s:86:\"<div>Ive been using this product since the first samples and it\'s still solid as</div>\";s:4:\"city\";N;s:12:\"country_code\";s:0:\"\";s:11:\"recommended\";i:1;s:6:\"public\";i:1;s:6:\"rating\";s:4:\"0.00\";s:14:\"average_rating\";s:4:\"4.33\";s:7:\"ratings\";s:275:\"{\"quality\":{\"name\":\"Quality\",\"rating\":5},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":3},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":5},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":5},\"weight\":{\"name\":\"Weight\",\"rating\":4}}\";s:6:\"images\";N;s:13:\"reviewer_meta\";N;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:1;s:10:\"product_id\";i:6;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:22:{s:2:\"id\";i:3;s:10:\"created_at\";s:19:\"2019-10-30 14:25:09\";s:10:\"updated_at\";s:19:\"2019-10-30 14:26:15\";s:15:\"reviewable_type\";s:16:\"App\\Models\\Guest\";s:13:\"reviewable_id\";i:7;s:14:\"reviewer_email\";s:21:\"agstrscntw3@gmail.com\";s:5:\"title\";s:10:\"Awesome as\";s:13:\"reviewer_name\";s:14:\"Augustus Okoye\";s:4:\"body\";s:86:\"<div>Ive been using this product since the first samples and it\'s still solid as</div>\";s:4:\"city\";N;s:12:\"country_code\";s:0:\"\";s:11:\"recommended\";i:1;s:6:\"public\";i:1;s:6:\"rating\";s:4:\"0.00\";s:14:\"average_rating\";s:4:\"4.33\";s:7:\"ratings\";s:275:\"{\"quality\":{\"name\":\"Quality\",\"rating\":5},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":3},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":5},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":5},\"weight\":{\"name\":\"Weight\",\"rating\":4}}\";s:6:\"images\";N;s:13:\"reviewer_meta\";N;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:1;s:10:\"product_id\";i:6;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:34:\"App\\Models\\Ecommerce\\ProductReview\":26:{s:8:\"\0*\0table\";s:15:\"product_reviews\";s:11:\"\0*\0fillable\";a:10:{i:0;s:5:\"title\";i:1;s:4:\"body\";i:2;s:13:\"reviewer_name\";i:3;s:13:\"reviewer_meta\";i:4;s:14:\"reviewer_email\";i:5;s:11:\"recommended\";i:6;s:14:\"average_rating\";i:7;s:7:\"ratings\";i:8;s:10:\"product_id\";i:9;s:17:\"approver_admin_id\";}s:9:\"\0*\0hidden\";a:3:{i:0;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:2;s:6:\"public\";}s:8:\"\0*\0casts\";a:4:{s:6:\"rating\";s:5:\"float\";s:7:\"ratings\";s:5:\"array\";s:13:\"reviewer_meta\";s:5:\"array\";s:6:\"images\";s:5:\"array\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:22:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2019-10-30 14:24:25\";s:10:\"updated_at\";s:19:\"2019-10-30 14:26:23\";s:15:\"reviewable_type\";s:16:\"App\\Models\\Guest\";s:13:\"reviewable_id\";i:7;s:14:\"reviewer_email\";s:21:\"agstrscntw3@gmail.com\";s:5:\"title\";s:18:\"Works like a charm\";s:13:\"reviewer_name\";s:14:\"Augustus Okoye\";s:4:\"body\";s:86:\"<div>Ive been using this product since the first samples and it\'s still solid as</div>\";s:4:\"city\";N;s:12:\"country_code\";s:0:\"\";s:11:\"recommended\";i:1;s:6:\"public\";i:1;s:6:\"rating\";s:4:\"0.00\";s:14:\"average_rating\";s:4:\"3.83\";s:7:\"ratings\";s:275:\"{\"quality\":{\"name\":\"Quality\",\"rating\":4},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":4},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":3},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":4},\"weight\":{\"name\":\"Weight\",\"rating\":4}}\";s:6:\"images\";N;s:13:\"reviewer_meta\";N;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:1;s:10:\"product_id\";i:6;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:22:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2019-10-30 14:24:25\";s:10:\"updated_at\";s:19:\"2019-10-30 14:26:23\";s:15:\"reviewable_type\";s:16:\"App\\Models\\Guest\";s:13:\"reviewable_id\";i:7;s:14:\"reviewer_email\";s:21:\"agstrscntw3@gmail.com\";s:5:\"title\";s:18:\"Works like a charm\";s:13:\"reviewer_name\";s:14:\"Augustus Okoye\";s:4:\"body\";s:86:\"<div>Ive been using this product since the first samples and it\'s still solid as</div>\";s:4:\"city\";N;s:12:\"country_code\";s:0:\"\";s:11:\"recommended\";i:1;s:6:\"public\";i:1;s:6:\"rating\";s:4:\"0.00\";s:14:\"average_rating\";s:4:\"3.83\";s:7:\"ratings\";s:275:\"{\"quality\":{\"name\":\"Quality\",\"rating\":4},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":4},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":3},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":4},\"weight\":{\"name\":\"Weight\",\"rating\":4}}\";s:6:\"images\";N;s:13:\"reviewer_meta\";N;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:1;s:10:\"product_id\";i:6;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:34:\"App\\Models\\Ecommerce\\ProductReview\":26:{s:8:\"\0*\0table\";s:15:\"product_reviews\";s:11:\"\0*\0fillable\";a:10:{i:0;s:5:\"title\";i:1;s:4:\"body\";i:2;s:13:\"reviewer_name\";i:3;s:13:\"reviewer_meta\";i:4;s:14:\"reviewer_email\";i:5;s:11:\"recommended\";i:6;s:14:\"average_rating\";i:7;s:7:\"ratings\";i:8;s:10:\"product_id\";i:9;s:17:\"approver_admin_id\";}s:9:\"\0*\0hidden\";a:3:{i:0;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:2;s:6:\"public\";}s:8:\"\0*\0casts\";a:4:{s:6:\"rating\";s:5:\"float\";s:7:\"ratings\";s:5:\"array\";s:13:\"reviewer_meta\";s:5:\"array\";s:6:\"images\";s:5:\"array\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:22:{s:2:\"id\";i:1;s:10:\"created_at\";s:19:\"2019-10-24 02:34:56\";s:10:\"updated_at\";s:19:\"2019-10-24 02:35:14\";s:15:\"reviewable_type\";s:16:\"App\\Models\\Guest\";s:13:\"reviewable_id\";i:7;s:14:\"reviewer_email\";s:21:\"agstrscntw3@gmail.com\";s:5:\"title\";s:17:\"Excellent product\";s:13:\"reviewer_name\";s:14:\"Augustus Okoye\";s:4:\"body\";s:66:\"<div>I love this product and it works like magic. Great work</div>\";s:4:\"city\";N;s:12:\"country_code\";s:0:\"\";s:11:\"recommended\";i:1;s:6:\"public\";i:1;s:6:\"rating\";s:4:\"0.00\";s:14:\"average_rating\";s:4:\"3.67\";s:7:\"ratings\";s:275:\"{\"quality\":{\"name\":\"Quality\",\"rating\":3},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":4},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":3},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":4},\"weight\":{\"name\":\"Weight\",\"rating\":4}}\";s:6:\"images\";N;s:13:\"reviewer_meta\";N;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:1;s:10:\"product_id\";i:6;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:22:{s:2:\"id\";i:1;s:10:\"created_at\";s:19:\"2019-10-24 02:34:56\";s:10:\"updated_at\";s:19:\"2019-10-24 02:35:14\";s:15:\"reviewable_type\";s:16:\"App\\Models\\Guest\";s:13:\"reviewable_id\";i:7;s:14:\"reviewer_email\";s:21:\"agstrscntw3@gmail.com\";s:5:\"title\";s:17:\"Excellent product\";s:13:\"reviewer_name\";s:14:\"Augustus Okoye\";s:4:\"body\";s:66:\"<div>I love this product and it works like magic. Great work</div>\";s:4:\"city\";N;s:12:\"country_code\";s:0:\"\";s:11:\"recommended\";i:1;s:6:\"public\";i:1;s:6:\"rating\";s:4:\"0.00\";s:14:\"average_rating\";s:4:\"3.67\";s:7:\"ratings\";s:275:\"{\"quality\":{\"name\":\"Quality\",\"rating\":3},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":4},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":3},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":4},\"weight\":{\"name\":\"Weight\",\"rating\":4}}\";s:6:\"images\";N;s:13:\"reviewer_meta\";N;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:1;s:10:\"product_id\";i:6;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}}s:11:\"\0*\0original\";a:56:{s:2:\"id\";i:6;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2020-02-23 05:06:12\";s:15:\"manufacturer_id\";N;s:9:\"parent_id\";N;s:4:\"name\";s:19:\"Wireless Power Bank\";s:4:\"slug\";s:19:\"wireless-power-bank\";s:9:\"seo_title\";s:131:\"New MOIREI QI Wireless Power Bank 10000 mAh Type-C, USB QC, Wireless PD Charging Mobile Portable Wireless Charger Powerbank with QR\";s:13:\"currency_code\";s:3:\"AUD\";s:11:\"purchasable\";i:1;s:17:\"date_on_sale_from\";N;s:15:\"date_on_sale_to\";s:19:\"2019-11-15 01:30:00\";s:5:\"price\";s:5:\"79.00\";s:10:\"sale_price\";s:5:\"74.99\";s:7:\"price_2\";s:38:\"[{\"currency_code\":\"NGN\",\"price\":7000}]\";s:12:\"sale_price_2\";s:2:\"[]\";s:4:\"misc\";s:2:\"[]\";s:5:\"brand\";s:6:\"MOIREI\";s:6:\"slogan\";s:51:\"Faster and safer charging with advanced technology.\";s:9:\"sale_note\";s:13:\"Free Delivery\";s:13:\"purchase_note\";N;s:7:\"on_sale\";i:1;s:17:\"short_description\";s:192:\"<div>Power up quickly with the MG001 Wireless Power Bank, featuring wireless 5W PD and 5V@2A fast charge standard USB connector. Recharge your mobile device anywhere, anytime, with ease.</div>\";s:11:\"description\";s:1330:\"<div>Never run out of phone battery again and enjoy the convenience of wireless charging. The MG001 Wireless Power Bank has in store, 10,000 mAh which can charge up a standard smart phone up to three times over.&nbsp;<br><br></div><div><strong>POPULAR USE CASES</strong></div><div><br></div><ul><li><strong>iPhone X:</strong> Recharge 3.4 times</li><li><strong>iPhone 8:</strong> Recharge 2.3 times</li><li><strong>Samsung Galaxy S8:</strong> Recharge 2.4 times</li></ul><div>&nbsp;<br><br></div><div><strong>HIGH-CAPACITY, HIGH-SPEED, PORTABLE CHARGING<br></strong><br></div><div>Unlike most power banks, the MG001 is extremely lightweight, incredibly compact power bank – just 16.8mm thickness – equipped with high-speed Type-C and standard USB, delivering up to 2A.<br><br></div><div>&nbsp;</div><div><strong>POWER UP IN STYLE, POWER UP SAFE<br></strong><br></div><div>The MG001 is integrated with high density lithium polymer batteries with surge protection, short circuit protection and more advanced safety features keep you and your devices safe.&nbsp;<br><br></div><div><br></div><div><strong>UNIVERSAL CONNECTIVITY<br></strong><br></div><div>It\'s so convenient! The MG001 is compatible with a wide range of mobile devices. Can connect up to three devices at the same time with 1 ultra-fast 2A PD output.<br><br></div>\";s:7:\"gallery\";s:18:\"[3,10,4,5,6,7,8,9]\";s:6:\"rating\";s:4:\"3.94\";s:3:\"mpn\";s:8:\"MGC29008\";s:3:\"sku\";s:4:\"7188\";s:15:\"warranty_period\";N;s:8:\"material\";N;s:5:\"stock\";s:2:\"[]\";s:9:\"unstocked\";i:0;s:14:\"shipping_price\";N;s:11:\"weight_unit\";s:2:\"kg\";s:11:\"volume_unit\";s:2:\"cm\";s:5:\"width\";s:4:\"8.50\";s:6:\"length\";s:4:\"2.68\";s:6:\"height\";s:5:\"17.00\";s:6:\"weight\";s:4:\"0.31\";s:17:\"shipping_class_id\";i:2;s:11:\"theme_color\";N;s:3:\"url\";s:24:\"https://moirei.com/mg001\";s:13:\"allow_reviews\";i:1;s:16:\"allow_backorders\";i:0;s:12:\"downloadable\";i:0;s:7:\"virtual\";i:0;s:8:\"featured\";i:0;s:22:\"countries_available_to\";s:6:\"[\"AU\"]\";s:21:\"countries_hidden_from\";s:4:\"null\";s:4:\"meta\";s:25:\"{\"available_on_gm\":false}\";s:6:\"status\";s:7:\"release\";s:10:\"visibility\";s:6:\"public\";s:18:\"catalog_visibility\";s:11:\"shop-search\";s:10:\"deleted_at\";N;s:4:\"faqs\";s:1246:\"[{\"question\":\"Where are you based? Where do you ship from?\",\"answer\":\"We\'re based in the Adelaide, Australia. All MG001 orders ship directly from our office in Adelaide.\"},{\"question\":\"How does it work?\",\"answer\":\"The MG001 works like every other power bank with traditional USB outputs. But to use the wireless charging, you simply place your device on the power bank then push the side button. You can check your device\\u2019s wireless charging <a href=\\\"#\\\">here<\\/a>.\"},{\"question\":\"How long will it take for my order to arrive?\",\"answer\":\"We ship all orders placed Monday - Friday before 1:30 PM ACST the same day. For customers within Australia, your order should arrive within 3 business days via Post Standard Delivery. If you do not receive your order within 4 days, please check your mailbox and tracking number, then contact us. Average delivery time for international orders is 6-9 business days. However, international shipping delays can occur due to your country\'s customs process. Once your order arrives in your country, it is transferred to your local postal carrier for final delivery. In a small minority of cases, delivery can take longer. If it\'s been more than 5 weeks, contact us and we will help track down your order.\"}]\";s:16:\"return_policy_id\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:1:{i:0;s:10:\"deleted_at\";}s:13:\"\0*\0dateFormat\";N;s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:3:{s:14:\"shipping_class\";O:29:\"App\\Models\\Ecommerce\\Shipping\":26:{s:11:\"\0*\0fillable\";a:11:{i:0;s:4:\"name\";i:1;s:11:\"description\";i:2;s:4:\"rate\";i:3;s:13:\"currency_code\";i:4;s:6:\"rate_2\";i:5;s:8:\"services\";i:6;s:23:\"local_min_business_days\";i:7;s:23:\"local_max_business_days\";i:8;s:26:\"regional_min_business_days\";i:9;s:26:\"regional_max_business_days\";i:10;s:17:\"publicly_optional\";}s:8:\"\0*\0table\";s:16:\"shipping_classes\";s:8:\"\0*\0casts\";a:5:{s:6:\"rate_2\";s:5:\"array\";s:23:\"local_min_business_days\";s:5:\"array\";s:23:\"local_max_business_days\";s:5:\"array\";s:26:\"regional_min_business_days\";s:5:\"array\";s:26:\"regional_max_business_days\";s:5:\"array\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:15:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-11-07 03:47:25\";s:4:\"name\";s:9:\"Flat Rate\";s:4:\"slug\";s:9:\"flat-rate\";s:11:\"description\";N;s:4:\"rate\";s:5:\"10.10\";s:6:\"rate_2\";s:70:\"[{\"currency_code\":\"NGN\",\"rate\":500},{\"currency_code\":\"AUD\",\"rate\":10}]\";s:13:\"currency_code\";s:3:\"USD\";s:23:\"local_min_business_days\";s:59:\"[{\"store\":\"adelaide\",\"days\":11},{\"store\":\"ikeja\",\"days\":4}]\";s:23:\"local_max_business_days\";s:60:\"[{\"store\":\"adelaide\",\"days\":15},{\"store\":\"ikeja\",\"days\":14}]\";s:26:\"regional_min_business_days\";s:2:\"[]\";s:26:\"regional_max_business_days\";s:2:\"[]\";s:8:\"services\";N;s:17:\"publicly_optional\";i:0;}s:11:\"\0*\0original\";a:15:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-11-07 03:47:25\";s:4:\"name\";s:9:\"Flat Rate\";s:4:\"slug\";s:9:\"flat-rate\";s:11:\"description\";N;s:4:\"rate\";s:5:\"10.10\";s:6:\"rate_2\";s:70:\"[{\"currency_code\":\"NGN\",\"rate\":500},{\"currency_code\":\"AUD\",\"rate\":10}]\";s:13:\"currency_code\";s:3:\"USD\";s:23:\"local_min_business_days\";s:59:\"[{\"store\":\"adelaide\",\"days\":11},{\"store\":\"ikeja\",\"days\":4}]\";s:23:\"local_max_business_days\";s:60:\"[{\"store\":\"adelaide\",\"days\":15},{\"store\":\"ikeja\",\"days\":14}]\";s:26:\"regional_min_business_days\";s:2:\"[]\";s:26:\"regional_max_business_days\";s:2:\"[]\";s:8:\"services\";N;s:17:\"publicly_optional\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:10:\"attributes\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":1:{s:8:\"\0*\0items\";a:2:{i:0;O:37:\"App\\Models\\Ecommerce\\ProductAttribute\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:4:\"type\";i:2;s:12:\"is_variation\";i:3;s:20:\"show_on_product_page\";}s:8:\"\0*\0table\";s:18:\"product_attributes\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:4;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-10-10 05:39:08\";s:4:\"name\";s:6:\"Colour\";s:4:\"slug\";s:6:\"colour\";s:4:\"type\";s:6:\"colour\";s:12:\"is_variation\";i:0;s:20:\"show_on_product_page\";i:1;s:10:\"product_id\";i:6;}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:4;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-10-10 05:39:08\";s:4:\"name\";s:6:\"Colour\";s:4:\"slug\";s:6:\"colour\";s:4:\"type\";s:6:\"colour\";s:12:\"is_variation\";i:0;s:20:\"show_on_product_page\";i:1;s:10:\"product_id\";i:6;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:7:\"options\";r:188;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:37:\"App\\Models\\Ecommerce\\ProductAttribute\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:4:\"type\";i:2;s:12:\"is_variation\";i:3;s:20:\"show_on_product_page\";}s:8:\"\0*\0table\";s:18:\"product_attributes\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:5;s:10:\"created_at\";s:19:\"2019-10-25 13:12:58\";s:10:\"updated_at\";s:19:\"2019-10-25 13:12:58\";s:4:\"name\";s:5:\"Model\";s:4:\"slug\";s:5:\"model\";s:4:\"type\";s:5:\"model\";s:12:\"is_variation\";i:0;s:20:\"show_on_product_page\";i:1;s:10:\"product_id\";i:6;}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:5;s:10:\"created_at\";s:19:\"2019-10-25 13:12:58\";s:10:\"updated_at\";s:19:\"2019-10-25 13:12:58\";s:4:\"name\";s:5:\"Model\";s:4:\"slug\";s:5:\"model\";s:4:\"type\";s:5:\"model\";s:12:\"is_variation\";i:0;s:20:\"show_on_product_page\";i:1;s:10:\"product_id\";i:6;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:7:\"options\";r:294;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:10:\"categories\";r:394;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}}}}}', '2020-03-13 21:19:04', '2020-03-13 21:19:04'),
('AU:a04f2ca0-65d2-11ea-ab17-35ef2114db3a_cart_items', 'a:0:{}', '2020-03-13 22:33:25', '2020-03-13 22:34:12');
INSERT INTO `cart_storage` (`id`, `cart_data`, `created_at`, `updated_at`) VALUES
('AU:d3034ce0-65ce-11ea-a1e2-e1c280d47bf5_cart_items', 'O:32:\"Darryldecode\\Cart\\CartCollection\":1:{s:8:\"\0*\0items\";a:1:{i:1584175088;O:32:\"Darryldecode\\Cart\\ItemCollection\":2:{s:9:\"\0*\0config\";a:6:{s:14:\"format_numbers\";b:0;s:8:\"decimals\";i:0;s:9:\"dec_point\";s:1:\".\";s:13:\"thousands_sep\";s:1:\",\";s:7:\"storage\";s:18:\"App\\Cart\\DBStorage\";s:6:\"events\";N;}s:8:\"\0*\0items\";a:7:{s:2:\"id\";i:1584175088;s:4:\"name\";s:19:\"Wireless Power Bank\";s:5:\"price\";d:74.99;s:8:\"quantity\";i:1;s:10:\"attributes\";O:41:\"Darryldecode\\Cart\\ItemAttributeCollection\":1:{s:8:\"\0*\0items\";a:2:{i:0;O:8:\"stdClass\":3:{s:9:\"attribute\";s:6:\"Colour\";s:4:\"name\";s:5:\"Black\";s:5:\"value\";s:5:\"black\";}i:1;O:8:\"stdClass\":3:{s:9:\"attribute\";s:5:\"Model\";s:4:\"name\";s:6:\"MG001B\";s:5:\"value\";s:6:\"mg001b\";}}}s:10:\"conditions\";O:31:\"Darryldecode\\Cart\\CartCondition\":2:{s:37:\"\0Darryldecode\\Cart\\CartCondition\0args\";a:3:{s:4:\"name\";s:8:\"Shipping\";s:4:\"type\";s:8:\"shipping\";s:5:\"value\";s:3:\"+10\";}s:14:\"parsedRawValue\";N;}s:15:\"associatedModel\";O:28:\"App\\Models\\Ecommerce\\Product\":28:{s:11:\"\0*\0fillable\";a:35:{i:0;s:4:\"name\";i:1;s:9:\"seo_title\";i:2;s:13:\"currency_code\";i:3;s:11:\"purchasable\";i:4;s:5:\"price\";i:5;s:10:\"sale_price\";i:6;s:13:\"regular_price\";i:7;s:4:\"misc\";i:8;s:5:\"brand\";i:9;s:6:\"slogan\";i:10;s:9:\"sale_note\";i:11;s:11:\"description\";i:12;s:17:\"short_description\";i:13;s:3:\"mpn\";i:14;s:3:\"sku\";i:15;s:11:\"weight_unit\";i:16;s:11:\"volume_unit\";i:17;s:5:\"width\";i:18;s:6:\"length\";i:19;s:6:\"height\";i:20;s:6:\"weight\";i:21;s:11:\"theme_color\";i:22;s:13:\"purchase_note\";i:23;s:3:\"url\";i:24;s:13:\"allow_reviews\";i:25;s:16:\"allow_backorders\";i:26;s:8:\"featured\";i:27;s:10:\"visibility\";i:28;s:18:\"catalog_visibility\";i:29;s:6:\"status\";i:30;s:22:\"countries_available_to\";i:31;s:21:\"countries_hidden_from\";i:32;s:4:\"faqs\";i:33;s:15:\"available_on_gm\";i:34;s:4:\"meta\";}s:8:\"\0*\0table\";s:8:\"products\";s:8:\"\0*\0casts\";a:11:{s:7:\"gallery\";s:5:\"array\";s:7:\"price_2\";s:5:\"array\";s:12:\"sale_price_2\";s:5:\"array\";s:15:\"regular_price_2\";s:5:\"array\";s:17:\"date_on_sale_from\";s:8:\"datetime\";s:15:\"date_on_sale_to\";s:8:\"datetime\";s:5:\"stock\";s:5:\"array\";s:4:\"misc\";s:5:\"array\";s:4:\"meta\";s:5:\"array\";s:4:\"faqs\";s:5:\"array\";s:11:\"purchasable\";s:7:\"boolean\";}s:10:\"\0*\0appends\";a:10:{i:0;s:5:\"image\";i:1;s:6:\"images\";i:2;s:8:\"currency\";i:3;s:12:\"availability\";i:4;s:9:\"image_url\";i:5;s:9:\"gm_images\";i:6;s:28:\"gm_sale_price_effective_date\";i:7;s:14:\"gm_description\";i:8;s:17:\"gm_shipping_label\";i:9;s:15:\"available_on_gm\";}s:9:\"\0*\0hidden\";a:11:{i:0;s:22:\"countries_available_to\";i:1;s:21:\"countries_hidden_from\";i:2;s:14:\"shipping_class\";i:3;s:7:\"price_2\";i:4;s:12:\"sale_price_2\";i:5;s:5:\"stock\";i:6;s:9:\"unstocked\";i:7;s:6:\"status\";i:8;s:10:\"visibility\";i:9;s:18:\"catalog_visibility\";i:10;s:4:\"meta\";}s:10:\"model_data\";s:4:\"meta\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:68:{s:2:\"id\";i:6;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2020-02-23 05:06:12\";s:15:\"manufacturer_id\";N;s:9:\"parent_id\";N;s:4:\"name\";s:19:\"Wireless Power Bank\";s:4:\"slug\";s:19:\"wireless-power-bank\";s:9:\"seo_title\";s:131:\"New MOIREI QI Wireless Power Bank 10000 mAh Type-C, USB QC, Wireless PD Charging Mobile Portable Wireless Charger Powerbank with QR\";s:13:\"currency_code\";s:3:\"AUD\";s:11:\"purchasable\";i:1;s:17:\"date_on_sale_from\";N;s:15:\"date_on_sale_to\";s:19:\"2019-11-15 01:30:00\";s:5:\"price\";s:5:\"74.99\";s:10:\"sale_price\";s:5:\"74.99\";s:7:\"price_2\";s:38:\"[{\"currency_code\":\"NGN\",\"price\":7000}]\";s:12:\"sale_price_2\";s:2:\"[]\";s:4:\"misc\";s:2:\"[]\";s:5:\"brand\";s:6:\"MOIREI\";s:6:\"slogan\";s:51:\"Faster and safer charging with advanced technology.\";s:9:\"sale_note\";s:13:\"Free Delivery\";s:13:\"purchase_note\";s:0:\"\";s:7:\"on_sale\";i:1;s:17:\"short_description\";s:192:\"<div>Power up quickly with the MG001 Wireless Power Bank, featuring wireless 5W PD and 5V@2A fast charge standard USB connector. Recharge your mobile device anywhere, anytime, with ease.</div>\";s:11:\"description\";s:1330:\"<div>Never run out of phone battery again and enjoy the convenience of wireless charging. The MG001 Wireless Power Bank has in store, 10,000 mAh which can charge up a standard smart phone up to three times over.&nbsp;<br><br></div><div><strong>POPULAR USE CASES</strong></div><div><br></div><ul><li><strong>iPhone X:</strong> Recharge 3.4 times</li><li><strong>iPhone 8:</strong> Recharge 2.3 times</li><li><strong>Samsung Galaxy S8:</strong> Recharge 2.4 times</li></ul><div>&nbsp;<br><br></div><div><strong>HIGH-CAPACITY, HIGH-SPEED, PORTABLE CHARGING<br></strong><br></div><div>Unlike most power banks, the MG001 is extremely lightweight, incredibly compact power bank – just 16.8mm thickness – equipped with high-speed Type-C and standard USB, delivering up to 2A.<br><br></div><div>&nbsp;</div><div><strong>POWER UP IN STYLE, POWER UP SAFE<br></strong><br></div><div>The MG001 is integrated with high density lithium polymer batteries with surge protection, short circuit protection and more advanced safety features keep you and your devices safe.&nbsp;<br><br></div><div><br></div><div><strong>UNIVERSAL CONNECTIVITY<br></strong><br></div><div>It\'s so convenient! The MG001 is compatible with a wide range of mobile devices. Can connect up to three devices at the same time with 1 ultra-fast 2A PD output.<br><br></div>\";s:7:\"gallery\";s:18:\"[3,10,4,5,6,7,8,9]\";s:6:\"rating\";d:3.5;s:3:\"mpn\";s:8:\"MGC29008\";s:3:\"sku\";s:4:\"7188\";s:15:\"warranty_period\";N;s:8:\"material\";N;s:5:\"stock\";s:2:\"[]\";s:9:\"unstocked\";i:0;s:14:\"shipping_price\";i:10;s:11:\"weight_unit\";s:2:\"kg\";s:11:\"volume_unit\";s:2:\"cm\";s:5:\"width\";s:4:\"8.50\";s:6:\"length\";s:4:\"2.68\";s:6:\"height\";s:5:\"17.00\";s:6:\"weight\";s:4:\"0.31\";s:17:\"shipping_class_id\";i:2;s:11:\"theme_color\";N;s:3:\"url\";s:24:\"https://moirei.com/mg001\";s:13:\"allow_reviews\";i:1;s:16:\"allow_backorders\";i:0;s:12:\"downloadable\";i:0;s:7:\"virtual\";i:0;s:8:\"featured\";i:0;s:22:\"countries_available_to\";s:6:\"[\"AU\"]\";s:21:\"countries_hidden_from\";s:4:\"null\";s:4:\"meta\";s:25:\"{\"available_on_gm\":false}\";s:6:\"status\";s:7:\"release\";s:10:\"visibility\";s:6:\"public\";s:18:\"catalog_visibility\";s:11:\"shop-search\";s:10:\"deleted_at\";N;s:4:\"faqs\";s:1246:\"[{\"question\":\"Where are you based? Where do you ship from?\",\"answer\":\"We\'re based in the Adelaide, Australia. All MG001 orders ship directly from our office in Adelaide.\"},{\"question\":\"How does it work?\",\"answer\":\"The MG001 works like every other power bank with traditional USB outputs. But to use the wireless charging, you simply place your device on the power bank then push the side button. You can check your device\\u2019s wireless charging <a href=\\\"#\\\">here<\\/a>.\"},{\"question\":\"How long will it take for my order to arrive?\",\"answer\":\"We ship all orders placed Monday - Friday before 1:30 PM ACST the same day. For customers within Australia, your order should arrive within 3 business days via Post Standard Delivery. If you do not receive your order within 4 days, please check your mailbox and tracking number, then contact us. Average delivery time for international orders is 6-9 business days. However, international shipping delays can occur due to your country\'s customs process. Once your order arrives in your country, it is transferred to your local postal carrier for final delivery. In a small minority of cases, delivery can take longer. If it\'s been more than 5 weeks, contact us and we will help track down your order.\"}]\";s:16:\"return_policy_id\";i:1;s:13:\"regular_price\";s:5:\"79.00\";s:11:\"percent_off\";i:5;s:12:\"is_favourite\";b:0;s:8:\"is_liked\";b:0;s:10:\"is_in_cart\";b:0;s:13:\"shipping_html\";s:26:\"<strong> AUD $10 </strong>\";s:18:\"estimated_delivery\";s:44:\"Between <b>Mon. 30 Mar. and Fri. 03 Apr.</b>\";s:17:\"earliest_delivery\";s:12:\"Mon. 30 Mar.\";s:12:\"checkout_url\";s:68:\"https://www.moirei-dev.com/shop/checkout?product=wireless-power-bank\";s:10:\"attributes\";a:2:{i:0;O:8:\"stdClass\":6:{s:2:\"id\";i:4;s:4:\"name\";s:6:\"Colour\";s:10:\"product_id\";i:6;s:20:\"show_on_product_page\";i:1;s:4:\"type\";s:6:\"colour\";s:7:\"options\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":1:{s:8:\"\0*\0items\";a:2:{i:0;O:43:\"App\\Models\\Ecommerce\\ProductAttributeOption\":26:{s:11:\"\0*\0fillable\";a:2:{i:0;s:4:\"name\";i:1;s:5:\"value\";}s:9:\"\0*\0hidden\";a:1:{i:0;s:14:\"product_images\";}s:8:\"\0*\0casts\";a:1:{s:14:\"product_images\";s:5:\"array\";}s:10:\"\0*\0appends\";a:1:{i:0;s:6:\"images\";}s:8:\"\0*\0table\";s:25:\"product_attribute_options\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:7;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-11-11 05:55:25\";s:4:\"name\";s:5:\"White\";s:4:\"slug\";s:5:\"white\";s:5:\"value\";s:5:\"white\";s:20:\"product_attribute_id\";i:4;s:14:\"product_images\";s:172:\"[\"https:\\/\\/mrsc.moirei-dev.com\\/storage\\/media\\/new-moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-po-1571132539-v52oz.jpg\"]\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:7;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-11-11 05:55:25\";s:4:\"name\";s:5:\"White\";s:4:\"slug\";s:5:\"white\";s:5:\"value\";s:5:\"white\";s:20:\"product_attribute_id\";i:4;s:14:\"product_images\";s:172:\"[\"https:\\/\\/mrsc.moirei-dev.com\\/storage\\/media\\/new-moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-po-1571132539-v52oz.jpg\"]\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:43:\"App\\Models\\Ecommerce\\ProductAttributeOption\":26:{s:11:\"\0*\0fillable\";a:2:{i:0;s:4:\"name\";i:1;s:5:\"value\";}s:9:\"\0*\0hidden\";a:1:{i:0;s:14:\"product_images\";}s:8:\"\0*\0casts\";a:1:{s:14:\"product_images\";s:5:\"array\";}s:10:\"\0*\0appends\";a:1:{i:0;s:6:\"images\";}s:8:\"\0*\0table\";s:25:\"product_attribute_options\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:8;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-11-11 05:55:38\";s:4:\"name\";s:5:\"Black\";s:4:\"slug\";s:5:\"black\";s:5:\"value\";s:5:\"black\";s:20:\"product_attribute_id\";i:4;s:14:\"product_images\";s:172:\"[\"https:\\/\\/mrsc.moirei-dev.com\\/storage\\/media\\/moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portab-1571132538-TBjEQ.jpg\"]\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:8;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-11-11 05:55:38\";s:4:\"name\";s:5:\"Black\";s:4:\"slug\";s:5:\"black\";s:5:\"value\";s:5:\"black\";s:20:\"product_attribute_id\";i:4;s:14:\"product_images\";s:172:\"[\"https:\\/\\/mrsc.moirei-dev.com\\/storage\\/media\\/moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portab-1571132538-TBjEQ.jpg\"]\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}}i:1;O:8:\"stdClass\":6:{s:2:\"id\";i:5;s:4:\"name\";s:5:\"Model\";s:10:\"product_id\";i:6;s:20:\"show_on_product_page\";i:1;s:4:\"type\";s:5:\"model\";s:7:\"options\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":1:{s:8:\"\0*\0items\";a:2:{i:0;O:43:\"App\\Models\\Ecommerce\\ProductAttributeOption\":26:{s:11:\"\0*\0fillable\";a:2:{i:0;s:4:\"name\";i:1;s:5:\"value\";}s:9:\"\0*\0hidden\";a:1:{i:0;s:14:\"product_images\";}s:8:\"\0*\0casts\";a:1:{s:14:\"product_images\";s:5:\"array\";}s:10:\"\0*\0appends\";a:1:{i:0;s:6:\"images\";}s:8:\"\0*\0table\";s:25:\"product_attribute_options\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:9;s:10:\"created_at\";s:19:\"2019-10-25 13:13:26\";s:10:\"updated_at\";s:19:\"2019-10-25 13:13:26\";s:4:\"name\";s:5:\"MG001\";s:4:\"slug\";s:5:\"mg001\";s:5:\"value\";s:5:\"mg001\";s:20:\"product_attribute_id\";i:5;s:14:\"product_images\";N;}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:9;s:10:\"created_at\";s:19:\"2019-10-25 13:13:26\";s:10:\"updated_at\";s:19:\"2019-10-25 13:13:26\";s:4:\"name\";s:5:\"MG001\";s:4:\"slug\";s:5:\"mg001\";s:5:\"value\";s:5:\"mg001\";s:20:\"product_attribute_id\";i:5;s:14:\"product_images\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:43:\"App\\Models\\Ecommerce\\ProductAttributeOption\":26:{s:11:\"\0*\0fillable\";a:2:{i:0;s:4:\"name\";i:1;s:5:\"value\";}s:9:\"\0*\0hidden\";a:1:{i:0;s:14:\"product_images\";}s:8:\"\0*\0casts\";a:1:{s:14:\"product_images\";s:5:\"array\";}s:10:\"\0*\0appends\";a:1:{i:0;s:6:\"images\";}s:8:\"\0*\0table\";s:25:\"product_attribute_options\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:10;s:10:\"created_at\";s:19:\"2019-10-25 13:13:36\";s:10:\"updated_at\";s:19:\"2019-10-25 13:13:36\";s:4:\"name\";s:6:\"MG001B\";s:4:\"slug\";s:6:\"mg001b\";s:5:\"value\";s:6:\"mg001b\";s:20:\"product_attribute_id\";i:5;s:14:\"product_images\";N;}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:10;s:10:\"created_at\";s:19:\"2019-10-25 13:13:36\";s:10:\"updated_at\";s:19:\"2019-10-25 13:13:36\";s:4:\"name\";s:6:\"MG001B\";s:4:\"slug\";s:6:\"mg001b\";s:5:\"value\";s:6:\"mg001b\";s:20:\"product_attribute_id\";i:5;s:14:\"product_images\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}}}s:10:\"categories\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:36:\"App\\Models\\Ecommerce\\ProductCategory\":26:{s:11:\"\0*\0fillable\";a:3:{i:0;s:4:\"name\";i:1;s:4:\"slug\";i:2;s:11:\"description\";}s:9:\"\0*\0hidden\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:5:\"pivot\";}s:8:\"\0*\0table\";s:18:\"product_categories\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:3;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-10-10 05:39:08\";s:4:\"name\";s:14:\"Home Appliance\";s:4:\"slug\";s:14:\"home-appliance\";s:11:\"description\";N;}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:3;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-10-10 05:39:08\";s:4:\"name\";s:14:\"Home Appliance\";s:4:\"slug\";s:14:\"home-appliance\";s:11:\"description\";N;s:16:\"pivot_product_id\";i:6;s:25:\"pivot_product_category_id\";i:3;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"pivot\";O:44:\"Illuminate\\Database\\Eloquent\\Relations\\Pivot\":29:{s:12:\"incrementing\";b:0;s:10:\"\0*\0guarded\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:16:\"category_product\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:2:{s:10:\"product_id\";i:6;s:19:\"product_category_id\";i:3;}s:11:\"\0*\0original\";a:2:{s:10:\"product_id\";i:6;s:19:\"product_category_id\";i:3;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:11:\"pivotParent\";r:32;s:13:\"\0*\0foreignKey\";s:10:\"product_id\";s:13:\"\0*\0relatedKey\";s:19:\"product_category_id\";}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:7:\"reviews\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":1:{s:8:\"\0*\0items\";a:3:{i:0;O:34:\"App\\Models\\Ecommerce\\ProductReview\":26:{s:8:\"\0*\0table\";s:15:\"product_reviews\";s:11:\"\0*\0fillable\";a:10:{i:0;s:5:\"title\";i:1;s:4:\"body\";i:2;s:13:\"reviewer_name\";i:3;s:13:\"reviewer_meta\";i:4;s:14:\"reviewer_email\";i:5;s:11:\"recommended\";i:6;s:14:\"average_rating\";i:7;s:7:\"ratings\";i:8;s:10:\"product_id\";i:9;s:17:\"approver_admin_id\";}s:9:\"\0*\0hidden\";a:3:{i:0;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:2;s:6:\"public\";}s:8:\"\0*\0casts\";a:4:{s:6:\"rating\";s:5:\"float\";s:7:\"ratings\";s:5:\"array\";s:13:\"reviewer_meta\";s:5:\"array\";s:6:\"images\";s:5:\"array\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:22:{s:2:\"id\";i:3;s:10:\"created_at\";s:19:\"2019-10-30 14:25:09\";s:10:\"updated_at\";s:19:\"2019-10-30 14:26:15\";s:15:\"reviewable_type\";s:16:\"App\\Models\\Guest\";s:13:\"reviewable_id\";i:7;s:14:\"reviewer_email\";s:21:\"agstrscntw3@gmail.com\";s:5:\"title\";s:10:\"Awesome as\";s:13:\"reviewer_name\";s:14:\"Augustus Okoye\";s:4:\"body\";s:86:\"<div>Ive been using this product since the first samples and it\'s still solid as</div>\";s:4:\"city\";N;s:12:\"country_code\";s:0:\"\";s:11:\"recommended\";i:1;s:6:\"public\";i:1;s:6:\"rating\";s:4:\"0.00\";s:14:\"average_rating\";s:4:\"4.33\";s:7:\"ratings\";s:275:\"{\"quality\":{\"name\":\"Quality\",\"rating\":5},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":3},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":5},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":5},\"weight\":{\"name\":\"Weight\",\"rating\":4}}\";s:6:\"images\";N;s:13:\"reviewer_meta\";N;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:1;s:10:\"product_id\";i:6;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:22:{s:2:\"id\";i:3;s:10:\"created_at\";s:19:\"2019-10-30 14:25:09\";s:10:\"updated_at\";s:19:\"2019-10-30 14:26:15\";s:15:\"reviewable_type\";s:16:\"App\\Models\\Guest\";s:13:\"reviewable_id\";i:7;s:14:\"reviewer_email\";s:21:\"agstrscntw3@gmail.com\";s:5:\"title\";s:10:\"Awesome as\";s:13:\"reviewer_name\";s:14:\"Augustus Okoye\";s:4:\"body\";s:86:\"<div>Ive been using this product since the first samples and it\'s still solid as</div>\";s:4:\"city\";N;s:12:\"country_code\";s:0:\"\";s:11:\"recommended\";i:1;s:6:\"public\";i:1;s:6:\"rating\";s:4:\"0.00\";s:14:\"average_rating\";s:4:\"4.33\";s:7:\"ratings\";s:275:\"{\"quality\":{\"name\":\"Quality\",\"rating\":5},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":3},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":5},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":5},\"weight\":{\"name\":\"Weight\",\"rating\":4}}\";s:6:\"images\";N;s:13:\"reviewer_meta\";N;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:1;s:10:\"product_id\";i:6;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:34:\"App\\Models\\Ecommerce\\ProductReview\":26:{s:8:\"\0*\0table\";s:15:\"product_reviews\";s:11:\"\0*\0fillable\";a:10:{i:0;s:5:\"title\";i:1;s:4:\"body\";i:2;s:13:\"reviewer_name\";i:3;s:13:\"reviewer_meta\";i:4;s:14:\"reviewer_email\";i:5;s:11:\"recommended\";i:6;s:14:\"average_rating\";i:7;s:7:\"ratings\";i:8;s:10:\"product_id\";i:9;s:17:\"approver_admin_id\";}s:9:\"\0*\0hidden\";a:3:{i:0;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:2;s:6:\"public\";}s:8:\"\0*\0casts\";a:4:{s:6:\"rating\";s:5:\"float\";s:7:\"ratings\";s:5:\"array\";s:13:\"reviewer_meta\";s:5:\"array\";s:6:\"images\";s:5:\"array\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:22:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2019-10-30 14:24:25\";s:10:\"updated_at\";s:19:\"2019-10-30 14:26:23\";s:15:\"reviewable_type\";s:16:\"App\\Models\\Guest\";s:13:\"reviewable_id\";i:7;s:14:\"reviewer_email\";s:21:\"agstrscntw3@gmail.com\";s:5:\"title\";s:18:\"Works like a charm\";s:13:\"reviewer_name\";s:14:\"Augustus Okoye\";s:4:\"body\";s:86:\"<div>Ive been using this product since the first samples and it\'s still solid as</div>\";s:4:\"city\";N;s:12:\"country_code\";s:0:\"\";s:11:\"recommended\";i:1;s:6:\"public\";i:1;s:6:\"rating\";s:4:\"0.00\";s:14:\"average_rating\";s:4:\"3.83\";s:7:\"ratings\";s:275:\"{\"quality\":{\"name\":\"Quality\",\"rating\":4},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":4},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":3},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":4},\"weight\":{\"name\":\"Weight\",\"rating\":4}}\";s:6:\"images\";N;s:13:\"reviewer_meta\";N;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:1;s:10:\"product_id\";i:6;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:22:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2019-10-30 14:24:25\";s:10:\"updated_at\";s:19:\"2019-10-30 14:26:23\";s:15:\"reviewable_type\";s:16:\"App\\Models\\Guest\";s:13:\"reviewable_id\";i:7;s:14:\"reviewer_email\";s:21:\"agstrscntw3@gmail.com\";s:5:\"title\";s:18:\"Works like a charm\";s:13:\"reviewer_name\";s:14:\"Augustus Okoye\";s:4:\"body\";s:86:\"<div>Ive been using this product since the first samples and it\'s still solid as</div>\";s:4:\"city\";N;s:12:\"country_code\";s:0:\"\";s:11:\"recommended\";i:1;s:6:\"public\";i:1;s:6:\"rating\";s:4:\"0.00\";s:14:\"average_rating\";s:4:\"3.83\";s:7:\"ratings\";s:275:\"{\"quality\":{\"name\":\"Quality\",\"rating\":4},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":4},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":3},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":4},\"weight\":{\"name\":\"Weight\",\"rating\":4}}\";s:6:\"images\";N;s:13:\"reviewer_meta\";N;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:1;s:10:\"product_id\";i:6;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:34:\"App\\Models\\Ecommerce\\ProductReview\":26:{s:8:\"\0*\0table\";s:15:\"product_reviews\";s:11:\"\0*\0fillable\";a:10:{i:0;s:5:\"title\";i:1;s:4:\"body\";i:2;s:13:\"reviewer_name\";i:3;s:13:\"reviewer_meta\";i:4;s:14:\"reviewer_email\";i:5;s:11:\"recommended\";i:6;s:14:\"average_rating\";i:7;s:7:\"ratings\";i:8;s:10:\"product_id\";i:9;s:17:\"approver_admin_id\";}s:9:\"\0*\0hidden\";a:3:{i:0;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:2;s:6:\"public\";}s:8:\"\0*\0casts\";a:4:{s:6:\"rating\";s:5:\"float\";s:7:\"ratings\";s:5:\"array\";s:13:\"reviewer_meta\";s:5:\"array\";s:6:\"images\";s:5:\"array\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:22:{s:2:\"id\";i:1;s:10:\"created_at\";s:19:\"2019-10-24 02:34:56\";s:10:\"updated_at\";s:19:\"2019-10-24 02:35:14\";s:15:\"reviewable_type\";s:16:\"App\\Models\\Guest\";s:13:\"reviewable_id\";i:7;s:14:\"reviewer_email\";s:21:\"agstrscntw3@gmail.com\";s:5:\"title\";s:17:\"Excellent product\";s:13:\"reviewer_name\";s:14:\"Augustus Okoye\";s:4:\"body\";s:66:\"<div>I love this product and it works like magic. Great work</div>\";s:4:\"city\";N;s:12:\"country_code\";s:0:\"\";s:11:\"recommended\";i:1;s:6:\"public\";i:1;s:6:\"rating\";s:4:\"0.00\";s:14:\"average_rating\";s:4:\"3.67\";s:7:\"ratings\";s:275:\"{\"quality\":{\"name\":\"Quality\",\"rating\":3},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":4},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":3},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":4},\"weight\":{\"name\":\"Weight\",\"rating\":4}}\";s:6:\"images\";N;s:13:\"reviewer_meta\";N;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:1;s:10:\"product_id\";i:6;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:22:{s:2:\"id\";i:1;s:10:\"created_at\";s:19:\"2019-10-24 02:34:56\";s:10:\"updated_at\";s:19:\"2019-10-24 02:35:14\";s:15:\"reviewable_type\";s:16:\"App\\Models\\Guest\";s:13:\"reviewable_id\";i:7;s:14:\"reviewer_email\";s:21:\"agstrscntw3@gmail.com\";s:5:\"title\";s:17:\"Excellent product\";s:13:\"reviewer_name\";s:14:\"Augustus Okoye\";s:4:\"body\";s:66:\"<div>I love this product and it works like magic. Great work</div>\";s:4:\"city\";N;s:12:\"country_code\";s:0:\"\";s:11:\"recommended\";i:1;s:6:\"public\";i:1;s:6:\"rating\";s:4:\"0.00\";s:14:\"average_rating\";s:4:\"3.67\";s:7:\"ratings\";s:275:\"{\"quality\":{\"name\":\"Quality\",\"rating\":3},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":4},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":3},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":4},\"weight\":{\"name\":\"Weight\",\"rating\":4}}\";s:6:\"images\";N;s:13:\"reviewer_meta\";N;s:8:\"approved\";i:1;s:17:\"approver_admin_id\";i:1;s:10:\"product_id\";i:6;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}}s:11:\"\0*\0original\";a:56:{s:2:\"id\";i:6;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2020-02-23 05:06:12\";s:15:\"manufacturer_id\";N;s:9:\"parent_id\";N;s:4:\"name\";s:19:\"Wireless Power Bank\";s:4:\"slug\";s:19:\"wireless-power-bank\";s:9:\"seo_title\";s:131:\"New MOIREI QI Wireless Power Bank 10000 mAh Type-C, USB QC, Wireless PD Charging Mobile Portable Wireless Charger Powerbank with QR\";s:13:\"currency_code\";s:3:\"AUD\";s:11:\"purchasable\";i:1;s:17:\"date_on_sale_from\";N;s:15:\"date_on_sale_to\";s:19:\"2019-11-15 01:30:00\";s:5:\"price\";s:5:\"79.00\";s:10:\"sale_price\";s:5:\"74.99\";s:7:\"price_2\";s:38:\"[{\"currency_code\":\"NGN\",\"price\":7000}]\";s:12:\"sale_price_2\";s:2:\"[]\";s:4:\"misc\";s:2:\"[]\";s:5:\"brand\";s:6:\"MOIREI\";s:6:\"slogan\";s:51:\"Faster and safer charging with advanced technology.\";s:9:\"sale_note\";s:13:\"Free Delivery\";s:13:\"purchase_note\";N;s:7:\"on_sale\";i:1;s:17:\"short_description\";s:192:\"<div>Power up quickly with the MG001 Wireless Power Bank, featuring wireless 5W PD and 5V@2A fast charge standard USB connector. Recharge your mobile device anywhere, anytime, with ease.</div>\";s:11:\"description\";s:1330:\"<div>Never run out of phone battery again and enjoy the convenience of wireless charging. The MG001 Wireless Power Bank has in store, 10,000 mAh which can charge up a standard smart phone up to three times over.&nbsp;<br><br></div><div><strong>POPULAR USE CASES</strong></div><div><br></div><ul><li><strong>iPhone X:</strong> Recharge 3.4 times</li><li><strong>iPhone 8:</strong> Recharge 2.3 times</li><li><strong>Samsung Galaxy S8:</strong> Recharge 2.4 times</li></ul><div>&nbsp;<br><br></div><div><strong>HIGH-CAPACITY, HIGH-SPEED, PORTABLE CHARGING<br></strong><br></div><div>Unlike most power banks, the MG001 is extremely lightweight, incredibly compact power bank – just 16.8mm thickness – equipped with high-speed Type-C and standard USB, delivering up to 2A.<br><br></div><div>&nbsp;</div><div><strong>POWER UP IN STYLE, POWER UP SAFE<br></strong><br></div><div>The MG001 is integrated with high density lithium polymer batteries with surge protection, short circuit protection and more advanced safety features keep you and your devices safe.&nbsp;<br><br></div><div><br></div><div><strong>UNIVERSAL CONNECTIVITY<br></strong><br></div><div>It\'s so convenient! The MG001 is compatible with a wide range of mobile devices. Can connect up to three devices at the same time with 1 ultra-fast 2A PD output.<br><br></div>\";s:7:\"gallery\";s:18:\"[3,10,4,5,6,7,8,9]\";s:6:\"rating\";s:4:\"3.94\";s:3:\"mpn\";s:8:\"MGC29008\";s:3:\"sku\";s:4:\"7188\";s:15:\"warranty_period\";N;s:8:\"material\";N;s:5:\"stock\";s:2:\"[]\";s:9:\"unstocked\";i:0;s:14:\"shipping_price\";N;s:11:\"weight_unit\";s:2:\"kg\";s:11:\"volume_unit\";s:2:\"cm\";s:5:\"width\";s:4:\"8.50\";s:6:\"length\";s:4:\"2.68\";s:6:\"height\";s:5:\"17.00\";s:6:\"weight\";s:4:\"0.31\";s:17:\"shipping_class_id\";i:2;s:11:\"theme_color\";N;s:3:\"url\";s:24:\"https://moirei.com/mg001\";s:13:\"allow_reviews\";i:1;s:16:\"allow_backorders\";i:0;s:12:\"downloadable\";i:0;s:7:\"virtual\";i:0;s:8:\"featured\";i:0;s:22:\"countries_available_to\";s:6:\"[\"AU\"]\";s:21:\"countries_hidden_from\";s:4:\"null\";s:4:\"meta\";s:25:\"{\"available_on_gm\":false}\";s:6:\"status\";s:7:\"release\";s:10:\"visibility\";s:6:\"public\";s:18:\"catalog_visibility\";s:11:\"shop-search\";s:10:\"deleted_at\";N;s:4:\"faqs\";s:1246:\"[{\"question\":\"Where are you based? Where do you ship from?\",\"answer\":\"We\'re based in the Adelaide, Australia. All MG001 orders ship directly from our office in Adelaide.\"},{\"question\":\"How does it work?\",\"answer\":\"The MG001 works like every other power bank with traditional USB outputs. But to use the wireless charging, you simply place your device on the power bank then push the side button. You can check your device\\u2019s wireless charging <a href=\\\"#\\\">here<\\/a>.\"},{\"question\":\"How long will it take for my order to arrive?\",\"answer\":\"We ship all orders placed Monday - Friday before 1:30 PM ACST the same day. For customers within Australia, your order should arrive within 3 business days via Post Standard Delivery. If you do not receive your order within 4 days, please check your mailbox and tracking number, then contact us. Average delivery time for international orders is 6-9 business days. However, international shipping delays can occur due to your country\'s customs process. Once your order arrives in your country, it is transferred to your local postal carrier for final delivery. In a small minority of cases, delivery can take longer. If it\'s been more than 5 weeks, contact us and we will help track down your order.\"}]\";s:16:\"return_policy_id\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:1:{i:0;s:10:\"deleted_at\";}s:13:\"\0*\0dateFormat\";N;s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:3:{s:14:\"shipping_class\";O:29:\"App\\Models\\Ecommerce\\Shipping\":26:{s:11:\"\0*\0fillable\";a:11:{i:0;s:4:\"name\";i:1;s:11:\"description\";i:2;s:4:\"rate\";i:3;s:13:\"currency_code\";i:4;s:6:\"rate_2\";i:5;s:8:\"services\";i:6;s:23:\"local_min_business_days\";i:7;s:23:\"local_max_business_days\";i:8;s:26:\"regional_min_business_days\";i:9;s:26:\"regional_max_business_days\";i:10;s:17:\"publicly_optional\";}s:8:\"\0*\0table\";s:16:\"shipping_classes\";s:8:\"\0*\0casts\";a:5:{s:6:\"rate_2\";s:5:\"array\";s:23:\"local_min_business_days\";s:5:\"array\";s:23:\"local_max_business_days\";s:5:\"array\";s:26:\"regional_min_business_days\";s:5:\"array\";s:26:\"regional_max_business_days\";s:5:\"array\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:15:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-11-07 03:47:25\";s:4:\"name\";s:9:\"Flat Rate\";s:4:\"slug\";s:9:\"flat-rate\";s:11:\"description\";N;s:4:\"rate\";s:5:\"10.10\";s:6:\"rate_2\";s:70:\"[{\"currency_code\":\"NGN\",\"rate\":500},{\"currency_code\":\"AUD\",\"rate\":10}]\";s:13:\"currency_code\";s:3:\"USD\";s:23:\"local_min_business_days\";s:59:\"[{\"store\":\"adelaide\",\"days\":11},{\"store\":\"ikeja\",\"days\":4}]\";s:23:\"local_max_business_days\";s:60:\"[{\"store\":\"adelaide\",\"days\":15},{\"store\":\"ikeja\",\"days\":14}]\";s:26:\"regional_min_business_days\";s:2:\"[]\";s:26:\"regional_max_business_days\";s:2:\"[]\";s:8:\"services\";N;s:17:\"publicly_optional\";i:0;}s:11:\"\0*\0original\";a:15:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-11-07 03:47:25\";s:4:\"name\";s:9:\"Flat Rate\";s:4:\"slug\";s:9:\"flat-rate\";s:11:\"description\";N;s:4:\"rate\";s:5:\"10.10\";s:6:\"rate_2\";s:70:\"[{\"currency_code\":\"NGN\",\"rate\":500},{\"currency_code\":\"AUD\",\"rate\":10}]\";s:13:\"currency_code\";s:3:\"USD\";s:23:\"local_min_business_days\";s:59:\"[{\"store\":\"adelaide\",\"days\":11},{\"store\":\"ikeja\",\"days\":4}]\";s:23:\"local_max_business_days\";s:60:\"[{\"store\":\"adelaide\",\"days\":15},{\"store\":\"ikeja\",\"days\":14}]\";s:26:\"regional_min_business_days\";s:2:\"[]\";s:26:\"regional_max_business_days\";s:2:\"[]\";s:8:\"services\";N;s:17:\"publicly_optional\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:10:\"attributes\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":1:{s:8:\"\0*\0items\";a:2:{i:0;O:37:\"App\\Models\\Ecommerce\\ProductAttribute\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:4:\"type\";i:2;s:12:\"is_variation\";i:3;s:20:\"show_on_product_page\";}s:8:\"\0*\0table\";s:18:\"product_attributes\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:4;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-10-10 05:39:08\";s:4:\"name\";s:6:\"Colour\";s:4:\"slug\";s:6:\"colour\";s:4:\"type\";s:6:\"colour\";s:12:\"is_variation\";i:0;s:20:\"show_on_product_page\";i:1;s:10:\"product_id\";i:6;}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:4;s:10:\"created_at\";s:19:\"2019-10-10 05:39:08\";s:10:\"updated_at\";s:19:\"2019-10-10 05:39:08\";s:4:\"name\";s:6:\"Colour\";s:4:\"slug\";s:6:\"colour\";s:4:\"type\";s:6:\"colour\";s:12:\"is_variation\";i:0;s:20:\"show_on_product_page\";i:1;s:10:\"product_id\";i:6;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:7:\"options\";r:188;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:37:\"App\\Models\\Ecommerce\\ProductAttribute\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:4:\"type\";i:2;s:12:\"is_variation\";i:3;s:20:\"show_on_product_page\";}s:8:\"\0*\0table\";s:18:\"product_attributes\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:5;s:10:\"created_at\";s:19:\"2019-10-25 13:12:58\";s:10:\"updated_at\";s:19:\"2019-10-25 13:12:58\";s:4:\"name\";s:5:\"Model\";s:4:\"slug\";s:5:\"model\";s:4:\"type\";s:5:\"model\";s:12:\"is_variation\";i:0;s:20:\"show_on_product_page\";i:1;s:10:\"product_id\";i:6;}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:5;s:10:\"created_at\";s:19:\"2019-10-25 13:12:58\";s:10:\"updated_at\";s:19:\"2019-10-25 13:12:58\";s:4:\"name\";s:5:\"Model\";s:4:\"slug\";s:5:\"model\";s:4:\"type\";s:5:\"model\";s:12:\"is_variation\";i:0;s:20:\"show_on_product_page\";i:1;s:10:\"product_id\";i:6;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:7:\"options\";r:294;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:10:\"categories\";r:394;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}}}}}', '2020-03-13 22:08:08', '2020-03-13 22:08:08');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_category_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `created_at`, `updated_at`, `product_category_id`, `product_id`) VALUES
(1, NULL, NULL, 2, 2),
(2, NULL, NULL, 2, 3),
(3, NULL, NULL, 2, 4),
(4, NULL, NULL, 2, 5),
(5, NULL, NULL, 3, 6),
(6, NULL, NULL, 1, 1),
(7, NULL, NULL, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `chat_requests`
--

CREATE TABLE `chat_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `chrkey` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chatrequestable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chatrequestable_id` bigint(20) UNSIGNED NOT NULL,
  `ep` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `messages` text COLLATE utf8mb4_unicode_ci,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `engaged` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_requests`
--

INSERT INTO `chat_requests` (`id`, `created_at`, `updated_at`, `chrkey`, `chatrequestable_type`, `chatrequestable_id`, `ep`, `messages`, `started_at`, `ended_at`, `engaged`, `active`, `admin_id`, `deleted_at`) VALUES
(1, '2019-10-09 19:09:11', '2019-10-09 19:09:11', 'kbGS4cSgDPh6H6CML5cDf78kjIlJBt', 'App\\Models\\Guest', 1, 'endpoint1', '[{\"type\":\"chat\",\"text\":\"Hello\",\"sent_at\":\"2019-10-10T05:39:11.187614Z\",\"id\":0}]', NULL, NULL, 0, 0, NULL, NULL),
(2, '2019-10-09 19:09:11', '2019-10-09 19:09:12', 'mBusRk6qJpFfJUkvO6bCFUiAsyQBFZ', 'App\\Models\\Guest', 2, 'endpoint2', '[{\"type\":\"chat\",\"text\":\"Good afternoon\",\"sent_at\":\"2019-10-10T05:39:11.823303Z\",\"id\":0}]', '2019-10-10 05:39:12', NULL, 1, 1, 1, NULL),
(3, '2019-10-09 19:09:12', '2019-10-09 19:09:12', '3OXgxgDbLru2UGopUzlWXGfdgWTc5l', 'App\\Models\\Guest', 3, 'endpoint3', '[{\"type\":\"chat\",\"text\":\"I need help with some stuff\",\"sent_at\":\"2019-10-10T05:39:12.217301Z\",\"id\":0}]', '2019-10-10 05:39:12', NULL, 1, 1, 1, NULL),
(4, '2019-10-09 19:09:12', '2019-10-09 19:09:12', 'THs9fMta8k9iNSBWqLlchGG4IdPeoc', 'App\\Models\\Guest', 4, 'endpoint4', '[{\"type\":\"chat\",\"text\":\"A bit confused\",\"sent_at\":\"2019-10-10T05:39:12.555370Z\",\"id\":0}]', '2019-10-10 05:39:12', NULL, 1, 1, 2, NULL),
(5, '2019-10-09 19:09:12', '2019-10-09 19:09:13', 'BhXgNGWO0sgV2we2kvXnbJtEcTYpuK', 'App\\Models\\Guest', 5, 'endpoint5', '[{\"type\":\"chat\",\"text\":\"I was wondering if u have chargers\",\"sent_at\":\"2019-10-10T05:39:12.869635Z\",\"id\":0}]', '2019-10-10 05:39:13', NULL, 1, 0, 2, NULL),
(6, '2019-11-28 03:38:56', '2019-11-28 04:19:46', '0aeoCH6k3vtBRFMd2EdpdkC5r3M968', 'App\\Models\\Guest', 7, 'msrc_chat_2921vewtitg33m37gb3t4n4rb6z8bc', '[{\"id\":0,\"text\":\"Hi there\",\"type\":\"chat\",\"sent_at\":\"2019-11-28T14:08:56.539579Z\"},{\"id\":1,\"text\":\"Still there?\",\"type\":\"chat\",\"sent_at\":\"2019-11-28T14:11:02.046734Z\"},{\"id\":0,\"text\":\"Hi there\",\"type\":\"chat\",\"sent_at\":\"2019-11-28T14:13:34.689868Z\"},{\"id\":0,\"text\":\"scrolls\",\"type\":\"chat\",\"sent_at\":\"2019-11-28T14:14:13.203859Z\"},{\"id\":0,\"text\":\"Scrol\",\"type\":\"chat\",\"sent_at\":\"2019-11-28T14:16:12.361298Z\"},{\"id\":0,\"text\":\"Message\",\"type\":\"chat\",\"sent_at\":\"2019-11-28T14:20:02.090415Z\"},{\"id\":0,\"text\":\"Scroll\",\"type\":\"chat\",\"sent_at\":\"2019-11-28T14:20:31.891849Z\"},{\"id\":0,\"text\":\"v\",\"type\":\"chat\",\"sent_at\":\"2019-11-28T14:20:48.726669Z\"},{\"id\":0,\"text\":\"Hi\",\"type\":\"chat\",\"sent_at\":\"2019-11-28T14:21:26.536835Z\"},{\"id\":0,\"text\":\"h\",\"type\":\"chat\",\"sent_at\":\"2019-11-28T14:23:51.338960Z\"},{\"id\":1,\"text\":\"hi\",\"type\":\"chat\",\"sent_at\":\"2019-11-28T14:25:55.627062Z\"},{\"id\":5,\"text\":\"hi\",\"type\":\"chat\",\"sent_at\":\"2019-11-28T14:42:58.401758Z\"},{\"id\":4,\"text\":\"yes\",\"type\":\"chat\",\"sent_at\":\"2019-11-28T14:44:47.539607Z\"},{\"id\":4,\"text\":\"yes\",\"type\":\"chat\",\"sent_at\":\"2019-11-28T14:45:18.965013Z\"},{\"id\":4,\"text\":\"r\",\"type\":\"chat\",\"sent_at\":\"2019-11-28T14:45:54.575071Z\"},{\"id\":5,\"text\":\"yes\",\"type\":\"chat\",\"sent_at\":\"2019-11-28T14:47:23.801837Z\"},{\"id\":5,\"text\":\"?\",\"type\":\"chat\",\"sent_at\":\"2019-11-28T14:47:46.926062Z\"},{\"id\":6,\"text\":\"?\",\"type\":\"chat\",\"sent_at\":\"2019-11-28T14:49:46.022980Z\"}]', NULL, NULL, 0, 0, NULL, NULL),
(7, '2019-12-12 13:43:52', '2019-12-12 13:43:52', '7qyzluf8aKFyE1p5ayEzhIOJJkBZ5b', 'App\\Models\\Guest', 7, 'msrc_chat_gd83rl91977qrx5jiukw3emx4qocwg', '[{\"id\":0,\"text\":\"Hi\",\"type\":\"chat\",\"sent_at\":\"2019-12-13T00:13:52.561272Z\"}]', NULL, NULL, 0, 0, NULL, NULL),
(8, '2019-12-12 13:44:22', '2019-12-12 13:44:22', 'ULSHsvVHhUVgfpqde5sgInJK2FEMhT', 'App\\Models\\Guest', 7, 'msrc_chat_gd83rl91977qrx5jiukw3emx4qocwg', '[{\"id\":1,\"text\":\"Testing chat since laravel-data has been modified\",\"type\":\"chat\",\"sent_at\":\"2019-12-13T00:14:22.903456Z\"}]', NULL, NULL, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `companyable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companyable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `legal_name` varchar(96) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_number` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_number` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `created_at`, `updated_at`, `companyable_type`, `companyable_id`, `name`, `legal_name`, `description`, `email`, `logo`, `website`, `company_number`, `business_number`, `note`, `deleted_at`) VALUES
(1, '2019-10-09 19:09:06', '2019-10-09 19:09:06', 'App\\Models\\General\\Manufacturer', 1, 'LLW Power', 'Shenzhen Liliangwei Technology Co.Ltd', 'Shenzhen Liliangwei Technology Co.Ltd was founded in 2008,and is located in Building A9,Longwangmiao industry, Fuyong Town, Bao\"An District,Shenzhen,China.\\n\\nThe transportation situation is very convenient, only need 15 minutes from shenzhen international airport.Our factories was set up in highly developed industrial chain in Shenzhen&Dongguan of China.\\n\\nSince beginning, the company are continually researching and developing the new energy products as the core product, the main products are Shared products,Power bank, charger, mobile phone accessories. Liliangwei is a integrated research ,development ,producing and sales of high-tech enterprise.\\n\\nShenzhen Liliangwei Technology Co;Ltd,the products exported to European and American regions ,South east countries, and more than 40 countries .', NULL, NULL, 'http://www.llwpower.com/', NULL, NULL, NULL, NULL),
(2, '2019-10-09 19:09:07', '2019-10-09 19:09:07', 'App\\Models\\General\\Manufacturer', 2, 'CNPRO LED', 'Guangzhou Jiguang Lighting Co.,Ltd', 'Guangzhou Jiguang Lighting Co.,Ltd is a rapidly growing led light manufacturer in China. Our experienced engineers can offer solutions for your indoor & outdoor led lighting projects . We are aimed at supplying high cost performance led lights for our international partners and customers . Our main product lines are led tube , led bulb , led flood light, led panel light, etc.\\n\\nTo ensure high quality , we have very strict procedures for production and management in compliance with the requirements of ISO 9001:2000. Our products have met many international standards, such as CE , RoHS, UL FCC, ERP,etc.\\n\\n“Responsibility, Profession, Innovation” is our principle . We are always trying our best to offer best products, best quality , best service . We are always the strong backing of our customers. Welcome to work with us and grow together as a family.', 'enquiry@chinaprojg.com', NULL, 'http://www.chinaproled.com/', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contactable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `title` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `created_at`, `updated_at`, `contactable_type`, `contactable_id`, `type`, `title`, `first_name`, `middle_name`, `last_name`, `gender`, `company`, `position`, `email`, `website`, `address_id`, `is_public`, `is_primary`, `note`, `deleted_at`) VALUES
(1, '2019-10-09 19:09:07', '2019-10-09 19:09:07', 'App\\Models\\General\\Company', 1, 'default', NULL, 'Celine', NULL, 'Yang', 'Female', NULL, 'Sales Manager', 'sales4@llwpower.com', NULL, NULL, 0, 0, NULL, NULL),
(2, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'App\\Models\\General\\Company', 2, 'default', NULL, 'Shanny', NULL, 'Sue', 'Female', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `capital` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `citizenship` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sub_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_decimals` int(11) DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso_3166_2` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `iso_3166_3` char(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `region_code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sub_region_code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `eea` tinyint(1) NOT NULL DEFAULT '0',
  `calling_code` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `created_at`, `updated_at`, `capital`, `citizenship`, `country_code`, `currency`, `currency_code`, `currency_sub_unit`, `currency_symbol`, `currency_decimals`, `full_name`, `iso_3166_2`, `iso_3166_3`, `name`, `region_code`, `sub_region_code`, `eea`, `calling_code`, `flag`) VALUES
(4, NULL, NULL, 'Kabul', 'Afghan', '004', 'afghani', 'AFN', 'pul', '؋', 2, 'Islamic Republic of Afghanistan', 'AF', 'AFG', 'Afghanistan', '142', '034', 0, '93', 'AF.png'),
(8, NULL, NULL, 'Tirana', 'Albanian', '008', 'lek', 'ALL', '(qindar (pl. qindarka))', 'Lek', 2, 'Republic of Albania', 'AL', 'ALB', 'Albania', '150', '039', 0, '355', 'AL.png'),
(10, NULL, NULL, 'Antartica', 'of Antartica', '010', '', '', '', '', 2, 'Antarctica', 'AQ', 'ATA', 'Antarctica', '', '', 0, '672', 'AQ.png'),
(12, NULL, NULL, 'Algiers', 'Algerian', '012', 'Algerian dinar', 'DZD', 'centime', 'DZD', 2, 'People’s Democratic Republic of Algeria', 'DZ', 'DZA', 'Algeria', '002', '015', 0, '213', 'DZ.png'),
(16, NULL, NULL, 'Pago Pago', 'American Samoan', '016', 'US dollar', 'USD', 'cent', '$', 2, 'Territory of American', 'AS', 'ASM', 'American Samoa', '009', '061', 0, '1', 'AS.png'),
(20, NULL, NULL, 'Andorra la Vella', 'Andorran', '020', 'euro', 'EUR', 'cent', '€', 2, 'Principality of Andorra', 'AD', 'AND', 'Andorra', '150', '039', 0, '376', 'AD.png'),
(24, NULL, NULL, 'Luanda', 'Angolan', '024', 'kwanza', 'AOA', 'cêntimo', 'Kz', 2, 'Republic of Angola', 'AO', 'AGO', 'Angola', '002', '017', 0, '244', 'AO.png'),
(28, NULL, NULL, 'St John’s', 'of Antigua and Barbuda', '028', 'East Caribbean dollar', 'XCD', 'cent', '$', 2, 'Antigua and Barbuda', 'AG', 'ATG', 'Antigua and Barbuda', '019', '029', 0, '1', 'AG.png'),
(31, NULL, NULL, 'Baku', 'Azerbaijani', '031', 'Azerbaijani manat', 'AZN', 'kepik (inv.)', 'ман', 2, 'Republic of Azerbaijan', 'AZ', 'AZE', 'Azerbaijan', '142', '145', 0, '994', 'AZ.png'),
(32, NULL, NULL, 'Buenos Aires', 'Argentinian', '032', 'Argentine peso', 'ARS', 'centavo', '$', 2, 'Argentine Republic', 'AR', 'ARG', 'Argentina', '019', '005', 0, '54', 'AR.png'),
(36, NULL, NULL, 'Canberra', 'Australian', '036', 'Australian dollar', 'AUD', 'cent', '$', 2, 'Commonwealth of Australia', 'AU', 'AUS', 'Australia', '009', '053', 0, '61', 'AU.png'),
(40, NULL, NULL, 'Vienna', 'Austrian', '040', 'euro', 'EUR', 'cent', '€', 2, 'Republic of Austria', 'AT', 'AUT', 'Austria', '150', '155', 1, '43', 'AT.png'),
(44, NULL, NULL, 'Nassau', 'Bahamian', '044', 'Bahamian dollar', 'BSD', 'cent', '$', 2, 'Commonwealth of the Bahamas', 'BS', 'BHS', 'Bahamas', '019', '029', 0, '1', 'BS.png'),
(48, NULL, NULL, 'Manama', 'Bahraini', '048', 'Bahraini dinar', 'BHD', 'fils (inv.)', 'BHD', 3, 'Kingdom of Bahrain', 'BH', 'BHR', 'Bahrain', '142', '145', 0, '973', 'BH.png'),
(50, NULL, NULL, 'Dhaka', 'Bangladeshi', '050', 'taka (inv.)', 'BDT', 'poisha (inv.)', 'BDT', 2, 'People’s Republic of Bangladesh', 'BD', 'BGD', 'Bangladesh', '142', '034', 0, '880', 'BD.png'),
(51, NULL, NULL, 'Yerevan', 'Armenian', '051', 'dram (inv.)', 'AMD', 'luma', 'AMD', 2, 'Republic of Armenia', 'AM', 'ARM', 'Armenia', '142', '145', 0, '374', 'AM.png'),
(52, NULL, NULL, 'Bridgetown', 'Barbadian', '052', 'Barbados dollar', 'BBD', 'cent', '$', 2, 'Barbados', 'BB', 'BRB', 'Barbados', '019', '029', 0, '1', 'BB.png'),
(56, NULL, NULL, 'Brussels', 'Belgian', '056', 'euro', 'EUR', 'cent', '€', 2, 'Kingdom of Belgium', 'BE', 'BEL', 'Belgium', '150', '155', 1, '32', 'BE.png'),
(60, NULL, NULL, 'Hamilton', 'Bermudian', '060', 'Bermuda dollar', 'BMD', 'cent', '$', 2, 'Bermuda', 'BM', 'BMU', 'Bermuda', '019', '021', 0, '1', 'BM.png'),
(64, NULL, NULL, 'Thimphu', 'Bhutanese', '064', 'ngultrum (inv.)', 'BTN', 'chhetrum (inv.)', 'BTN', 2, 'Kingdom of Bhutan', 'BT', 'BTN', 'Bhutan', '142', '034', 0, '975', 'BT.png'),
(68, NULL, NULL, 'Sucre (BO1)', 'Bolivian', '068', 'boliviano', 'BOB', 'centavo', '$b', 2, 'Plurinational State of Bolivia', 'BO', 'BOL', 'Bolivia, Plurinational State of', '019', '005', 0, '591', 'BO.png'),
(70, NULL, NULL, 'Sarajevo', 'of Bosnia and Herzegovina', '070', 'convertible mark', 'BAM', 'fening', 'KM', 2, 'Bosnia and Herzegovina', 'BA', 'BIH', 'Bosnia and Herzegovina', '150', '039', 0, '387', 'BA.png'),
(72, NULL, NULL, 'Gaborone', 'Botswanan', '072', 'pula (inv.)', 'BWP', 'thebe (inv.)', 'P', 2, 'Republic of Botswana', 'BW', 'BWA', 'Botswana', '002', '018', 0, '267', 'BW.png'),
(74, NULL, NULL, 'Bouvet island', 'of Bouvet island', '074', '', '', '', 'kr', 2, 'Bouvet Island', 'BV', 'BVT', 'Bouvet Island', '', '', 0, '47', 'BV.png'),
(76, NULL, NULL, 'Brasilia', 'Brazilian', '076', 'real (pl. reais)', 'BRL', 'centavo', 'R$', 2, 'Federative Republic of Brazil', 'BR', 'BRA', 'Brazil', '019', '005', 0, '55', 'BR.png'),
(84, NULL, NULL, 'Belmopan', 'Belizean', '084', 'Belize dollar', 'BZD', 'cent', 'BZ$', 2, 'Belize', 'BZ', 'BLZ', 'Belize', '019', '013', 0, '501', 'BZ.png'),
(86, NULL, NULL, 'Diego Garcia', 'Changosian', '086', 'US dollar', 'USD', 'cent', '$', 2, 'British Indian Ocean Territory', 'IO', 'IOT', 'British Indian Ocean Territory', '', '', 0, '246', 'IO.png'),
(90, NULL, NULL, 'Honiara', 'Solomon Islander', '090', 'Solomon Islands dollar', 'SBD', 'cent', '$', 2, 'Solomon Islands', 'SB', 'SLB', 'Solomon Islands', '009', '054', 0, '677', 'SB.png'),
(92, NULL, NULL, 'Road Town', 'British Virgin Islander;', '092', 'US dollar', 'USD', 'cent', '$', 2, 'British Virgin Islands', 'VG', 'VGB', 'Virgin Islands, British', '019', '029', 0, '1', 'VG.png'),
(96, NULL, NULL, 'Bandar Seri Begawan', 'Bruneian', '096', 'Brunei dollar', 'BND', 'sen (inv.)', '$', 2, 'Brunei Darussalam', 'BN', 'BRN', 'Brunei Darussalam', '142', '035', 0, '673', 'BN.png'),
(100, NULL, NULL, 'Sofia', 'Bulgarian', '100', 'lev (pl. leva)', 'BGN', 'stotinka', 'лв', 2, 'Republic of Bulgaria', 'BG', 'BGR', 'Bulgaria', '150', '151', 1, '359', 'BG.png'),
(104, NULL, NULL, 'Yangon', 'Burmese', '104', 'kyat', 'MMK', 'pya', 'K', 2, 'Union of Myanmar/', 'MM', 'MMR', 'Myanmar', '142', '035', 0, '95', 'MM.png'),
(108, NULL, NULL, 'Bujumbura', 'Burundian', '108', 'Burundi franc', 'BIF', 'centime', 'BIF', 0, 'Republic of Burundi', 'BI', 'BDI', 'Burundi', '002', '014', 0, '257', 'BI.png'),
(112, NULL, NULL, 'Minsk', 'Belarusian', '112', 'Belarusian rouble', 'BYR', 'kopek', 'p.', 2, 'Republic of Belarus', 'BY', 'BLR', 'Belarus', '150', '151', 0, '375', 'BY.png'),
(116, NULL, NULL, 'Phnom Penh', 'Cambodian', '116', 'riel', 'KHR', 'sen (inv.)', '៛', 2, 'Kingdom of Cambodia', 'KH', 'KHM', 'Cambodia', '142', '035', 0, '855', 'KH.png'),
(120, NULL, NULL, 'Yaoundé', 'Cameroonian', '120', 'CFA franc (BEAC)', 'XAF', 'centime', 'FCF', 0, 'Republic of Cameroon', 'CM', 'CMR', 'Cameroon', '002', '017', 0, '237', 'CM.png'),
(124, NULL, NULL, 'Ottawa', 'Canadian', '124', 'Canadian dollar', 'CAD', 'cent', '$', 2, 'Canada', 'CA', 'CAN', 'Canada', '019', '021', 0, '1', 'CA.png'),
(132, NULL, NULL, 'Praia', 'Cape Verdean', '132', 'Cape Verde escudo', 'CVE', 'centavo', 'CVE', 2, 'Republic of Cape Verde', 'CV', 'CPV', 'Cape Verde', '002', '011', 0, '238', 'CV.png'),
(136, NULL, NULL, 'George Town', 'Caymanian', '136', 'Cayman Islands dollar', 'KYD', 'cent', '$', 2, 'Cayman Islands', 'KY', 'CYM', 'Cayman Islands', '019', '029', 0, '1', 'KY.png'),
(140, NULL, NULL, 'Bangui', 'Central African', '140', 'CFA franc (BEAC)', 'XAF', 'centime', 'CFA', 0, 'Central African Republic', 'CF', 'CAF', 'Central African Republic', '002', '017', 0, '236', 'CF.png'),
(144, NULL, NULL, 'Colombo', 'Sri Lankan', '144', 'Sri Lankan rupee', 'LKR', 'cent', '₨', 2, 'Democratic Socialist Republic of Sri Lanka', 'LK', 'LKA', 'Sri Lanka', '142', '034', 0, '94', 'LK.png'),
(148, NULL, NULL, 'N’Djamena', 'Chadian', '148', 'CFA franc (BEAC)', 'XAF', 'centime', 'XAF', 0, 'Republic of Chad', 'TD', 'TCD', 'Chad', '002', '017', 0, '235', 'TD.png'),
(152, NULL, NULL, 'Santiago', 'Chilean', '152', 'Chilean peso', 'CLP', 'centavo', 'CLP', 0, 'Republic of Chile', 'CL', 'CHL', 'Chile', '019', '005', 0, '56', 'CL.png'),
(156, NULL, NULL, 'Beijing', 'Chinese', '156', 'renminbi-yuan (inv.)', 'CNY', 'jiao (10)', '¥', 2, 'People’s Republic of China', 'CN', 'CHN', 'China', '142', '030', 0, '86', 'CN.png'),
(158, NULL, NULL, 'Taipei', 'Taiwanese', '158', 'new Taiwan dollar', 'TWD', 'fen (inv.)', 'NT$', 2, 'Republic of China, Taiwan (TW1)', 'TW', 'TWN', 'Taiwan, Province of China', '142', '030', 0, '886', 'TW.png'),
(162, NULL, NULL, 'Flying Fish Cove', 'Christmas Islander', '162', 'Australian dollar', 'AUD', 'cent', '$', 2, 'Christmas Island Territory', 'CX', 'CXR', 'Christmas Island', '', '', 0, '61', 'CX.png'),
(166, NULL, NULL, 'Bantam', 'Cocos Islander', '166', 'Australian dollar', 'AUD', 'cent', '$', 2, 'Territory of Cocos (Keeling) Islands', 'CC', 'CCK', 'Cocos (Keeling) Islands', '', '', 0, '61', 'CC.png'),
(170, NULL, NULL, 'Santa Fe de Bogotá', 'Colombian', '170', 'Colombian peso', 'COP', 'centavo', '$', 2, 'Republic of Colombia', 'CO', 'COL', 'Colombia', '019', '005', 0, '57', 'CO.png'),
(174, NULL, NULL, 'Moroni', 'Comorian', '174', 'Comorian franc', 'KMF', '', 'KMF', 0, 'Union of the Comoros', 'KM', 'COM', 'Comoros', '002', '014', 0, '269', 'KM.png'),
(175, NULL, NULL, 'Mamoudzou', 'Mahorais', '175', 'euro', 'EUR', 'cent', '€', 2, 'Departmental Collectivity of Mayotte', 'YT', 'MYT', 'Mayotte', '002', '014', 0, '262', 'YT.png'),
(178, NULL, NULL, 'Brazzaville', 'Congolese', '178', 'CFA franc (BEAC)', 'XAF', 'centime', 'FCF', 0, 'Republic of the Congo', 'CG', 'COG', 'Congo', '002', '017', 0, '242', 'CG.png'),
(180, NULL, NULL, 'Kinshasa', 'Congolese', '180', 'Congolese franc', 'CDF', 'centime', 'CDF', 2, 'Democratic Republic of the Congo', 'CD', 'COD', 'Congo, the Democratic Republic of the', '002', '017', 0, '243', 'CD.png'),
(184, NULL, NULL, 'Avarua', 'Cook Islander', '184', 'New Zealand dollar', 'NZD', 'cent', '$', 2, 'Cook Islands', 'CK', 'COK', 'Cook Islands', '009', '061', 0, '682', 'CK.png'),
(188, NULL, NULL, 'San José', 'Costa Rican', '188', 'Costa Rican colón (pl. colones)', 'CRC', 'céntimo', '₡', 2, 'Republic of Costa Rica', 'CR', 'CRI', 'Costa Rica', '019', '013', 0, '506', 'CR.png'),
(191, NULL, NULL, 'Zagreb', 'Croatian', '191', 'kuna (inv.)', 'HRK', 'lipa (inv.)', 'kn', 2, 'Republic of Croatia', 'HR', 'HRV', 'Croatia', '150', '039', 1, '385', 'HR.png'),
(192, NULL, NULL, 'Havana', 'Cuban', '192', 'Cuban peso', 'CUP', 'centavo', '₱', 2, 'Republic of Cuba', 'CU', 'CUB', 'Cuba', '019', '029', 0, '53', 'CU.png'),
(196, NULL, NULL, 'Nicosia', 'Cypriot', '196', 'euro', 'EUR', 'cent', 'CYP', 2, 'Republic of Cyprus', 'CY', 'CYP', 'Cyprus', '142', '145', 1, '357', 'CY.png'),
(203, NULL, NULL, 'Prague', 'Czech', '203', 'Czech koruna (pl. koruny)', 'CZK', 'halér', 'Kč', 2, 'Czech Republic', 'CZ', 'CZE', 'Czech Republic', '150', '151', 1, '420', 'CZ.png'),
(204, NULL, NULL, 'Porto Novo (BJ1)', 'Beninese', '204', 'CFA franc (BCEAO)', 'XOF', 'centime', 'XOF', 0, 'Republic of Benin', 'BJ', 'BEN', 'Benin', '002', '011', 0, '229', 'BJ.png'),
(208, NULL, NULL, 'Copenhagen', 'Danish', '208', 'Danish krone', 'DKK', 'øre (inv.)', 'kr', 2, 'Kingdom of Denmark', 'DK', 'DNK', 'Denmark', '150', '154', 1, '45', 'DK.png'),
(212, NULL, NULL, 'Roseau', 'Dominican', '212', 'East Caribbean dollar', 'XCD', 'cent', '$', 2, 'Commonwealth of Dominica', 'DM', 'DMA', 'Dominica', '019', '029', 0, '1', 'DM.png'),
(214, NULL, NULL, 'Santo Domingo', 'Dominican', '214', 'Dominican peso', 'DOP', 'centavo', 'RD$', 2, 'Dominican Republic', 'DO', 'DOM', 'Dominican Republic', '019', '029', 0, '1', 'DO.png'),
(218, NULL, NULL, 'Quito', 'Ecuadorian', '218', 'US dollar', 'USD', 'cent', '$', 2, 'Republic of Ecuador', 'EC', 'ECU', 'Ecuador', '019', '005', 0, '593', 'EC.png'),
(222, NULL, NULL, 'San Salvador', 'Salvadoran', '222', 'Salvadorian colón (pl. colones)', 'SVC', 'centavo', '$', 2, 'Republic of El Salvador', 'SV', 'SLV', 'El Salvador', '019', '013', 0, '503', 'SV.png'),
(226, NULL, NULL, 'Malabo', 'Equatorial Guinean', '226', 'CFA franc (BEAC)', 'XAF', 'centime', 'FCF', 2, 'Republic of Equatorial Guinea', 'GQ', 'GNQ', 'Equatorial Guinea', '002', '017', 0, '240', 'GQ.png'),
(231, NULL, NULL, 'Addis Ababa', 'Ethiopian', '231', 'birr (inv.)', 'ETB', 'cent', 'ETB', 2, 'Federal Democratic Republic of Ethiopia', 'ET', 'ETH', 'Ethiopia', '002', '014', 0, '251', 'ET.png'),
(232, NULL, NULL, 'Asmara', 'Eritrean', '232', 'nakfa', 'ERN', 'cent', 'Nfk', 2, 'State of Eritrea', 'ER', 'ERI', 'Eritrea', '002', '014', 0, '291', 'ER.png'),
(233, NULL, NULL, 'Tallinn', 'Estonian', '233', 'euro', 'EUR', 'cent', 'kr', 2, 'Republic of Estonia', 'EE', 'EST', 'Estonia', '150', '154', 1, '372', 'EE.png'),
(234, NULL, NULL, 'Tórshavn', 'Faeroese', '234', 'Danish krone', 'DKK', 'øre (inv.)', 'kr', 2, 'Faeroe Islands', 'FO', 'FRO', 'Faroe Islands', '150', '154', 0, '298', 'FO.png'),
(238, NULL, NULL, 'Stanley', 'Falkland Islander', '238', 'Falkland Islands pound', 'FKP', 'new penny', '£', 2, 'Falkland Islands', 'FK', 'FLK', 'Falkland Islands (Malvinas)', '019', '005', 0, '500', 'FK.png'),
(239, NULL, NULL, 'King Edward Point (Grytviken)', 'of South Georgia and the South Sandwich Islands', '239', '', '', '', '£', 2, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 'South Georgia and the South Sandwich Islands', '', '', 0, '44', 'GS.png'),
(242, NULL, NULL, 'Suva', 'Fijian', '242', 'Fiji dollar', 'FJD', 'cent', '$', 2, 'Republic of Fiji', 'FJ', 'FJI', 'Fiji', '009', '054', 0, '679', 'FJ.png'),
(246, NULL, NULL, 'Helsinki', 'Finnish', '246', 'euro', 'EUR', 'cent', '€', 2, 'Republic of Finland', 'FI', 'FIN', 'Finland', '150', '154', 1, '358', 'FI.png'),
(248, NULL, NULL, 'Mariehamn', 'Åland Islander', '248', 'euro', 'EUR', 'cent', NULL, NULL, 'Åland Islands', 'AX', 'ALA', 'Åland Islands', '150', '154', 0, '358', NULL),
(250, NULL, NULL, 'Paris', 'French', '250', 'euro', 'EUR', 'cent', '€', 2, 'French Republic', 'FR', 'FRA', 'France', '150', '155', 1, '33', 'FR.png'),
(254, NULL, NULL, 'Cayenne', 'Guianese', '254', 'euro', 'EUR', 'cent', '€', 2, 'French Guiana', 'GF', 'GUF', 'French Guiana', '019', '005', 0, '594', 'GF.png'),
(258, NULL, NULL, 'Papeete', 'Polynesian', '258', 'CFP franc', 'XPF', 'centime', 'XPF', 0, 'French Polynesia', 'PF', 'PYF', 'French Polynesia', '009', '061', 0, '689', 'PF.png'),
(260, NULL, NULL, 'Port-aux-Francais', 'of French Southern and Antarctic Lands', '260', 'euro', 'EUR', 'cent', '€', 2, 'French Southern and Antarctic Lands', 'TF', 'ATF', 'French Southern Territories', '', '', 0, '33', 'TF.png'),
(262, NULL, NULL, 'Djibouti', 'Djiboutian', '262', 'Djibouti franc', 'DJF', '', 'DJF', 0, 'Republic of Djibouti', 'DJ', 'DJI', 'Djibouti', '002', '014', 0, '253', 'DJ.png'),
(266, NULL, NULL, 'Libreville', 'Gabonese', '266', 'CFA franc (BEAC)', 'XAF', 'centime', 'FCF', 0, 'Gabonese Republic', 'GA', 'GAB', 'Gabon', '002', '017', 0, '241', 'GA.png'),
(268, NULL, NULL, 'Tbilisi', 'Georgian', '268', 'lari', 'GEL', 'tetri (inv.)', 'GEL', 2, 'Georgia', 'GE', 'GEO', 'Georgia', '142', '145', 0, '995', 'GE.png'),
(270, NULL, NULL, 'Banjul', 'Gambian', '270', 'dalasi (inv.)', 'GMD', 'butut', 'D', 2, 'Republic of the Gambia', 'GM', 'GMB', 'Gambia', '002', '011', 0, '220', 'GM.png'),
(275, NULL, NULL, NULL, 'Palestinian', '275', NULL, NULL, NULL, '₪', 2, NULL, 'PS', 'PSE', 'Palestinian Territory, Occupied', '142', '145', 0, '970', 'PS.png'),
(276, NULL, NULL, 'Berlin', 'German', '276', 'euro', 'EUR', 'cent', '€', 2, 'Federal Republic of Germany', 'DE', 'DEU', 'Germany', '150', '155', 1, '49', 'DE.png'),
(288, NULL, NULL, 'Accra', 'Ghanaian', '288', 'Ghana cedi', 'GHS', 'pesewa', '¢', 2, 'Republic of Ghana', 'GH', 'GHA', 'Ghana', '002', '011', 0, '233', 'GH.png'),
(292, NULL, NULL, 'Gibraltar', 'Gibraltarian', '292', 'Gibraltar pound', 'GIP', 'penny', '£', 2, 'Gibraltar', 'GI', 'GIB', 'Gibraltar', '150', '039', 0, '350', 'GI.png'),
(296, NULL, NULL, 'Tarawa', 'Kiribatian', '296', 'Australian dollar', 'AUD', 'cent', '$', 2, 'Republic of Kiribati', 'KI', 'KIR', 'Kiribati', '009', '057', 0, '686', 'KI.png'),
(300, NULL, NULL, 'Athens', 'Greek', '300', 'euro', 'EUR', 'cent', '€', 2, 'Hellenic Republic', 'GR', 'GRC', 'Greece', '150', '039', 1, '30', 'GR.png'),
(304, NULL, NULL, 'Nuuk', 'Greenlander', '304', 'Danish krone', 'DKK', 'øre (inv.)', 'kr', 2, 'Greenland', 'GL', 'GRL', 'Greenland', '019', '021', 0, '299', 'GL.png'),
(308, NULL, NULL, 'St George’s', 'Grenadian', '308', 'East Caribbean dollar', 'XCD', 'cent', '$', 2, 'Grenada', 'GD', 'GRD', 'Grenada', '019', '029', 0, '1', 'GD.png'),
(312, NULL, NULL, 'Basse Terre', 'Guadeloupean', '312', 'euro', 'EUR ', 'cent', '€', 2, 'Guadeloupe', 'GP', 'GLP', 'Guadeloupe', '019', '029', 0, '590', 'GP.png'),
(316, NULL, NULL, 'Agaña (Hagåtña)', 'Guamanian', '316', 'US dollar', 'USD', 'cent', '$', 2, 'Territory of Guam', 'GU', 'GUM', 'Guam', '009', '057', 0, '1', 'GU.png'),
(320, NULL, NULL, 'Guatemala City', 'Guatemalan', '320', 'quetzal (pl. quetzales)', 'GTQ', 'centavo', 'Q', 2, 'Republic of Guatemala', 'GT', 'GTM', 'Guatemala', '019', '013', 0, '502', 'GT.png'),
(324, NULL, NULL, 'Conakry', 'Guinean', '324', 'Guinean franc', 'GNF', '', 'GNF', 0, 'Republic of Guinea', 'GN', 'GIN', 'Guinea', '002', '011', 0, '224', 'GN.png'),
(328, NULL, NULL, 'Georgetown', 'Guyanese', '328', 'Guyana dollar', 'GYD', 'cent', '$', 2, 'Cooperative Republic of Guyana', 'GY', 'GUY', 'Guyana', '019', '005', 0, '592', 'GY.png'),
(332, NULL, NULL, 'Port-au-Prince', 'Haitian', '332', 'gourde', 'HTG', 'centime', 'G', 2, 'Republic of Haiti', 'HT', 'HTI', 'Haiti', '019', '029', 0, '509', 'HT.png'),
(334, NULL, NULL, 'Territory of Heard Island and McDonald Islands', 'of Territory of Heard Island and McDonald Islands', '334', '', '', '', '$', 2, 'Territory of Heard Island and McDonald Islands', 'HM', 'HMD', 'Heard Island and McDonald Islands', '', '', 0, '61', 'HM.png'),
(336, NULL, NULL, 'Vatican City', 'of the Holy See/of the Vatican', '336', 'euro', 'EUR', 'cent', '€', 2, 'the Holy See/ Vatican City State', 'VA', 'VAT', 'Holy See (Vatican City State)', '150', '039', 0, '39', 'VA.png'),
(340, NULL, NULL, 'Tegucigalpa', 'Honduran', '340', 'lempira', 'HNL', 'centavo', 'L', 2, 'Republic of Honduras', 'HN', 'HND', 'Honduras', '019', '013', 0, '504', 'HN.png'),
(344, NULL, NULL, '(HK3)', 'Hong Kong Chinese', '344', 'Hong Kong dollar', 'HKD', 'cent', '$', 2, 'Hong Kong Special Administrative Region of the People’s Republic of China (HK2)', 'HK', 'HKG', 'Hong Kong', '142', '030', 0, '852', 'HK.png'),
(348, NULL, NULL, 'Budapest', 'Hungarian', '348', 'forint (inv.)', 'HUF', '(fillér (inv.))', 'Ft', 2, 'Republic of Hungary', 'HU', 'HUN', 'Hungary', '150', '151', 1, '36', 'HU.png'),
(352, NULL, NULL, 'Reykjavik', 'Icelander', '352', 'króna (pl. krónur)', 'ISK', '', 'kr', 0, 'Republic of Iceland', 'IS', 'ISL', 'Iceland', '150', '154', 0, '354', 'IS.png'),
(356, NULL, NULL, 'New Delhi', 'Indian', '356', 'Indian rupee', 'INR', 'paisa', '₹', 2, 'Republic of India', 'IN', 'IND', 'India', '142', '034', 0, '91', 'IN.png'),
(360, NULL, NULL, 'Jakarta', 'Indonesian', '360', 'Indonesian rupiah (inv.)', 'IDR', 'sen (inv.)', 'Rp', 2, 'Republic of Indonesia', 'ID', 'IDN', 'Indonesia', '142', '035', 0, '62', 'ID.png'),
(364, NULL, NULL, 'Tehran', 'Iranian', '364', 'Iranian rial', 'IRR', '(dinar) (IR1)', '﷼', 2, 'Islamic Republic of Iran', 'IR', 'IRN', 'Iran, Islamic Republic of', '142', '034', 0, '98', 'IR.png'),
(368, NULL, NULL, 'Baghdad', 'Iraqi', '368', 'Iraqi dinar', 'IQD', 'fils (inv.)', 'IQD', 3, 'Republic of Iraq', 'IQ', 'IRQ', 'Iraq', '142', '145', 0, '964', 'IQ.png'),
(372, NULL, NULL, 'Dublin', 'Irish', '372', 'euro', 'EUR', 'cent', '€', 2, 'Ireland (IE1)', 'IE', 'IRL', 'Ireland', '150', '154', 1, '353', 'IE.png'),
(376, NULL, NULL, '(IL1)', 'Israeli', '376', 'shekel', 'ILS', 'agora', '₪', 2, 'State of Israel', 'IL', 'ISR', 'Israel', '142', '145', 0, '972', 'IL.png'),
(380, NULL, NULL, 'Rome', 'Italian', '380', 'euro', 'EUR', 'cent', '€', 2, 'Italian Republic', 'IT', 'ITA', 'Italy', '150', '039', 1, '39', 'IT.png'),
(384, NULL, NULL, 'Yamoussoukro (CI1)', 'Ivorian', '384', 'CFA franc (BCEAO)', 'XOF', 'centime', 'XOF', 0, 'Republic of Côte d’Ivoire', 'CI', 'CIV', 'Côte d\'Ivoire', '002', '011', 0, '225', 'CI.png'),
(388, NULL, NULL, 'Kingston', 'Jamaican', '388', 'Jamaica dollar', 'JMD', 'cent', '$', 2, 'Jamaica', 'JM', 'JAM', 'Jamaica', '019', '029', 0, '1', 'JM.png'),
(392, NULL, NULL, 'Tokyo', 'Japanese', '392', 'yen (inv.)', 'JPY', '(sen (inv.)) (JP1)', '¥', 0, 'Japan', 'JP', 'JPN', 'Japan', '142', '030', 0, '81', 'JP.png'),
(398, NULL, NULL, 'Astana', 'Kazakh', '398', 'tenge (inv.)', 'KZT', 'tiyn', 'лв', 2, 'Republic of Kazakhstan', 'KZ', 'KAZ', 'Kazakhstan', '142', '143', 0, '7', 'KZ.png'),
(400, NULL, NULL, 'Amman', 'Jordanian', '400', 'Jordanian dinar', 'JOD', '100 qirsh', 'JOD', 2, 'Hashemite Kingdom of Jordan', 'JO', 'JOR', 'Jordan', '142', '145', 0, '962', 'JO.png'),
(404, NULL, NULL, 'Nairobi', 'Kenyan', '404', 'Kenyan shilling', 'KES', 'cent', 'KES', 2, 'Republic of Kenya', 'KE', 'KEN', 'Kenya', '002', '014', 0, '254', 'KE.png'),
(408, NULL, NULL, 'Pyongyang', 'North Korean', '408', 'North Korean won (inv.)', 'KPW', 'chun (inv.)', '₩', 2, 'Democratic People’s Republic of Korea', 'KP', 'PRK', 'Korea, Democratic People\'s Republic of', '142', '030', 0, '850', 'KP.png'),
(410, NULL, NULL, 'Seoul', 'South Korean', '410', 'South Korean won (inv.)', 'KRW', '(chun (inv.))', '₩', 0, 'Republic of Korea', 'KR', 'KOR', 'Korea, Republic of', '142', '030', 0, '82', 'KR.png'),
(414, NULL, NULL, 'Kuwait City', 'Kuwaiti', '414', 'Kuwaiti dinar', 'KWD', 'fils (inv.)', 'KWD', 3, 'State of Kuwait', 'KW', 'KWT', 'Kuwait', '142', '145', 0, '965', 'KW.png'),
(417, NULL, NULL, 'Bishkek', 'Kyrgyz', '417', 'som', 'KGS', 'tyiyn', 'лв', 2, 'Kyrgyz Republic', 'KG', 'KGZ', 'Kyrgyzstan', '142', '143', 0, '996', 'KG.png'),
(418, NULL, NULL, 'Vientiane', 'Lao', '418', 'kip (inv.)', 'LAK', '(at (inv.))', '₭', 0, 'Lao People’s Democratic Republic', 'LA', 'LAO', 'Lao People\'s Democratic Republic', '142', '035', 0, '856', 'LA.png'),
(422, NULL, NULL, 'Beirut', 'Lebanese', '422', 'Lebanese pound', 'LBP', '(piastre)', '£', 2, 'Lebanese Republic', 'LB', 'LBN', 'Lebanon', '142', '145', 0, '961', 'LB.png'),
(426, NULL, NULL, 'Maseru', 'Basotho', '426', 'loti (pl. maloti)', 'LSL', 'sente', 'L', 2, 'Kingdom of Lesotho', 'LS', 'LSO', 'Lesotho', '002', '018', 0, '266', 'LS.png'),
(428, NULL, NULL, 'Riga', 'Latvian', '428', 'euro', 'EUR', 'cent', 'Ls', 2, 'Republic of Latvia', 'LV', 'LVA', 'Latvia', '150', '154', 1, '371', 'LV.png'),
(430, NULL, NULL, 'Monrovia', 'Liberian', '430', 'Liberian dollar', 'LRD', 'cent', '$', 2, 'Republic of Liberia', 'LR', 'LBR', 'Liberia', '002', '011', 0, '231', 'LR.png'),
(434, NULL, NULL, 'Tripoli', 'Libyan', '434', 'Libyan dinar', 'LYD', 'dirham', 'LYD', 3, 'Socialist People’s Libyan Arab Jamahiriya', 'LY', 'LBY', 'Libya', '002', '015', 0, '218', 'LY.png'),
(438, NULL, NULL, 'Vaduz', 'Liechtensteiner', '438', 'Swiss franc', 'CHF', 'centime', 'CHF', 2, 'Principality of Liechtenstein', 'LI', 'LIE', 'Liechtenstein', '150', '155', 0, '423', 'LI.png'),
(440, NULL, NULL, 'Vilnius', 'Lithuanian', '440', 'euro', 'EUR', 'cent', 'Lt', 2, 'Republic of Lithuania', 'LT', 'LTU', 'Lithuania', '150', '154', 1, '370', 'LT.png'),
(442, NULL, NULL, 'Luxembourg', 'Luxembourger', '442', 'euro', 'EUR', 'cent', '€', 2, 'Grand Duchy of Luxembourg', 'LU', 'LUX', 'Luxembourg', '150', '155', 1, '352', 'LU.png'),
(446, NULL, NULL, 'Macao (MO3)', 'Macanese', '446', 'pataca', 'MOP', 'avo', 'MOP', 2, 'Macao Special Administrative Region of the People’s Republic of China (MO2)', 'MO', 'MAC', 'Macao', '142', '030', 0, '853', 'MO.png'),
(450, NULL, NULL, 'Antananarivo', 'Malagasy', '450', 'ariary', 'MGA', 'iraimbilanja (inv.)', 'MGA', 2, 'Republic of Madagascar', 'MG', 'MDG', 'Madagascar', '002', '014', 0, '261', 'MG.png'),
(454, NULL, NULL, 'Lilongwe', 'Malawian', '454', 'Malawian kwacha (inv.)', 'MWK', 'tambala (inv.)', 'MK', 2, 'Republic of Malawi', 'MW', 'MWI', 'Malawi', '002', '014', 0, '265', 'MW.png'),
(458, NULL, NULL, 'Kuala Lumpur (MY1)', 'Malaysian', '458', 'ringgit (inv.)', 'MYR', 'sen (inv.)', 'RM', 2, 'Malaysia', 'MY', 'MYS', 'Malaysia', '142', '035', 0, '60', 'MY.png'),
(462, NULL, NULL, 'Malé', 'Maldivian', '462', 'rufiyaa', 'MVR', 'laari (inv.)', 'Rf', 2, 'Republic of Maldives', 'MV', 'MDV', 'Maldives', '142', '034', 0, '960', 'MV.png'),
(466, NULL, NULL, 'Bamako', 'Malian', '466', 'CFA franc (BCEAO)', 'XOF', 'centime', 'XOF', 0, 'Republic of Mali', 'ML', 'MLI', 'Mali', '002', '011', 0, '223', 'ML.png'),
(470, NULL, NULL, 'Valletta', 'Maltese', '470', 'euro', 'EUR', 'cent', 'MTL', 2, 'Republic of Malta', 'MT', 'MLT', 'Malta', '150', '039', 1, '356', 'MT.png'),
(474, NULL, NULL, 'Fort-de-France', 'Martinican', '474', 'euro', 'EUR', 'cent', '€', 2, 'Martinique', 'MQ', 'MTQ', 'Martinique', '019', '029', 0, '596', 'MQ.png'),
(478, NULL, NULL, 'Nouakchott', 'Mauritanian', '478', 'ouguiya', 'MRO', 'khoum', 'UM', 2, 'Islamic Republic of Mauritania', 'MR', 'MRT', 'Mauritania', '002', '011', 0, '222', 'MR.png'),
(480, NULL, NULL, 'Port Louis', 'Mauritian', '480', 'Mauritian rupee', 'MUR', 'cent', '₨', 2, 'Republic of Mauritius', 'MU', 'MUS', 'Mauritius', '002', '014', 0, '230', 'MU.png'),
(484, NULL, NULL, 'Mexico City', 'Mexican', '484', 'Mexican peso', 'MXN', 'centavo', '$', 2, 'United Mexican States', 'MX', 'MEX', 'Mexico', '019', '013', 0, '52', 'MX.png'),
(492, NULL, NULL, 'Monaco', 'Monegasque', '492', 'euro', 'EUR', 'cent', '€', 2, 'Principality of Monaco', 'MC', 'MCO', 'Monaco', '150', '155', 0, '377', 'MC.png'),
(496, NULL, NULL, 'Ulan Bator', 'Mongolian', '496', 'tugrik', 'MNT', 'möngö (inv.)', '₮', 2, 'Mongolia', 'MN', 'MNG', 'Mongolia', '142', '030', 0, '976', 'MN.png'),
(498, NULL, NULL, 'Chisinau', 'Moldovan', '498', 'Moldovan leu (pl. lei)', 'MDL', 'ban', 'MDL', 2, 'Republic of Moldova', 'MD', 'MDA', 'Moldova, Republic of', '150', '151', 0, '373', 'MD.png'),
(499, NULL, NULL, 'Podgorica', 'Montenegrin', '499', 'euro', 'EUR', 'cent', '€', 2, 'Montenegro', 'ME', 'MNE', 'Montenegro', '150', '039', 0, '382', 'ME.png'),
(500, NULL, NULL, 'Plymouth (MS2)', 'Montserratian', '500', 'East Caribbean dollar', 'XCD', 'cent', '$', 2, 'Montserrat', 'MS', 'MSR', 'Montserrat', '019', '029', 0, '1', 'MS.png'),
(504, NULL, NULL, 'Rabat', 'Moroccan', '504', 'Moroccan dirham', 'MAD', 'centime', 'MAD', 2, 'Kingdom of Morocco', 'MA', 'MAR', 'Morocco', '002', '015', 0, '212', 'MA.png'),
(508, NULL, NULL, 'Maputo', 'Mozambican', '508', 'metical', 'MZN', 'centavo', 'MT', 2, 'Republic of Mozambique', 'MZ', 'MOZ', 'Mozambique', '002', '014', 0, '258', 'MZ.png'),
(512, NULL, NULL, 'Muscat', 'Omani', '512', 'Omani rial', 'OMR', 'baiza', '﷼', 3, 'Sultanate of Oman', 'OM', 'OMN', 'Oman', '142', '145', 0, '968', 'OM.png'),
(516, NULL, NULL, 'Windhoek', 'Namibian', '516', 'Namibian dollar', 'NAD', 'cent', '$', 2, 'Republic of Namibia', 'NA', 'NAM', 'Namibia', '002', '018', 0, '264', 'NA.png'),
(520, NULL, NULL, 'Yaren', 'Nauruan', '520', 'Australian dollar', 'AUD', 'cent', '$', 2, 'Republic of Nauru', 'NR', 'NRU', 'Nauru', '009', '057', 0, '674', 'NR.png'),
(524, NULL, NULL, 'Kathmandu', 'Nepalese', '524', 'Nepalese rupee', 'NPR', 'paisa (inv.)', '₨', 2, 'Nepal', 'NP', 'NPL', 'Nepal', '142', '034', 0, '977', 'NP.png'),
(528, NULL, NULL, 'Amsterdam (NL2)', 'Dutch', '528', 'euro', 'EUR', 'cent', '€', 2, 'Kingdom of the Netherlands', 'NL', 'NLD', 'Netherlands', '150', '155', 1, '31', 'NL.png'),
(531, NULL, NULL, 'Willemstad', 'Curaçaoan', '531', 'Netherlands Antillean guilder (CW1)', 'ANG', 'cent', NULL, NULL, 'Curaçao', 'CW', 'CUW', 'Curaçao', '019', '029', 0, '599', NULL),
(533, NULL, NULL, 'Oranjestad', 'Aruban', '533', 'Aruban guilder', 'AWG', 'cent', 'ƒ', 2, 'Aruba', 'AW', 'ABW', 'Aruba', '019', '029', 0, '297', 'AW.png'),
(534, NULL, NULL, 'Philipsburg', 'Sint Maartener', '534', 'Netherlands Antillean guilder (SX1)', 'ANG', 'cent', NULL, NULL, 'Sint Maarten', 'SX', 'SXM', 'Sint Maarten (Dutch part)', '019', '029', 0, '721', NULL),
(535, NULL, NULL, NULL, 'of Bonaire, Sint Eustatius and Saba', '535', 'US dollar', 'USD', 'cent', NULL, NULL, NULL, 'BQ', 'BES', 'Bonaire, Sint Eustatius and Saba', '019', '029', 0, '599', NULL),
(540, NULL, NULL, 'Nouméa', 'New Caledonian', '540', 'CFP franc', 'XPF', 'centime', 'XPF', 0, 'New Caledonia', 'NC', 'NCL', 'New Caledonia', '009', '054', 0, '687', 'NC.png'),
(548, NULL, NULL, 'Port Vila', 'Vanuatuan', '548', 'vatu (inv.)', 'VUV', '', 'Vt', 0, 'Republic of Vanuatu', 'VU', 'VUT', 'Vanuatu', '009', '054', 0, '678', 'VU.png'),
(554, NULL, NULL, 'Wellington', 'New Zealander', '554', 'New Zealand dollar', 'NZD', 'cent', '$', 2, 'New Zealand', 'NZ', 'NZL', 'New Zealand', '009', '053', 0, '64', 'NZ.png'),
(558, NULL, NULL, 'Managua', 'Nicaraguan', '558', 'córdoba oro', 'NIO', 'centavo', 'C$', 2, 'Republic of Nicaragua', 'NI', 'NIC', 'Nicaragua', '019', '013', 0, '505', 'NI.png'),
(562, NULL, NULL, 'Niamey', 'Nigerien', '562', 'CFA franc (BCEAO)', 'XOF', 'centime', 'XOF', 0, 'Republic of Niger', 'NE', 'NER', 'Niger', '002', '011', 0, '227', 'NE.png'),
(566, NULL, NULL, 'Abuja', 'Nigerian', '566', 'naira (inv.)', 'NGN', 'kobo (inv.)', '₦', 2, 'Federal Republic of Nigeria', 'NG', 'NGA', 'Nigeria', '002', '011', 0, '234', 'NG.png'),
(570, NULL, NULL, 'Alofi', 'Niuean', '570', 'New Zealand dollar', 'NZD', 'cent', '$', 2, 'Niue', 'NU', 'NIU', 'Niue', '009', '061', 0, '683', 'NU.png'),
(574, NULL, NULL, 'Kingston', 'Norfolk Islander', '574', 'Australian dollar', 'AUD', 'cent', '$', 2, 'Territory of Norfolk Island', 'NF', 'NFK', 'Norfolk Island', '009', '053', 0, '672', 'NF.png'),
(578, NULL, NULL, 'Oslo', 'Norwegian', '578', 'Norwegian krone (pl. kroner)', 'NOK', 'øre (inv.)', 'kr', 2, 'Kingdom of Norway', 'NO', 'NOR', 'Norway', '150', '154', 0, '47', 'NO.png'),
(580, NULL, NULL, 'Saipan', 'Northern Mariana Islander', '580', 'US dollar', 'USD', 'cent', '$', 2, 'Commonwealth of the Northern Mariana Islands', 'MP', 'MNP', 'Northern Mariana Islands', '009', '057', 0, '1', 'MP.png'),
(581, NULL, NULL, 'United States Minor Outlying Islands', 'of United States Minor Outlying Islands', '581', 'US dollar', 'USD', 'cent', '$', 2, 'United States Minor Outlying Islands', 'UM', 'UMI', 'United States Minor Outlying Islands', '', '', 0, '1', 'UM.png'),
(583, NULL, NULL, 'Palikir', 'Micronesian', '583', 'US dollar', 'USD', 'cent', '$', 2, 'Federated States of Micronesia', 'FM', 'FSM', 'Micronesia, Federated States of', '009', '057', 0, '691', 'FM.png'),
(584, NULL, NULL, 'Majuro', 'Marshallese', '584', 'US dollar', 'USD', 'cent', '$', 2, 'Republic of the Marshall Islands', 'MH', 'MHL', 'Marshall Islands', '009', '057', 0, '692', 'MH.png'),
(585, NULL, NULL, 'Melekeok', 'Palauan', '585', 'US dollar', 'USD', 'cent', '$', 2, 'Republic of Palau', 'PW', 'PLW', 'Palau', '009', '057', 0, '680', 'PW.png'),
(586, NULL, NULL, 'Islamabad', 'Pakistani', '586', 'Pakistani rupee', 'PKR', 'paisa', '₨', 2, 'Islamic Republic of Pakistan', 'PK', 'PAK', 'Pakistan', '142', '034', 0, '92', 'PK.png'),
(591, NULL, NULL, 'Panama City', 'Panamanian', '591', 'balboa', 'PAB', 'centésimo', 'B/.', 2, 'Republic of Panama', 'PA', 'PAN', 'Panama', '019', '013', 0, '507', 'PA.png'),
(598, NULL, NULL, 'Port Moresby', 'Papua New Guinean', '598', 'kina (inv.)', 'PGK', 'toea (inv.)', 'PGK', 2, 'Independent State of Papua New Guinea', 'PG', 'PNG', 'Papua New Guinea', '009', '054', 0, '675', 'PG.png'),
(600, NULL, NULL, 'Asunción', 'Paraguayan', '600', 'guaraní', 'PYG', 'céntimo', 'Gs', 0, 'Republic of Paraguay', 'PY', 'PRY', 'Paraguay', '019', '005', 0, '595', 'PY.png'),
(604, NULL, NULL, 'Lima', 'Peruvian', '604', 'new sol', 'PEN', 'céntimo', 'S/.', 2, 'Republic of Peru', 'PE', 'PER', 'Peru', '019', '005', 0, '51', 'PE.png'),
(608, NULL, NULL, 'Manila', 'Filipino', '608', 'Philippine peso', 'PHP', 'centavo', 'Php', 2, 'Republic of the Philippines', 'PH', 'PHL', 'Philippines', '142', '035', 0, '63', 'PH.png'),
(612, NULL, NULL, 'Adamstown', 'Pitcairner', '612', 'New Zealand dollar', 'NZD', 'cent', '$', 2, 'Pitcairn Islands', 'PN', 'PCN', 'Pitcairn', '009', '061', 0, '649', 'PN.png'),
(616, NULL, NULL, 'Warsaw', 'Polish', '616', 'zloty', 'PLN', 'grosz (pl. groszy)', 'zł', 2, 'Republic of Poland', 'PL', 'POL', 'Poland', '150', '151', 1, '48', 'PL.png'),
(620, NULL, NULL, 'Lisbon', 'Portuguese', '620', 'euro', 'EUR', 'cent', '€', 2, 'Portuguese Republic', 'PT', 'PRT', 'Portugal', '150', '039', 1, '351', 'PT.png'),
(624, NULL, NULL, 'Bissau', 'Guinea-Bissau national', '624', 'CFA franc (BCEAO)', 'XOF', 'centime', 'XOF', 0, 'Republic of Guinea-Bissau', 'GW', 'GNB', 'Guinea-Bissau', '002', '011', 0, '245', 'GW.png'),
(626, NULL, NULL, 'Dili', 'East Timorese', '626', 'US dollar', 'USD', 'cent', '$', 2, 'Democratic Republic of East Timor', 'TL', 'TLS', 'Timor-Leste', '142', '035', 0, '670', 'TL.png'),
(630, NULL, NULL, 'San Juan', 'Puerto Rican', '630', 'US dollar', 'USD', 'cent', '$', 2, 'Commonwealth of Puerto Rico', 'PR', 'PRI', 'Puerto Rico', '019', '029', 0, '1', 'PR.png'),
(634, NULL, NULL, 'Doha', 'Qatari', '634', 'Qatari riyal', 'QAR', 'dirham', '﷼', 2, 'State of Qatar', 'QA', 'QAT', 'Qatar', '142', '145', 0, '974', 'QA.png'),
(638, NULL, NULL, 'Saint-Denis', 'Reunionese', '638', 'euro', 'EUR', 'cent', '€', 2, 'Réunion', 'RE', 'REU', 'Réunion', '002', '014', 0, '262', 'RE.png'),
(642, NULL, NULL, 'Bucharest', 'Romanian', '642', 'Romanian leu (pl. lei)', 'RON', 'ban (pl. bani)', 'lei', 2, 'Romania', 'RO', 'ROU', 'Romania', '150', '151', 1, '40', 'RO.png'),
(643, NULL, NULL, 'Moscow', 'Russian', '643', 'Russian rouble', 'RUB', 'kopek', 'руб', 2, 'Russian Federation', 'RU', 'RUS', 'Russian Federation', '150', '151', 0, '7', 'RU.png'),
(646, NULL, NULL, 'Kigali', 'Rwandan; Rwandese', '646', 'Rwandese franc', 'RWF', 'centime', 'RWF', 0, 'Republic of Rwanda', 'RW', 'RWA', 'Rwanda', '002', '014', 0, '250', 'RW.png'),
(652, NULL, NULL, 'Gustavia', 'of Saint Barthélemy', '652', 'euro', 'EUR', 'cent', NULL, NULL, 'Collectivity of Saint Barthélemy', 'BL', 'BLM', 'Saint Barthélemy', '019', '029', 0, '590', NULL),
(654, NULL, NULL, 'Jamestown', 'Saint Helenian', '654', 'Saint Helena pound', 'SHP', 'penny', '£', 2, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', 'SHN', 'Saint Helena, Ascension and Tristan da Cunha', '002', '011', 0, '290', 'SH.png'),
(659, NULL, NULL, 'Basseterre', 'Kittsian; Nevisian', '659', 'East Caribbean dollar', 'XCD', 'cent', '$', 2, 'Federation of Saint Kitts and Nevis', 'KN', 'KNA', 'Saint Kitts and Nevis', '019', '029', 0, '1', 'KN.png'),
(660, NULL, NULL, 'The Valley', 'Anguillan', '660', 'East Caribbean dollar', 'XCD', 'cent', '$', 2, 'Anguilla', 'AI', 'AIA', 'Anguilla', '019', '029', 0, '1', 'AI.png'),
(662, NULL, NULL, 'Castries', 'Saint Lucian', '662', 'East Caribbean dollar', 'XCD', 'cent', '$', 2, 'Saint Lucia', 'LC', 'LCA', 'Saint Lucia', '019', '029', 0, '1', 'LC.png'),
(663, NULL, NULL, 'Marigot', 'of Saint Martin', '663', 'euro', 'EUR', 'cent', NULL, NULL, 'Collectivity of Saint Martin', 'MF', 'MAF', 'Saint Martin (French part)', '019', '029', 0, '590', NULL),
(666, NULL, NULL, 'Saint-Pierre', 'St-Pierrais; Miquelonnais', '666', 'euro', 'EUR', 'cent', '€', 2, 'Territorial Collectivity of Saint Pierre and Miquelon', 'PM', 'SPM', 'Saint Pierre and Miquelon', '019', '021', 0, '508', 'PM.png'),
(670, NULL, NULL, 'Kingstown', 'Vincentian', '670', 'East Caribbean dollar', 'XCD', 'cent', '$', 2, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 'Saint Vincent and the Grenadines', '019', '029', 0, '1', 'VC.png'),
(674, NULL, NULL, 'San Marino', 'San Marinese', '674', 'euro', 'EUR ', 'cent', '€', 2, 'Republic of San Marino', 'SM', 'SMR', 'San Marino', '150', '039', 0, '378', 'SM.png'),
(678, NULL, NULL, 'São Tomé', 'São Toméan', '678', 'dobra', 'STD', 'centavo', 'Db', 2, 'Democratic Republic of São Tomé and Príncipe', 'ST', 'STP', 'Sao Tome and Principe', '002', '017', 0, '239', 'ST.png'),
(682, NULL, NULL, 'Riyadh', 'Saudi Arabian', '682', 'riyal', 'SAR', 'halala', '﷼', 2, 'Kingdom of Saudi Arabia', 'SA', 'SAU', 'Saudi Arabia', '142', '145', 0, '966', 'SA.png'),
(686, NULL, NULL, 'Dakar', 'Senegalese', '686', 'CFA franc (BCEAO)', 'XOF', 'centime', 'XOF', 0, 'Republic of Senegal', 'SN', 'SEN', 'Senegal', '002', '011', 0, '221', 'SN.png'),
(688, NULL, NULL, 'Belgrade', 'Serb', '688', 'Serbian dinar', 'RSD', 'para (inv.)', NULL, NULL, 'Republic of Serbia', 'RS', 'SRB', 'Serbia', '150', '039', 0, '381', NULL),
(690, NULL, NULL, 'Victoria', 'Seychellois', '690', 'Seychelles rupee', 'SCR', 'cent', '₨', 2, 'Republic of Seychelles', 'SC', 'SYC', 'Seychelles', '002', '014', 0, '248', 'SC.png'),
(694, NULL, NULL, 'Freetown', 'Sierra Leonean', '694', 'leone', 'SLL', 'cent', 'Le', 2, 'Republic of Sierra Leone', 'SL', 'SLE', 'Sierra Leone', '002', '011', 0, '232', 'SL.png'),
(702, NULL, NULL, 'Singapore', 'Singaporean', '702', 'Singapore dollar', 'SGD', 'cent', '$', 2, 'Republic of Singapore', 'SG', 'SGP', 'Singapore', '142', '035', 0, '65', 'SG.png'),
(703, NULL, NULL, 'Bratislava', 'Slovak', '703', 'euro', 'EUR', 'cent', 'Sk', 2, 'Slovak Republic', 'SK', 'SVK', 'Slovakia', '150', '151', 1, '421', 'SK.png'),
(704, NULL, NULL, 'Hanoi', 'Vietnamese', '704', 'dong', 'VND', '(10 hào', '₫', 2, 'Socialist Republic of Vietnam', 'VN', 'VNM', 'Viet Nam', '142', '035', 0, '84', 'VN.png'),
(705, NULL, NULL, 'Ljubljana', 'Slovene', '705', 'euro', 'EUR', 'cent', '€', 2, 'Republic of Slovenia', 'SI', 'SVN', 'Slovenia', '150', '039', 1, '386', 'SI.png'),
(706, NULL, NULL, 'Mogadishu', 'Somali', '706', 'Somali shilling', 'SOS', 'cent', 'S', 2, 'Somali Republic', 'SO', 'SOM', 'Somalia', '002', '014', 0, '252', 'SO.png'),
(710, NULL, NULL, 'Pretoria (ZA1)', 'South African', '710', 'rand', 'ZAR', 'cent', 'R', 2, 'Republic of South Africa', 'ZA', 'ZAF', 'South Africa', '002', '018', 0, '27', 'ZA.png'),
(716, NULL, NULL, 'Harare', 'Zimbabwean', '716', 'Zimbabwe dollar (ZW1)', 'ZWL', 'cent', 'Z$', 2, 'Republic of Zimbabwe', 'ZW', 'ZWE', 'Zimbabwe', '002', '014', 0, '263', 'ZW.png'),
(724, NULL, NULL, 'Madrid', 'Spaniard', '724', 'euro', 'EUR', 'cent', '€', 2, 'Kingdom of Spain', 'ES', 'ESP', 'Spain', '150', '039', 1, '34', 'ES.png'),
(728, NULL, NULL, 'Juba', 'South Sudanese', '728', 'South Sudanese pound', 'SSP', 'piaster', NULL, NULL, 'Republic of South Sudan', 'SS', 'SSD', 'South Sudan', '002', '015', 0, '211', NULL),
(729, NULL, NULL, 'Khartoum', 'Sudanese', '729', 'Sudanese pound', 'SDG', 'piastre', NULL, NULL, 'Republic of the Sudan', 'SD', 'SDN', 'Sudan', '002', '015', 0, '249', NULL),
(732, NULL, NULL, 'Al aaiun', 'Sahrawi', '732', 'Moroccan dirham', 'MAD', 'centime', 'MAD', 2, 'Western Sahara', 'EH', 'ESH', 'Western Sahara', '002', '015', 0, '212', 'EH.png'),
(740, NULL, NULL, 'Paramaribo', 'Surinamese', '740', 'Surinamese dollar', 'SRD', 'cent', '$', 2, 'Republic of Suriname', 'SR', 'SUR', 'Suriname', '019', '005', 0, '597', 'SR.png'),
(744, NULL, NULL, 'Longyearbyen', 'of Svalbard', '744', 'Norwegian krone (pl. kroner)', 'NOK', 'øre (inv.)', 'kr', 2, 'Svalbard and Jan Mayen', 'SJ', 'SJM', 'Svalbard and Jan Mayen', '150', '154', 0, '47', 'SJ.png'),
(748, NULL, NULL, 'Mbabane', 'Swazi', '748', 'lilangeni', 'SZL', 'cent', 'SZL', 2, 'Kingdom of Swaziland', 'SZ', 'SWZ', 'Swaziland', '002', '018', 0, '268', 'SZ.png'),
(752, NULL, NULL, 'Stockholm', 'Swedish', '752', 'krona (pl. kronor)', 'SEK', 'öre (inv.)', 'kr', 2, 'Kingdom of Sweden', 'SE', 'SWE', 'Sweden', '150', '154', 1, '46', 'SE.png'),
(756, NULL, NULL, 'Berne', 'Swiss', '756', 'Swiss franc', 'CHF', 'centime', 'CHF', 2, 'Swiss Confederation', 'CH', 'CHE', 'Switzerland', '150', '155', 0, '41', 'CH.png'),
(760, NULL, NULL, 'Damascus', 'Syrian', '760', 'Syrian pound', 'SYP', 'piastre', '£', 2, 'Syrian Arab Republic', 'SY', 'SYR', 'Syrian Arab Republic', '142', '145', 0, '963', 'SY.png'),
(762, NULL, NULL, 'Dushanbe', 'Tajik', '762', 'somoni', 'TJS', 'diram', 'TJS', 2, 'Republic of Tajikistan', 'TJ', 'TJK', 'Tajikistan', '142', '143', 0, '992', 'TJ.png'),
(764, NULL, NULL, 'Bangkok', 'Thai', '764', 'baht (inv.)', 'THB', 'satang (inv.)', '฿', 2, 'Kingdom of Thailand', 'TH', 'THA', 'Thailand', '142', '035', 0, '66', 'TH.png'),
(768, NULL, NULL, 'Lomé', 'Togolese', '768', 'CFA franc (BCEAO)', 'XOF', 'centime', 'XOF', 0, 'Togolese Republic', 'TG', 'TGO', 'Togo', '002', '011', 0, '228', 'TG.png'),
(772, NULL, NULL, '(TK2)', 'Tokelauan', '772', 'New Zealand dollar', 'NZD', 'cent', '$', 2, 'Tokelau', 'TK', 'TKL', 'Tokelau', '009', '061', 0, '690', 'TK.png'),
(776, NULL, NULL, 'Nuku’alofa', 'Tongan', '776', 'pa’anga (inv.)', 'TOP', 'seniti (inv.)', 'T$', 2, 'Kingdom of Tonga', 'TO', 'TON', 'Tonga', '009', '061', 0, '676', 'TO.png'),
(780, NULL, NULL, 'Port of Spain', 'Trinidadian; Tobagonian', '780', 'Trinidad and Tobago dollar', 'TTD', 'cent', 'TT$', 2, 'Republic of Trinidad and Tobago', 'TT', 'TTO', 'Trinidad and Tobago', '019', '029', 0, '1', 'TT.png'),
(784, NULL, NULL, 'Abu Dhabi', 'Emirian', '784', 'UAE dirham', 'AED', 'fils (inv.)', 'AED', 2, 'United Arab Emirates', 'AE', 'ARE', 'United Arab Emirates', '142', '145', 0, '971', 'AE.png'),
(788, NULL, NULL, 'Tunis', 'Tunisian', '788', 'Tunisian dinar', 'TND', 'millime', 'TND', 3, 'Republic of Tunisia', 'TN', 'TUN', 'Tunisia', '002', '015', 0, '216', 'TN.png'),
(792, NULL, NULL, 'Ankara', 'Turk', '792', 'Turkish lira (inv.)', 'TRY', 'kurus (inv.)', '₺', 2, 'Republic of Turkey', 'TR', 'TUR', 'Turkey', '142', '145', 0, '90', 'TR.png'),
(795, NULL, NULL, 'Ashgabat', 'Turkmen', '795', 'Turkmen manat (inv.)', 'TMT', 'tenge (inv.)', 'm', 2, 'Turkmenistan', 'TM', 'TKM', 'Turkmenistan', '142', '143', 0, '993', 'TM.png'),
(796, NULL, NULL, 'Cockburn Town', 'Turks and Caicos Islander', '796', 'US dollar', 'USD', 'cent', '$', 2, 'Turks and Caicos Islands', 'TC', 'TCA', 'Turks and Caicos Islands', '019', '029', 0, '1', 'TC.png'),
(798, NULL, NULL, 'Funafuti', 'Tuvaluan', '798', 'Australian dollar', 'AUD', 'cent', '$', 2, 'Tuvalu', 'TV', 'TUV', 'Tuvalu', '009', '061', 0, '688', 'TV.png'),
(800, NULL, NULL, 'Kampala', 'Ugandan', '800', 'Uganda shilling', 'UGX', 'cent', 'UGX', 0, 'Republic of Uganda', 'UG', 'UGA', 'Uganda', '002', '014', 0, '256', 'UG.png'),
(804, NULL, NULL, 'Kiev', 'Ukrainian', '804', 'hryvnia', 'UAH', 'kopiyka', '₴', 2, 'Ukraine', 'UA', 'UKR', 'Ukraine', '150', '151', 0, '380', 'UA.png'),
(807, NULL, NULL, 'Skopje', 'of the former Yugoslav Republic of Macedonia', '807', 'denar (pl. denars)', 'MKD', 'deni (inv.)', 'ден', 2, 'the former Yugoslav Republic of Macedonia', 'MK', 'MKD', 'Macedonia, the former Yugoslav Republic of', '150', '039', 0, '389', 'MK.png'),
(818, NULL, NULL, 'Cairo', 'Egyptian', '818', 'Egyptian pound', 'EGP', 'piastre', '£', 2, 'Arab Republic of Egypt', 'EG', 'EGY', 'Egypt', '002', '015', 0, '20', 'EG.png'),
(826, NULL, NULL, 'London', 'British', '826', 'pound sterling', 'GBP', 'penny (pl. pence)', '£', 2, 'United Kingdom of Great Britain and Northern Ireland', 'GB', 'GBR', 'United Kingdom', '150', '154', 1, '44', 'GB.png'),
(831, NULL, NULL, 'St Peter Port', 'of Guernsey', '831', 'Guernsey pound (GG2)', 'GGP (GG2)', 'penny (pl. pence)', NULL, NULL, 'Bailiwick of Guernsey', 'GG', 'GGY', 'Guernsey', '150', '154', 0, '44', NULL),
(832, NULL, NULL, 'St Helier', 'of Jersey', '832', 'Jersey pound (JE2)', 'JEP (JE2)', 'penny (pl. pence)', NULL, NULL, 'Bailiwick of Jersey', 'JE', 'JEY', 'Jersey', '150', '154', 0, '44', NULL),
(833, NULL, NULL, 'Douglas', 'Manxman; Manxwoman', '833', 'Manx pound (IM2)', 'IMP (IM2)', 'penny (pl. pence)', NULL, NULL, 'Isle of Man', 'IM', 'IMN', 'Isle of Man', '150', '154', 0, '44', NULL),
(834, NULL, NULL, 'Dodoma (TZ1)', 'Tanzanian', '834', 'Tanzanian shilling', 'TZS', 'cent', 'TZS', 2, 'United Republic of Tanzania', 'TZ', 'TZA', 'Tanzania, United Republic of', '002', '014', 0, '255', 'TZ.png'),
(840, NULL, NULL, 'Washington DC', 'American', '840', 'US dollar', 'USD', 'cent', '$', 2, 'United States of America', 'US', 'USA', 'United States', '019', '021', 0, '1', 'US.png'),
(850, NULL, NULL, 'Charlotte Amalie', 'US Virgin Islander', '850', 'US dollar', 'USD', 'cent', '$', 2, 'United States Virgin Islands', 'VI', 'VIR', 'Virgin Islands, U.S.', '019', '029', 0, '1', 'VI.png'),
(854, NULL, NULL, 'Ouagadougou', 'Burkinabe', '854', 'CFA franc (BCEAO)', 'XOF', 'centime', 'XOF', 0, 'Burkina Faso', 'BF', 'BFA', 'Burkina Faso', '002', '011', 0, '226', 'BF.png'),
(858, NULL, NULL, 'Montevideo', 'Uruguayan', '858', 'Uruguayan peso', 'UYU', 'centésimo', '$U', 0, 'Eastern Republic of Uruguay', 'UY', 'URY', 'Uruguay', '019', '005', 0, '598', 'UY.png'),
(860, NULL, NULL, 'Tashkent', 'Uzbek', '860', 'sum (inv.)', 'UZS', 'tiyin (inv.)', 'лв', 2, 'Republic of Uzbekistan', 'UZ', 'UZB', 'Uzbekistan', '142', '143', 0, '998', 'UZ.png'),
(862, NULL, NULL, 'Caracas', 'Venezuelan', '862', 'bolívar fuerte (pl. bolívares fuertes)', 'VEF', 'céntimo', 'Bs', 2, 'Bolivarian Republic of Venezuela', 'VE', 'VEN', 'Venezuela, Bolivarian Republic of', '019', '005', 0, '58', 'VE.png'),
(876, NULL, NULL, 'Mata-Utu', 'Wallisian; Futunan; Wallis and Futuna Islander', '876', 'CFP franc', 'XPF', 'centime', 'XPF', 0, 'Wallis and Futuna', 'WF', 'WLF', 'Wallis and Futuna', '009', '061', 0, '681', 'WF.png'),
(882, NULL, NULL, 'Apia', 'Samoan', '882', 'tala (inv.)', 'WST', 'sene (inv.)', 'WS$', 2, 'Independent State of Samoa', 'WS', 'WSM', 'Samoa', '009', '061', 0, '685', 'WS.png'),
(887, NULL, NULL, 'San’a', 'Yemenite', '887', 'Yemeni rial', 'YER', 'fils (inv.)', '﷼', 2, 'Republic of Yemen', 'YE', 'YEM', 'Yemen', '142', '145', 0, '967', 'YE.png'),
(894, NULL, NULL, 'Lusaka', 'Zambian', '894', 'Zambian kwacha (inv.)', 'ZMW', 'ngwee (inv.)', 'ZK', 2, 'Republic of Zambia', 'ZM', 'ZMB', 'Zambia', '002', '014', 0, '260', 'ZM.png');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `format` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `format`, `exchange_rate`, `active`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', 'USD', '$', '$1,0.00', '1', 0, '2019-10-09 19:09:14', '2019-12-26 22:30:00'),
(2, 'Australian Dollar', 'AUD', '$', '$1,0.00', '1.437308', 0, '2019-10-09 19:09:14', '2019-12-26 22:30:00'),
(3, 'Nigeria, Naira', 'NGN', '₦', '₦1,0.00', '362.04', 0, '2019-10-09 19:09:14', '2019-12-26 22:30:00'),
(4, 'Euro', 'EUR', '€', '1.0,00 €', '0.898224', 0, '2019-10-09 19:09:14', '2019-12-26 22:30:00'),
(5, 'Pound Sterling', 'GBP', '£', '£1,0.00', '0.765376', 0, '2019-12-09 21:34:15', '2019-12-26 22:30:00'),
(6, 'New Zealand Dollar', 'NZD', '$', '$1,0.00', '1.496063', 0, '2019-12-13 18:44:11', '2019-12-26 22:30:00'),
(7, 'Canadian Dollar', 'CAD', '$', '$1,0.00', '1.310189', 0, '2019-12-26 22:48:15', '2019-12-26 22:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `customer_chats`
--

CREATE TABLE `customer_chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `chatable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chatable_id` bigint(20) UNSIGNED NOT NULL,
  `chat_request_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_chats`
--

INSERT INTO `customer_chats` (`id`, `created_at`, `updated_at`, `chatable_type`, `chatable_id`, `chat_request_id`, `admin_id`) VALUES
(1, '2019-10-09 19:09:11', '2019-10-09 19:09:11', 'App\\Models\\Guest', 1, 1, 1),
(2, '2019-10-09 19:09:12', '2019-10-09 19:09:12', 'App\\Models\\Guest', 2, 2, 1),
(3, '2019-10-09 19:09:12', '2019-10-09 19:09:12', 'App\\Models\\Guest', 3, 3, 1),
(4, '2019-10-09 19:09:12', '2019-10-09 19:09:12', 'App\\Models\\Guest', 4, 4, 2),
(5, '2019-10-09 19:09:13', '2019-10-09 19:09:13', 'App\\Models\\Guest', 5, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `customer_chat_messages`
--

CREATE TABLE `customer_chat_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tracking_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'chat',
  `text` text COLLATE utf8mb4_unicode_ci,
  `from_customer` tinyint(1) NOT NULL DEFAULT '1',
  `sent_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_chat_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_chat_messages`
--

INSERT INTO `customer_chat_messages` (`id`, `tracking_id`, `type`, `text`, `from_customer`, `sent_at`, `customer_chat_id`) VALUES
(1, NULL, 'chat', 'Hi MOIREI', 1, '2019-10-10 16:09:11', 1),
(2, NULL, 'chat', 'Hi there! How can we help?', 0, '2019-10-10 16:09:11', 1),
(3, NULL, 'chat', 'I need help shopping. I like your products, they look greate!', 1, '2019-10-10 16:09:11', 1),
(4, NULL, 'chat', 'Awesome! Which one(s) in particular?', 0, '2019-10-10 16:09:11', 1),
(5, NULL, 'chat', 'Hello!!', 1, '2019-10-10 16:09:12', 2),
(6, NULL, 'chat', 'Hi! Good afternoon', 0, '2019-10-10 16:09:12', 2),
(7, NULL, 'chat', 'I need some help!', 1, '2019-10-10 16:09:12', 2),
(8, NULL, 'chat', 'You\'ve come to the right place. How can I help?', 0, '2019-10-10 16:09:12', 2),
(9, NULL, 'chat', 'Hi there, I need some insight!', 1, '2019-10-10 16:09:12', 3),
(10, NULL, 'chat', 'Greetings from London! Do you sell power banks?', 1, '2019-10-10 16:09:12', 4),
(11, NULL, 'chat', 'I need it for my iphone 6', 1, '2019-10-10 16:09:13', 5);

-- --------------------------------------------------------

--
-- Table structure for table `dinamyc_qr`
--

CREATE TABLE `dinamyc_qr` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `key` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'product',
  `status` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `data` text COLLATE utf8mb4_unicode_ci,
  `qrcodable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qrcodable_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dinamyc_qr`
--

INSERT INTO `dinamyc_qr` (`id`, `created_at`, `updated_at`, `key`, `code`, `type`, `status`, `data`, `qrcodable_type`, `qrcodable_id`) VALUES
(1, '2019-12-07 05:36:20', '2019-12-12 12:07:32', '861751025084', 'https://www.moirei-dev.com/quick-response/861751025084', 'product', 'draft', '{\"name\":\"James\",\"last_name\":\"Franco 2\"}', 'App\\Models\\Ecommerce\\Product', 6);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `group` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'General'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `created_at`, `updated_at`, `question`, `answer`, `group`) VALUES
(1, '2019-12-29 05:29:56', '2019-12-29 06:03:02', 'Can I cancel my order?', 'will have the option of coding in Java, Python, C++, C, C#, Ruby, Javascript, or Swift. Both questions must be answered to be considered. You may use different coding languages for the two questions; however, switching your', 'Ordering'),
(4, '2019-12-29 05:49:14', '2019-12-29 06:02:26', 'Can I track my order status?', 'You will have 90 minutes to complete 2 questions. The time remaining will be shown in the right hand corner of the screen throughout the test. Once the timer starts, it will not stop. Please ensure you have sufficient time to complete the test in one sitting before you begin. If time runs out, your last code entry will be saved.', 'General'),
(5, '2019-12-29 06:12:28', '2019-12-29 06:57:54', 'What payment methods do you accept?', 'Once you are satisfied with your code and confirm your code compiles, please click the “SUBMIT” button to submit your code test. You will not be able to review or change your code after is it submitted. You have to compile your code at least once before you submit.', 'General'),
(6, '2019-12-29 21:47:40', '2019-12-29 21:47:40', 'How heavy is it?', 'It doesn\'t weight much. Only 203g.', 'Wireless Power Bank'),
(8, '2020-01-02 17:24:56', '2020-01-03 13:53:39', 'Test 2: Can I buy credit?', '<div>No, u can\'t. See <a href=\"https://moirei-dev.com\">here</a>.</div><ul><li>This is even a stupid question</li></ul>', 'General'),
(15, '2020-01-02 18:09:51', '2020-01-02 18:09:51', 'Can I still use cable with the wireless power bank', 'Yes, very much so', 'Wireless Power Bank'),
(16, '2020-01-02 18:16:54', '2020-01-02 18:16:54', 'Test 3: Just a random text', 'Random answer given', 'Wireless Power Bank'),
(17, '2020-01-03 14:38:03', '2020-01-03 14:39:35', 'Where do I enter my promo code?', '<div>&nbsp;Promo codes can be entered via on checkout by selecting \"Apply* a promotional code\" and entering the code provided. Please note that promo codes are case sensitive.</div>', 'Ordering'),
(18, '2020-01-04 00:56:42', '2020-01-04 00:56:42', 'Hi, this is a test question?', 'Okay. Replied!', 'General'),
(19, '2020-01-08 02:14:21', '2020-01-08 02:14:21', 'Another random FAQ', 'No!', 'Ordering');

-- --------------------------------------------------------

--
-- Table structure for table `favourite_products`
--

CREATE TABLE `favourite_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `favourable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favourable_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourite_products`
--

INSERT INTO `favourite_products` (`id`, `created_at`, `updated_at`, `favourable_type`, `favourable_id`, `product_id`, `comment`) VALUES
(11, '2020-01-13 18:45:37', '2020-01-13 18:45:37', 'App\\Models\\Guest', 11, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `msucid` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`id`, `created_at`, `updated_at`, `msucid`, `email`, `slug`, `first_name`, `last_name`, `city`, `country`, `note`, `user_id`) VALUES
(1, '2019-10-09 19:09:11', '2019-10-09 19:09:11', 'q71IMaNT4Jxk5bb1A04cTILh7QGl61', NULL, NULL, 'Guest-1', NULL, 'Lagos', 'Nigeria', NULL, NULL),
(2, '2019-10-09 19:09:11', '2019-10-09 19:09:11', 'gf5NSOGbtlwyBcMQ2jRSgmS8A8zoKt', NULL, NULL, 'Guest-2', NULL, 'Abuja', 'Nigeria', NULL, NULL),
(3, '2019-10-09 19:09:12', '2019-10-09 19:09:12', '5BHVGP0GjcNzDtBX6MI23DpO97QEyG', NULL, NULL, 'Guest-3', NULL, 'Ojoto', 'Nigeria', NULL, NULL),
(4, '2019-10-09 19:09:12', '2019-10-09 19:09:12', 'mTeewlgAZnUb9ItVmL4ATDojy3QFHE', NULL, NULL, 'Guest-4', NULL, 'London', 'Nigeria', NULL, NULL),
(5, '2019-10-09 19:09:12', '2019-10-09 19:09:12', '44nQ4R30kze8ttm6gjrjzg8cq2lW4v', NULL, NULL, 'Guest-R3Jl', NULL, 'London', 'Nigeria', NULL, NULL),
(7, '2019-10-10 18:23:26', '2020-01-02 04:27:00', '2f0f0c70-dc3d-11e9-a0eb-959534c32ec9', 'augustusokoye@moirei.com', NULL, 'Augustus', 'Okoye', 'Unknown City', 'Unknwon Country', NULL, 8),
(8, '2019-10-29 12:56:18', '2019-10-29 12:56:18', '036dbf40-ad54-11e9-a180-17d519c4c826', NULL, NULL, 'Guest', '1572391578', 'Unknown City', 'Unknwon Country', NULL, NULL),
(9, '2019-10-29 13:01:24', '2019-10-29 13:01:24', 'e372a240-faa3-11e9-a164-791d0bfd73f1', NULL, NULL, 'Guest', '1572391884', 'Unknown City', 'Unknwon Country', NULL, NULL),
(10, '2019-11-22 02:24:22', '2019-11-22 02:24:22', '707b98b0-b849-11e9-af98-23b84c238552', NULL, NULL, 'Guest', '1574427262', 'Unknown City', 'Unknwon Country', NULL, NULL),
(11, '2020-01-07 04:26:18', '2020-01-11 22:30:00', '9eee4730-3132-11ea-a601-c3f680e980b9', 'agstrscntw3@gmail.com', NULL, 'Augustus', 'Okoye', 'New York City', 'United States', NULL, NULL),
(12, '2020-03-07 17:57:31', '2020-03-07 17:57:31', '1eea6300-60f5-11ea-97fb-fd70cb08dcf3', NULL, NULL, 'Guest', '1583641651', 'Mountain View', 'United States', NULL, NULL),
(13, '2020-03-07 22:58:54', '2020-03-07 22:58:54', '395f0680-611f-11ea-85cd-ef67c0509c2d', NULL, NULL, 'Guest', '1583659734', 'Mountain View', 'United States', NULL, NULL),
(14, '2020-03-07 23:07:57', '2020-03-07 23:07:57', '7ceecc80-6120-11ea-a49e-a78586203636', NULL, NULL, 'Guest', '1583660277', 'Mountain View', 'United States', NULL, NULL),
(15, '2020-03-10 20:08:18', '2020-03-10 20:08:18', '5b8348f0-6155-11ea-8b39-29f1417c4a6d', NULL, NULL, 'Guest', '1583908698', 'Mountain View', 'United States', NULL, NULL),
(16, '2020-03-11 20:03:10', '2020-03-13 03:10:16', '540861d0-642b-11ea-b118-75b7e7bce206', 'agstrscntw3@gmail.com', NULL, 'Augustus', 'Okoye', 'Mountain View', 'United States', NULL, NULL),
(17, '2020-03-13 11:52:32', '2020-03-13 12:02:20', '9faa4eb0-6578-11ea-ae0c-1f6b542eab2d', 'agstrscntw3@gmail.com', NULL, 'Augustus', 'Okoye', 'Mountain View', 'United States', NULL, NULL),
(18, '2020-03-13 15:31:58', '2020-03-13 15:35:33', 'b5b41350-6597-11ea-9398-4731ee69fef8', 'agstrscntw3@gmail.com', NULL, 'Augustus', 'Okoye', 'Mountain View', 'United States', NULL, NULL),
(19, '2020-03-13 15:59:27', '2020-03-13 22:02:12', 'a0202b60-659b-11ea-ad80-4955833fd4e7', 'agstrscntw3@gmail.com', NULL, 'Augustus', 'Okoye', 'Mountain View', 'United States', NULL, NULL),
(20, '2020-03-13 22:08:05', '2020-03-13 22:11:35', 'd3034ce0-65ce-11ea-a1e2-e1c280d47bf5', 'agstrscntw3@gmail.com', NULL, 'Augustus', 'Okoye', 'Mountain View', 'United States', NULL, NULL),
(21, '2020-03-13 22:18:08', '2020-03-13 22:18:50', '20e3d6e0-65d0-11ea-a31e-bdb91a082474', 'agstrscntw3@gmail.com', NULL, 'Augustus', 'Okoye', 'Mountain View', 'United States', NULL, NULL),
(22, '2020-03-13 22:33:12', '2020-03-13 22:33:34', 'a04f2ca0-65d2-11ea-ab17-35ef2114db3a', 'agstrscntw3@gmail.com', NULL, 'Augustus', 'Okoye', 'Mountain View', 'United States', NULL, NULL),
(23, '2020-03-13 22:48:23', '2020-03-13 22:48:23', 'bfe3d450-65d4-11ea-8b48-572b0ae5d70f', NULL, NULL, 'Guest', '1584177503', 'Mountain View', 'United States', NULL, NULL),
(24, '2020-03-13 23:10:34', '2020-03-14 01:22:17', '32372160-65d5-11ea-8195-6917f5ea8708', 'agstrscntw3@gmail.com', NULL, 'Augustus', 'Okoye', 'Mountain View', 'United States', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `liked_products`
--

CREATE TABLE `liked_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `likable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likable_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `created_at`, `updated_at`, `name`, `description`, `note`) VALUES
(1, '2019-10-09 19:09:06', '2019-10-09 19:09:06', 'LLW Power Shenzhen', NULL, NULL),
(2, '2019-10-09 19:09:07', '2019-10-09 19:09:07', 'CNPRO LED Shenzhen', NULL, NULL);

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
(1, '2013_11_26_161501_create_currency_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2014_10_29_202547_migration_cartalyst_tags_create_tables', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(8, '2016_06_01_000004_create_oauth_clients_table', 1),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(10, '2018_01_01_000000_create_action_events_table', 1),
(11, '2019_05_10_000000_add_fields_to_action_events_table', 1),
(12, '2019_05_13_110339_create_admins_table', 1),
(13, '2019_05_17_110353_create_manufacturers_table', 1),
(14, '2019_05_17_111712_create_service_providers_table', 1),
(15, '2019_05_17_185327_create_shipping_classes_table', 1),
(16, '2019_05_17_185328_create_products_table', 1),
(17, '2019_05_18_031108_create_companies_table', 1),
(18, '2019_05_18_101822_create_stores_table', 1),
(19, '2019_05_18_101823_create_orders_table', 1),
(20, '2019_05_18_101824_create_order_items_table', 1),
(21, '2019_05_18_102206_create_countries_table', 1),
(22, '2019_05_18_113148_create_purchase_orders_table', 1),
(23, '2019_05_18_113149_create_purchase_order_items_table', 1),
(24, '2019_05_19_030205_create_addresses_table', 1),
(25, '2019_05_19_030206_create_contacts_table', 1),
(26, '2019_05_19_031226_create_phones_table', 1),
(27, '2019_05_22_133841_create_product_attributes_table', 1),
(28, '2019_05_22_134126_create_product_attribute_options_table', 1),
(29, '2019_05_22_134324_create_product_variations_table', 1),
(30, '2019_05_23_135942_create_product_categories_table', 1),
(31, '2019_05_24_132801_create_category_product_table', 1),
(32, '2019_05_31_122634_create_sessions_table', 1),
(33, '2019_06_01_000000_create_nova_media_library_table', 1),
(34, '2019_06_14_130912_create_support_calls_table', 1),
(35, '2019_06_14_130923_create_support_chats_table', 1),
(36, '2019_06_14_130942_create_support_callbacks_table', 1),
(37, '2019_06_14_132327_create_support_inquiries_table', 1),
(38, '2019_06_17_080135_create_guests_table', 1),
(39, '2019_06_17_080724_create_customer_chats_table', 1),
(40, '2019_06_17_080743_create_customer_chat_messages_table', 1),
(41, '2019_06_30_112411_create_cart_table', 1),
(42, '2019_06_30_113249_create_cart_items_table', 1),
(43, '2019_07_05_163031_create_favourite_products_table', 1),
(44, '2019_07_05_163052_create_liked_products_table', 1),
(45, '2019_07_09_075257_create_product_specification_table', 1),
(46, '2019_07_16_102221_create_vouchers_table', 1),
(47, '2019_07_19_074639_charify_countries_table', 1),
(48, '2019_08_14_054602_create_push_subscriptions_table', 1),
(49, '2019_08_19_034842_create_models_data_table', 1),
(50, '2019_08_27_095037_create_resellers_table', 1),
(51, '2019_08_28_161101_create_permission_tables', 1),
(52, '2019_08_30_130441_create_activity_log_table', 1),
(53, '2019_09_11_024904_create_trix_tables', 1),
(54, '2019_09_28_053909_add_faqs_to_products_table', 1),
(55, '2019_09_29_044258_create_product_reviews_table', 1),
(56, '2019_10_13_131951_create_product_return_policies_table', 2),
(57, '2019_10_17_080404_change_seo_title_in_products_table', 2),
(58, '2019_10_17_223024_add_return_policy_to_products_table', 3),
(59, '2019_10_17_231113_create_news_table', 4),
(60, '2019_10_23_124524_add_columns_to_orders_table', 4),
(62, '2019_10_26_091320_create_vouchers_table', 5),
(65, '2019_11_07_053051_change_on_sale_dates_in_products_table', 6),
(66, '2019_11_10_091346_add_images_to_product_attribute_options_table', 6),
(67, '2019_11_11_115802_change_short_description_column_on_products_table', 7),
(68, '2019_12_06_023230_create_dinamyc_qr_table', 8),
(69, '2019_12_29_152308_create_faqs_table', 9),
(70, '2020_01_12_112941_add_meta_column_to_orders_table', 10),
(71, '2020_01_01_000000_create_nova_media_library_table', 11),
(72, '2020_03_14_073812_create_cart_storage_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `model_data`
--

CREATE TABLE `model_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `datable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datable_id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_data`
--

INSERT INTO `model_data` (`id`, `datable_type`, `datable_id`, `data`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, '{\"profile\":\"Regular\",\"settings\":{\"notifications\":{\"enable_push\":false,\"vibration\":true,\"updates\":true},\"page\":{\"theme\":\"moirei\",\"background_image\":\"sidebar-1.jpg\"},\"shop\":{\"shipping_as_billing\":false},\"subscriptions\":{\"announcements\":true,\"news_updates\":true}}}', '2019-10-09 19:09:10', '2019-10-09 19:09:10'),
(2, 'App\\Models\\User', 2, '{\"profile\":\"Regular\",\"settings\":{\"notifications\":{\"enable_push\":false,\"vibration\":true,\"updates\":true},\"page\":{\"theme\":\"moirei\",\"background_image\":\"sidebar-1.jpg\"},\"shop\":{\"shipping_as_billing\":false},\"subscriptions\":{\"announcements\":true,\"news_updates\":true}}}', '2019-10-09 19:09:10', '2019-10-09 19:09:10'),
(3, 'App\\Models\\Support\\ChatRequest', 1, '{\"slack\":{\"thread_ts\":\"1570685946.000100\",\"channel\":\"support\"}}', '2019-10-09 19:09:11', '2019-10-09 19:09:11'),
(4, 'App\\Models\\Support\\ChatRequest', 2, '{\"slack\":{\"thread_ts\":\"1570685947.000200\",\"channel\":\"support\"}}', '2019-10-09 19:09:12', '2019-10-09 19:09:12'),
(5, 'App\\Models\\Support\\ChatRequest', 3, '{\"slack\":{\"thread_ts\":\"1570685947.000300\",\"channel\":\"support\"}}', '2019-10-09 19:09:12', '2019-10-09 19:09:12'),
(6, 'App\\Models\\Support\\ChatRequest', 4, '{\"slack\":{\"thread_ts\":\"1570685948.000400\",\"channel\":\"support\"}}', '2019-10-09 19:09:12', '2019-10-09 19:09:12'),
(7, 'App\\Models\\Support\\ChatRequest', 5, '{\"slack\":{\"thread_ts\":\"1570685948.000500\",\"channel\":\"support\"}}', '2019-10-09 19:09:13', '2019-10-09 19:09:13'),
(8, 'App\\Models\\Ecommerce\\Order', 1, '{\"slack\":{\"thread_ts\":\"1570748262.000300\"}}', '2019-10-10 12:27:43', '2019-10-10 12:27:43'),
(9, 'App\\Models\\Ecommerce\\Order', 2, '{\"slack\":{\"thread_ts\":\"1570748335.000400\"}}', '2019-10-10 12:28:55', '2019-10-10 12:28:55'),
(10, 'App\\Models\\Ecommerce\\Order', 3, '{\"slack\":{\"thread_ts\":\"1570962480.000100\"}}', '2019-10-12 23:58:01', '2019-10-12 23:58:01'),
(11, 'App\\Models\\Ecommerce\\Order', 4, '{\"slack\":{\"thread_ts\":\"1571232432.000100\"}}', '2019-10-16 02:57:13', '2019-10-16 02:57:13'),
(12, 'App\\Models\\Ecommerce\\Order', 5, '{\"slack\":{\"thread_ts\":\"1571315882.000100\"}}', '2019-10-17 02:08:02', '2019-10-17 02:08:02'),
(13, 'App\\Models\\Ecommerce\\Order', 6, '{\"slack\":{\"thread_ts\":\"1571461919.000100\"}}', '2019-10-18 18:42:00', '2019-10-18 18:42:00'),
(14, 'App\\Models\\Ecommerce\\Order', 7, '{\"slack\":{\"thread_ts\":\"1571462193.000400\"}}', '2019-10-18 18:46:34', '2019-10-18 18:46:34'),
(15, 'App\\Models\\Ecommerce\\Order', 8, '{\"slack\":{\"thread_ts\":\"1571462470.000700\"}}', '2019-10-18 18:51:10', '2019-10-18 18:51:10'),
(16, 'App\\Models\\Ecommerce\\Order', 9, '{\"slack\":{\"thread_ts\":\"1571469887.000200\"}}', '2019-10-18 20:54:48', '2019-10-18 20:54:48'),
(17, 'App\\Models\\Ecommerce\\Order', 10, '{\"slack\":{\"thread_ts\":\"1571480030.001000\"}}', '2019-10-18 23:43:52', '2019-10-18 23:43:52'),
(18, 'App\\Models\\Ecommerce\\Order', 11, '{\"slack\":{\"thread_ts\":\"1571487798.000100\"}}', '2019-10-19 01:53:20', '2019-10-19 01:53:20'),
(19, 'App\\Models\\Ecommerce\\Order', 12, '{\"slack\":{\"thread_ts\":\"1571580531.000300\"}}', '2019-10-20 03:38:52', '2019-10-20 03:38:52'),
(20, 'App\\Models\\Ecommerce\\Order', 13, '{\"slack\":{\"thread_ts\":\"1571582319.000400\"}}', '2019-10-20 04:08:40', '2019-10-20 04:08:40'),
(21, 'App\\Models\\Ecommerce\\Order', 14, '{\"slack\":{\"thread_ts\":\"1571582636.000500\"}}', '2019-10-20 04:13:57', '2019-10-20 04:13:57'),
(22, 'App\\Models\\Ecommerce\\Order', 15, '{\"slack\":{\"thread_ts\":\"1571626668.000100\"}}', '2019-10-20 16:27:49', '2019-10-20 16:27:49'),
(23, 'App\\Models\\Ecommerce\\Order', 16, '{\"slack\":{\"thread_ts\":\"1571657934.000100\"}}', '2019-10-21 01:08:54', '2019-10-21 01:08:54'),
(24, 'App\\Models\\Ecommerce\\Order', 17, '{\"slack\":{\"thread_ts\":\"1571839133.000300\"}}', '2019-10-23 03:28:54', '2019-10-23 03:28:54'),
(25, 'App\\Models\\Ecommerce\\Order', 18, '{\"slack\":{\"thread_ts\":\"1572066542.000100\"}}', '2019-10-25 18:39:03', '2019-10-25 18:39:03'),
(26, 'MOIREI\\Vouchers\\Models\\Voucher', 1, '[]', '2019-10-25 23:33:15', '2019-10-25 23:33:15'),
(27, 'MOIREI\\Vouchers\\Models\\Voucher', 2, '[]', '2019-10-25 23:34:12', '2019-10-25 23:34:12'),
(28, 'MOIREI\\Vouchers\\Models\\Voucher', 3, NULL, '2019-10-25 23:35:00', '2019-10-25 23:35:00'),
(29, 'MOIREI\\Vouchers\\Models\\Voucher', 4, '[]', '2019-10-25 23:35:00', '2019-10-28 21:39:55'),
(30, 'MOIREI\\Vouchers\\Models\\Voucher', 5, NULL, '2019-10-26 00:16:25', '2019-10-26 00:16:25'),
(31, 'MOIREI\\Vouchers\\Models\\Voucher', 6, '\"[\\n\\t\\\"Hi there\\\"\\t\\n]\"', '2019-10-26 00:41:13', '2019-11-14 23:11:54'),
(32, 'MOIREI\\Vouchers\\Models\\Voucher', 7, NULL, '2019-10-26 00:56:58', '2019-10-26 00:56:58'),
(33, 'MOIREI\\Vouchers\\Models\\Voucher', 8, '[\"Test\"]', '2019-10-26 00:57:31', '2019-10-26 00:57:31'),
(34, 'MOIREI\\Vouchers\\Models\\Voucher', 9, '[\"Test\"]', '2019-10-26 00:58:01', '2019-10-26 00:58:01'),
(35, 'MOIREI\\Vouchers\\Models\\Voucher', 10, '[\"Test\"]', '2019-10-26 00:58:59', '2019-10-26 00:58:59'),
(36, 'MOIREI\\Vouchers\\Models\\Voucher', 20, '[]', '2019-10-26 02:46:52', '2019-10-26 02:46:52'),
(37, 'MOIREI\\Vouchers\\Models\\Voucher', 21, '[]', '2019-10-26 02:55:17', '2019-10-26 02:55:17'),
(38, 'MOIREI\\Vouchers\\Models\\Voucher', 22, '[]', '2019-10-26 03:05:59', '2019-10-26 03:05:59'),
(39, 'MOIREI\\Vouchers\\Models\\Voucher', 23, '[]', '2019-10-26 03:26:57', '2019-10-26 03:26:57'),
(40, 'MOIREI\\Vouchers\\Models\\Voucher', 24, '[]', '2019-10-26 03:36:09', '2019-10-26 03:36:09'),
(41, 'MOIREI\\Vouchers\\Models\\Voucher', 25, '[]', '2019-10-26 03:36:23', '2019-10-26 03:36:23'),
(42, 'MOIREI\\Vouchers\\Models\\Voucher', 26, '[]', '2019-10-26 03:39:58', '2019-10-26 03:39:58'),
(43, 'MOIREI\\Vouchers\\Models\\Voucher', 27, '[]', '2019-10-26 03:49:09', '2019-10-26 03:49:09'),
(44, 'MOIREI\\Vouchers\\Models\\Voucher', 28, '[]', '2019-10-26 03:50:26', '2019-10-26 03:50:26'),
(45, 'MOIREI\\Vouchers\\Models\\Voucher', 30, '[]', '2019-10-26 04:22:15', '2019-10-26 04:22:15'),
(46, 'MOIREI\\Vouchers\\Models\\Voucher', 31, '[]', '2019-10-26 04:26:04', '2019-10-26 04:26:04'),
(47, 'App\\Models\\Ecommerce\\Order', 19, '{\"slack\":{\"thread_ts\":\"1573203218.000100\"}}', '2019-11-07 22:23:40', '2019-11-07 22:23:40'),
(48, 'App\\Models\\Ecommerce\\Voucher', 6, NULL, '2019-11-14 14:26:23', '2019-11-14 14:26:23'),
(49, 'App\\Models\\Ecommerce\\Voucher', 5, NULL, '2019-11-14 22:12:09', '2019-11-14 22:12:09'),
(50, 'App\\Models\\Ecommerce\\Order', 20, '{\"slack\":{\"thread_ts\":\"1574336087.000100\"}}', '2019-11-21 01:04:48', '2019-11-21 01:04:48'),
(51, 'App\\Models\\Ecommerce\\Product', 5, '{\"available_on_gm\":false}', '2019-11-24 00:06:04', '2019-11-24 02:04:46'),
(52, 'App\\Models\\Ecommerce\\Product', 6, NULL, '2019-11-24 02:04:41', '2019-11-24 02:04:41'),
(53, 'App\\Models\\Ecommerce\\Product', 4, NULL, '2019-11-24 02:04:41', '2019-11-24 02:04:41'),
(54, 'App\\Models\\Ecommerce\\Product', 3, NULL, '2019-11-24 02:04:41', '2019-11-24 02:04:41'),
(55, 'App\\Models\\Ecommerce\\Product', 2, NULL, '2019-11-24 02:04:41', '2019-11-24 02:04:41'),
(56, 'App\\Models\\Ecommerce\\Product', 1, '{\"name\":\"Chucks\",\"last_name\":\"Okoye\",\"active\":true,\"test\":\"Value 3\",\"test_2\":\"Works\"}', '2019-11-24 02:04:41', '2019-12-12 13:07:37'),
(57, 'App\\Models\\Support\\ChatRequest', 6, '{\"slack\":{\"thread_ts\":\"1574950136.000100\",\"channel\":\"support\"}}', '2019-11-28 03:38:57', '2019-11-28 03:38:57'),
(58, 'App\\Models\\General\\QR', 1, '{\"test\":{\"name\":\"Value 2\"}}', '2019-12-11 16:38:07', '2019-12-12 01:25:26'),
(59, 'App\\Models\\Support\\ChatRequest', 7, NULL, '2019-12-12 13:43:53', '2019-12-12 13:43:53'),
(60, 'App\\Models\\Support\\ChatRequest', 8, NULL, '2019-12-12 13:44:23', '2019-12-12 13:44:23'),
(61, 'App\\Models\\Ecommerce\\Order', 21, '{\"slack\":{\"thread_ts\":\"1576300887.000300\"}}', '2019-12-13 18:51:29', '2019-12-13 18:51:29'),
(62, 'App\\Models\\User', 7, '{\"profile\":\"Regular\",\"settings\":{\"notifications\":{\"enable_push\":false,\"vibration\":true,\"updates\":true},\"page\":{\"theme\":\"moirei\",\"background_image\":\"sidebar-1.jpg\"},\"shop\":{\"shipping_as_billing\":false},\"subscriptions\":{\"announcements\":true,\"news_updates\":true}}}', '2019-12-25 15:03:01', '2019-12-25 15:03:01'),
(63, 'App\\Models\\User', 8, '{\"profile\":\"Regular\",\"settings\":{\"notifications\":{\"enable_push\":false,\"vibration\":true,\"updates\":true},\"page\":{\"theme\":\"moirei\",\"background_image\":\"sidebar-1.jpg\"},\"shop\":{\"shipping_as_billing\":false},\"subscriptions\":{\"announcements\":true,\"news_updates\":true}}}', '2020-01-02 04:26:54', '2020-01-02 04:26:54'),
(64, 'App\\Models\\Ecommerce\\Order', 27, '{\"slack\":{\"thread_ts\":\"1578822942.000100\"}}', '2020-01-11 23:25:43', '2020-01-11 23:25:43'),
(65, 'App\\Models\\Ecommerce\\Order', 28, '{\"slack\":{\"thread_ts\":\"1578823021.000200\"}}', '2020-01-11 23:27:02', '2020-01-11 23:27:02'),
(66, 'App\\Models\\Ecommerce\\Order', 29, NULL, '2020-01-12 00:01:58', '2020-01-12 00:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `article` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `visibility` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `created_at`, `updated_at`, `name`, `seo_title`, `slug`, `type`, `image`, `description`, `article`, `status`, `visibility`) VALUES
(1, '2019-12-18 15:15:04', '2019-12-18 17:04:35', 'How to Wireless Charge your iPhone and the Qi Standard Explained', NULL, 'how-to-wireless-charge-your-iphone-and-the-qi-standard-explained', 'update', NULL, 'To enable an easy charging experience, Apple’s iPhone 8 or later contain integrated wireless charging. The iPhone has a glass back that works with Qi-certified...', '<div>To enable an easy charging experience, Apple’s iPhone 8 or later contain integrated wireless charging. The iPhone has a glass back that works with Qi-certified chargers which are available as accessories in hotels, cafes,&nbsp; cars, airports, etc. In general, any Qi-enabled wireless charger will have 5W of charging because that is the base minimum. When wirelessly charging, there is currently two charging speeds available for iPhone users: the 5W and 7.5W. You will have to make sure your wireless charger supports 7.5W wireless charging. Created when the iPhone adopted “fast” wireless charging, the 7.5W is a special use case.<br><br></div><div><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:300,&quot;url&quot;:&quot;https://cdn.shopify.com/s/files/1/0276/6463/products/300x300-3_large.jpg?v=1546292950&quot;,&quot;width&quot;:300}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://cdn.shopify.com/s/files/1/0276/6463/products/300x300-3_large.jpg?v=1546292950\" width=\"300\" height=\"300\"><figcaption class=\"attachment__caption\"></figcaption></figure></div><h1>The Qi Standard Explained</h1><div>Qi is an open, universal charging standard created by the Wireless Power Consortium (WPC). Mobile device manufacturers that are working with the standard include Apple, Asus, Google, HTC, Huawei, LG Electronics, Motorola Mobility, Nokia, Samsung, BlackBerry, Xiaomi, and Sony.<br><br></div><div>Qi defines wireless power transfer using inductive charging over distances of up to 1.6 inches, Developed by the WPC, the system uses a charging pad and a compatible device, which is placed on top of the pad, charging through resonant inductive coupling.Under the Qi specification, \"low power\" inductive transfers deliver power below 5 W using inductive coupling between two planar coils. These coils tend to be 5 mm apart, however they can be up to 40 mm apart.<br><br></div><div><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:300,&quot;url&quot;:&quot;https://cdn.shopify.com/s/files/1/0276/6463/products/300x300-1_large.jpg?v=1546292925&quot;,&quot;width&quot;:300}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://cdn.shopify.com/s/files/1/0276/6463/products/300x300-1_large.jpg?v=1546292925\" width=\"300\" height=\"300\"><figcaption class=\"attachment__caption\"></figcaption></figure></div><div>Regulation of the output voltage is provided by a digital control loop where the power receiver communicates with the power transmitter and requests more or less power. Communication is unidirectional from the power receiver to the power transmitter via backscatter modulation. In backscatter modulation, the power-receiver coil is loaded, changing the current draw at the power transmitter. These current changes are monitored and demodulated into the information required for the two devices to work together. (Source: Wikipedia)<br><br></div><h1>Qi Standard Incorporation</h1><div>The Qi standard, first released in 2008, had been incorporated into more than 140 smartphones, tablets and other devices by 2016. In 2012, Nokia first adopted Qi in its Lumia 920 phone. Later that year, the Google/LG Nexus 4 followed. In 2015, IKEA introduced lamps and tables with integrated wireless chargers, As well, The Lexus NX introduced an optional Qi charging pad in the center console.<br><br></div><div>In 2015, an estimated 120 million wireless charging phones were sold. The Samsung Galaxy supported both Qi and the competing Power Matters Alliance standards. By early 2017, Qi had superseded the competing standards. On September 12, 2017, Apple announced that their new smartphones, the iPhone 8, iPhone 8 Plus, and the iPhone X, all will support the Qi standard.<br><br></div><div><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:480,&quot;url&quot;:&quot;https://cdn.shopify.com/s/files/1/0276/6463/files/Capture_large.JPG?v=1560365234&quot;,&quot;width&quot;:428}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://cdn.shopify.com/s/files/1/0276/6463/files/Capture_large.JPG?v=1560365234\" width=\"428\" height=\"480\"><figcaption class=\"attachment__caption\"></figcaption></figure></div><div>There are many Qi-certified chargers available on the market with charging mats which charge an iPhone with the latest version of iOS at rates up to 7.5 watts. The iPhone 8 and later + can wireless charge. Other brand companies include: Samsung, Sony, LG, Nokia, Huawei, Microsoft Lumia, Google, Nexus, and BlackBerry.<br><br></div><h1>How to Wireless Charge Your iPhone</h1><ol><li>Connect your charger to power.</li><li>Use the power adapter that came with your accessory or a power adapter recommended by the manufacturer.</li><li>Place your iPhone on the wireless charger with the display facing up. Make sure the middle of the phone lines up with your wireless charger. For best performance, place it in the center of the charger or in the location recommended by the manufacturer.</li><li>Your iPhone should start charging a few seconds after you place it on your wireless charger.</li></ol><div><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:300,&quot;url&quot;:&quot;https://cdn.shopify.com/s/files/1/0276/6463/products/300x300-2_large.jpg?v=1546292926&quot;,&quot;width&quot;:300}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://cdn.shopify.com/s/files/1/0276/6463/products/300x300-2_large.jpg?v=1546292926\" width=\"300\" height=\"300\"><figcaption class=\"attachment__caption\"></figcaption></figure></div><div>Your iPhone will display it’s charging the same way it does when your iPhone is plugged in over USB and charging. If your wireless charging has an LED light, make sure it is lit. Magnetic cases, mounts, or other items that have magnetic properties situated between your iPhone and the charger could reduce performance or damage the magnetic strips or RFID chips. This is because wireless charging uses magnetic induction to charge your iPhone. Don\'t place anything like a credit card between your iPhone and the charger. It is best to remove all sensitive items before charging. In addition, your iPhone won\'t charge wirelessly when connected to USB, however, if your iPhone is connected to your computer with USB, or if it\'s connected to a USB power adapter, it will charge using the USB connection.<br><br></div><div>Zendure’s <a href=\"https://zendure.com/products/q4-wireless-charger-bundle\">Q4 Luxury Wireless Charger Bundle</a> (QC 3.0 AC adapter included) is an example of a quality iPhone wireless charger. Enjoy the 7.5W rapid charging for iPhone Xs Max/ XR/ X/ 8/ 8 Plus and 10W fast charging for Samsung Galaxy S9+/ S9/ S8+/ S8/ S7 / S7 Edge / S6 Edge Plus / Note 5 series devices when using Quick Charge 2.0/3.0 charger.<br><br></div><div><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:480,&quot;url&quot;:&quot;https://cdn.shopify.com/s/files/1/0276/6463/files/Capture_8ae6e3b5-4925-45b9-b267-1a2f3ee3fda2_large.JPG?v=1560365349&quot;,&quot;width&quot;:397}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://cdn.shopify.com/s/files/1/0276/6463/files/Capture_8ae6e3b5-4925-45b9-b267-1a2f3ee3fda2_large.JPG?v=1560365349\" width=\"397\" height=\"480\"><figcaption class=\"attachment__caption\"></figcaption></figure></div><div>Wireless charging your iPhone means less wear and tear on both ports and cable life. Most are lightweight and can be used with a wireless battery charger for traveling. Fewer cables frees up the phone port for other uses. It reduces the chance of a power surge to the phone. It can charge multiple devices at the same time with larger charging pads. Newer phones charge faster at 7.5 watts, 9 watts, or even 15 watts. As well, wireless charging pads release negligibly low levels of EMF and the Qi standard includes radiation shielding.<br><br></div>', 'release', 'public'),
(2, '2019-12-18 23:37:51', '2019-12-23 23:12:09', 'Supercord Cables return to Indiegogo', NULL, 'supercord-cables-return-to-indiegogo', 'feature', 'img/news/4Q3IwNH6eUJ3HboYPxU2hD4n2rbkV2pNYmva5GTR.jpeg', 'Zendure has re-released their SuperCord line of extremely durable USB cables on Indiegogo InDemand, and they have added a new option: USB-C to Lightning.', '<div>Zendure has re-released their SuperCord line of extremely durable USB cables on Indiegogo InDemand, and they have added a new option: USB-C to Lightning.<br><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image/jpeg&quot;,&quot;filename&quot;:&quot;New MOIREI QI Wireless Power Bank 10000 mAh Fast Charge, Type-C, USB QC, Wireless PD Charging Mobile Portable Wireless Charger Powerbank with QR.jpg&quot;,&quot;filesize&quot;:152284,&quot;height&quot;:3000,&quot;href&quot;:&quot;https://mrsc.moirei-dev.com/storage/FNyZLvPRFN8jRm0Yb5kVK5BIZZMy36MuUWCFmckq.jpeg&quot;,&quot;url&quot;:&quot;https://mrsc.moirei-dev.com/storage/FNyZLvPRFN8jRm0Yb5kVK5BIZZMy36MuUWCFmckq.jpeg&quot;,&quot;width&quot;:3000}\" data-trix-content-type=\"image/jpeg\" data-trix-attributes=\"{&quot;presentation&quot;:&quot;gallery&quot;}\" class=\"attachment attachment--preview attachment--jpg\"><a href=\"https://mrsc.moirei-dev.com/storage/FNyZLvPRFN8jRm0Yb5kVK5BIZZMy36MuUWCFmckq.jpeg\"><img src=\"https://mrsc.moirei-dev.com/storage/FNyZLvPRFN8jRm0Yb5kVK5BIZZMy36MuUWCFmckq.jpeg\" width=\"3000\" height=\"3000\"><figcaption class=\"attachment__caption\"><span class=\"attachment__name\">New MOIREI QI Wireless Power Bank 10000 mAh Fast Charge, Type-C, USB QC, Wireless PD Charging Mobile Portable Wireless Charger Powerbank with QR.jpg</span> <span class=\"attachment__size\">148.71 KB</span></figcaption></a></figure><br>SuperCord cables are designed to be extremely durable, featuring a mixture of highly resilient materials inside and around each cable. This construction lends the product enough durability to withstand an industry-leading 50,000-cycle bend test. The connectors themselves are made with stainless steel for long-term usability and corrosion resistance.<br><br>The newest model, a USB-C to Lightning cable, is MFi certified and sets a new standard for quality in one of the most popular cable types on the market. SuperCord cables can deliver up to 3A of current and are compatible with the latest USB fast-charging technology.<br><br>SuperCord USB cables feature a lifetime warranty. The USB-A to Lightning cable and the new USB-C to Lightning cable each come in black, red, or gray and feature an integrated leather strap for organization and storage.</div>', 'release', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `nova_media_library`
--

CREATE TABLE `nova_media_library` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `lp` tinyint(1) NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nova_media_library`
--

INSERT INTO `nova_media_library` (`id`, `title`, `created`, `type`, `folder`, `name`, `private`, `lp`, `options`) VALUES
(3, 'New MOIREI QI Wireless Power Bank 10000 mAh Fast Charge, Type-C, USB QC, Wireless PD Charging Mobile Portable Wireless Charger Powerbank with QR - 2', '2020-02-21 15:36:51', 'Image', '/', 'new-moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portable-wireless-charger-powerbank-with-qr-2-1582337209oySR1.jpg', 0, 0, '{\"mime\":\"image\",\"wh\":[3000,3000],\"size\":\"104.51 kb\",\"img_sizes\":[\"xsmall\",\"small\",\"thumb\",\"medium\",\"large\"]}'),
(4, 'MOIREI QI Wireless Power Bank 10000 mAh Fast Charge, Type-C, USB QC, Wireless PD Charging Mobile Portable Wireless Charger Powerbank with - 2', '2020-02-21 15:42:04', 'Image', '/', 'moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portable-wireless-charger-powerbank-with-2-15823375231nFeF.jpg', 0, 0, '{\"mime\":\"image\",\"wh\":[800,800],\"size\":\"132.08 kb\",\"img_sizes\":[\"xsmall\",\"small\",\"thumb\",\"medium\",\"large\"]}'),
(5, 'MOIREI QI Wireless Power Bank 10000 mAh Fast Charge, Type-C, USB QC, Wireless PD Charging Mobile Portable Wireless Charger Powerbank with - 4', '2020-02-21 15:42:11', 'Image', '/', 'moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portable-wireless-charger-powerbank-with-4-1582337530paSEf.jpg', 0, 0, '{\"mime\":\"image\",\"wh\":[800,800],\"size\":\"196.17 kb\",\"img_sizes\":[\"xsmall\",\"small\",\"thumb\",\"medium\",\"large\"]}'),
(6, 'MOIREI QI Wireless Power Bank 10000 mAh Fast Charge, Type-C, USB QC, Wireless PD Charging Mobile Portable Wireless Charger Powerbank with - 5', '2020-02-21 15:42:20', 'Image', '/', 'moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portable-wireless-charger-powerbank-with-5-1582337539ywgDX.jpg', 0, 0, '{\"mime\":\"image\",\"wh\":[1600,1066],\"size\":\"116.56 kb\",\"img_sizes\":[\"xsmall\",\"small\",\"thumb\",\"medium\",\"large\"]}'),
(7, 'MOIREI QI Wireless Power Bank 10000 mAh Fast Charge, Type-C, USB QC, Wireless PD Charging Mobile Portable Wireless Charger Powerbank with - 6', '2020-02-21 15:42:26', 'Image', '/products/', 'moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portable-wireless-charger-powerbank-with-6-1582337545Fvkkm.jpg', 0, 0, '{\"mime\":\"image\",\"wh\":[1083,982],\"size\":\"169.73 kb\",\"img_sizes\":[\"xsmall\",\"small\",\"thumb\",\"medium\",\"large\"]}'),
(8, 'MOIREI QI Wireless Power Bank 10000 mAh Fast Charge, Type-C, USB QC, Wireless PD Charging Mobile Portable Wireless Charger Powerbank with', '2020-02-21 15:42:32', 'Image', '/products/', 'moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portable-wireless-charger-powerbank-with-1582337551xicGd.jpg', 0, 0, '{\"mime\":\"image\",\"wh\":[800,800],\"size\":\"197.95 kb\",\"img_sizes\":[\"xsmall\",\"small\",\"thumb\",\"medium\",\"large\"]}'),
(9, 'New MOIREI QI Wireless Power Bank 10000 mAh Fast Charge, Type-C, USB QC, Wireless PD Charging Mobile Portable Wireless Charger Powerbank with QR - 3', '2020-02-21 15:42:38', 'Image', '/products/', 'new-moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portable-wireless-charger-powerbank-with-qr-3-1582337556wXEpC.jpg', 0, 0, '{\"mime\":\"image\",\"wh\":[3000,3000],\"size\":\"85.5 kb\",\"img_sizes\":[\"xsmall\",\"small\",\"thumb\",\"medium\",\"large\"]}'),
(10, 'New MOIREI QI Wireless Power Bank 10000 mAh Fast Charge, Type-C, USB QC, Wireless PD Charging Mobile Portable Wireless Charger Powerbank with QR', '2020-02-21 15:42:44', 'Image', '/products/', 'new-moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portable-wireless-charger-powerbank-with-qr-1582337563XhL1r.jpg', 0, 0, '{\"mime\":\"image\",\"wh\":[3000,3000],\"size\":\"77.05 kb\",\"img_sizes\":[\"xsmall\",\"small\",\"thumb\",\"medium\",\"large\"]}'),
(11, 'wst-mini-charger-4', '2020-02-24 13:14:23', 'Image', '/products/', 'wst-mini-charger-4-1582587862f7AhG.webp', 0, 0, '{\"mime\":\"image\",\"wh\":[800,800],\"size\":\"116.28 kb\",\"img_sizes\":[\"xsmall\",\"small\",\"thumb\",\"medium\",\"large\"]}'),
(14, 'wst-mini-charger-8', '2020-02-24 13:14:42', 'Image', '/products/', 'wst-mini-charger-8-1582587881urZnh.webp', 0, 0, '{\"mime\":\"image\",\"wh\":[800,800],\"size\":\"41.36 kb\",\"img_sizes\":[\"xsmall\",\"small\",\"thumb\",\"medium\",\"large\"]}'),
(15, 'wst-mini-charger-6', '2020-02-24 13:16:49', 'Image', '/products/', 'wst-mini-charger-6-1582588008Vve27.webp', 0, 0, '{\"mime\":\"image\",\"wh\":[640,640],\"size\":\"8 kb\",\"img_sizes\":[\"xsmall\",\"small\",\"thumb\",\"medium\",\"large\"]}'),
(16, 'wst-mini-charger-7', '2020-02-24 13:16:55', 'Image', '/products/', 'wst-mini-charger-7-1582588014cdhXe.webp', 0, 0, '{\"mime\":\"image\",\"wh\":[640,640],\"size\":\"6.07 kb\",\"img_sizes\":[\"xsmall\",\"small\",\"thumb\",\"medium\",\"large\"]}');

-- --------------------------------------------------------

--
-- Table structure for table `nova_pending_trix_attachments`
--

CREATE TABLE `nova_pending_trix_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `draft_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nova_trix_attachments`
--

CREATE TABLE `nova_trix_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `attachable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachable_id` int(10) UNSIGNED NOT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nova_trix_attachments`
--

INSERT INTO `nova_trix_attachments` (`id`, `attachable_type`, `attachable_id`, `attachment`, `disk`, `url`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\General\\News', 2, 'FNyZLvPRFN8jRm0Yb5kVK5BIZZMy36MuUWCFmckq.jpeg', 'public', 'https://mrsc.moirei-dev.com/storage/FNyZLvPRFN8jRm0Yb5kVK5BIZZMy36MuUWCFmckq.jpeg', '2019-12-23 23:12:09', '2019-12-23 23:12:09');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'MRSC Personal Access Client', '7XqH4OYeIR3TaAwgjcMFYPZw2UrxEu9JOWlgqEqm', 'http://localhost', 1, 0, 0, '2019-10-09 19:09:13', '2019-10-09 19:09:13'),
(2, NULL, 'MRSC Password Grant Client', 'mTpQCp7plccOr6jqRgCcNBEkHZiJIZH62EPNO8Li', 'http://localhost', 0, 1, 0, '2019-10-09 19:09:13', '2019-10-09 19:09:13');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-10-09 19:09:13', '2019-10-09 19:09:13');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `orderable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderable_id` bigint(20) UNSIGNED NOT NULL,
  `order_reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5d9ec3f7b8e58',
  `tracking_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid` decimal(8,2) NOT NULL DEFAULT '0.00',
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unknown',
  `ordered_online` tinyint(1) NOT NULL DEFAULT '1',
  `pickup_in_store` tinyint(1) NOT NULL DEFAULT '0',
  `order_status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `total` decimal(8,2) NOT NULL DEFAULT '0.00',
  `subtotal` decimal(8,2) NOT NULL DEFAULT '0.00',
  `shipping_total` decimal(8,2) NOT NULL DEFAULT '0.00',
  `item_count` int(11) NOT NULL DEFAULT '0',
  `tax_percent` decimal(8,2) NOT NULL DEFAULT '10.00',
  `currency_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `payment_provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'moirei',
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `cart_id` bigint(20) UNSIGNED DEFAULT NULL,
  `paid_at` timestamp NULL DEFAULT NULL,
  `shipped_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `delivery_courier` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimated_delivery` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applied_vouchers` text COLLATE utf8mb4_unicode_ci,
  `meta` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `orderable_type`, `orderable_id`, `order_reference`, `invoice_number`, `tracking_number`, `paid`, `transaction_id`, `ordered_online`, `pickup_in_store`, `order_status`, `total`, `subtotal`, `shipping_total`, `item_count`, `tax_percent`, `currency_code`, `payment_provider`, `note`, `cart_id`, `paid_at`, `shipped_at`, `delivered_at`, `admin_id`, `store_id`, `deleted_at`, `delivery_courier`, `estimated_delivery`, `applied_vouchers`, `meta`) VALUES
(15, '2019-10-20 16:27:48', '2019-10-20 16:44:09', 'App\\Models\\Guest', 7, 'RADL-0000001-DC2AY', '5dad1ed040848', NULL, '0.00', '0X7294545A8530647', 1, 0, 'shipped', '15.48', '5.48', '10.00', 1, '10.00', 'AUD', 'paypal', NULL, NULL, '2019-10-20 16:32:57', '2019-10-20 16:44:09', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL),
(16, '2019-10-21 01:08:53', '2020-01-04 17:50:09', 'App\\Models\\Guest', 7, 'RADL-0000002-B38R4', '5dad98cd7ded9', '123 456 789', '0.00', '4GK2143330874573B', 1, 0, 'delivered', '15.48', '5.48', '10.00', 1, '10.00', 'AUD', 'paypal', NULL, NULL, '2019-10-21 01:09:32', '2019-10-23 03:04:33', '2020-01-04 17:50:09', NULL, 2, NULL, 'dhl', NULL, NULL, NULL),
(17, '2019-10-23 03:28:54', '2019-10-23 03:29:32', 'App\\Models\\Guest', 7, 'RADL-0003-G1JPD', '5db05c9e1d694', NULL, '0.00', '4LV508122R915511A', 1, 0, 'paid', '89.00', '79.00', '10.00', 1, '10.00', 'AUD', 'paypal', NULL, NULL, '2019-10-23 03:29:32', NULL, NULL, NULL, 2, NULL, NULL, 'Between <b>Thu. 07 Nov. and Wed. 13 Nov.</b>', NULL, NULL),
(18, '2019-10-25 18:39:02', '2019-10-29 15:43:40', 'App\\Models\\Guest', 7, 'RADL-0004-G4RVJ', '5db8f149c4a2e', NULL, '262.48', '7H138035864387014', 1, 0, 'paid', '69.25', '59.25', '10.00', 1, '10.00', 'AUD', 'paypal', NULL, 6, '2019-10-29 15:43:40', NULL, NULL, NULL, 2, NULL, NULL, 'Between <b>Thu. 14 Nov. and Wed. 20 Nov.</b>', '[{\"item_id\":301,\"product_id\":6,\"product_name\":\"Wireless Power Bank\",\"quanity_applied_to\":1,\"voucher_id\":3,\"voucher_code\":\"FNU3-3ZCC-CAKD\",\"discount\":14.8,\"discount_strval\":\"A$ 14.8\"}]', NULL),
(19, '2019-11-07 22:23:39', '2019-12-13 18:49:52', 'App\\Models\\Guest', 7, 'RADL-0005-OWXUT', '5df470a38f9cb', NULL, '0.00', '16A33219XU273464E', 1, 0, 'paid', '15.38', '5.38', '10.00', 1, '10.00', 'AUD', 'paypal', NULL, NULL, '2019-12-13 18:49:52', NULL, NULL, NULL, 2, NULL, NULL, 'Between <b>Mon. 30 Dec. and Fri. 03 Jan.</b>', '[]', NULL),
(20, '2019-11-21 01:04:47', '2019-11-22 03:20:27', 'App\\Models\\Guest', 7, 'RADL-0005-RG644', '5dd6888d63d81', NULL, '175.46', '1574340749', 1, 0, 'paid', '84.99', '74.99', '10.00', 1, '10.00', 'AUD', 'stripe', NULL, 9, '2019-11-22 03:20:27', NULL, NULL, NULL, 2, NULL, NULL, 'Between <b>Fri. 06 Dec. and Thu. 12 Dec.</b>', '[{\"item_id\":519,\"product_id\":6,\"product_name\":\"Wireless Power Bank\",\"quanity_applied_to\":1,\"voucher_id\":6,\"voucher_code\":\"X8P8-45XC-2AEU\",\"discount\":\"7.90\",\"discount_strval\":\"10%\"}]', NULL),
(21, '2019-12-13 18:51:28', '2019-12-13 18:54:10', 'App\\Models\\Guest', 7, 'RADL-0007-6IXMP', '5df471fa64459', NULL, '0.00', '1576301050', 1, 0, 'pending', '15.38', '5.38', '10.00', 1, '10.00', 'AUD', 'stripe', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 'Between <b>Mon. 30 Dec. and Fri. 03 Jan.</b>', '[]', NULL),
(28, '2020-01-11 23:27:01', '2020-01-11 23:50:02', 'App\\Models\\Guest', 11, 'RADL-0007-OZZPJ', '5e1af104589c4', NULL, '0.00', '2YR022300R8268625', 1, 0, 'paid', '159.98', '149.98', '10.00', 2, '10.00', 'AUD', 'paypal', NULL, NULL, '2020-01-11 23:50:02', NULL, NULL, NULL, 2, NULL, NULL, 'Between <b>Mon. 27 Jan. and Fri. 31 Jan.</b>', '[]', NULL),
(29, '2020-01-12 00:00:58', '2020-01-12 00:00:59', 'App\\Models\\Guest', 11, 'RADL-0008-F8VZW', '5e1af562efb29', NULL, '0.00', '1578825058', 1, 0, 'pending', '84.99', '74.99', '10.00', 1, '10.00', 'AUD', 'stripe', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 'Between <b>Mon. 27 Jan. and Fri. 31 Jan.</b>', NULL, NULL),
(30, '2020-03-13 02:22:44', '2020-03-13 02:26:36', 'App\\Models\\User', 1, 'RADL-0008-FHBPB', '5e6b821cb4ae2', NULL, '0.00', '1584103964', 1, 0, 'pending', '0.00', '0.00', '0.00', 0, '10.00', 'AUD', 'stripe', NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, '{\"is_cart_checkout\":true,\"slack\":{\"thread_ts\":\"1584103965.000100\"}}'),
(31, '2020-03-13 02:23:15', '2020-03-13 02:23:15', 'App\\Models\\User', 1, 'RADL-0008-LFGCT', '5e6b823b02519', NULL, '0.00', '1584103995', 1, 0, 'pending', '0.00', '0.00', '0.00', 0, '10.00', 'AUD', 'stripe', NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, '{\"is_cart_checkout\":false,\"slack\":{\"thread_ts\":\"1584103995.000200\"}}'),
(32, '2020-03-13 02:24:52', '2020-03-13 02:24:52', 'App\\Models\\User', 1, 'RADL-0008-VZHK8', '5e6b829c14f36', NULL, '0.00', '1584104092', 1, 0, 'pending', '0.00', '0.00', '0.00', 0, '10.00', 'AUD', 'stripe', NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, NULL),
(33, '2020-03-13 02:25:46', '2020-03-13 02:25:46', 'App\\Models\\User', 1, 'RADL-0008-PJGK2', '5e6b82d2e993b', NULL, '0.00', '1584104146', 1, 0, 'pending', '0.00', '0.00', '0.00', 0, '10.00', 'AUD', 'stripe', NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, NULL),
(34, '2020-03-13 02:28:37', '2020-03-13 02:28:37', 'App\\Models\\User', 1, 'RADL-0008-IVACF', '5e6b837da24d8', NULL, '0.00', '1584104317', 1, 0, 'pending', '0.00', '0.00', '0.00', 0, '10.00', 'AUD', 'stripe', NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, NULL),
(35, '2020-03-13 02:29:06', '2020-03-13 02:29:06', 'App\\Models\\User', 1, 'RADL-0008-HSCT2', '5e6b839abfb1d', NULL, '0.00', '1584104346', 1, 0, 'pending', '0.00', '0.00', '0.00', 0, '10.00', 'AUD', 'stripe', NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, NULL),
(36, '2020-03-13 02:29:17', '2020-03-13 02:29:17', 'App\\Models\\User', 1, 'RADL-0008-3AUHS', '5e6b83a5286d8', NULL, '0.00', '1584104357', 1, 0, 'pending', '0.00', '0.00', '0.00', 0, '10.00', 'AUD', 'stripe', NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, NULL),
(37, '2020-03-13 02:30:36', '2020-03-13 03:22:02', 'App\\Models\\Guest', 16, 'RADL-0008-PJIRY', '5e6b8fd9161da', NULL, '0.00', '5JG39725B09918332', 1, 0, 'paid', '84.99', '74.99', '10.00', 1, '10.00', 'AUD', 'paypal', NULL, NULL, '2020-03-13 03:22:02', NULL, NULL, NULL, 2, NULL, NULL, 'Between <b>Mon. 30 Mar. and Fri. 03 Apr.</b>', '[]', '{\"is_cart_checkout\":false}'),
(38, '2020-03-13 12:02:21', '2020-03-13 12:14:37', 'App\\Models\\Guest', 17, 'RADL-0009-IZIYF', '5e6c0cd4ebe78', NULL, '0.00', '1584139476', 1, 0, 'pending', '84.99', '74.99', '10.00', 1, '10.00', 'AUD', 'paypal', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 'Between <b>Mon. 30 Mar. and Fri. 03 Apr.</b>', '[]', '{\"is_cart_checkout\":true}'),
(39, '2020-03-13 15:16:33', '2020-03-13 15:16:33', 'App\\Models\\User', 1, NULL, '5e6c3779d3ad7', NULL, '0.00', '1584150393', 1, 0, 'pending', '0.00', '0.00', '0.00', 0, '10.00', 'AUD', 'stripe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, '2020-03-13 15:35:35', '2020-03-13 15:35:36', 'App\\Models\\Guest', 18, 'RADL-0009-WNPUX', '5e6c3bef6fe37', NULL, '0.00', '1584151535', 1, 0, 'pending', '84.99', '74.99', '10.00', 1, '10.00', 'AUD', 'paypal', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 'Between <b>Mon. 30 Mar. and Fri. 03 Apr.</b>', NULL, '{\"is_cart_checkout\":true}'),
(41, '2020-03-13 21:20:37', '2020-03-13 21:20:37', 'App\\Models\\User', 1, NULL, '5e6c8ccd86e16', NULL, '0.00', '1584172237', 1, 0, 'pending', '0.00', '0.00', '0.00', 0, '10.00', 'AUD', 'stripe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '2020-03-13 21:20:49', '2020-03-13 21:20:49', 'App\\Models\\User', 1, NULL, '5e6c8cd95ab3d', NULL, '0.00', '1584172249', 1, 0, 'pending', '0.00', '0.00', '0.00', 0, '10.00', 'AUD', 'stripe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, '2020-03-13 22:02:14', '2020-03-13 22:03:14', 'App\\Models\\Guest', 19, 'RADL-0009-W8IPX', '5e6c968e2a4d4', NULL, '0.00', '7DU13046GT2960848', 1, 0, 'paid', '84.99', '74.99', '10.00', 1, '10.00', 'AUD', 'paypal', NULL, NULL, '2020-03-13 22:03:14', NULL, NULL, NULL, 2, NULL, NULL, 'Between <b>Mon. 30 Mar. and Fri. 03 Apr.</b>', NULL, '{\"is_cart_checkout\":true}'),
(44, '2020-03-13 22:11:36', '2020-03-13 22:15:24', 'App\\Models\\Guest', 20, 'RADL-0010-NAAOU', '5e6c9986b4353', NULL, '0.00', '26M40732SA614152A', 1, 0, 'paid', '84.99', '74.99', '10.00', 1, '10.00', 'AUD', 'paypal', NULL, NULL, '2020-03-13 22:15:24', NULL, NULL, NULL, 2, NULL, NULL, 'Between <b>Mon. 30 Mar. and Fri. 03 Apr.</b>', '[]', '{\"is_cart_checkout\":true}'),
(45, '2020-03-13 22:18:51', '2020-03-13 22:18:52', 'App\\Models\\Guest', 21, 'RADL-0011-INKRU', '5e6c9a7364046', NULL, '0.00', '1584175731', 1, 0, 'pending', '84.99', '74.99', '10.00', 1, '10.00', 'AUD', 'stripe', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 'Between <b>Mon. 30 Mar. and Fri. 03 Apr.</b>', NULL, '{\"is_cart_checkout\":true}'),
(46, '2020-03-13 22:28:16', '2020-03-13 22:28:17', 'App\\Models\\User', 1, 'RADL-0011-HGWHV', '5e6c9ca87858e', NULL, '0.00', '1584176296', 1, 0, 'pending', '0.00', '0.00', '0.00', 0, '10.00', 'AUD', 'stripe', NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, '{\"is_cart_checkout\":false,\"slack\":{\"thread_ts\":\"1584176296.000800\"}}'),
(47, '2020-03-13 22:30:33', '2020-03-13 22:30:33', 'App\\Models\\User', 1, 'RADL-0011-PVMUO', '5e6c9d3113e1b', NULL, '0.00', '1584176433', 1, 0, 'pending', '0.00', '0.00', '0.00', 0, '10.00', 'AUD', 'stripe', NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, '{\"is_cart_checkout\":true,\"slack\":{\"thread_ts\":\"1584176432.000900\"}}'),
(48, '2020-03-13 22:31:48', '2020-03-13 22:31:48', 'App\\Models\\User', 1, 'RADL-0011-OKKYC', '5e6c9d7c60be7', NULL, '0.00', '1584176508', 1, 0, 'pending', '0.00', '0.00', '0.00', 0, '10.00', 'AUD', 'stripe', NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, '{\"is_cart_checkout\":true,\"cart_session\":\"cart_session\",\"slack\":{\"thread_ts\":\"1584176508.001000\"}}'),
(49, '2020-03-13 22:33:35', '2020-03-13 22:34:05', 'App\\Models\\Guest', 22, 'RADL-0011-LVGYO', '5e6c9de7cbb01', NULL, '0.00', '21F495701T716570X', 1, 0, 'paid', '84.99', '74.99', '10.00', 1, '10.00', 'AUD', 'paypal', NULL, NULL, '2020-03-13 22:34:05', NULL, NULL, NULL, 2, NULL, NULL, 'Between <b>Mon. 30 Mar. and Fri. 03 Apr.</b>', NULL, '{\"is_cart_checkout\":true,\"cart_session\":\"AU:a04f2ca0-65d2-11ea-ab17-35ef2114db3a\"}'),
(50, '2020-03-14 01:22:19', '2020-03-18 01:44:04', 'App\\Models\\Guest', 24, 'RADL-0012-U3XCM', '5e72108c4346f', NULL, '0.00', '1584533644', 1, 0, 'pending', '84.99', '74.99', '10.00', 1, '10.00', 'AUD', 'stripe', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 'Between <b>Thu. 02 Apr. and Wed. 08 Apr.</b>', '[]', '{\"is_cart_checkout\":false,\"cart_session\":\"AU:32372160-65d5-11ea-8195-6917f5ea8708\"}');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unit_price` decimal(8,2) NOT NULL,
  `quantity` double NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `created_at`, `updated_at`, `unit_price`, `quantity`, `options`, `order_id`, `product_id`, `deleted_at`) VALUES
(197, '2019-10-20 16:28:24', '2019-10-20 16:28:24', '5.48', 1, NULL, 15, 1, NULL),
(198, '2019-10-21 01:08:54', '2019-10-21 01:08:54', '5.48', 1, NULL, 16, 1, NULL),
(199, '2019-10-23 03:28:54', '2019-10-23 03:28:54', '79.00', 1, '[{\"attribute\":\"Colour\",\"name\":\"White\",\"value\":\"white\"}]', 17, 6, NULL),
(301, '2019-10-29 15:41:21', '2019-10-29 15:41:21', '59.25', 1, NULL, 18, 6, NULL),
(519, '2019-11-21 02:22:29', '2019-11-21 02:22:29', '74.99', 1, '[{\"attribute\":\"Colour\",\"name\":\"Black\",\"value\":\"black\"},{\"attribute\":\"Model\",\"name\":\"MG001B\",\"value\":\"mg001b\"}]', 20, 6, NULL),
(531, '2019-12-13 18:48:27', '2019-12-13 18:48:27', '5.38', 1, NULL, 19, 1, NULL),
(533, '2019-12-13 18:54:10', '2019-12-13 18:54:10', '5.38', 1, NULL, 21, 1, NULL),
(542, '2020-01-11 23:42:20', '2020-01-11 23:42:20', '74.99', 2, '[{\"attribute\":\"Colour\",\"name\":\"Black\",\"value\":\"black\"},{\"attribute\":\"Model\",\"name\":\"MG001B\",\"value\":\"mg001b\"}]', 28, 6, NULL),
(543, '2020-01-12 00:00:59', '2020-01-12 00:00:59', '74.99', 1, '[{\"attribute\":\"Colour\",\"name\":\"Black\",\"value\":\"black\"},{\"attribute\":\"Model\",\"name\":\"MG001B\",\"value\":\"mg001b\"}]', 29, 6, NULL),
(572, '2020-03-13 03:21:21', '2020-03-13 03:21:21', '74.99', 1, '[{\"attribute\":\"Colour\",\"name\":\"Black\",\"value\":\"black\"},{\"attribute\":\"Model\",\"name\":\"MG001\",\"value\":\"mg001\"}]', 37, 6, NULL),
(574, '2020-03-13 12:14:36', '2020-03-13 12:14:36', '74.99', 1, '[{\"attribute\":\"Colour\",\"name\":\"Black\",\"value\":\"black\"},{\"attribute\":\"Model\",\"name\":\"MG001B\",\"value\":\"mg001b\"}]', 38, 6, NULL),
(575, '2020-03-13 15:35:36', '2020-03-13 15:35:36', '74.99', 1, '[{\"attribute\":\"Colour\",\"name\":\"Black\",\"value\":\"black\"},{\"attribute\":\"Model\",\"name\":\"MG001B\",\"value\":\"mg001b\"}]', 40, 6, NULL),
(576, '2020-03-13 22:02:14', '2020-03-13 22:02:14', '74.99', 1, '[{\"attribute\":\"Colour\",\"name\":\"Black\",\"value\":\"black\"},{\"attribute\":\"Model\",\"name\":\"MG001B\",\"value\":\"mg001b\"}]', 43, 6, NULL),
(578, '2020-03-13 22:14:54', '2020-03-13 22:14:54', '74.99', 1, '[{\"attribute\":\"Colour\",\"name\":\"Black\",\"value\":\"black\"},{\"attribute\":\"Model\",\"name\":\"MG001B\",\"value\":\"mg001b\"}]', 44, 6, NULL),
(579, '2020-03-13 22:18:51', '2020-03-13 22:18:51', '74.99', 1, '[{\"attribute\":\"Colour\",\"name\":\"Black\",\"value\":\"black\"},{\"attribute\":\"Model\",\"name\":\"MG001B\",\"value\":\"mg001b\"}]', 45, 6, NULL),
(580, '2020-03-13 22:33:36', '2020-03-13 22:33:36', '74.99', 1, '[{\"attribute\":\"Colour\",\"name\":\"Black\",\"value\":\"black\"},{\"attribute\":\"Model\",\"name\":\"MG001B\",\"value\":\"mg001b\"}]', 49, 6, NULL),
(593, '2020-03-18 01:44:04', '2020-03-18 01:44:04', '74.99', 1, '[{\"attribute\":\"Colour\",\"name\":\"Black\",\"value\":\"black\"},{\"attribute\":\"Model\",\"name\":\"MG001\",\"value\":\"mg001\"}]', 50, 6, NULL);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phoneable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneable_id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `is_mobile` tinyint(1) NOT NULL DEFAULT '0',
  `is_home` tinyint(1) NOT NULL DEFAULT '0',
  `is_whatsapp` tinyint(1) NOT NULL DEFAULT '0',
  `is_fax` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`id`, `created_at`, `updated_at`, `phoneable_type`, `phoneable_id`, `number`, `country_id`, `is_public`, `is_primary`, `is_mobile`, `is_home`, `is_whatsapp`, `is_fax`, `deleted_at`) VALUES
(1, '2019-10-09 19:09:07', '2019-10-09 19:09:07', 'App\\Models\\General\\Company', 1, '+8615817290415', 156, 0, 1, 0, 0, 0, 0, NULL),
(2, '2019-10-09 19:09:07', '2019-10-09 19:09:07', 'App\\Models\\General\\Contact', 1, '+86 (0755) 23272201', 156, 0, 0, 0, 0, 0, 0, NULL),
(3, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'App\\Models\\General\\Company', 2, '(020) 23323729', 156, 0, 1, 0, 0, 0, 0, NULL),
(4, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'App\\Models\\Ecommerce\\Store', 1, '0903-363-7990', 566, 1, 1, 0, 0, 0, 0, NULL),
(5, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'App\\Models\\Ecommerce\\Store', 2, '+61416801442', 36, 0, 1, 0, 0, 0, 0, NULL),
(6, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'App\\Models\\Admin', 1, '0416801442', 36, 0, 1, 0, 0, 0, 0, NULL),
(7, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'App\\Models\\Admin', 2, '07066272087', 566, 0, 1, 0, 0, 0, 0, NULL),
(8, '2019-10-09 19:09:09', '2019-10-09 19:09:09', 'App\\Models\\Admin', 3, '063941581', 204, 0, 1, 0, 0, 0, 0, NULL),
(9, '2019-10-09 19:09:09', '2019-10-09 19:09:09', 'App\\Models\\Admin', 3, '08077157587', 566, 0, 0, 1, 0, 0, 0, NULL),
(10, '2019-10-09 19:09:09', '2019-10-09 19:09:09', 'App\\Models\\Admin', 3, '07033423993', 566, 0, 0, 1, 0, 0, 0, NULL),
(11, '2019-10-10 12:27:42', '2019-10-10 12:28:55', 'App\\Models\\Guest', 6, '416801442', 36, 0, 1, 0, 0, 0, 0, NULL),
(12, '2019-10-12 23:58:00', '2019-12-13 18:54:09', 'App\\Models\\Guest', 7, '416801442', 36, 0, 1, 0, 0, 0, 0, NULL),
(13, '2020-01-11 22:30:00', '2020-01-12 00:00:58', 'App\\Models\\Guest', 11, '416801442', 36, 0, 1, 0, 0, 0, 0, NULL),
(14, '2020-03-13 00:54:57', '2020-03-13 03:21:19', 'App\\Models\\Guest', 16, '416801442', 36, 0, 1, 0, 0, 0, 0, NULL),
(15, '2020-03-13 12:02:20', '2020-03-13 12:14:35', 'App\\Models\\Guest', 17, '416801442', 36, 0, 1, 0, 0, 0, 0, NULL),
(16, '2020-03-13 15:35:33', '2020-03-13 15:35:33', 'App\\Models\\Guest', 18, '416801442', 36, 0, 1, 0, 0, 0, 0, NULL),
(17, '2020-03-13 22:02:12', '2020-03-13 22:02:12', 'App\\Models\\Guest', 19, '416801442', 36, 0, 1, 0, 0, 0, 0, NULL),
(18, '2020-03-13 22:11:35', '2020-03-13 22:14:54', 'App\\Models\\Guest', 20, '416801442', 36, 0, 1, 0, 0, 0, 0, NULL),
(19, '2020-03-13 22:18:50', '2020-03-13 22:18:50', 'App\\Models\\Guest', 21, '416801442', 36, 0, 1, 0, 0, 0, 0, NULL),
(20, '2020-03-13 22:33:34', '2020-03-13 22:33:34', 'App\\Models\\Guest', 22, '416801442', 36, 0, 1, 0, 0, 0, 0, NULL),
(21, '2020-03-14 01:22:17', '2020-03-18 01:44:01', 'App\\Models\\Guest', 24, '416801442', 36, 0, 1, 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `manufacturer_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci,
  `currency_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `purchasable` tinyint(1) NOT NULL DEFAULT '1',
  `date_on_sale_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_on_sale_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `price_2` text COLLATE utf8mb4_unicode_ci,
  `sale_price_2` text COLLATE utf8mb4_unicode_ci,
  `misc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'MOIREI',
  `slogan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `on_sale` tinyint(1) NOT NULL DEFAULT '0',
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `gallery` text COLLATE utf8mb4_unicode_ci,
  `rating` decimal(8,2) NOT NULL DEFAULT '0.00',
  `mpn` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warranty_period` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `material` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` text COLLATE utf8mb4_unicode_ci,
  `unstocked` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_price` decimal(8,2) DEFAULT NULL,
  `weight_unit` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'kg',
  `volume_unit` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cm',
  `width` decimal(8,2) DEFAULT NULL,
  `length` decimal(8,2) DEFAULT NULL,
  `height` decimal(8,2) DEFAULT NULL,
  `weight` decimal(8,2) DEFAULT NULL,
  `shipping_class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `theme_color` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_reviews` tinyint(1) NOT NULL DEFAULT '1',
  `allow_backorders` tinyint(1) NOT NULL DEFAULT '0',
  `downloadable` tinyint(1) NOT NULL DEFAULT '0',
  `virtual` tinyint(1) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `countries_available_to` text COLLATE utf8mb4_unicode_ci,
  `countries_hidden_from` text COLLATE utf8mb4_unicode_ci,
  `meta` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `visibility` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `catalog_visibility` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shop-search',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci,
  `return_policy_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `manufacturer_id`, `parent_id`, `name`, `slug`, `seo_title`, `currency_code`, `purchasable`, `date_on_sale_from`, `date_on_sale_to`, `price`, `sale_price`, `price_2`, `sale_price_2`, `misc`, `brand`, `slogan`, `sale_note`, `purchase_note`, `on_sale`, `short_description`, `description`, `gallery`, `rating`, `mpn`, `sku`, `warranty_period`, `material`, `stock`, `unstocked`, `shipping_price`, `weight_unit`, `volume_unit`, `width`, `length`, `height`, `weight`, `shipping_class_id`, `theme_color`, `url`, `allow_reviews`, `allow_backorders`, `downloadable`, `virtual`, `featured`, `countries_available_to`, `countries_hidden_from`, `meta`, `status`, `visibility`, `catalog_visibility`, `deleted_at`, `faqs`, `return_policy_id`) VALUES
(1, '2019-10-09 19:09:08', '2020-01-16 23:10:35', 2, NULL, 'Energy Bulb', 'energy-bulb', 'Energy Bulb', 'USD', 1, NULL, NULL, '3.70', NULL, '[]', '[]', '[]', 'CNPRO', NULL, NULL, NULL, 0, NULL, '<div>Features</div><ul><li>Awesome</li><li>Spectacular</li><li>Incredible</li></ul>', NULL, '0.00', NULL, '7186', NULL, NULL, '[]', 0, NULL, 'kg', 'cm', NULL, NULL, NULL, NULL, 2, NULL, '/lumo', 1, 0, 0, 0, 0, '[]', '[]', '{\"test_2\":\"Works\",\"available_on_gm\":false}', 'release', 'public', 'shop-search', NULL, '[]', 1),
(2, '2019-10-09 19:09:08', '2019-10-09 19:09:08', NULL, NULL, 'I7S TWS Earbuds', 'i7s-tws-earbuds', NULL, 'NGN', 1, NULL, NULL, '3000.00', NULL, NULL, NULL, NULL, 'HBQ', 'Wireless, on Another Level.', 'Next day delivery', NULL, 0, NULL, NULL, NULL, '0.00', 'MGC68274', '7875', NULL, NULL, NULL, 0, NULL, 'kg', 'cm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 'draft', 'public', 'shop-search', NULL, NULL, NULL),
(3, '2019-10-09 19:09:08', '2019-10-09 19:09:08', NULL, NULL, 'S7 Bluetoth Speaker', 's7-bluetoth-speaker', NULL, 'NGN', 1, NULL, NULL, '9000.00', NULL, NULL, NULL, NULL, 'BOLead', 'Full-featured portable speaker with high-capacity battery.', 'Next day delivery', NULL, 0, NULL, NULL, NULL, '0.00', 'MGC43484', '8642', NULL, NULL, NULL, 0, NULL, 'kg', 'cm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 'draft', 'public', 'shop-search', NULL, NULL, NULL),
(4, '2019-10-09 19:09:08', '2019-11-10 21:35:20', NULL, NULL, 'S812 Bluetooth Speaker', 's812-bluetooth-speaker', 'S812 Bluetooth Speaker', 'NGN', 1, NULL, NULL, '4500.00', NULL, '[]', '[{\"currency_code\":\"AUD\",\"price\":\"3\"}]', '[]', 'BOLead', 'Simple but Powerful.', 'Next day delivery', NULL, 1, NULL, NULL, NULL, '0.00', 'MGC80321', '5005', NULL, NULL, '[]', 0, NULL, 'kg', 'cm', NULL, NULL, NULL, NULL, 1, NULL, 'https://moirei.com/shop/product/s812-bluetooth-speaker', 1, 0, 0, 0, 0, '[]', '[]', NULL, 'draft', 'public', 'shop-search', NULL, '[]', 1),
(5, '2019-10-09 19:09:08', '2019-12-29 16:27:22', NULL, NULL, 'Lumo', 'lumo', 'New MOIREI Energy Saving Intelligent Smart Light Bulb E27 B22 A60 5w 9w 12w Led Bulb with CISC Processor and QR', 'USD', 1, NULL, NULL, '35.00', '30.00', '[{\"currency_code\":\"NGN\",\"price\":1900},{\"currency_code\":\"AUD\",\"price\":29}]', '[]', '[]', 'MOIREI', 'A light technology, Powered by MOIREI.', 'Same day delivery', NULL, 1, NULL, '<div><br><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:1043,&quot;url&quot;:&quot;https://ae01.alicdn.com/kf/Hd06b15fa7b4d444787f959383f0e10a0C.jpg&quot;,&quot;width&quot;:960}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://ae01.alicdn.com/kf/Hd06b15fa7b4d444787f959383f0e10a0C.jpg\" width=\"960\" height=\"1043\"><figcaption class=\"attachment__caption\"></figcaption></figure><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:975,&quot;url&quot;:&quot;https://ae01.alicdn.com/kf/H08e6cdd2870548aa9309cefc041addc3s.jpg&quot;,&quot;width&quot;:960}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://ae01.alicdn.com/kf/H08e6cdd2870548aa9309cefc041addc3s.jpg\" width=\"960\" height=\"975\"><figcaption class=\"attachment__caption\"></figcaption></figure><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:953,&quot;url&quot;:&quot;https://ae01.alicdn.com/kf/H46bce8097b4f4625a5317b89f1bd36872.jpg&quot;,&quot;width&quot;:960}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://ae01.alicdn.com/kf/H46bce8097b4f4625a5317b89f1bd36872.jpg\" width=\"960\" height=\"953\"><figcaption class=\"attachment__caption\"></figcaption></figure><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:884,&quot;url&quot;:&quot;https://ae01.alicdn.com/kf/H52c9cae6ba594396a539199a620ea2946.jpg&quot;,&quot;width&quot;:960}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://ae01.alicdn.com/kf/H52c9cae6ba594396a539199a620ea2946.jpg\" width=\"960\" height=\"884\"><figcaption class=\"attachment__caption\"></figcaption></figure><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:975,&quot;url&quot;:&quot;https://ae01.alicdn.com/kf/H3bff629e9d454957a6fdc7bfafe65f2cV.jpg&quot;,&quot;width&quot;:960}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://ae01.alicdn.com/kf/H3bff629e9d454957a6fdc7bfafe65f2cV.jpg\" width=\"960\" height=\"975\"><figcaption class=\"attachment__caption\"></figcaption></figure><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:1451,&quot;url&quot;:&quot;https://ae01.alicdn.com/kf/H94d582b35cc04674be3ffba3c634dd0fV.jpg&quot;,&quot;width&quot;:960}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://ae01.alicdn.com/kf/H94d582b35cc04674be3ffba3c634dd0fV.jpg\" width=\"960\" height=\"1451\"><figcaption class=\"attachment__caption\"></figcaption></figure><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:998,&quot;url&quot;:&quot;https://ae01.alicdn.com/kf/Hf47a1c39b37e4f3d98f43d704ffe843dI.jpg&quot;,&quot;width&quot;:960}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://ae01.alicdn.com/kf/Hf47a1c39b37e4f3d98f43d704ffe843dI.jpg\" width=\"960\" height=\"998\"><figcaption class=\"attachment__caption\"></figcaption></figure><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:998,&quot;url&quot;:&quot;https://ae01.alicdn.com/kf/Hd9aa4430268546aaa2cda794f6f1755ei.jpg&quot;,&quot;width&quot;:960}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://ae01.alicdn.com/kf/Hd9aa4430268546aaa2cda794f6f1755ei.jpg\" width=\"960\" height=\"998\"><figcaption class=\"attachment__caption\"></figcaption></figure><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:680,&quot;url&quot;:&quot;https://ae01.alicdn.com/kf/Hf0576058199c4bf5b06fdf051ae68223V.jpg&quot;,&quot;width&quot;:960}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://ae01.alicdn.com/kf/Hf0576058199c4bf5b06fdf051ae68223V.jpg\" width=\"960\" height=\"680\"><figcaption class=\"attachment__caption\"></figcaption></figure><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:901,&quot;url&quot;:&quot;https://ae01.alicdn.com/kf/Hee1c134ebff144549479a1fe95e336a3J.jpg&quot;,&quot;width&quot;:960}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://ae01.alicdn.com/kf/Hee1c134ebff144549479a1fe95e336a3J.jpg\" width=\"960\" height=\"901\"><figcaption class=\"attachment__caption\"></figcaption></figure></div>', '[\"https:\\/\\/mrsc.moirei-dev.com\\/storage\\/media\\/1-1573896289-F6NtY.jpg\",\"https:\\/\\/mrsc.moirei-dev.com\\/storage\\/media\\/2-1573896293-4HUut.jpg\",\"https:\\/\\/mrsc.moirei-dev.com\\/storage\\/media\\/4-1573896299-iNhUv.jpg\",\"https:\\/\\/mrsc.moirei-dev.com\\/storage\\/media\\/3-1573896297-3NTAs.jpg\",\"https:\\/\\/mrsc.moirei-dev.com\\/storage\\/media\\/5-1573896302-SGOby.jpg\"]', '0.00', 'MHA0501', '6394', NULL, NULL, '[]', 0, NULL, 'kg', 'cm', NULL, NULL, NULL, NULL, 2, NULL, 'https://moirei.com/shop/products/lumo', 1, 0, 0, 0, 0, '[]', '[]', '{\"available_on_gm\":true}', 'release', 'public', 'shop-search', NULL, '[{\"question\":\"How long does the battery last?\",\"answer\":\"The backup power can last between 4 and 5 hours. Depending on your usage.\"},{\"question\":\"Why audio?\",\"answer\":\"lumo B+ has integrated audio to help a user better recognise when the household power is out on not\"}]', 1),
(6, '2019-10-09 19:09:08', '2020-02-22 18:36:12', NULL, NULL, 'Wireless Power Bank', 'wireless-power-bank', 'New MOIREI QI Wireless Power Bank 10000 mAh Type-C, USB QC, Wireless PD Charging Mobile Portable Wireless Charger Powerbank with QR', 'AUD', 1, NULL, '2019-11-15 01:30:00', '79.00', '74.99', '[{\"currency_code\":\"NGN\",\"price\":7000}]', '[]', '[]', 'MOIREI', 'Faster and safer charging with advanced technology.', 'Free Delivery', NULL, 1, '<div>Power up quickly with the MG001 Wireless Power Bank, featuring wireless 5W PD and 5V@2A fast charge standard USB connector. Recharge your mobile device anywhere, anytime, with ease.</div>', '<div>Never run out of phone battery again and enjoy the convenience of wireless charging. The MG001 Wireless Power Bank has in store, 10,000 mAh which can charge up a standard smart phone up to three times over.&nbsp;<br><br></div><div><strong>POPULAR USE CASES</strong></div><div><br></div><ul><li><strong>iPhone X:</strong> Recharge 3.4 times</li><li><strong>iPhone 8:</strong> Recharge 2.3 times</li><li><strong>Samsung Galaxy S8:</strong> Recharge 2.4 times</li></ul><div>&nbsp;<br><br></div><div><strong>HIGH-CAPACITY, HIGH-SPEED, PORTABLE CHARGING<br></strong><br></div><div>Unlike most power banks, the MG001 is extremely lightweight, incredibly compact power bank – just 16.8mm thickness – equipped with high-speed Type-C and standard USB, delivering up to 2A.<br><br></div><div>&nbsp;</div><div><strong>POWER UP IN STYLE, POWER UP SAFE<br></strong><br></div><div>The MG001 is integrated with high density lithium polymer batteries with surge protection, short circuit protection and more advanced safety features keep you and your devices safe.&nbsp;<br><br></div><div><br></div><div><strong>UNIVERSAL CONNECTIVITY<br></strong><br></div><div>It\'s so convenient! The MG001 is compatible with a wide range of mobile devices. Can connect up to three devices at the same time with 1 ultra-fast 2A PD output.<br><br></div>', '[3,10,4,5,6,7,8,9]', '3.94', 'MGC29008', '7188', NULL, NULL, '[]', 0, NULL, 'kg', 'cm', '8.50', '2.68', '17.00', '0.31', 2, NULL, 'https://moirei.com/mg001', 1, 0, 0, 0, 0, '[\"AU\"]', 'null', '{\"available_on_gm\":false}', 'release', 'public', 'shop-search', NULL, '[{\"question\":\"Where are you based? Where do you ship from?\",\"answer\":\"We\'re based in the Adelaide, Australia. All MG001 orders ship directly from our office in Adelaide.\"},{\"question\":\"How does it work?\",\"answer\":\"The MG001 works like every other power bank with traditional USB outputs. But to use the wireless charging, you simply place your device on the power bank then push the side button. You can check your device\\u2019s wireless charging <a href=\\\"#\\\">here<\\/a>.\"},{\"question\":\"How long will it take for my order to arrive?\",\"answer\":\"We ship all orders placed Monday - Friday before 1:30 PM ACST the same day. For customers within Australia, your order should arrive within 3 business days via Post Standard Delivery. If you do not receive your order within 4 days, please check your mailbox and tracking number, then contact us. Average delivery time for international orders is 6-9 business days. However, international shipping delays can occur due to your country\'s customs process. Once your order arrives in your country, it is transferred to your local postal carrier for final delivery. In a small minority of cases, delivery can take longer. If it\'s been more than 5 weeks, contact us and we will help track down your order.\"}]', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_variation` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_product_page` tinyint(1) NOT NULL DEFAULT '1',
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `created_at`, `updated_at`, `name`, `slug`, `type`, `is_variation`, `show_on_product_page`, `product_id`) VALUES
(1, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'Model', 'model', 'model', 1, 1, 5),
(2, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'Base', 'base', 'base', 0, 1, 5),
(3, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'Colour Temperature', 'colour-temperature', 'color-temperature', 0, 1, 5),
(4, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'Colour', 'colour', 'colour', 0, 1, 6),
(5, '2019-10-25 02:42:58', '2019-10-25 02:42:58', 'Model', 'model', 'model', 0, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_options`
--

CREATE TABLE `product_attribute_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_attribute_id` bigint(20) UNSIGNED NOT NULL,
  `product_images` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attribute_options`
--

INSERT INTO `product_attribute_options` (`id`, `created_at`, `updated_at`, `name`, `slug`, `value`, `product_attribute_id`, `product_images`) VALUES
(1, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'Lumo Classic', 'lumo-classic', 'lumo-classic', 1, NULL),
(2, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'Lumo +', 'lumo', 'lumo-plus', 1, NULL),
(3, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'E27', 'e27', 'e27', 2, NULL),
(4, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'B22', 'b22', 'b22', 2, NULL),
(5, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'Warm White', 'warm-white', 'warm-white', 3, NULL),
(6, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'Cool White', 'cool-white', 'cool-white', 3, NULL),
(7, '2019-10-09 19:09:08', '2019-11-10 19:25:25', 'White', 'white', 'white', 4, '[\"https:\\/\\/mrsc.moirei-dev.com\\/storage\\/media\\/new-moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-po-1571132539-v52oz.jpg\"]'),
(8, '2019-10-09 19:09:08', '2019-11-10 19:25:38', 'Black', 'black', 'black', 4, '[\"https:\\/\\/mrsc.moirei-dev.com\\/storage\\/media\\/moirei-qi-wireless-power-bank-10000-mah-fast-charge-type-c-usb-qc-wireless-pd-charging-mobile-portab-1571132538-TBjEQ.jpg\"]'),
(9, '2019-10-25 02:43:26', '2019-10-25 02:43:26', 'MG001', 'mg001', 'mg001', 5, NULL),
(10, '2019-10-25 02:43:36', '2019-10-25 02:43:36', 'MG001B', 'mg001b', 'mg001b', 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `created_at`, `updated_at`, `name`, `slug`, `description`) VALUES
(1, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'Accessories', 'accessories', NULL),
(2, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'Gadget', 'gadget', NULL),
(3, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'Home Appliance', 'home-appliance', NULL),
(4, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'Mobile', 'mobile', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_return_policies`
--

CREATE TABLE `product_return_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` decimal(8,2) NOT NULL DEFAULT '0.00',
  `cost_2` text COLLATE utf8mb4_unicode_ci,
  `currency_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `policy_statement` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `policy_statement_2` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_return_policies`
--

INSERT INTO `product_return_policies` (`id`, `created_at`, `updated_at`, `name`, `public_title`, `slug`, `description`, `cost`, `cost_2`, `currency_code`, `policy_statement`, `policy_statement_2`) VALUES
(1, '2019-10-17 21:06:01', '2019-10-17 21:35:40', '30-day return', '30-day return', '30-day-return', 'Item must be returned within 30 days after you receive it. You are responsible for return postage costs.', '0.00', '[]', 'USD', '<div>Item must be returned within 30 days after you receive it. You are responsible for return postage costs.</div>', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reviewable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewable_id` bigint(20) UNSIGNED NOT NULL,
  `reviewer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviewer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recommended` tinyint(1) NOT NULL DEFAULT '1',
  `public` tinyint(1) NOT NULL DEFAULT '1',
  `rating` decimal(8,2) NOT NULL DEFAULT '0.00',
  `average_rating` decimal(8,2) NOT NULL DEFAULT '0.00',
  `ratings` text COLLATE utf8mb4_unicode_ci,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reviewer_meta` text COLLATE utf8mb4_unicode_ci,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `approver_admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `created_at`, `updated_at`, `reviewable_type`, `reviewable_id`, `reviewer_email`, `title`, `reviewer_name`, `body`, `city`, `country_code`, `recommended`, `public`, `rating`, `average_rating`, `ratings`, `images`, `reviewer_meta`, `approved`, `approver_admin_id`, `product_id`, `deleted_at`) VALUES
(1, '2019-10-23 16:04:56', '2019-10-23 16:05:14', 'App\\Models\\Guest', 7, 'agstrscntw3@gmail.com', 'Excellent product', 'Augustus Okoye', '<div>I love this product and it works like magic. Great work</div>', NULL, '', 1, 1, '0.00', '3.67', '{\"quality\":{\"name\":\"Quality\",\"rating\":3},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":4},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":3},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":4},\"weight\":{\"name\":\"Weight\",\"rating\":4}}', NULL, NULL, 1, 1, 6, NULL),
(2, '2019-10-30 03:54:25', '2019-10-30 03:56:23', 'App\\Models\\Guest', 7, 'agstrscntw3@gmail.com', 'Works like a charm', 'Augustus Okoye', '<div>Ive been using this product since the first samples and it\'s still solid as</div>', NULL, '', 1, 1, '0.00', '3.83', '{\"quality\":{\"name\":\"Quality\",\"rating\":4},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":4},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":3},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":4},\"weight\":{\"name\":\"Weight\",\"rating\":4}}', NULL, NULL, 1, 1, 6, NULL),
(3, '2019-10-30 03:55:09', '2019-10-30 03:56:15', 'App\\Models\\Guest', 7, 'agstrscntw3@gmail.com', 'Awesome as', 'Augustus Okoye', '<div>Ive been using this product since the first samples and it\'s still solid as</div>', NULL, '', 1, 1, '0.00', '4.33', '{\"quality\":{\"name\":\"Quality\",\"rating\":5},\"value_for_money\":{\"name\":\"Value for Money\",\"rating\":3},\"ease_of_use\":{\"name\":\"Ease of Use\",\"rating\":4},\"features\":{\"name\":\"Features\",\"rating\":5},\"battery_life\":{\"name\":\"Battery Life\",\"rating\":5},\"weight\":{\"name\":\"Weight\",\"rating\":4}}', NULL, NULL, 1, 1, 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_specification`
--

CREATE TABLE `product_specification` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'General',
  `details` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_specification`
--

INSERT INTO `product_specification` (`id`, `created_at`, `updated_at`, `product_id`, `name`, `details`) VALUES
(1, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 5, 'General', '[{\"heading\":false,\"content\":\"Comming soon\"},{\"heading\":\"Charge time\",\"content\":\"15-90 minutes\"},{\"heading\":\"Power Consumption\",\"content\":\"5W (40W Equivalent)\"},{\"heading\":\"Energy efficient\",\"content\":\"Yes\"},{\"heading\":\"Shatter proof\",\"content\":\"Yes\"},{\"heading\":\"Dimmable\",\"content\":\"No\"},{\"heading\":\"Base types\",\"content\":\"E27, B22\"},{\"heading\":\"Warranty\",\"content\":\"1 year (limited)\"}]'),
(2, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 5, 'Lighting', '[{\"heading\":\"Luminux flux\",\"content\":\"480lm\"},{\"heading\":\"Backup Luminux flux\",\"content\":\"200lm\"},{\"heading\":\"Colour temperatures\",\"content\":\"Cool White, Warm White\"}]'),
(3, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 5, 'Electrical', '[{\"heading\":\"Battery\",\"content\":\"2000 mAh lithium-polymer battery\"},{\"heading\":\"Charge Time\",\"content\":\"15 - 90 Minutes\"},{\"heading\":\"Line Voltage\",\"content\":\"85V - 275 V\"},{\"heading\":\"Frequency\",\"content\":\"50 - 60 Hz\"},{\"heading\":\"Average Power\",\"content\":\"5 Watts\"},{\"heading\":\"Power factor\",\"content\":\"0.4 \\u03bb\"},{\"heading\":\"Life Cycle\",\"content\":\"25000 Hours\"}]'),
(4, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 5, 'Physical Parameters', '[{\"heading\":\"Beam Angle\",\"content\":\"270 \\u00b0\"},{\"heading\":\"Colour Rendering Index (CRI)\",\"content\":\"> 80\"},{\"heading\":\"Height\",\"content\":\"134 mm\"},{\"heading\":\"Diameter\",\"content\":\"70 mm\"},{\"heading\":\"Weight\",\"content\":\"103 g\"},{\"heading\":\"Outer Bulb \\/ Type\",\"content\":\"A70\"}]'),
(5, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 5, 'Storage and Environmental', '[{\"heading\":\"Operating Temperature\",\"content\":\"0 - 70 \\u00b0C\"},{\"heading\":\"Storage Temperature\",\"content\":\"-40 - 85 \\u00b0C\"},{\"heading\":\"Operating Humidity\",\"content\":\"5 - 95 %\"},{\"heading\":\"Storage Humidity\",\"content\":\"0 - 75 %\"}]'),
(6, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 6, 'General', '[{\"heading\":\"Model\",\"content\":\"MG001\"},{\"heading\":\"Capacity\",\"content\":\"10,000 mAh\"},{\"heading\":\"Colours\",\"content\":\"Black, White\"},{\"heading\":false,\"content\":\"Energy efficient\"},{\"heading\":false,\"content\":\"Up to 3x charge with standard smartphones.\"},{\"heading\":false,\"content\":\"One (1) Year Limited Warranty\"}]'),
(7, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 6, 'Suitable for', '[{\"heading\":false,\"content\":\"Android Smartphone, iPhone, iPad, iPod\"},{\"heading\":false,\"content\":\"Tables\"},{\"heading\":false,\"content\":\"eReaders, GPS devices, digital cameras and most portable devices\"}]'),
(8, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 6, 'Charging', '[{\"heading\":false,\"content\":\"Wireless\"},{\"heading\":false,\"content\":\"2A USB C\"},{\"heading\":false,\"content\":\"2A Micro USB\"}]'),
(9, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 6, 'In the Box', '[{\"heading\":false,\"content\":\"MG001 Wireless Power Bank\"},{\"heading\":false,\"content\":\"Micro USB Cable\"}]'),
(10, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 6, 'Size and Weight', '[{\"heading\":\"Height\",\"content\":\"156 mm\"},{\"heading\":\"Width\",\"content\":\"75 mm\"},{\"heading\":\"Depth\",\"content\":\"16.8 mm\"},{\"heading\":\"Weight\",\"content\":\"253 g\"}]'),
(11, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 6, 'Storage and Environmental', '[{\"heading\":\"Operating Temperature\",\"content\":\"0 - 54 \\u00b0C\"},{\"heading\":\"Storage Temperature\",\"content\":\"-10 - 45 \\u00b0C\"},{\"heading\":\"Operating Humidity\",\"content\":\"5 - 95 %\"},{\"heading\":\"Storage Humidity\",\"content\":\"0 - 75 %\"}]'),
(12, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 6, 'Electrical', '[{\"heading\":\"Battery\",\"content\":\"10,000 mAh lithium-polymer battery\"},{\"heading\":\"Line voltage\",\"content\":\"85 V - 275 V\"},{\"heading\":\"Line Frequency\",\"content\":\"50 - 60 Hz\"},{\"heading\":\"Wireless Charge Power\",\"content\":\"5 Watts\"},{\"heading\":\"Input Capacity\",\"content\":\"5 V @ 2 A\"},{\"heading\":\"Output Capacity\",\"content\":\"5 V @ 2 A\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `product_variations`
--

CREATE TABLE `product_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_attribute_option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `price_2` text COLLATE utf8mb4_unicode_ci,
  `sale_price_2` text COLLATE utf8mb4_unicode_ci,
  `short_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` text COLLATE utf8mb4_unicode_ci,
  `rating` decimal(8,2) NOT NULL DEFAULT '0.00',
  `sku` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `allow_backorders` tinyint(1) NOT NULL DEFAULT '0',
  `downloadable` tinyint(1) NOT NULL DEFAULT '0',
  `virtual` tinyint(1) NOT NULL DEFAULT '0',
  `width` decimal(5,3) DEFAULT NULL,
  `length` decimal(5,3) DEFAULT NULL,
  `height` decimal(5,3) DEFAULT NULL,
  `weight` decimal(5,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variations`
--

INSERT INTO `product_variations` (`id`, `created_at`, `updated_at`, `product_id`, `product_attribute_option_id`, `parent_id`, `price`, `sale_price`, `price_2`, `sale_price_2`, `short_description`, `gallery`, `rating`, `sku`, `enabled`, `allow_backorders`, `downloadable`, `virtual`, `width`, `length`, `height`, `weight`) VALUES
(1, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, 1, 0, 0, 0, NULL, NULL, NULL, NULL),
(2, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 5, 2, NULL, '5.50', NULL, NULL, NULL, NULL, NULL, '0.00', NULL, 1, 0, 0, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `paid` decimal(8,2) NOT NULL DEFAULT '0.00',
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unknown',
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Complete',
  `total` decimal(8,2) NOT NULL DEFAULT '0.00',
  `currency_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `batch_number` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordered_by` int(10) UNSIGNED NOT NULL,
  `approved_by` int(10) UNSIGNED NOT NULL,
  `delivery_admin_id` int(10) UNSIGNED NOT NULL,
  `raised_at` timestamp NULL DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `received` tinyint(1) NOT NULL DEFAULT '0',
  `expected_delivery_date` date DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `department` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unknown',
  `options` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_items`
--

CREATE TABLE `purchase_order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `purchase_order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `unit_price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `quantity_received` int(11) DEFAULT NULL,
  `quantity_sold` int(11) DEFAULT NULL,
  `paid` decimal(8,2) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `push_subscriptions`
--

CREATE TABLE `push_subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `subscribable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscribable_id` bigint(20) UNSIGNED NOT NULL,
  `endpoint` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_encoding` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `push_subscriptions`
--

INSERT INTO `push_subscriptions` (`id`, `subscribable_type`, `subscribable_id`, `endpoint`, `public_key`, `auth_token`, `content_encoding`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/f4gQYGm_d3Y:APA91bHtj5zj4PQ4u3N4PGvw1F5wakX3azsfc9b5NtOp8XvChJRuq8yHeU9M_X6235IAz0Nn5k45ROV-jhePU6tSteoJ2X3QlN0XlQ2HrfV1vKPJFGzkoaJ8COoaHTCbbPeh6Ay4daKD', 'BFfyMdJ1xQXYWR8tJvZPdoYWh4Mduz_oMI7NMMjuQyFRoMiK0cFJy1FU3Ix7Hjt64vVZ5xkcc20Pw3itAIXPdYE', '8IYvyTALpBBSEDusriYtPA', NULL, '2020-01-02 05:08:47', '2020-01-02 05:08:47'),
(2, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/dajwl-zBTCk:APA91bE90wPcQZLyL5hHHO_5FFNKD4fsWKKth2g2xC0tShgSvy2m7HCN28Y-LnkVz5zbDhF3b_1kSrAQwHA_oPjlIeWG7GNhqwLVgQXiHSuIEdl4mK9rtQRndb9MIxBxQYyP8hxPmKnj', 'BHYvk7fbuQ932tnNvMpd3D58jc09M7hSSUNjVcsD_yPlRo-g1x-DshmFBm51l0THNvgeTZv-giGHW7xF3vOV8Bo', '-5SDDbHUizA2znsa25RmjQ', NULL, '2020-01-02 05:22:10', '2020-01-02 05:22:10'),
(3, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/etJD9Fo-gQA:APA91bETeonpvJ-9AulIAp07YVlwBI4-uVQkCmT62P-oUCAFU3eYC0zDaORND_vnTCR-6K_lzeAEmSKbphKEOqFMh-8ACJZHo_xHLPNkFRy_Rxl3DVCcB11_xBSv7_1jNfS45emTHn5-', 'BDVn5M_J9JW-K4mBAySN7LTaBAH1saj5M0aGDR29_prksTH1pUhKx8jv_Ga0cY71LRF4O4Tk3WRTUVyg81hhZKs', 'GaKa45-mln7XDE9k9fn29A', NULL, '2020-01-02 05:23:46', '2020-01-02 05:23:46'),
(4, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/fAVINS5K0Bg:APA91bE0wLraXQgy5aNucHzmlpFrkkNoch9DtP9Gh0w-B1guP6KqnQp49kV9gumnQwvj6CfCpY13YyvTZ4IQDm4qYViRIdbEC-p_cBRVvlnmL1bwKFcxeciuFG_I0ZGQP6EQ24kyOnlM', 'BNiV07KGYhPJZEX-xeP9fNJHbdkR-RBT06za6W90974oySWIu4xvH2hZCu2RWLVmKmWVo8mb35hwPwYSQtOn29I', 'D3z3427ehgsPKLm9lbp4ZQ', NULL, '2020-01-02 05:26:04', '2020-01-02 05:26:04'),
(5, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/cOqgGKg8XsY:APA91bFiTRGVYxJFRGSAxwyz4qjmhZ90OE4zw7Gg3Vm_m4kEr4MEuvuaiJvKD3sYLCe-6UZWCjOk5VZjfEbgpTsq85uQt2Onz40ILoF8t8XlJ7YUz8CyWXc3UAa2oeNWVd4DfbCKRhO-', 'BCnX9UtqpV2MwxjWKNtyvnTNSHAV9DQ6_HBlFCfghURfaTdwgZxqXpSIfCyUPaf1PX2D2OTRXlu4ahFwbUYQJQE', '8K35HFgM5t2JUD7adY3_7Q', NULL, '2020-01-02 05:50:41', '2020-01-02 05:50:41'),
(6, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/eWTvb5MSfDA:APA91bE7dqLTQbv-XdkHZc0eUGFbElLkFkw9nRrXE7tU8wt-9dcf8bLfVxyMIp2_9zdE-2Z0LGsRDF77RENXnYVSIqC8FxXv72MFMJHN_MezthqY8URgW9I8rGRcbzvemJANeU66HNb_', 'BP3Mb2Dby0Uzp3WHbx5kV8KwYnRPN6UCp-7ZonLw9ae5e0C-yqqllEPz3KY3ie9znhyN4_iML8D4apJymNumYhs', 'IAjt0R8v6Jd3pwvXIoym6Q', NULL, '2020-01-02 05:53:17', '2020-01-02 05:53:17'),
(7, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/cofuDFjjC6o:APA91bH0CFzzk-gV99xDysr1Wx8w_61lOXCwGxZ1nHOgbDGpxNwwpJZ7KZhz98UO-VBmGjyUPRI4I8d8Voro_UOJah4Xj0hwwLI48-CbLvse2iX-LEAkqGpIL1Ow0rMPTZgyW3syWy7m', 'BNhPy7C-gGbFdPRxVBhF34PytG3jm3mzGc2xANNRNXB5qsjZE9fuR-Ea4G5QrNjsPVJYCy_e5cD_aAoPwdd4XAM', 'y75XImmW_5B4IhLDOUKzKw', NULL, '2020-01-02 05:54:32', '2020-01-02 05:54:32'),
(8, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/e-dhm162sVc:APA91bHp-g60qFhtLFexxz4ITM0Lk8uGyUirQbjvlDjqcSfjO6xBNjQtjVqXsDxBA-B2lCgTU-vhiZDcHOIPI0m8DH9fEup5ZRf2yeDyZDjgXftvew6xozVKhlL_uXumqTSefvPBAKPk', 'BOPe5FC_vDCzo7M4pi8yi_n9LVDVwSQEukigt4w0k3s2br8yMRZEcuDaIAuDeLzdRlN4yFN3BGKdi68TqCNHbSc', 'jt4OCdmEpxN3MzOsZiFOCg', NULL, '2020-01-02 05:54:48', '2020-01-02 05:54:48'),
(9, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/cjYow20v0_c:APA91bEH4irhzkKgc5iVbfDIviZDOYDyI76gPavFGPcXMLWUfsQypbTjipUGyyqutj45KDeIqayEbsGG5PSs4RuFUt5s8Ob2lTbhOokr7YOA1_oS-Sa3OykY5BJrvJXtqrIc4EL5T_7C', 'BC_LC3zzLGArpqFY66z0JHChw7U7hl1lu06IdhU_FLeDzv7Rq2FEUOEzggH_SLkD25smM_xy5QANR_KhCjbjSIM', 'zGtVH8vxybFTqALtZnt2qQ', NULL, '2020-01-02 05:55:02', '2020-01-02 05:55:02'),
(10, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/fN6oFkRTY6w:APA91bGfeuC-_KnaTm109e-f5OuGs1IiwiiBN2pE3EpMmYmo3xQU41_eC6SrS_vnJqZ2TjDUbl7G5FC3kjXioQxq20-ppGEXaCc8qCRw89jfDZwsotshsOqQG7TRF8fOlruiEaky1P2n', 'BFxkSPojEr6chnOYTVxILHZw47NZz-RHwYYHPXA2vAjgIKiwzFER-s_BhHC5uNBa1EimlBStFp6ss2heN4O9brA', 'Stn3vWNgOumVgjgFCJ94yw', NULL, '2020-01-02 05:59:33', '2020-01-02 05:59:33'),
(11, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/dScn314J5x8:APA91bERqo3Yy1JB-QIpyqxA_vfI8KCPJvW4QKuR14jDNozdj49sY9rCYcNAZ3cVrqBeUNHk2kj9hd6QmQxh32ycx5RCV5x7-5ioduJy8tR5-QjAADaxVBTqYK9nskEds8QqleuppXao', 'BN0OPqy4Jn5ufPq0mvyGVy-gWycXCSLbzoIUZ6-Zxf9IPiWPaf7AevIK7rXFsSD5vUQ1mpkOPdsnMW1phEzC6c8', 'QCfD_xd6WWTG97M3-hUeVg', NULL, '2020-01-02 06:06:03', '2020-01-02 06:06:03'),
(12, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/cgGamvLN8yA:APA91bHWS3wRrDKYWDOGE2ohxPQApsMyquvUG13tyNHfLkKwYYQOLAWUeBd0Kl38TqNj3M7XcLa1ijxz0YQOW8GjVPz6IQi-HW3uBPFNxihtBXsnbGVTIDQFV7EKobjrQcqI53g4G4-D', 'BMm7EWDfqFl51bMObtna7pmBlNUeJzZoxtyvBirqpqoqV465KoYCOo1x7iLb8jDxNMShtUA38MkpFVSBX7iijDw', '_EPwHnOUxO_DEHXg_lRiDQ', NULL, '2020-01-02 06:11:35', '2020-01-02 06:11:35'),
(13, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/eH5YqZ1heb0:APA91bEum8nm8V_m_5W0TFh_NYh6dQGxjcOR9szHM47SFgLrLJ1jOhSZqZjysPyXjBfrEuPw94nSyWNnNKsgnueTvSv12Usn3137UwcYaoJPHT-8QnrbiqfIJb42w1TtdcCtW56Tqa5j', 'BCU8wdYmAYx3K91JA5z0bCgl-IyQVULSjmhIVQxgY7YvoP3NmqWepWOlQK3jlgIlX0Jr0p6ZVco5Nx5uHcitsig', '4tAVCckmsipkVLkJbSkEqw', NULL, '2020-01-02 06:12:27', '2020-01-02 06:12:27'),
(14, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/cyFIHpUC_4c:APA91bEuU95KNwGbIHqyfYqCNTzXSOMpDYnIss-9OWuz6ZBtDTXQzAFi6u12mRUdqIdpRQX70E9CVmeYm0sE2GZlTYLTxY0CFvu1LyAD_yYT4rp0cl8L_T0_-SpqCrnbGdntPsgPvLbE', 'BFy_sWVObbiqAzM8drw3GzvBlzXlfdceSMal0C6kQWXs0rFk-6K33QTEmUfwBWyzk8cMa8ZP6PQA_1ygaW7U1Sk', 'l6vLLQVJ1onRz2kbHqSgAw', NULL, '2020-01-02 06:13:27', '2020-01-02 06:13:27'),
(39, 'App\\Models\\Guest', 11, 'https://fcm.googleapis.com/fcm/send/e9IC6SL0Qts:APA91bHtB0hku5YMIMTCPx40wyl4uG6lJoth-AF6QX2d3W7uXSwzindCGFJHh-J2wW-FLPL2UTf3nW5W7EBKdcOwY2dINJ9ecz-uiCokv1V8l0E2QHjDoCz1O_z8Qq23NV-ud-iY-l1c', 'BEK1I67QoVmFDu_CXGK3tEcYOAgLEQAuOVtzKfvo-8UU1m4xCM4X3xGtIIOK32EO-_h4vjSh7dgCrzLBZ3pllzw', 'YnjSbQkcimexHOr5c3cIeg', NULL, '2020-01-11 17:54:59', '2020-01-11 17:54:59'),
(40, 'App\\Models\\Guest', 11, 'https://fcm.googleapis.com/fcm/send/fWt2UuAuKDI:APA91bGBiErryX1hkMGTnaSQUCzRyD1YAn300-Hrle6WSl54TWBbXycKT5DgcJ0-gibdfXzjpW_8mCVlO8bfzsP0sQXV5uc0KuyxIgOB16f0AKhq8MIfNqjGci6nwQygR3L15B_-UDtf', 'BDX5rJdulJBbWQmjDy-fHcrz4vOaLcRaFW5EV5OKqUESsu7sHcgKT7zLUFcX6d0SrLvyUk3YAHZhZCRNsj2Pvus', 'iJJv-OJjQO8JLqICw0jWfg', NULL, '2020-01-12 01:21:25', '2020-01-12 01:21:25'),
(41, 'App\\Models\\Guest', 16, 'https://fcm.googleapis.com/fcm/send/dxONASqo1Ak:APA91bH0mXXCxpoF0dQhrpVPejUpIAspdu2mZ7x62gjttvZF24SE7iFRCWBuDAKifKrAyp6dRb5gog4530Ei3dE4BL1qOuRQbA3jHre5D9iMvtEqWYxv0wTkroCgdjy79HBd4BLKUxaG', 'BBORGtDGAHO17yO4Bj4AAwB4gc3a5CQQUh3ffoPgO4Wsfuy7xjhFkbUeLtav4PmuZlZR_S08Wbhe9WkDoTYtvHI', 'YvqPvuxVrwuITO7QX0WpNw', NULL, '2020-03-13 03:13:29', '2020-03-13 03:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `resellers`
--

CREATE TABLE `resellers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'https://mrsc.moirei-dev.com/img/dummy/client.png',
  `description` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_providers`
--

CREATE TABLE `service_providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_classes`
--

CREATE TABLE `shipping_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` decimal(8,2) DEFAULT NULL,
  `rate_2` text COLLATE utf8mb4_unicode_ci,
  `currency_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `local_min_business_days` text COLLATE utf8mb4_unicode_ci,
  `local_max_business_days` text COLLATE utf8mb4_unicode_ci,
  `regional_min_business_days` text COLLATE utf8mb4_unicode_ci,
  `regional_max_business_days` text COLLATE utf8mb4_unicode_ci,
  `services` text COLLATE utf8mb4_unicode_ci,
  `publicly_optional` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_classes`
--

INSERT INTO `shipping_classes` (`id`, `created_at`, `updated_at`, `name`, `slug`, `description`, `rate`, `rate_2`, `currency_code`, `local_min_business_days`, `local_max_business_days`, `regional_min_business_days`, `regional_max_business_days`, `services`, `publicly_optional`) VALUES
(1, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'Free Shipping', 'free-shipping', NULL, '0.00', NULL, 'USD', '[{\"store\":\"adelaide\",\"days\":11},{\"store\":\"ikeja\",\"days\":4}]', '[{\"store\":\"adelaide\",\"days\":15},{\"store\":\"ikeja\",\"days\":14}]', NULL, NULL, NULL, 0),
(2, '2019-10-09 19:09:08', '2019-11-06 17:17:25', 'Flat Rate', 'flat-rate', NULL, '10.10', '[{\"currency_code\":\"NGN\",\"rate\":500},{\"currency_code\":\"AUD\",\"rate\":10}]', 'USD', '[{\"store\":\"adelaide\",\"days\":11},{\"store\":\"ikeja\",\"days\":4}]', '[{\"store\":\"adelaide\",\"days\":15},{\"store\":\"ikeja\",\"days\":14}]', '[]', '[]', NULL, 0),
(3, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'Per Product Shipping', 'per-product-shipping', NULL, '10.00', NULL, 'USD', '[{\"store\":\"adelaide\",\"days\":11},{\"store\":\"ikeja\",\"days\":4}]', '[{\"store\":\"adelaide\",\"days\":15},{\"store\":\"ikeja\",\"days\":14}]', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopping_countires` text COLLATE utf8mb4_unicode_ci,
  `currency_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `opening_hours` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `created_at`, `updated_at`, `name`, `slug`, `shopping_countires`, `currency_code`, `opening_hours`, `deleted_at`) VALUES
(1, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'Ikeja', 'ikeja', '[\"NG\"]', 'NGN', NULL, NULL),
(2, '2019-10-09 19:09:08', '2019-10-09 19:09:08', 'Adelaide', 'adelaide', '[\"AU\",\"US\",\"CA\",\"GB\"]', 'AUD', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `support_inquiries`
--

CREATE TABLE `support_inquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `inquirable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inquirable_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `replies` text COLLATE utf8mb4_unicode_ci,
  `attended` tinyint(1) NOT NULL DEFAULT '0',
  `resolved` tinyint(1) NOT NULL DEFAULT '0',
  `resolved_at` datetime DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_inquiries`
--

INSERT INTO `support_inquiries` (`id`, `created_at`, `updated_at`, `inquirable_type`, `inquirable_id`, `type`, `data`, `replies`, `attended`, `resolved`, `resolved_at`, `admin_id`, `deleted_at`) VALUES
(1, '2019-10-09 19:09:13', '2019-10-09 19:09:13', 'App\\Models\\Guest', 1, 'message', '{\"name\":\"James\",\"subject\":\"Wireless Charger\",\"contact\":\"1234567890\",\"body\":\"Thanks, this is the best answer and exactly suits my needs. Before reading this, my code started with jsonResponse = array() and then it was dynamically filled by a loop. If the loop did not have a single iteration the \\\"empty\\\" object (or dictionary, as you call it) was encoded as [] while all other cases were encoded as \\\"{ attr_1: value1,...}. All the other answers around here have a flaw. They assume that one already knows if the dictionary is empty or not in advance. Especially the answer that tells one should simply write $json = {}` and not use json_encode at all is futile\"}', NULL, 0, 0, NULL, NULL, NULL),
(2, '2019-10-09 19:09:13', '2019-10-09 19:09:13', 'App\\Models\\Guest', 2, 'message', '{\"name\":\"Yakubu\",\"subject\":\"Phone charger\",\"contact\":\"yakubs@gmail.com\",\"body\":\"If you need this to be 100% compatible both ways, you can also wrap json_decode so that it returns ArrayObjects instead of stdClass objects (you\'ll need to walk the result tree and recursively replace all the objects, which is a fairly easy task).\"}', NULL, 0, 0, NULL, NULL, NULL),
(3, '2019-10-09 19:09:13', '2019-10-09 19:09:13', 'App\\Models\\Guest', 3, 'quote', '{\"product\":\"1\",\"quantity\":\"3\",\"timing\":\"2019-10-10T05:39:13.224189Z\",\"message\":\"marked as duplicate by Tchoupi, vstm, Roman C, CodaFi, user11339 Mar 9 \'13 at 7:30 This question has been asked before and already has an answer. If those answers do not fully address your question, please ask a new question.\"}', NULL, 0, 0, NULL, NULL, NULL),
(4, '2019-10-09 19:09:13', '2019-10-09 19:09:13', 'App\\Models\\User', 1, 'message', '{\"name\":\"James\",\"subject\":\"Sony Speakers\",\"contact\":\"1234567890\",\"body\":\"Thanks, this is the best answer and exactly suits my needs. Before reading this, my code started with jsonResponse = array() and then it was dynamically filled by a loop. If the loop did not have a single iteration the \\\"empty\\\" object (or dictionary, as you call it) was encoded as [] while all other cases were encoded as \\\"{ attr_1: value1,...}. All the other answers around here have a flaw. They assume that one already knows if the dictionary is empty or not in advance. Especially the answer that tells one should simply write $json = {}` and not use json_encode at all is futile\"}', NULL, 1, 0, NULL, 1, NULL),
(5, '2019-10-09 19:09:13', '2019-10-09 19:09:13', 'App\\Models\\User', 2, 'message', '{\"name\":\"Yakubu\",\"subject\":\"Bluetooth Device\",\"contact\":\"yakubs@gmail.com\",\"body\":\"If you need this to be 100% compatible both ways, you can also wrap json_decode so that it returns ArrayObjects instead of stdClass objects (you\'ll need to walk the result tree and recursively replace all the objects, which is a fairly easy task).\"}', NULL, 1, 0, NULL, 3, NULL),
(6, '2019-10-09 19:09:13', '2019-10-09 19:09:13', 'App\\Models\\Guest', 2, 'message', '{\"name\":\"James\",\"subject\":\"Wireless Charger\",\"contact\":\"1234567890\",\"body\":\"Thanks, this is the best answer and exactly suits my needs. Before reading this, my code started with jsonResponse = array() and then it was dynamically filled by a loop. If the loop did not have a single iteration the \\\"empty\\\" object (or dictionary, as you call it) was encoded as [] while all other cases were encoded as \\\"{ attr_1: value1,...}. All the other answers around here have a flaw. They assume that one already knows if the dictionary is empty or not in advance. Especially the answer that tells one should simply write $json = {}` and not use json_encode at all is futile\"}', NULL, 1, 1, '2019-10-10 05:39:13', 1, NULL),
(7, '2019-10-09 19:09:13', '2019-10-09 19:09:13', 'App\\Models\\Guest', 3, 'message', '{\"name\":\"Yakubu\",\"subject\":\"Wireless headphone\",\"contact\":\"yakubs@gmail.com\",\"body\":\"If you need this to be 100% compatible both ways, you can also wrap json_decode so that it returns ArrayObjects instead of stdClass objects (you\'ll need to walk the result tree and recursively replace all the objects, which is a fairly easy task).\"}', NULL, 1, 1, '2019-10-10 05:39:13', 3, NULL),
(8, '2020-01-02 16:29:07', '2020-01-02 16:29:07', 'App\\Models\\Guest', 7, 'faq', '{\"question\":\"Test: Can I buy credit?\",\"group\":\"General\",\"notify_me\":\"1\",\"send_push_notification\":\"1\",\"send_email\":\"0\",\"email\":null}', NULL, 0, 0, NULL, NULL, NULL),
(9, '2020-01-02 16:33:04', '2020-01-02 17:24:56', 'App\\Models\\Guest', 7, 'faq', '{\"question\":\"Test 2: Can I buy credit?\",\"group\":\"General\",\"notify_me\":\"1\",\"send_push_notification\":\"1\",\"send_email\":\"0\",\"email\":null,\"answer\":\"No, u can\'t\"}', NULL, 0, 1, '2020-01-03 03:54:56', 1, NULL),
(10, '2020-01-02 18:02:37', '2020-01-02 18:09:51', 'App\\Models\\Guest', 7, 'faq', '{\"question\":\"Can I still use cable with the wireless power bank\",\"group\":\"Wireless Power Bank\",\"notify_me\":\"1\",\"send_push_notification\":\"1\",\"send_email\":\"0\",\"email\":null,\"answer\":\"Yes, very much so\"}', NULL, 0, 1, '2020-01-03 04:39:51', 1, NULL),
(11, '2020-01-02 18:14:49', '2020-01-02 18:16:54', 'App\\Models\\Guest', 7, 'faq', '{\"question\":\"Test 3: Just a random text\",\"group\":\"Wireless Power Bank\",\"notify_me\":\"1\",\"send_push_notification\":\"1\",\"send_email\":\"0\",\"email\":null,\"slack\":{\"thread_ts\":\"1578026685.000900\"},\"answer\":\"Random answer given\"}', NULL, 1, 1, '2020-01-03 04:46:54', 1, NULL),
(12, '2020-01-04 00:54:33', '2020-01-04 00:56:42', 'App\\Models\\Guest', 7, 'faq', '{\"question\":\"Hi, this is a test question?\",\"group\":\"General\",\"notify_me\":\"1\",\"send_push_notification\":\"0\",\"send_email\":\"1\",\"email\":\"agstrscntw3@gmail.com\",\"slack\":{\"thread_ts\":\"1578137068.000100\"},\"answer\":\"Okay. Replied!\"}', NULL, 1, 1, '2020-01-04 11:26:42', 1, NULL),
(13, '2020-01-08 00:51:23', '2020-01-08 00:51:23', 'App\\Models\\Guest', 11, 'faq', '{\"question\":\"Test from SiteController\",\"group\":\"General\",\"notify_me\":\"0\",\"send_push_notification\":null,\"send_email\":null,\"email\":null}', NULL, 0, 0, NULL, NULL, NULL),
(23, '2020-01-08 01:25:16', '2020-01-08 01:25:16', 'App\\Models\\Guest', 11, 'faq', '{\"question\":\"This is a simple test question param\",\"group\":\"Ordering\",\"notify_me\":\"1\",\"send_push_notification\":\"1\",\"send_email\":\"0\",\"email\":null,\"slack\":{\"thread_ts\":\"1578484509.000900\"}}', NULL, 0, 0, NULL, NULL, NULL),
(24, '2020-01-08 01:27:45', '2020-01-08 01:27:46', 'App\\Models\\Guest', 11, 'faq', '{\"question\":\"We are still processing the bestselling estimates. Please check back in 1-3 days.\",\"group\":\"Ordering\",\"notify_me\":\"1\",\"send_push_notification\":\"1\",\"send_email\":\"0\",\"email\":null,\"slack\":{\"thread_ts\":\"1578484658.001000\"}}', NULL, 0, 0, NULL, NULL, NULL),
(25, '2020-01-08 01:29:13', '2020-01-08 01:29:14', 'App\\Models\\Guest', 11, 'faq', '{\"question\":\"We are still processing the bestselling estimates. Please check back in 1-3 days.\",\"group\":\"Ordering\",\"notify_me\":\"1\",\"send_push_notification\":\"1\",\"send_email\":\"0\",\"email\":null,\"slack\":{\"thread_ts\":\"1578484747.001100\"}}', NULL, 0, 0, NULL, NULL, NULL),
(26, '2020-01-08 01:52:03', '2020-01-08 01:52:04', 'App\\Models\\Guest', 11, 'purchase', '{\"message\":\"I need a hand with the Wireless Power Bank\",\"first_name\":\"Augustus\",\"last_name\":\"Okoye\",\"email\":\"agstrscntw3@gmail.com\",\"phone\":\"0416801442\",\"slack\":{\"thread_ts\":\"1578486117.000100\"}}', NULL, 0, 0, NULL, NULL, NULL),
(27, '2020-01-08 02:13:05', '2020-01-08 02:14:21', 'App\\Models\\Guest', 11, 'faq', '{\"question\":\"Another random FAQ\",\"group\":\"Ordering\",\"notify_me\":\"1\",\"send_push_notification\":\"1\",\"send_email\":\"0\",\"email\":null,\"slack\":{\"thread_ts\":\"1578487379.000100\"},\"answer\":\"No!\"}', NULL, 1, 1, '2020-01-08 12:44:21', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tagged`
--

CREATE TABLE `tagged` (
  `id` int(10) UNSIGNED NOT NULL,
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'https://mrsc.moirei-dev.com/img/dummy/client.png',
  `geo` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'AU',
  `last_active` timestamp NULL DEFAULT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `activated_at` timestamp NULL DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `guest_since` datetime DEFAULT NULL,
  `api_token` text COLLATE utf8mb4_unicode_ci,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_original` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `slug`, `first_name`, `last_name`, `gender`, `date_of_birth`, `image`, `geo`, `last_active`, `activation_code`, `persist_code`, `reset_password_code`, `activated`, `activated_at`, `note`, `guest_since`, `api_token`, `google_id`, `avatar`, `avatar_original`, `deleted_at`) VALUES
(1, 'johnlennon@moirei.com', NULL, '$2y$10$dffSTAxC8/Cb6L3444x9B.SuYpayWO8tsg4dhaq38y7Zp/2M7ZIje', NULL, '2019-10-09 19:09:09', '2019-10-09 19:09:09', NULL, 'John', 'Lennon', NULL, NULL, 'https://mrsc.moirei-dev.com/img/dummy/client.png', 'AU', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'augustusokoye@moirei.com', NULL, '$2y$10$6nkk16Uuqw5LRjWWemR5ieXU.VWTXgTZG4a1VTl98liPIZjQ9tG/S', NULL, '2019-10-09 19:09:10', '2019-10-09 19:09:10', NULL, 'Augustus', 'Okoye', NULL, NULL, 'https://mrsc.moirei-dev.com/img/dummy/client.png', 'AU', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'mj@moirei.com', NULL, '$2y$10$V1zQigpo8svhe4kcU0fLbuqC/KLoi54QkG1T9YtyQ1uSo9poj4wTS', NULL, NULL, NULL, NULL, 'Michael', 'Jackson', NULL, NULL, 'https://mrsc.moirei-dev.com/img/dummy/client.png', 'AU', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'akon@moirei.com', NULL, '$2y$10$fXaMaf0AtMVP8o4/kOFTQ.M224p3dqWIyIHO0mSbhtuEsvlvzUWKG', NULL, NULL, NULL, NULL, 'Akon', NULL, NULL, NULL, 'https://mrsc.moirei-dev.com/img/dummy/client.png', 'AU', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'bchris@moirei.com', NULL, '$2y$10$BffWayHif3GgqAJtJP9.CuxjY7xwhSOmBVPFtqkr4.7svifeYBR6C', NULL, NULL, NULL, NULL, 'Chris', 'Brown', NULL, NULL, 'https://mrsc.moirei-dev.com/img/dummy/client.png', 'AU', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'user37@moirei.com', NULL, '$2y$10$RHtPWNMtYygfNsBnmMBb0.vi3HY2IGaMCMVEcGsHthTUUQWmfQn86', NULL, NULL, NULL, NULL, 'o8w2y5LuNY', NULL, NULL, NULL, 'https://mrsc.moirei-dev.com/img/dummy/client.png', 'AU', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'augustusnokoye@gmail.com', NULL, NULL, NULL, '2019-12-25 15:03:01', '2019-12-25 15:14:14', NULL, 'Augustus', 'Okoye', NULL, NULL, 'https://lh3.googleusercontent.com/a-/AAuE7mAB_DHF3_wuBPECFhBOx3ZR9wArUxLRscgU5Hpc', 'AU', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2019-10-11 04:53:26', NULL, NULL, NULL, NULL, NULL),
(8, 'agstrscntw3@gmail.com', NULL, NULL, NULL, '2020-01-02 04:26:54', '2020-01-02 04:31:11', NULL, 'Augustus', '', NULL, NULL, 'https://graph.facebook.com/v3.3/2809884909053468/picture?type=normal', 'AU', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2019-10-11 04:53:26', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_voucher`
--

CREATE TABLE `user_voucher` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `voucherable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `voucherable_id` bigint(20) UNSIGNED NOT NULL,
  `voucher_id` bigint(20) UNSIGNED NOT NULL,
  `redeemed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_voucher`
--

INSERT INTO `user_voucher` (`id`, `voucherable_type`, `voucherable_id`, `voucher_id`, `redeemed_at`) VALUES
(1, 'App\\Models\\User', 1, 1, '2019-10-26 16:05:38'),
(2, 'App\\Models\\User', 2, 2, '2019-10-26 16:10:06'),
(3, 'App\\Models\\Guest', 7, 3, '2019-10-29 15:43:45'),
(4, 'App\\Models\\Guest', 7, 6, '2019-11-22 03:20:31');

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `currency_code` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'USD',
  `reward_type` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percentage',
  `reward` double(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT '1',
  `is_disposable` tinyint(1) NOT NULL DEFAULT '1',
  `can_redeem` text COLLATE utf8mb4_unicode_ci,
  `cannot_redeem` text COLLATE utf8mb4_unicode_ci,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vouchers`
--

INSERT INTO `vouchers` (`id`, `code`, `model_type`, `model_id`, `currency_code`, `reward_type`, `reward`, `quantity`, `is_disposable`, `can_redeem`, `cannot_redeem`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'S8ER-UFQT-ECTU', 'App\\Models\\Ecommerce\\Product', 2, 'AUD', 'percentage', 10.00, 0, 1, '[]', '\"[]\"', '2019-10-30 13:30:00', '2019-10-26 16:03:20', '2019-10-26 16:05:38'),
(2, 'QN6V-UDQ7-9JP6', 'App\\Models\\Ecommerce\\Product', 3, 'AUD', 'monetary', 20.00, 0, 0, '[]', '\"[]\"', NULL, '2019-10-26 16:09:19', '2019-10-26 16:19:49'),
(3, 'FNU3-3ZCC-CAKD', 'App\\Models\\Ecommerce\\Product', 6, 'USD', 'monetary', 10.00, 0, 1, '[]', '\"[]\"', NULL, '2019-10-27 01:56:19', '2019-10-29 15:43:45'),
(4, 'GQD3-FNEJ-AB2J', 'App\\Models\\Ecommerce\\Product', 1, 'USD', 'percentage', NULL, 2, 1, '[{\"voucherable_type\":\"App\\\\Models\\\\User\",\"voucherable_id\":1},{\"voucherable_type\":\"App\\\\Models\\\\User\",\"voucherable_id\":2}]', '[{\"voucherable_type\":\"App\\\\Models\\\\Guest\",\"voucherable_id\":1}]', '2019-11-04 13:30:00', '2019-10-28 21:39:55', '2019-10-28 21:39:55'),
(5, 'WVP2-NAA4-WV6B', 'App\\Models\\Ecommerce\\Product', 6, 'AUD', 'monetary', 10.00, 1, 1, '[]', '\"[]\"', '2019-11-28 13:30:00', '2019-10-29 03:25:41', '2019-10-29 03:25:41'),
(6, 'X8P8-45XC-2AEU', 'App\\Models\\Ecommerce\\Product', 6, 'AUD', 'percentage', 10.00, 99, 1, '[]', '\"[\\\"{\\\\\\\"voucherable_type\\\\\\\":\\\\\\\"App\\\\\\\\\\\\\\\\Models\\\\\\\\\\\\\\\\User\\\\\\\",\\\\\\\"voucherable_id\\\\\\\":3}\\\"]\"', '2019-11-28 13:30:00', '2019-11-13 02:38:33', '2019-11-22 03:20:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action_events`
--
ALTER TABLE `action_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action_events_actionable_type_actionable_id_index` (`actionable_type`,`actionable_id`),
  ADD KEY `action_events_batch_id_model_type_model_id_index` (`batch_id`,`model_type`,`model_id`),
  ADD KEY `action_events_user_id_index` (`user_id`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_addressable_type_addressable_id_index` (`addressable_type`,`addressable_id`),
  ADD KEY `addresses_country_id_index` (`country_id`),
  ADD KEY `addresses_is_public_index` (`is_public`),
  ADD KEY `addresses_is_primary_index` (`is_primary`),
  ADD KEY `addresses_is_billing_index` (`is_billing`),
  ADD KEY `addresses_is_shipping_index` (`is_shipping`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_slug_unique` (`slug`),
  ADD UNIQUE KEY `admins_employee_id_unique` (`employee_id`);

--
-- Indexes for table `callback_requests`
--
ALTER TABLE `callback_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `callback_requests_callbackable_type_callbackable_id_index` (`callbackable_type`,`callbackable_id`),
  ADD KEY `callback_requests_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `call_requests`
--
ALTER TABLE `call_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `call_requests_callrequestable_type_callrequestable_id_index` (`callrequestable_type`,`callrequestable_id`),
  ADD KEY `call_requests_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_name_index` (`name`),
  ADD KEY `cart_user_id_status_index` (`user_id`,`status`),
  ADD KEY `cart_msucid_status_index` (`msucid`,`status`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_items_cart_id_foreign` (`cart_id`),
  ADD KEY `cart_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `cart_storage`
--
ALTER TABLE `cart_storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_storage_id_index` (`id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_requests`
--
ALTER TABLE `chat_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_requests_chatrequestable_type_chatrequestable_id_index` (`chatrequestable_type`,`chatrequestable_id`),
  ADD KEY `chat_requests_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_name_unique` (`name`),
  ADD UNIQUE KEY `companies_legal_name_unique` (`legal_name`),
  ADD KEY `companies_companyable_type_companyable_id_index` (`companyable_type`,`companyable_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_contactable_type_contactable_id_index` (`contactable_type`,`contactable_id`),
  ADD KEY `contacts_address_id_foreign` (`address_id`),
  ADD KEY `contacts_is_public_index` (`is_public`),
  ADD KEY `contacts_is_primary_index` (`is_primary`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currencies_code_index` (`code`);

--
-- Indexes for table `customer_chats`
--
ALTER TABLE `customer_chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_chats_chatable_type_chatable_id_index` (`chatable_type`,`chatable_id`),
  ADD KEY `customer_chats_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `customer_chat_messages`
--
ALTER TABLE `customer_chat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_chat_messages_customer_chat_id_foreign` (`customer_chat_id`);

--
-- Indexes for table `dinamyc_qr`
--
ALTER TABLE `dinamyc_qr`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dinamyc_qr_key_unique` (`key`),
  ADD KEY `dinamyc_qr_qrcodable_type_qrcodable_id_index` (`qrcodable_type`,`qrcodable_id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourite_products`
--
ALTER TABLE `favourite_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favourite_products_favourable_type_favourable_id_index` (`favourable_type`,`favourable_id`),
  ADD KEY `favourite_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guests_msucid_unique` (`msucid`),
  ADD UNIQUE KEY `guests_slug_unique` (`slug`),
  ADD KEY `guests_user_id_foreign` (`user_id`);

--
-- Indexes for table `liked_products`
--
ALTER TABLE `liked_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `liked_products_likable_type_likable_id_index` (`likable_type`,`likable_id`),
  ADD KEY `liked_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_data`
--
ALTER TABLE `model_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `model_data_datable_type_datable_id_index` (`datable_type`,`datable_id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_name_unique` (`name`),
  ADD UNIQUE KEY `news_slug_unique` (`slug`);

--
-- Indexes for table `nova_media_library`
--
ALTER TABLE `nova_media_library`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nova_media_library_title_index` (`title`),
  ADD KEY `nova_media_library_created_index` (`created`),
  ADD KEY `nova_media_library_type_index` (`type`),
  ADD KEY `nova_media_library_folder_index` (`folder`);

--
-- Indexes for table `nova_pending_trix_attachments`
--
ALTER TABLE `nova_pending_trix_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nova_pending_trix_attachments_draft_id_index` (`draft_id`);

--
-- Indexes for table `nova_trix_attachments`
--
ALTER TABLE `nova_trix_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nova_trix_attachments_attachable_type_attachable_id_index` (`attachable_type`,`attachable_id`),
  ADD KEY `nova_trix_attachments_url_index` (`url`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_orderable_type_orderable_id_index` (`orderable_type`,`orderable_id`),
  ADD KEY `orders_admin_id_foreign` (`admin_id`),
  ADD KEY `orders_store_id_foreign` (`store_id`),
  ADD KEY `orders_order_reference_index` (`order_reference`),
  ADD KEY `orders_transaction_id_index` (`transaction_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phones_phoneable_type_phoneable_id_index` (`phoneable_type`,`phoneable_id`),
  ADD KEY `phones_country_id_index` (`country_id`),
  ADD KEY `phones_is_public_index` (`is_public`),
  ADD KEY `phones_is_primary_index` (`is_primary`),
  ADD KEY `phones_is_mobile_index` (`is_mobile`),
  ADD KEY `phones_is_home_index` (`is_home`),
  ADD KEY `phones_is_whatsapp_index` (`is_whatsapp`),
  ADD KEY `phones_is_fax_index` (`is_fax`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_parent_id_foreign` (`parent_id`),
  ADD KEY `products_shipping_class_id_foreign` (`shipping_class_id`),
  ADD KEY `products_return_policy_id_foreign` (`return_policy_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attributes_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_attribute_options`
--
ALTER TABLE `product_attribute_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attribute_options_product_attribute_id_foreign` (`product_attribute_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_categories_slug_unique` (`slug`);

--
-- Indexes for table `product_return_policies`
--
ALTER TABLE `product_return_policies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_return_policies_name_unique` (`name`),
  ADD UNIQUE KEY `product_return_policies_slug_unique` (`slug`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_reviewable_type_reviewable_id_index` (`reviewable_type`,`reviewable_id`),
  ADD KEY `product_reviews_approver_admin_id_foreign` (`approver_admin_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_specification`
--
ALTER TABLE `product_specification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_specification_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variations_product_id_foreign` (`product_id`),
  ADD KEY `product_variations_product_attribute_option_id_foreign` (`product_attribute_option_id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_order_items_purchase_order_id_foreign` (`purchase_order_id`);

--
-- Indexes for table `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `push_subscriptions_subscribable_type_subscribable_id_index` (`subscribable_type`,`subscribable_id`);

--
-- Indexes for table `resellers`
--
ALTER TABLE `resellers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `resellers_email_unique` (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `service_providers`
--
ALTER TABLE `service_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `shipping_classes`
--
ALTER TABLE `shipping_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shipping_classes_name_unique` (`name`),
  ADD UNIQUE KEY `shipping_classes_slug_unique` (`slug`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stores_name_unique` (`name`),
  ADD UNIQUE KEY `stores_slug_unique` (`slug`);

--
-- Indexes for table `support_inquiries`
--
ALTER TABLE `support_inquiries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `support_inquiries_inquirable_type_inquirable_id_index` (`inquirable_type`,`inquirable_id`),
  ADD KEY `support_inquiries_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `tagged`
--
ALTER TABLE `tagged`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagged_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_slug_unique` (`slug`);

--
-- Indexes for table `user_voucher`
--
ALTER TABLE `user_voucher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_voucher_voucherable_type_voucherable_id_index` (`voucherable_type`,`voucherable_id`),
  ADD KEY `user_voucher_voucher_id_foreign` (`voucher_id`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vouchers_code_unique` (`code`),
  ADD KEY `vouchers_model_type_model_id_index` (`model_type`,`model_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action_events`
--
ALTER TABLE `action_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357;

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2133;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `callback_requests`
--
ALTER TABLE `callback_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `call_requests`
--
ALTER TABLE `call_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `chat_requests`
--
ALTER TABLE `chat_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=895;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer_chats`
--
ALTER TABLE `customer_chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer_chat_messages`
--
ALTER TABLE `customer_chat_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dinamyc_qr`
--
ALTER TABLE `dinamyc_qr`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `favourite_products`
--
ALTER TABLE `favourite_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `liked_products`
--
ALTER TABLE `liked_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `model_data`
--
ALTER TABLE `model_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nova_media_library`
--
ALTER TABLE `nova_media_library`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `nova_pending_trix_attachments`
--
ALTER TABLE `nova_pending_trix_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nova_trix_attachments`
--
ALTER TABLE `nova_trix_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=594;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_attribute_options`
--
ALTER TABLE `product_attribute_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_return_policies`
--
ALTER TABLE `product_return_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_specification`
--
ALTER TABLE `product_specification`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_variations`
--
ALTER TABLE `product_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `resellers`
--
ALTER TABLE `resellers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_providers`
--
ALTER TABLE `service_providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping_classes`
--
ALTER TABLE `shipping_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `support_inquiries`
--
ALTER TABLE `support_inquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tagged`
--
ALTER TABLE `tagged`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_voucher`
--
ALTER TABLE `user_voucher`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `callback_requests`
--
ALTER TABLE `callback_requests`
  ADD CONSTRAINT `callback_requests_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `call_requests`
--
ALTER TABLE `call_requests`
  ADD CONSTRAINT `call_requests_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_requests`
--
ALTER TABLE `chat_requests`
  ADD CONSTRAINT `chat_requests_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`);

--
-- Constraints for table `customer_chats`
--
ALTER TABLE `customer_chats`
  ADD CONSTRAINT `customer_chats_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `customer_chat_messages`
--
ALTER TABLE `customer_chat_messages`
  ADD CONSTRAINT `customer_chat_messages_customer_chat_id_foreign` FOREIGN KEY (`customer_chat_id`) REFERENCES `customer_chats` (`id`);

--
-- Constraints for table `favourite_products`
--
ALTER TABLE `favourite_products`
  ADD CONSTRAINT `favourite_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guests`
--
ALTER TABLE `guests`
  ADD CONSTRAINT `guests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `liked_products`
--
ALTER TABLE `liked_products`
  ADD CONSTRAINT `liked_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `orders_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_return_policy_id_foreign` FOREIGN KEY (`return_policy_id`) REFERENCES `product_return_policies` (`id`),
  ADD CONSTRAINT `products_shipping_class_id_foreign` FOREIGN KEY (`shipping_class_id`) REFERENCES `shipping_classes` (`id`);

--
-- Constraints for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD CONSTRAINT `product_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_attribute_options`
--
ALTER TABLE `product_attribute_options`
  ADD CONSTRAINT `product_attribute_options_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_approver_admin_id_foreign` FOREIGN KEY (`approver_admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_specification`
--
ALTER TABLE `product_specification`
  ADD CONSTRAINT `product_specification_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD CONSTRAINT `product_variations_product_attribute_option_id_foreign` FOREIGN KEY (`product_attribute_option_id`) REFERENCES `product_attribute_options` (`id`),
  ADD CONSTRAINT `product_variations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  ADD CONSTRAINT `purchase_order_items_purchase_order_id_foreign` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `support_inquiries`
--
ALTER TABLE `support_inquiries`
  ADD CONSTRAINT `support_inquiries_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `user_voucher`
--
ALTER TABLE `user_voucher`
  ADD CONSTRAINT `user_voucher_voucher_id_foreign` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
