-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2021 at 03:45 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sekolah`
--

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomer_induk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mapel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_menjabat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

CREATE TABLE `informasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` enum('Ekstrakulikuler','Prestasi-siswa','Artikel','Prestasi-sekolah') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Dolor.', '2021-08-15 08:03:47', '2021-08-15 08:03:47'),
(2, 'Cupiditate.', '2021-08-15 08:03:47', '2021-08-15 08:03:47'),
(3, 'Non.', '2021-08-15 08:03:47', '2021-08-15 08:03:47'),
(4, 'Autem.', '2021-08-15 08:03:47', '2021-08-15 08:03:47');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `jam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` enum('Pengumuman','Agenda') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_08_17_073152_create_permission_tables', 1),
(5, '2020_08_18_062807_create_settings_table', 1),
(6, '2020_08_19_072946_create_produk_table', 1),
(7, '2020_08_19_073627_create_kategori_table', 1),
(8, '2021_07_26_144505_create_profile_table', 1),
(9, '2021_07_26_145116_create_informasi_table', 1),
(10, '2021_07_26_150714_create_guru_table', 1),
(11, '2021_07_26_151602_create_galeri_table', 1),
(12, '2021_07_26_151723_create_kegiatan_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2),
(2, 'App\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manajemen users', 'web', '2021-08-15 08:03:50', '2021-08-15 08:03:50'),
(2, 'manajemen roles', 'web', '2021-08-15 08:03:50', '2021-08-15 08:03:50'),
(3, 'manajemen produk', 'web', '2021-08-15 08:03:50', '2021-08-15 08:03:50'),
(4, 'manajemen kategori', 'web', '2021-08-15 08:03:50', '2021-08-15 08:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama_produk`, `harga_beli`, `harga_jual`, `stok`, `kategori_id`, `gambar`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Aut delectus eligendi.', 61667, 63667, 6, 1, 'produk_default.jpg', 'Consequatur harum quas adipisci et reprehenderit. Sit est sit quasi. Aspernatur sequi omnis facilis rerum illum omnis. Non tempora provident accusamus et ut fuga.', '2021-08-15 08:03:47', '2021-08-15 08:03:47'),
(2, 'Natus porro.', 34891, 36891, 45, 1, 'produk_default.jpg', 'Dolorum officia hic soluta sint sint ut qui atque. Quia ab tempora aspernatur quia. Sunt illum minus officia molestias qui tempore vero. Id autem inventore ea porro non.', '2021-08-15 08:03:47', '2021-08-15 08:03:47'),
(3, 'Voluptatem sint.', 89177, 91177, 12, 1, 'produk_default.jpg', 'Est aut voluptatem ipsum optio. Et facilis vitae eos aliquid qui ea voluptates. Ipsa inventore asperiores et consequatur temporibus.', '2021-08-15 08:03:47', '2021-08-15 08:03:47'),
(4, 'Culpa veritatis eius.', 68678, 70678, 29, 1, 'produk_default.jpg', 'Quia consectetur sint omnis cum. Repellat non ut nostrum explicabo odio enim. Sed sint aliquam et odit nam nihil.', '2021-08-15 08:03:48', '2021-08-15 08:03:48'),
(5, 'Commodi itaque.', 53327, 55327, 39, 1, 'produk_default.jpg', 'Praesentium dolor aliquam non voluptatum et. Veritatis provident earum in natus sed in tempora. Doloribus accusamus ratione totam. Officia commodi nobis magnam animi sapiente natus atque.', '2021-08-15 08:03:48', '2021-08-15 08:03:48'),
(6, 'Recusandae harum delectus.', 73301, 75301, 2, 1, 'produk_default.jpg', 'Autem dicta dolorem molestiae magnam ad voluptatibus. Et itaque saepe aut aut non non est vel. Natus temporibus aut accusantium dignissimos. Repellendus ut exercitationem pariatur asperiores.', '2021-08-15 08:03:48', '2021-08-15 08:03:48'),
(7, 'Aut dolor.', 91581, 93581, 29, 1, 'produk_default.jpg', 'Omnis aut quo dolor sapiente itaque modi vitae. Dignissimos nobis est maiores fugiat. Illum doloribus beatae autem. Qui modi magni nostrum tempore similique aut.', '2021-08-15 08:03:48', '2021-08-15 08:03:48'),
(8, 'Dicta tenetur.', 12523, 14523, 40, 1, 'produk_default.jpg', 'Officia vero quia et dicta voluptatum sint. Et nostrum vel soluta est pariatur quae quia architecto. Id consequatur nesciunt eius omnis quos repellendus officiis.', '2021-08-15 08:03:48', '2021-08-15 08:03:48'),
(9, 'Nihil inventore.', 95571, 97571, 32, 1, 'produk_default.jpg', 'Cum tempora veritatis et et. Quis molestias placeat amet laboriosam ut asperiores. Ducimus dolor itaque ex id eos animi. A magni iure velit. Dolorem aut rem harum.', '2021-08-15 08:03:48', '2021-08-15 08:03:48'),
(10, 'Rerum ex.', 18270, 20270, 4, 1, 'produk_default.jpg', 'Rem non ut voluptate cumque. Ipsam incidunt nesciunt expedita. Quidem iure est autem ipsum sapiente animi.', '2021-08-15 08:03:48', '2021-08-15 08:03:48'),
(11, 'Veritatis nulla eum.', 89321, 91321, 17, 2, 'produk_default.jpg', 'Nesciunt repudiandae ea unde molestiae quia molestias. Consequatur et delectus soluta ut. Sit qui qui fugit consequatur. Rerum qui voluptate voluptate expedita vel velit.', '2021-08-15 08:03:48', '2021-08-15 08:03:48'),
(12, 'Voluptas aut.', 90332, 92332, 14, 2, 'produk_default.jpg', 'Nesciunt rerum maxime quia sed mollitia. Molestias dolor eos sint quos. Voluptas ab aut amet voluptatum nesciunt.', '2021-08-15 08:03:48', '2021-08-15 08:03:48'),
(13, 'Tempore est.', 73637, 75637, 5, 2, 'produk_default.jpg', 'Omnis sunt consequatur nisi ut unde delectus architecto. Ut qui rerum cum autem et quasi eos. Voluptatem eligendi nihil et aperiam.', '2021-08-15 08:03:48', '2021-08-15 08:03:48'),
(14, 'Voluptas et.', 47204, 49204, 50, 2, 'produk_default.jpg', 'Placeat et explicabo quia delectus enim cum deserunt velit. Est ut non mollitia fuga magni culpa. Maiores soluta eaque ex nostrum dolor. Sequi aliquid eum dolorem.', '2021-08-15 08:03:48', '2021-08-15 08:03:48'),
(15, 'Earum magnam iusto.', 46115, 48115, 25, 2, 'produk_default.jpg', 'Consequatur sequi ipsum consequuntur est voluptatem id. Dolores sint sit numquam atque sed blanditiis autem. Ut commodi quo voluptate facilis eos et voluptatibus fuga.', '2021-08-15 08:03:48', '2021-08-15 08:03:48'),
(16, 'Cumque neque libero.', 87609, 89609, 21, 2, 'produk_default.jpg', 'Nemo deleniti velit officiis quis harum voluptatibus beatae. Nostrum voluptatibus quasi temporibus. Ea et sunt doloremque. Possimus ad quis dolorem accusamus nihil in maxime provident.', '2021-08-15 08:03:48', '2021-08-15 08:03:48'),
(17, 'Fugiat eveniet.', 29880, 31880, 32, 2, 'produk_default.jpg', 'Saepe sequi nam aliquam assumenda delectus porro beatae. At vel voluptatibus esse id. Blanditiis sapiente rerum quae molestiae.', '2021-08-15 08:03:48', '2021-08-15 08:03:48'),
(18, 'Quos itaque ut.', 77119, 79119, 29, 2, 'produk_default.jpg', 'Consequatur tenetur quos similique fugit libero. Eligendi deserunt voluptatem eum dicta. Enim vel doloribus placeat. Tenetur ut rerum consequatur suscipit saepe dolor laborum.', '2021-08-15 08:03:48', '2021-08-15 08:03:48'),
(19, 'Nihil sed.', 80837, 82837, 30, 2, 'produk_default.jpg', 'Adipisci praesentium ipsum ipsam et. Vero cumque quia qui et maiores laudantium officia perferendis. Sint in blanditiis ea odio in in.', '2021-08-15 08:03:48', '2021-08-15 08:03:48'),
(20, 'Maiores nihil.', 15220, 17220, 50, 2, 'produk_default.jpg', 'Fuga rerum maiores est quos commodi non. Ut fugit perferendis tempora qui voluptatem cum vero earum. Eveniet corporis voluptatum optio rem itaque.', '2021-08-15 08:03:49', '2021-08-15 08:03:49'),
(21, 'Corporis iusto esse.', 31078, 33078, 10, 3, 'produk_default.jpg', 'Dignissimos esse exercitationem voluptates sunt vero blanditiis quas. Non molestiae repellendus laudantium sequi omnis. Possimus praesentium aliquid saepe error enim.', '2021-08-15 08:03:49', '2021-08-15 08:03:49'),
(22, 'Officiis quia et.', 96792, 98792, 49, 3, 'produk_default.jpg', 'Voluptatem facilis doloribus et. Aut suscipit nam dolorem sit nostrum. Atque et iure exercitationem aut omnis.', '2021-08-15 08:03:49', '2021-08-15 08:03:49'),
(23, 'Nostrum architecto qui.', 97286, 99286, 15, 3, 'produk_default.jpg', 'Voluptatibus accusantium hic provident dolorem aut voluptas. Quasi animi veniam minima sed consectetur. Praesentium quibusdam et aut eaque veniam.', '2021-08-15 08:03:49', '2021-08-15 08:03:49'),
(24, 'Recusandae inventore.', 44360, 46360, 23, 3, 'produk_default.jpg', 'Ratione at sit incidunt sed nisi recusandae. Animi ab quam voluptatem possimus deserunt. Rerum quo voluptatibus qui.', '2021-08-15 08:03:49', '2021-08-15 08:03:49'),
(25, 'Qui eaque.', 41975, 43975, 43, 3, 'produk_default.jpg', 'Tenetur quis consequuntur eum sit rerum ab dolorum. Nulla fuga impedit aut corporis eos praesentium incidunt.', '2021-08-15 08:03:49', '2021-08-15 08:03:49'),
(26, 'Ut ipsa.', 23658, 25658, 19, 3, 'produk_default.jpg', 'Sequi totam fugit tempora ratione dolor. Dolores tempora excepturi reiciendis. Consequatur consequatur nihil harum maxime quia molestiae. Ut ab nostrum veritatis nihil.', '2021-08-15 08:03:49', '2021-08-15 08:03:49'),
(27, 'Et dignissimos velit.', 45415, 47415, 40, 3, 'produk_default.jpg', 'Ratione neque delectus ducimus perferendis ut fuga. Porro nihil voluptate et autem sed praesentium repellendus. Quos incidunt praesentium earum fugit voluptatem est.', '2021-08-15 08:03:49', '2021-08-15 08:03:49'),
(28, 'Quaerat aliquid optio.', 61367, 63367, 1, 3, 'produk_default.jpg', 'Voluptatem quos recusandae facilis aliquam et sint. Et corrupti voluptates minus ut amet. Et quod enim quidem. Doloribus hic vel rerum et dolores.', '2021-08-15 08:03:49', '2021-08-15 08:03:49'),
(29, 'Laudantium beatae.', 39622, 41622, 39, 3, 'produk_default.jpg', 'Accusantium vel veritatis sit sunt fuga. Voluptates aut sed dolor magnam laudantium unde accusamus. Rem veritatis impedit magnam modi odio. Delectus et rerum earum sunt mollitia ea nisi.', '2021-08-15 08:03:49', '2021-08-15 08:03:49'),
(30, 'Facere et.', 84260, 86260, 10, 3, 'produk_default.jpg', 'Voluptatem qui excepturi magnam quas. Labore odio tempore aut voluptatum. Quae vel et incidunt quia expedita veniam est.', '2021-08-15 08:03:49', '2021-08-15 08:03:49'),
(31, 'Dicta impedit culpa.', 28240, 30240, 21, 4, 'produk_default.jpg', 'Ut aut qui vitae voluptas perspiciatis consequuntur accusantium. Assumenda voluptatem inventore eius consequatur. Quis omnis dolores aliquam amet voluptas sequi quasi.', '2021-08-15 08:03:49', '2021-08-15 08:03:49'),
(32, 'Aut sit laudantium.', 14188, 16188, 13, 4, 'produk_default.jpg', 'Est molestiae est quaerat. Nulla perspiciatis velit molestiae recusandae. Voluptas recusandae dicta velit et debitis. Dolor vel et est non a omnis.', '2021-08-15 08:03:49', '2021-08-15 08:03:49'),
(33, 'Et odio.', 61099, 63099, 29, 4, 'produk_default.jpg', 'Enim minus earum quia porro. Autem mollitia voluptas cumque vitae ipsum voluptas ullam. Sunt ipsum cum rerum magni laborum asperiores in dolores. Voluptas laborum ab libero autem unde error.', '2021-08-15 08:03:49', '2021-08-15 08:03:49'),
(34, 'Minima dicta veritatis.', 81097, 83097, 24, 4, 'produk_default.jpg', 'Quasi distinctio possimus incidunt illum iusto. Voluptate tempore consequuntur tempore molestiae itaque voluptates beatae. Eaque neque vero fuga.', '2021-08-15 08:03:49', '2021-08-15 08:03:49'),
(35, 'Ut commodi aut.', 53499, 55499, 6, 4, 'produk_default.jpg', 'Atque vitae voluptas sed facilis consequatur quos eveniet. Ratione molestiae reiciendis et voluptatem mollitia quos.', '2021-08-15 08:03:49', '2021-08-15 08:03:49'),
(36, 'Sint qui est.', 14062, 16062, 26, 4, 'produk_default.jpg', 'Et quia sit id molestiae. Est et consequatur sed accusantium error est. Tempore aut eos labore beatae. Dolor molestias in alias voluptatum saepe voluptatum.', '2021-08-15 08:03:49', '2021-08-15 08:03:49'),
(37, 'Voluptates laborum.', 53758, 55758, 39, 4, 'produk_default.jpg', 'Minima sunt non magni repellendus sit eaque esse. Non ratione modi non placeat temporibus voluptas minima. Quos ad modi minus aut nostrum occaecati consequatur.', '2021-08-15 08:03:50', '2021-08-15 08:03:50'),
(38, 'Distinctio modi.', 54072, 56072, 4, 4, 'produk_default.jpg', 'Ut earum voluptatem reiciendis veritatis doloribus. Est voluptatem eius ex unde. Deserunt libero consequatur alias excepturi id.', '2021-08-15 08:03:50', '2021-08-15 08:03:50'),
(39, 'Vitae veniam.', 29486, 31486, 46, 4, 'produk_default.jpg', 'Omnis nihil ex et molestiae voluptas fugiat qui nihil. Quidem est sed libero odit sapiente. Dicta natus voluptatem quia aut doloremque est libero.', '2021-08-15 08:03:50', '2021-08-15 08:03:50'),
(40, 'Vitae magni.', 79874, 81874, 6, 4, 'produk_default.jpg', 'Sit est repellat doloremque deleniti omnis. Impedit voluptatum velit tenetur minima quo est. Necessitatibus eum nam consequatur qui voluptatibus est. Eligendi id voluptates consequatur totam.', '2021-08-15 08:03:50', '2021-08-15 08:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `identitas_sekolah` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `struktur_organisasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sambutan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `visi_misi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sejarah_singkat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fasilitas` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `identitas_sekolah`, `struktur_organisasi`, `sambutan`, `visi_misi`, `sejarah_singkat`, `fasilitas`, `created_at`, `updated_at`) VALUES
(1, '<table class=\"table table-borderless\"><tbody><tr><td><span style=\"font-family: &quot;Segoe UI&quot;;\">Nama Sekolah</span></td><td><span style=\"font-family: &quot;Segoe UI&quot;;\">:</span></td><td><span style=\"font-family: &quot;Segoe UI&quot;;\">SMP NURUL HALIM WIDASARI</span></td></tr><tr><td><span style=\"font-family: &quot;Segoe UI&quot;;\">Nama Kep. Sekolah</span></td><td><span style=\"font-family: &quot;Segoe UI&quot;;\">:</span></td><td><span style=\"font-family: &quot;Segoe UI&quot;;\">HUMAEDI, S.Ag</span></td></tr><tr><td><span style=\"font-family: &quot;Segoe UI&quot;;\">NPSN</span></td><td><span style=\"font-family: &quot;Segoe UI&quot;;\">:</span></td><td><span style=\"font-family: &quot;Segoe UI&quot;;\">20216093</span></td></tr><tr><td><span style=\"font-family: &quot;Segoe UI&quot;;\">Jenjang Pendidikan</span></td><td><span style=\"font-family: &quot;Segoe UI&quot;;\">:</span></td><td><span style=\"font-family: &quot;Segoe UI&quot;;\">SMP</span></td></tr><tr><td><span style=\"font-family: &quot;Segoe UI&quot;;\">Status Sekolah</span></td><td><span style=\"font-family: &quot;Segoe UI&quot;;\">:</span></td><td><span style=\"font-family: &quot;Segoe UI&quot;;\">Swasta</span></td></tr><tr><td><span style=\"font-family: &quot;Segoe UI&quot;;\">Alamat Sekolah</span></td><td><br></td><td><p>Jl. Raya Ujung Jaya No. 212&nbsp;</p><p><span style=\"background-color: transparent; color: inherit; font-size: 1rem;\">Rt/Rw 04/03&nbsp;</span><span style=\"background-color: transparent; color: inherit; font-size: 1rem;\">Kelurahan Ujungjaya, </span></p><p><span style=\"background-color: transparent; color: inherit; font-size: 1rem;\">Kec. Widasari&nbsp;</span><span style=\"background-color: transparent; color: inherit; font-size: 1rem;\">Kab. Indramayu, </span></p><p><span style=\"background-color: transparent; color: inherit; font-size: 1rem;\">Prov. Jawa Barat,&nbsp;</span><span style=\"background-color: transparent; color: inherit; font-size: 1rem;\">Indonesia.</span></p></td></tr><tr><td><span style=\"font-family: &quot;Segoe UI&quot;;\">Posisi Geografis</span></td><td><span style=\"font-family: &quot;Times New Roman&quot;;\">:</span></td><td><p><span style=\"font-family: &quot;Segoe UI&quot;;\">-6.4569 (Lintang)</span></p><p><span style=\"background-color: transparent; color: inherit; font-size: 1rem; font-family: &quot;Segoe UI&quot;;\">1082.2721 (Bujur)</span></p></td></tr><tr><td><span style=\"font-family: &quot;Segoe UI&quot;;\">SK Pendirian Sekolah</span></td><td><span style=\"font-family: &quot;Segoe UI&quot;;\">:</span></td><td><span style=\"font-family: &quot;Segoe UI&quot;;\">402/102/KEP/E/94</span><br></td></tr><tr><td>Tgl. SK Pendirian</td><td>:</td><td>1994-06-15</td></tr><tr><td>Status Kepemilikan</td><td>:</td><td>Yayasan</td></tr><tr><td>SK Izin Operasional</td><td>:</td><td>402/102/KEP/E/94<br></td></tr><tr><td>Akreditasi</td><td>:</td><td>A</td></tr></tbody></table>', 'struktur-organisasi.jpg', 'Assalamualaikum Warahmatullahi Wabarakatuh..', '<table class=\"table table-borderless\"><tbody><tr><td style=\"text-align: center; \"><b>VISI</b></td><td style=\"text-align: center; \"><br></td><td style=\"text-align: center; \"><br></td><td style=\"text-align: center; \"><br></td><td style=\"text-align: center; \"><br></td><td style=\"text-align: center; \"><b>MISI</b></td><td style=\"text-align: center; \"><br></td></tr><tr><td><div style=\"text-align: center; \">ROHMATAN</div><ul><li style=\"text-align: left;\">R = Religius</li><li style=\"text-align: left;\">O = Obyektif</li><li style=\"text-align: left;\">H = Humanis</li><li style=\"text-align: left;\">M = Mandiri</li><li style=\"text-align: left;\">A = Amanah</li><li style=\"text-align: left;\">T = Toleransi</li><li style=\"text-align: left;\">N = Nasionalis</li></ul></td><td><br></td><td><br></td><td><br></td><td><br></td><td><div><ul><li>Membentuk generasi yang Religius</li><li>laksanakan proses penilaian terhadap peserta didik secara Obyektif</li><li>Menyelesaikan permasalah dengan menggunakan pendekatana Humanis</li><li>Membina ke Mandirian peserta didik melalui pembiasaan program sekolah</li><li>Melaksanaan pengelolaan dan pembiayaan dengan Amanah</li><li>Membangun kehidupan warga sekolah yang toleran terhadap perbedaan-perbedaan yang ada</li><li></li><li>Membentuk generasi yang berakhlakul karimah</li><li>Menumbuh kembangkan jiwa Nasional pada peserta didik</li></ul></div></td><td><br></td></tr><tr><td style=\"text-align: center; \"><b>TUJUAN</b></td><td style=\"text-align: center; \"><br></td><td style=\"text-align: center; \"><br></td><td style=\"text-align: center; \"><br></td><td style=\"text-align: center; \"><br></td><td style=\"text-align: center;\"><p><b>MOTO</b></p></td><td style=\"text-align: center;\"><br></td></tr><tr><td style=\"text-align: center; \"><div style=\"text-align: left;\"><ul><li>Terbentuknya generasi muda&nbsp; yang religius</li><li>Terlaksanakannya proses penilaian yang obyektif</li><li>Terlaksanakannya penyelesaian masalah dengan pendekatan humanis</li><li>Terwujudnya sikap mandiri pada peserta didik</li><li>terlaksanakannya pengelolaan dan pembiayaan yang amanah</li><li>Terwujudnya sikap toleransi pada civitas</li><li>Terbentuknya generasi yang berakhlakul karimah</li><li>Terbentuknya jiwa nasionalis</li></ul></div></td><td style=\"text-align: center; \"><br></td><td style=\"text-align: center; \"><br></td><td style=\"text-align: center; \"><br></td><td style=\"text-align: center; \"><br></td><td style=\"text-align: center; \"><div style=\"text-align: left;\">KERJA IKHLAS</div><div style=\"text-align: left;\">KERJA KERAS</div><div style=\"text-align: left;\">KERJA CERDAS</div><div style=\"text-align: left;\">KERJA TUNTAS</div></td><td style=\"text-align: center; \"><br></td></tr></tbody></table>', '<p class=\"text-justify\" style=\"font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Smp Nurul Halim Widasari merupakan lembaga pendidikan yang dinaungi oleh Yayasan Nurul Halim. Sekilas riwayat berdirinya yayasan dengan memunculkan nama \"Nurul Halim\" berdasarkan kronologi sebagai berikut.</p><p class=\"text-justify\" style=\"font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Ketika itu di desa Ujungaris Kecamatan Widasari ada seorang pemuda bernama Wasam Sunanto anak dari Bapak H. Darja yang memiliki gelar nama Haji Abdul Halim saat menunaikan ibadah haji. Pemuda tersebut, Wasam Sunanto, memiliki komitmen untuk tidak berhenti belajar/ putus sekolah meski terlahir dari kalangan keluarga petani. Dalam kondisi demikian, tidak menyurutkan niat dari pemuda tersebut untuk terus belajar demi masa depan. Dengan berbagai ikhtiar disertai do\'a, niatan untuk terus belajar terwujud saat pemuda tersebut bisa melanjutkan menempuh pendidikan jenjang perkuliahan di IAIN Yogyakarta. Sebelum pemuda tersebut menimba ilmu di Pesantren Santi Asromo dibawah pimpinan K.H Abdul Halim. Setelah pemuda itu selesai menempuh Pendidikan tinggi, singkat cerita beliau mengabdikan diri sebagai anggota Tentara Nasional Indonesia Angkatan Udara di bagian Bintal (Bimbingan Mental) dan mendapatkan rumah dinas di Komplek Perumahan Angkatan Udara Halim Perdanakusuma.</p><p class=\"text-justify\" style=\"font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Beranjak dari sekilas riwat tersebut terlahir nama Yayasan Nurul Halim yang diambil dari nama gelar haji dari ayah pendiri yayasan yakni Haji Abdul Halim, kemudian dari nama pimpinan pesantrennya yakni K.H Abdul Halim, dan dari nama Halim Perdanakusuma tempat tinggalnya selama mengabdi di TNI-AU.</p><p class=\"text-justify\" style=\"font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Yayasan Nurul Halim awal berdiri dirintis dan dipimpin Bapak Drs. H. Wasam Sunanto pada tahun 1991; kemudian kepemimpinan dilanjutkan oleh Bapak Edi Ruslan pada periode ke-2 ditahun 1994; dan dilanjutkan dipimpin oleh Bapak H.Wasim pada periode ke-3 ditahun 1997. Periode berikutnya yakni periode ke-4 yayasan dipimpin oleh Bapak Drs. H. Wahidin, MM pada tahun 1998 dan dilanjut dengan kepemimpinan Ibu Prof. Dr. Hj. Musyrifah Sunanto dari tahun 2002 sampai dengan tahun 2012. Periode selanjutnya dari mulai tahun 2012 hingga saat ini Yayasan Nurul Halim dipimpin Ibu Dr. Hj. Lilis Imamah Ichdayanti, M.Si.</p><p class=\"text-justify\" style=\"font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">SMP Nurul Halim Widasari didirikan oleh Yayasan Nurul Halim pada tahun 1993 di atas tanak seluas 3000 m² yang terletak di Ujungjaya No. 212 Desa Ujungjaya Rt 04/03 blok Bruntak Kec. Widasari, Kab. Indramayu. Pengangkatan Kepala sekolah pertama berdasarkan atas amanat yayasan yaitu Bapak Drs. H. Ihya Ulumuddin, M.Ag dengan masa jabatan periode 1993-2001. Untuk periode berikutnya yang menjabat sebagai Kepala SMP Nurul Halim Widasari yakni Bapak Sapi\'i, M.Ag dengan masa jabatan periode 2001-2007. Periode selanjutnya lembaga pendidikan SMP Nurul Halim Widasari dipimpin oleh Ibu Dedeh Nur Hamidah, M.Ag. selama periode 2007-2012. Dan dari tahun 2012 hingga saat ini yang menjabat sebagai Kepala SMP Nurul Halim Widasari yaitu Bapak Humaedi, S.Ag.</p>', '<ul><li>Gedung sekolah</li><li>Lab. Komputer</li><li>Lab. IPA</li><li>Perpustakaan</li><li>UKS</li><li>Musholla</li><li>Kantin sekolah</li><li>Sarana olahraga pencak silat</li><li>Voli</li><li>Futsal</li><li>Tenis meja</li><li>Bulutangkis</li></ul>', NULL, '2021-08-16 13:34:10');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2021-08-15 08:03:50', '2021-08-15 08:03:50'),
(2, 'kasir', 'web', '2021-08-15 08:03:51', '2021-08-15 08:03:51');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(3, 2),
(4, 1),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_left` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `favicon`, `logo`, `app_name`, `footer_right`, `footer_left`, `created_at`, `updated_at`) VALUES
(1, 'favicon_default.ico', 'logo.jpg', 'SMP NH Widasari', 'Ver 1.0', 'SMP Nurul Halim Widasari | 2021', '2021-08-15 08:03:52', '2021-08-15 08:10:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', 1, NULL, '$2y$10$KpX7Q67qlKbp5O4q6m/py.TtqsUFYzODFrhy73B5MktBr2HomRu5.', NULL, '2021-08-15 08:03:51', '2021-08-15 08:10:44'),
(2, 'Tomiko Van', 'user1@example.com', 1, NULL, '$2y$10$XV5LDqJRfJoeGy9b5gn37.MfIQgTgl1pYOx1Y6lXB0DfMrPxeiOvG', NULL, '2021-08-15 08:03:52', '2021-08-15 08:03:52'),
(3, 'Elder Titan', 'user2@example.com', 1, NULL, '$2y$10$6SRc9ephumsspsExVweyLeMTr1qE05pz1NpjXIj7a83qGvbvQWs4y', NULL, '2021-08-15 08:03:52', '2021-08-15 08:03:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
