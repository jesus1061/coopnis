-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2019 a las 21:31:26
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agil`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog`
--

CREATE TABLE `blog` (
  `id` int(10) NOT NULL,
  `idvideo` varchar(50) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `categoria` int(5) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `post` text NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `tema` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `blog`
--

INSERT INTO `blog` (`id`, `idvideo`, `titulo`, `categoria`, `descripcion`, `post`, `imagen`, `fecha`, `tema`) VALUES
(1, 'A4Hwg0t4b1k', 'Bienvenido al Wiki Calima', 1, 'Una guia de inicio en nuestro AP para el desarrollo web 2.0', 'Framework Php desarrollado basado en diferentes marcos de trabajo PHP, para permitir el desarrollo de aplicaciones web rápidas y con la menor curva de aprendizaje posible tanto en su implementación como en el uso y posterior desarrollo de sitios web y app para internet.', 'foto.png', '2014-10-18', 'Bienvenido a la guia'),
(2, '', 'Sobre Calima Framework', 1, 'Calima Framework es un marco de trabajo desarrollado sobre PHP 5.3+ escrito para apoyar el facil conocimiento, implementación y desarrollo de hispano ', 'En esta versión opensource ofrece una documentación completa en español con ejemplos de uso en cada una de sus funciones y clases desarrolladas.\r\n\r\nSe escribe un Framework ligero que permite la creación de sitios web estático o dinámicos así como aplicaciones web básicas o robustas para un entorno empresarial actual lleno de requerimientos y de alto consumo.', '', '2014-10-23', 'Intro'),
(3, '', 'Instalación', 1, 'La instalación de Calima Framework se debe hacer siguiendo la siguiente guía.', '<b>Instalación LocalHost:</b><br>\r\n\r\n1) Debes de tener un servidor apache 2.0+ corriendo en tu maquina local ( xampp - wampp )<br>\r\n2) Descargar la ultima versión de Calima-master.zip en https://github.com/webcol/Calima<br>\r\n3) Descomprimir y llevar el esqueleto dentro de una carpeta (calima) en su directorio root del servidor (htdocs)<br>\r\n4) abre un navegador web y escribe http://localhost/calima/<br><br>\r\n\r\n<b>Instalación WebHost:</b><br>\r\n\r\n1) Debes de tener un servidor apache 2.0+ corriendo en tu servidor web ( Cpanel )<br>\r\n2) Descargar la ultima versión de Calima-master.zip en https://github.com/webcol/Calima<br>\r\n3) Descomprimir y sube el esqueleto a la carpeta raiz (public_html) usando FTP <br>\r\n4) abre un navegador web y escribe http://misitio.com/<br>', '', '2014-10-24', 'Guia de uso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `descripcion`) VALUES
(1, 'home', 'La categoría Raíz de la aplicación y los artículos principales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(10) NOT NULL,
  `id_blog` int(10) NOT NULL,
  `fecha` date NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comentario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `id_blog`, `fecha`, `nombre`, `email`, `comentario`) VALUES
(1, 1, '0000-00-00', 'Efrain', 'webmaster@webcol.net', 'Esta si es ahora la prueba'),
(2, 1, '0000-00-00', 'Efrain', 'webmaster@webcol.net', 'eerrrrrr'),
(3, 1, '0000-00-00', 'Efrain', 'webmaster@webcol.net', 'eerrrrrr'),
(4, 1, '0000-00-00', 'Efrain2', 'AgilPhp@gmail.com', 'sddgfsgsgsf'),
(5, 1, '0000-00-00', 'Juan Paz', 'efrasoft@outlook.com', 'ttttttttttttttttt');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `compra_id` int(11) NOT NULL,
  `codigo_usuario` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `producto_nombre` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`compra_id`, `codigo_usuario`, `producto_id`, `producto_nombre`, `precio`, `cantidad`, `total`) VALUES
(83, 1, 2, 'Mandarina', 700, 5, 3500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos_sistema`
--

CREATE TABLE `ingresos_sistema` (
  `codigo_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ingresos_sistema`
--

INSERT INTO `ingresos_sistema` (`codigo_usuario`) VALUES
(1),
(2),
(3),
(4),
(5),
(6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` int(5) NOT NULL,
  `menu` varchar(50) NOT NULL,
  `url` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nomina`
--

CREATE TABLE `nomina` (
  `nomina_id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `cedula` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nomina`
--

INSERT INTO `nomina` (`nomina_id`, `nombre`, `cedula`) VALUES
(1, 'david', '1061539548');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `id` int(5) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `cuerpo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`id`, `titulo`, `cuerpo`) VALUES
(355, 'YRTYRTY', 'admin'),
(9117, 'esto es un ejemplo', 'admin'),
(9869, 'esto es un ejemplo', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `producto_id` int(11) NOT NULL,
  `producto_nombre` varchar(50) NOT NULL,
  `producto_descripcion` varchar(500) NOT NULL,
  `producto_precio` float NOT NULL,
  `producto_marca` varchar(50) NOT NULL,
  `producto_cantidad` int(11) NOT NULL,
  `producto_estado` varchar(15) NOT NULL,
  `producto_foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`producto_id`, `producto_nombre`, `producto_descripcion`, `producto_precio`, `producto_marca`, `producto_cantidad`, `producto_estado`, `producto_foto`) VALUES
(1, 'Naranja', 'Fruta Dulce', 750, 'Tu naranja', 150, 'Activo', 'http://192.168.1.5/framework/plantilla/img/productos/naranja-peque.jpg'),
(2, 'Mandarina', 'Fruto del mandarino', 700, 'Tu mandarina', 500, 'Activo', 'http://192.168.1.5/framework//plantilla/img/productos/mandarina-peque.jpg'),
(3, 'Lulo', 'Naranjilla', 1500, 'Tu Lulo', 80, 'Activo', 'http://192.168.1.5/framework//plantilla/img/productos/lulo-peque.jpg'),
(4, 'Limon', 'Fruto del limon', 500, 'Tu limon', 150, 'Activo', 'http://192.168.1.5/framework//plantilla/img/productos/limon-peque.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesiones`
--

CREATE TABLE `sesiones` (
  `id` char(128) NOT NULL,
  `set_time` char(10) NOT NULL,
  `data` text NOT NULL,
  `session_key` char(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sesiones`
--

INSERT INTO `sesiones` (`id`, `set_time`, `data`, `session_key`) VALUES
('001e8g0sdnc4oce8p84g7vhjtsmnlt2rq88erpls1dsk3kmohga0g4tkv5n033k1hu8tcj4flov5fca87i9qnfvuqi67qgqsi1gajv3', '1558988031', '5bDFwmrAUAoYout+3CB5V4oBal3v71bpp0oiC06/dPs=', 'fd6e4a1108b4e5aae13e6a620a9550453119f44adf46aad77682b01fcc72bb8b448dae523d69cb1b525f1110bddfbc1eb16fa8d52a144a020bece1c25fa46465'),
('02fm0eb68jnnmskl0q20m6taufi6s3clhe9na7jrljf42ei14ra7b14e2kba901tflr57p4oqk20vhin02p2rmb6tjdfs3l1g0pkbs3', '1558990652', 'qqLeG1bsCCJ1r1p+8uIne2Nf5SVKf9bucXM1DX2o3AE=', 'c16b2994f2a3e188f487c7bcc821ec7f7d1ab5f98e9f1881fbf0dd03148d8abad360ec6cc3731f6295f2eea70cf0732115c66d7ece15580cacb5144aea539e18'),
('02qishcppo473ocp7h05r280nsni93u6o5e320252puin9hurp03bcrgpccbmgp1hs2t0g0l07mp76rqca0s8m2lccbe45qo1un7oh1', '1558991599', '6Svyxtqxdrqi+K+tgxOBBujhBbkUxZLSVIeX2uzSJKE=', 'f20a9fbc92373cef08243d721e585ef765ebba888ef7b13eb243e5497da93b87333e988ea172c53d9a5455a7cf6b6b8b07600f8e2e9976c271af43831a5878cd'),
('05hlpmevai893kjt2qhf7pkbd5313vdff02kespa3f363pqgbbreaop5sbtd7gvnugqt0g1fbcuvoufojmtfrtj3vaffd31grq0fm71', '1558992105', 'kdQkfvDO2bSiL2K8aO+I00vSF/nEBWm/UVgAAEzJV+I=', 'adec8f7c2dfb69570ed5ffd9d20b92648330e55caacbcab2ba471df7252d95ca6831b15489b8e10697b422a0ab36ac85ff08f66182c8e7f61974b13bd6e77a29'),
('09ch2cjfpnifa47nkjiq9n60lc4pj68m936pi60c1d459iqqpu04s3uhdp8q81lmh6nrcltbml6r7ls4pakqr0u1j4k68ng408h1jv0', '1558991123', 'TuySvQVa+dsnQLtQWddVAGU9b10M5zXhYzVzqr7aA80=', 'e7dada1d5a8e97a75702e640dc40a1bbe044b3d21e35f92b80d8b41c51359ec2a790159813cff6c6e54fb698323841c468eb6f910b34dbd8b5ba8a0844e7ef6d'),
('0g9m5oq51l7s9l13405pb3mrlgprpuabtm70851hvp8o7vhq0nqdp1bui19745qdm0n6ds4d3hgiv1p1ohfcceit57hbtfbd2kqneo3', '1558989020', '/gn12MA3jfZzBr+Wih7zVlEZ9mxQjge4ExIqIZE2JuU=', 'bf970212052085bcc121e937d6765b33634f9d60369f303417ff24f3d92ec6b3013511d805c5bec8c6b2e6fb0eca813cffaa60721db58d733ff94b2f2cd1ac93'),
('0j3113fo8mmiqeaeqaavr09040pm8e3ofigc08kmfplrvn29u6fcu1sc5rfrupd0qhg9scgvecms6ukg4bqpn6ota981h7i3ickbdk1', '1558988836', '349VFX82u3g3dfo8dReq0glUmAwbGEBlC/rPhhRsMQU=', '8a5958eff5b04e30c697617f0bc24c4b8f60640a8af7ee3297da447d4078a74ab28ee75ce2a06908e9cfcf53389edf3b9570662de24538d614d5cc41765bb77f'),
('0lld0bs6hmil8vkeso9mhon3m7rmaacvj8k7q5cdl8ud4lmkudkkm74sfi85ndviq1gnh5tbt8rmdkdfe14obp7ii6lei98ktpobkl0', '1558988028', 'pdWdkvoPc3MkSW9Wwfq/4Jdrz/FPFLeSkC2sU5K4VO8=', '3c3c3f68d1e511d8d9670ab2d4de1d81325d33a2494644fc93cffe92570b038ee3dcd7095c4aeec62870e185ca2ff803d9190a73696c4485a6fc90957ee76e2b'),
('0o7dfdnkc31b93st9hep9uoiv5psdi7afqmdaos8uag6250p60unn8r69oit5hsutobflukrqeqpfrd1f7cpriq7f1p33r63nduqtp1', '1558992214', 'W6SoKfRVgKwELMmBHUgqr5FQ/VDZFSvHxUPvg4gRaMI=', 'fdbfbce501a8f4fad47cb69006bba20b7cb46b192db3b76c0c5a94419a73dfaf5aff6bf355c3e041e42bf7d0f9164e21eb42d0c53820c4bd60bef5b8bc4b0ff1'),
('0prfthsd8l7sita8ifo4njrqbt3tnqsds9dv4qve6nhpvei362pn295nqcgb2aft5131ri64j6ujgr0422vjult4o6ob67u7est6p81', '1558987195', 'TwuPrwYn0MCuKhFMmHnxaJHoVBjP5PARieX4ThJrh9I=', 'c83d3dab3637a5ca969d1c8df7a024aaebb14c835e8d388ae9664073ab2f2f850450ed06ad7d0d70f50355b85b581538513db67c7d7957ca2257f11e64621401'),
('0udjoojli1gkoa531sohun1cgj3rpb8ncei4pjjnd0f4tuindcpdg8chjhs4jae1rba5bkdhduod2jivi31q1436101q3u6u5uccpd3', '1558991629', 'LOi33ihZax5cIwfjK21DdnZnidx171Ww3sb9Hu14YzE=', '8bcd46734df9db659fa3e017acfb82b8d9829dcad8aa855e8abedd5521b2cb1c790308d05c2c174e3a05335b35d0c64e7da044a4ab940d4fd84b804ad5216389'),
('12jug86soel9enaamkpsnvmqdljlreu81d3kfun5isiaqi6ni15l207qoovcsg8d83qc00ca57agvtis4orm79bilbt3bhgckhhm3c3', '1558991119', 'f7tOirnNwMPxN3i447hTyv45bXAGUDO9RpTC/yWXYWY=', '1fd8b690dca6eba576f1dece6db8d4ff664abe36fe2b86cb0bdf026d836d48031a7723e469b8a02eab6a87a6e72376931c1a67f4d9edab737c36f92337290577'),
('13mgv799gm6i3rco2sp6kbtu858ue37b4ke7lnhnhupndsdh80l5a73i7r2megg4l4klqf08ff402p3qtigrbpnufelefad00qfrms0', '1558990497', 'PnVzHHi4cNc+9qY3zDuLrcDVwQRu/Fj3ZHzhNfvMTIQ=', '93cc5196749acda68fa67c6d3bccd7eaac8e19ff6532f8362e2f6ef5b02088dedebbc9f70885ef630f9daffa0d7687f201abd8d9dbd7f8da40047a1e36871fc1'),
('1d51rbmh0jjcluh98csga9em768n832gtttadvs8ep178tup24crjodu1dlb3o0602iq18dn8sg7v1jdirrph16r28vcnb1qsbqs8t2', '1558992114', '+Jo34xcSduJCLwKaUWuErIcPhaCBeUopVNteHoK9vEg=', 'fe15d39bc7a3d6c13f8402a7b2df4f0082c0a185170f9dcd25726057a6464d4b7637079d1c370a3e77bb8c648e150feb3a59a1291127c0e6312fa00dce3ec3e6'),
('1er1cts9dr6f48d5op26vs8igmd4id5220iia429piakosk72f5ausdl4o9fullf1rv0g5nhgvh9tc3dotrckvs99rfim50rdqmo2u0', '1558991131', 'C6GbMkxdxzmakMnb9xC37dxPjQtBBY4VbwhSt4wbnVc=', '799cb5a0ef5a5a8132c82741caaad28744b3a6db5ecc1571172340e0439e6d9be4cc42d19f0e19e0b51706bb7db7696effcd9c7e7a825463b6d7aaf1b33e4c3b'),
('1g3a8p9aa3v4d1q33s1rvqrnhrtuvfo0g7gtk3ctrard0l6mt2l29v5itjvdnur35g0p47ioi1n7e4d2rkbqu7sp43atq8q4lv90842', '1558991130', 'qtxUcOj6lhPYefRZANREu9DFqkd+RTUa3WttrrWo1RM=', 'df21f7c32b921c40cbd702c591ed32635c36c1ab65ad90b673cd7a8262e8d24e700de5dd56f4e6a6955d709e37e96433bd679edebe29e39daa39a52677866fc6'),
('1s40u0csai23lpdrabirhk047bg1mcj9gklmjd93c5u8erla4ndp7jams2lrml6fgcl45f4lqkq3set21q4fou728h4p4afgci7tv80', '1558991118', 'WCbKKlTxwMsJPsGQ9COaviWeuoy2SQZ1umNtcA5DdFI=', 'bef586129f1346e5e19d0c592fe945929f3f9793af90faa185c56e6183b139f85fad492f42e7bfa24708345402850b3028002e03883a2864a53956b01c88304f'),
('246qq2vlin8hpp1sno30d059pnsq34eskuqgvalftrjj3r4cj187es4vejtbr1cs94lurqg10k5q4usi210jutctvl6c20n791f71n2', '1558991121', '/UhF5u6tX2NPpVHEt0WaHQrFbQYwzGWaHxU9iKQVLfU=', '6ed9fad33a2bc175d78ecf7b6deff32847d1291ac9ab7d4a00b9c63835e7ab6adac3bb5dca814531d7635b5c063146430bea13e0f682abfd7a277e5d812df44a'),
('2amsp7vsv7vphkcc86t83vvralnc6ttestnr2jer0bdn3kppd44odrv2d3r1ismfrcidr52hm0oqapkppchf1p1phgnaempj5td90n2', '1558991131', 'LE15d1Ev8SLxFcyLuueW/Xgqnyyz51ls/7IHXRAlxO4=', 'ff2c0d82093442f61c51d49b0f2eb6592de7968788f9a6399043560d65847e896d9557ed907b8a789a899301ec169f07d96acdb1177afa77d0b5840f7128ee75'),
('2nj4fic2chil5u53g32u3hmmql44hmh53uaon23bq6k06v0bvduq695404c60ctjvkqfabjtqnc8aecdcmckrg32afq2bfcasf4c8m1', '1558991468', 'kMQckV7fpBmtw/nrukdjk5hIt/Oi4jGJTqspXSvnJOA=', 'e8f252cdace0535cb02682232ed3caad4e2e8826ca07706c125d55f6703650f482ebb78d08a315a20c2fe2259a7f2332ae2cb43bf41d47c20fd9fefb4e002db5'),
('2uak95le7qm07f1l24j4aqu58tsap4mvc644so228utgrucvciksvpm7dgbm3p37lckddml2eucmo6re5vlgoel7ha80bijmfb00nv2', '1558988067', '0f9MQHFJUusI+ppKvvpm6MsgVs3UTHkOrMifA521ezA=', '5ae1eac08d22a6d3730608bb6b9a48b5605d51cafadf9be525b9e3c77409c917683a7aede8922eb9e9783f4e882492a074fc8c69511f27795539d3096bde6787'),
('38ellfbqmevkk6ibvgipri3nbtnc40d6cqh1c2h8c5gp27jtnust9k357323d3e3a28atf42tuops20ld6b86dbvnhvp59mce46tsk1', '1558988027', 'IlPH5mByzCUeAgmfukuwj/tVWqz7KJSRxtgqHzcus4I=', '04663f78520a19b016f464c68591ab450c1dc1c6fc0b6eb0d0bf89d479ec4dbf245ddb2503962fed87ad819117ecea05b608d3fdb07e6048cd5bcac523e3209c'),
('3cf067mh573o5ev4b4v5djnagn9h0nts0jguc2sljjt0ei941lh8nqb3vgl08dsuj1ds1870frnf2737oe364ug26rlrs46t3tlbff1', '1558991449', '0ctDw32hDwOu9789SL9isBrgwXBPaYjDGXAjaHsuTJo=', '92f1df641f3446ae503062d6f4f4ae394a85fc0dd2b0aee3784bc92beeaf89fa63a3762d28e266a38bc0661f6b01f002e8b6f207204619e4663fcd80d2a21e52'),
('3j83bk8oji4blsvfdcu3f5a69qcmugiil400pjaamm4pegfmn8upg2rjo5t0g1bs341p1bftpf5ejru4ul9qm3kr6f8t5oqemo81qt0', '1558988015', 'nFQnO7Pc7Nye9TmGnPD6fRae+t4ODojqy2rTMPkbYkU=', 'afcc14b519862e0debccdd7f8caaf2be4702e3af4eb54c94a49970da79416427683c53d28d8c1e0732bd45847e7ba3f429668341c62f2c9c2c40ccd2b41838f7'),
('4605ulul7d569j9s0d3krvavgsve83d5q8sa2rt3j0oq0c6jumtlpcttmohsh9rc2lt5ap7p8spjhnqpdafn0bab95hdf4iee00pag1', '1558987200', 'T4r/jY1H7u39Q+d8OwpJ4Mc6QPC/TXPsyMBIPt6eFsU=', '38325e0efcc3049a70042e6d288b6212e0a3dd1da33cf3cef7def5141cd96f2c732dca66350bde66e023076ef3a505819f747c3de5ba3dfc0f76f5b0b5d1a652'),
('49dv9bfo7srcmg96tr25basniqcaubfe5k886752856parvhsnsshohmu0kluj0h9idbcioqqc1q1grj37pulsb2b5qn7e67btgied1', '1558991282', 'qDOyX1M9TfkySOSrRsHHyDtXhA4/0WvBAhcljHKLIaE=', 'e4448a17683a8ee573ea5fea950157500859de05febc43eeb1ce1e95e04c8ee9256072f89cae69e976adb18b01b7817f0d43cf853e1c9c52550fdac72311fa66'),
('4jl92rpu2npn4qeqmqk664l6mua916tm9l0q7dsm5es1suon6i2tk4shpf7egvvec15o85snn42qba55kttuvgugu8au9h1j5fbfl22', '1558990349', 'YXp4GcCNWx0sibPvL25iti0tOuAVwOO8O+qv9ux/WjE=', '81e82fce4de003b9f050e802122fb892f3908be6bc934ab446a2773b92a69253e381411f5455ad9c565da36b69ac6636781a3fb7f11af01c93ed6ee88a593b31'),
('4rqsovi43ocfg409vneous7rabt87l31m2g1e65tdmngg79b98ae26c8t5gj84u34uo4tr5jljd8ckj23sa4haujscdkflm44gtaek3', '1558986789', 'ZndffAH7J7TQFLYwnUbWNUDbQqLToCi4FksYDLl/mbA=', 'a58fde9103c8e0a72b6251562aec474d4ee57bb42e35ff608cae1e55ec344010c17bc3e5748d721b5113bdc20b53d8b25066ff1c2c83d0f5311a2ac84d05803a'),
('4rsttooi828s5gr0ln0iaalhvf5l8r4lcj5tsi0um50b8drvgdu8unm8d5dpe42o21l8b2omjf8fqbj6gakrp9vmjgm801o1f6rpjf1', '1558990700', 'IeYCrBGdEYKN6KcXTDNNYm+pQc25rnvCzj1vnfVgGCM=', 'db03ea350b803653a5a7c8c2552a9b13ef5eb9ae73a1422a1e40d2f84c4f7a3d7de89e152f05f867e6a445727130f13ab7085e882d010d0cdc68ed2ed536ab7a'),
('5d7vv4fq5juohbov90comsqkntss2kcv0pnbr2og0n3fhk0icnrvk57v492urg8g9hije72vs0ank9houajcttdk6q21hk5a17mkm40', '1558997377', 'rK5u0JOtUZIlE+SAgdEKRtUF2bA8kFK1iGma4NhnEXM=', '1c075a1ad39aae8b673f4f17dd23d368b66952bb14d6c3d8891502dfdcc09fa0022ba0b96760f0d25fa35c5a83c7ba6c673fa1a4c358e1f92f4d785ad1d46140'),
('5qcjn369al3jj8q2vh17fugtsnjapon3ijuu8cg6eijt2m2u5lgobc0k7j7s89hl18ec1fn763cptaj07gclg560adrfhm6cn5tqeg1', '1558991122', 'kB4ndDbq+FVEe0XMrOpy4dsirg53bMjiv8Lg83YW4JY=', '475290e1e525055ff57e21c47f43612c31e1aecfd353927f9913a01c7ea93c2704425e728944009fed80d01c5a5fa26b164e9ba70947e3ab4f26158bcd8f4ab6'),
('5ut48d5gcip7p64234lad3ks7s6evgr4junu1d2isfmv6okkak20pud8qfkg9lhq6cov63ju1gtn6kvcs3dgl8i2jeh7df96ar0fk10', '1558989008', 'yGuL7XHImDrpLcBmBoZY1fsUWB9jmFwUqk4Cke/F4ZE=', '33b6056d5f096c2805bd7f0c6325025be214f3e37ebafc8437ffebf005301ca75ea7107a88df6eeacf5e52f7b4e02a8f8fe7238fc451382252370772632ded67'),
('62ndk1d5n4b19i5913jamr6q4jgq0s97sk11mgikb14f4fbb2igv4avi4imc346ssknm3eboc5a0fdnvu0f7iva80p7esd2drftpgc2', '1558990453', 'oRAS6FiOmdaPsYyWn6YoAF/V2g466fx3L+Pgp8dlL+A=', '27488c2ac55680ee9d566fd3a8152d26ba8527893ada65de1a64101b76b72d5aeb0f52c63cea4c42cbb7e582827730862b03916f381f4674d2313272da1d80e3'),
('631e27qagb3j6qfkuhgi9b2othja0gorptphcjskcjkdl6ejquqll2odqm9vm2bf1843hjjtv581pt86jlc8lg11vfj972n7fd2h991', '1558997318', 'o/0P9wiNOcLJvLbm8b1MO1eylOC98iri0hhKAy+IwLk=', '3d057800df1acb72de25e91de3d2c3f9d1d9ffd5470406bfa2608af85168862029a67e83b7d116c870b25222313bb008509f24a44d6e8046e0bc0fe8b7eb279f'),
('6ipilktv452lni0lvmsvjaqilb3gvg4sg49ea2pdva4s8fo5qoesi2qp2d1i2c9llk1ifaulng8rucf5cfepivbg20lcjg670geuv20', '1558991118', 'mJqqu5TGx6srUqsHLkgnwwymWRdrojG3cJPMc0qWsYM=', '5cd4c720d8dcdad0345df760a70fc5e72146c05d2d1ce7fe102ffa8fef410f2c4cf6f68bdf57cb536a1eaeb04b25122d54d912f8c20bc37b1020a83997a5edb0'),
('6oopati084q81u8e40d6la8fqonqjilbsn95l844s2102rhcpahqiv8bbaf1qnv7otscmtn16nnqslhgaec8oh49n0to3a7gd57i5g0', '1558990612', '9ABs+q+X9lEdeFxb6tonW1rFvHQ59gFRg9aXerImHVs=', 'cd134798aad961619f36a673df5f1c3d50d0fd91ca8cfacb5588001bda4c114a78fd9d7f0e211317dab919379cdb50f59b3086aef35c48cc4b81c622c1e181c1'),
('6q9lcnjdovjsm6ngoek2pnm03l1hcnk0441ou5idint3mb0pb2c49btan9ldnpn2cp8skgqnt0pkrlam9akcd0t3hk34hit6a6k0753', '1558990485', 'o0VVV9zRQaO6y80YU+GjIA2LTt6o4JrXWnXl45RzVGw=', 'fc0ac462822bf5462d9f20d313a86f8b8c3946f2fd73ea2a092aed36db06f5d6601bbbcbfca599637b702cf301e86f112cc57bddc22359af3d9c8a28a35bd03a'),
('7at3er4qrtl8h9rplcrrji0ntl5qlkifckmi4i8s5g97b9k7m0u2ttkls48bob6u0id3rqncaq15f5rt6rutadjoa865ii6uqp14ut1', '1558997397', 'VWkSYPdFGYvndcfiQ3FUCHFPELXarlwW1EmKturKE4s=', '0814e0cbb71b1ab8f5236058213db7befcbbae2e7c823b7e772db165d50f0fe90b98f465c2ff3ddcb767a528b7ea4f2c9a7bb77ca9c386fdfc10d2f7d7a95cd2'),
('7bcp3oto3res3jm98s4qena23d41j06vquav2830197pq16itiiuishcoqnv3u7q0t2bhk2jaemjmuq3k3cr31lknc7s7qeu0lllu13', '1558990450', '5GXrlFr4ec11H3wSazpg+MBgmL7cyvtpIWkDPaoshlQ=', 'dd6473912919f0814cf4d814780780127233f26b9de958d3192f5d72c60af10a42151d2d932d2b374c64f8e6dd71ef532fd3f990f26fdccb24562ae94ce605f9'),
('7e896ktc86dpqelr18k01k6sm40vm7kl5bu7s17khe8a1ualma874jg745uidc6lev8e92hmpdqm74juoeqhi8q44pjmq13si735ik2', '1558990932', 'RhE3hMHZOyCXOqr818TWb/NTf928bpgl4ypcc64py+g=', '8bb8a8e60f245995d6a38e41eee3f8c18aac781f37dae7b0d0602dc77c4dbf2c87a1b96dbb32e72d6f468747af796eb595a7e1658eb784f990ae894b9b4d5f71'),
('7el255l7fenougan9l0ofo606f8c6osavmgr9mjdrlle409tep3msv3tagbgekhhhkokpiq81u16ietl0r2njrib2ngul9t5q6n45c3', '1558989015', 'szW5GHhUbJZS1drE9YjXHQY41A/ynGcu9gcFx2LonvM=', '2226885ff4de39f68111c953daea91199c3648d47ce4efef5373e677407f648d9110ec2b340d6edf2094637e7b82029808a46ac1036afe86cb53fc25e1f3a948'),
('7gon5kbit49dv4lpdkp7q81tqq1tn85ffoor2oi4v4jsio3na83fko3fg3ukugpnugokm1oi1ub83ds8emrerrdnc6ilo6pmbm7s293', '1558989039', '2GH+bYjCl1el4W3TJYWUWa6zFRtUHt2w4JzFX8wLab4=', '7954dfca61450a7df6da48c61784dcd20f068d95dcbc59a01bdfad09d94d1d568d947b4de92838e1c2aae38a42b2fadf87e7aa8f10ac86af2625956697d1ddac'),
('7gr9dinho1jnhsn1v6rlt5aj0u9rm4kg5ve2d123036mrm621rtl0vvss0ul0gcsrc2loq9gaeahfvds71uncc3o0em28rvju2p3940', '1558991122', 'TnvyQqeFgjjcsKkl77+RAIaAGSDi/A+hI532flojrTQ=', '853eb957e496f60ad1665a7d337a13b2cc195479c6fb3ea624e70b6defc3dad0ea10ade686a8f6f860caa48fa01d6d21114ad26977b0c0cfd63e7dd3101432ac'),
('7i1tf4td7o3jiu9jeogdcjep3jd0ni7kmk10c9dq5jfi2f41lkql7epv9mtbvf9fe2ibv7gjf6ia4gqe963s7h1r2s8mpo1pmktbjf0', '1558991119', '41Gk+JdYEUZGN0A3wctSC5+wBWMIeYW/SI32wKIEkgA=', 'cde9b0cadea58d44a927f351fcabec87c944613d30dcf0c85494133ba2825922bb8ace2cc0d0c20d39464f58efd33b572889530abcdc4b026fb0d5b6cb05e348'),
('7ivburudq4bs2d9tfqnmmj6al92le3ofggm8f2d9nhqemnict6d19ga9f9ct8oeqrivs6cs99rh0vu0t32jujkqr7ok6vd4f705g7c1', '1558991551', 'jp6U49XBtLMLd+9LynQxQd7njR5hvHt5weAwqUSlRZQ=', 'e02d96d732a89fa65a3c272e1111b3c4110b7ad8cba131e1f1946fa98df86bb6063fde24b119b9994534e2db130883ce991104cc4db69d0ce20c64798508c36d'),
('7k64dndvqb5qk109i91936udbeak50arja8au3h2kplqeo859g8f6ne2kko6sfusjh4duta6h4dv89mq4p0lu0ajr2o317k4ti6tnd0', '1558988014', 'unMeBj7uXaC93bahsu6/rAzwRaNWE0jPe2SrYyyxh/Y=', 'a431d311ff5d4f3b6cccd8d471278189a0af4750a3e30d42ee11c4e4039d9fa87d021f4e399de87b221220419243544fa4a1ad10b7402550d098fb72aa48af09'),
('7kga0tdtvri14bej6c98m079bkl9vvrto6slfrbrlib0shbsn62avgs0lv6ret3e8kocagqa39qlubrv64nh2m3dqhem3l50ids0co2', '1558991124', 'jUoyM947NFrpurA4kohLwRCnEL6BWP0P3U33GlAOqGo=', '9d624040226737bc5715833115b44b5e17ced2fb421d810a7efae22d6ca799809fc11a925d3ec1bd8a0000c94456279af8b694f200c67c0234c57c5f5a8a578a'),
('7l7f2gockjpu38ipepqfltva9fus6100f6g9qiabf3of1u2g6dbt3palu7qm25dr59q7g68r1t373l1vfgiahavk5unjcqjhp4a52d3', '1558991124', 'O6uc8OYgFiSwDZIDf6Iav0o/vZNxkU4QN5ICvNq0CCg=', 'c010bead0fdaa84064eb92d703ba1ffc3da8df466a07634131902d96b7555198a96254c429e858afe884368708d5a9fcbe54f46d6eaabaa2533cfd3ca6dd20db'),
('7qf61glufb1grld0b0m4b12mfh69ppnake5oi3rq0e3jstb1gr5jm618nq72629mqeb206s4og9p67323hi8f9laka9l59374phpdc1', '1558987297', 'jCM7YhVirIvObAitSvdOM9njMjmxviXZI50+5KDCDTo=', '7f68047fab63f1d4864c8dd6698868a30bf9595859d928ac9ce6a5c82417896d822c088f9f946b8a8462e91d7676578a9691e3c50a172c6715fc87f5e7dcba79'),
('7rndd7vp4acjlv0ab8o2lh41odl2sfg4327ciejo8f5lj3gvll5ca250f2l1chjb2jpt6p0pqjdbhmde6pb5evnh0gbre3vi45etpi2', '1558991123', 'ch1rL296VjvuH+EU4V/XruTpZPS9qbdPswtPuvqFR08=', 'f29b18fe9e22a3b584136927f8278a82b2992c8e2ce98d78f929a585eebf9ca1a69aa30bf85e9c88960e94a78a2d6dbbdf6c9ab7089ed618c49f6a20ee6f1a19'),
('81as9gfnto0cp69ugqk6r987vbmambgm8p30v43mjsgitifuc2cngrgp7mno3rns64iiqlqou73k4oko1264kmoivslk8ehmk83g6s1', '1558989127', 'UP0Vb/mDRIncQufEYzV6SyENBb1fsmUnnDzG5IUzqwU=', 'f665549e125b3d62a202edc9c25f317206b14bfc04f3e27977be297814c93c1196a2a6748aa2c686da8399ada3eeda653ae0a40f174495bf12991c8c2273e7b7'),
('8267mbupt5mp0s1u35hns1i9sdt99ldohs7u2q1au71ofij9u8a05i3u7tsdt3ugrqetc7lroc1l736upghcqt47dueo8fpchhq1822', '1558989831', 'Sl1DXSdRXdySZGdY1ql7ODNGSIBHgjQHoae+Fv/eQLI=', 'aafbd40987963c3d1210caa0ab2c940f4d6991cd5907b49d96418031a00c3d01d4d1bcb489368b6f5ad6e4dac646ec21753ac81480dc8aec8256db5a5d7b328d'),
('859ovej1t5ld632698427h3uet25t7pnsatuj59v1bv1e90k7qj5td1k79k9o088enn0f4v4c4rp2li922npb618ou55fql889aih03', '1558988897', 'AjDHtG4Wj2s/jaVk+LI+otJxzb+bFCYX+lTWxcgl9B0=', '133974ecb8641070d00fa9e0a70ef95c721624aa4ff4f85e495eaaadf25c7bda9718817dc0fecf65f59a0fd49f0b792235132017b07a4b64b4da7a329a62f4c9'),
('86f1ic80mbu7c6kei7rq09ejv8dii1u9kr2ncigcflrj1o0tctn4p4nng5def3485agc2gnrplbais6vvgqq5kvaosdvc1jt5m005e0', '1558989046', 'Lr6Wde7V16eJXgGNgc9PRGW5tDRJLRakxoxpABffEz8=', 'b7f5567d1224cc5b64afe2b3ae2044b239d1bdfad2cf877ded6623bd34be37f8d23ba207f986c6207d417863941d96cf43f22f7600f48e2d698b0c495fb53bb0'),
('875p5u4r3ppr7opmqs6d3599forbaql85ak32h7ntp9s82uh19ss7fbptvdt2irrnfvs2ro07afom2avr8mjnqkjkkc7hmeke7pher3', '1558991580', '5K1tIBR00n+xrgshAYtbaMY9zyV3Z0w9ahLqjKaw64s=', '209bca58cfbfad210c9b013e063d94849c1e596c62f591dcd4dbedcc6f0c0b330907b64ea86921879265416006db6d982aa14df15377caa94fb76f5036d97a4b'),
('89k9gecva9pf94g40d2quid1ufjnarqah4gtbn6lq48vja07ig2fob8to6s5ovm9pvturdt7sptd959q19quslsr2qrr6pgpmda5qi3', '1558990719', '3/T4o5a9ogt+TKHVtya8PsBTkEZ6+OR2Wdlo4GwEFtg=', '96ee22e2bcfd08fb1ec5b431e76f77ad7da5e7f46cb27e6c0bef1dc140d27fb99ca617de6201417815c85cf3fa1f6862661384d18df896eac9a1eb1683a8ce71'),
('8c89j34mm3u7hie1k5r687n6c7akpjli88tmp0lgd06g8f0m8dlej8rn4h520qvbufrr5kvqsf0g5dks8hvjdt5o9cd13hl7iaeoca2', '1558991131', 'WyYnN/q4Grx+F/GKTR6xgPK2V/CvjM7TItMf3ppZalc=', '38362bd5d40374f24283cb19665e6f715709f52386cc0f5c32860674425463067fcbd382c2125857fae04deb54869994a0372f286d8dcebf2678cf11f2fb3460'),
('8fpptdbj8e93d22poqfvidmoongmtoj1e4k04s4bn3vggvc3lmglknp81dfnk81dd7eidfocrvpfp1pcn6njd04hpvujeldtl9q80v1', '1558991280', 'Xb3gkDYuoSNk7GHXVFoBvzjNvB2Wrjwzhdh39GI1Ejc=', '18acbdcacd7b60beef7f2f9d59b60612a54d71f4e8ffc3cbe2d8e3b4f32c33cb8c00a955cae9cc362d7146db23211ee01e26a8d3f12a1bb55808dae3280ed73d'),
('8i8o0tomlngl02l84n61u4sovi7vkdilpd8n25nj9mhu1a0gd2lqjg73kmqbvhrab7mumgpbm1ucirhhj80gmu1nodkee73cniocf60', '1558991412', 'qVCrXpI+4GIzimFYRjkhym0s6aa40ewGzyJyk6Rlc0E=', '4ee7474849cabb8d14c36c30e5f9333466bf88d1828816c8a755d5480ac70bfc9a0da8aa68225f08cb098b84a730c4729bfc82bd5c333e8ef88c2ed6d258cc11'),
('904nm27r3ssqohd77b4eek5692vgv665vj4f3vkdj8d80fh63sent38l3128n190rt6b0ldldcrpquk1rgmef7l1b4gj7s0qnm4iv90', '1558988029', 'w07SI7aGp9R2lKG6BPY41DzHcu5yitCiHDZio5xb+DU=', '6508e205253fc26fddd5eca5d3d15ade264a92e5b3e5f3d90f73ffc434db7e1f595e936da2d1b4a403e7c1d21e0691a66acec1e587e2c71e0faa6226d3349ba9'),
('907tvk0udi5s9dada76v2nek95v2dai99k89vigrvnsb6e8e5fndveudvliaspu4b4349mp0lffd6gci4o434sh1sh8ham54k28kdq3', '1558988028', 'gV2reUlHzqGXC1O5MDg5vF649hNOFJhBpKmp2g2nVe4=', '8a06c23861d13b7ed9c4b49fe0c9bf3443b678ef1839b26e8899f8955a5d98140876c380479a29f26b8a5b66e4d5c346ce4796af909b5953117dddb5c4ea4e45'),
('90rdj1521848bpd00si6lf6re6k6ontt1ghuf3a4qvh3bas51bgcm3ded1h1of2iciuofaapmnlvph57j3s79pifnrvdrrnj9f5lhf2', '1558988018', '2k0QR0/Iv521fkrCku7Rq+UmhYv8wRaXnGKb2ciFwyo=', '8ce613ce72a770c6ada6731bafc8eeea22c10f53a48a3f2be129b813824e77f6f15a3fa82262bf379d66cd475a55987e4121935ff82599813ba1cecbed189ef6'),
('91qi7jtted5nvc7h1se50cbc78fgbk3ougnc2gi61nij0jlbd7pbh0kg365ogf495bopp5boir2j1261bbktcfl2agrv3r657bigu73', '1558991122', 'exGprw+EuGT7qYNH38nwhbkQynVUv0MplwPindEtHR8=', '617f5a9ffbc5227a93be36139587d4bc0765f6796528a11bbf063f4ea2c0d23f2ebc4674538acdc50fdab4a256886bc85285d02f5745d1bd70f97b609f66a1ff'),
('949be91le07plh4rn16r22glsjc5gfk0586bs6oflsae95g7dvuvnvnr8s9jhbamtu9brpfe3uvb8i8rui10qmmcmp5lr6imnvl4hd3', '1558991119', 'JWwuhl4mBfy6ZamnWEtylZZzP1hgyLAGhAIbhhNEbsk=', 'ae449c3ada1b4fb7542c4b073efa4ca870082b5ccd71812985046e31f852c0af8c3df59d01f8c15340176b1da7722f631851673ce8d104801d58bdd7413a69c1'),
('996g8n3v19j7ulvpp57664e1fpno2q8rofbrjrrleivgcqm8b5tpce3le5ggi401jrjrfkhhidcg6569mjvsckmgff9ctgjnkunfoi2', '1558989684', 'AbLUMLDhLtZw1KafaIxi9HRQIcwq9gsL7LiAhNeCdXk=', 'b1f007d87012d900de8feae1dc5806280dbc110f9618a9fd8242e4951ac4644992e86f579d5a9c2306a78038228fb5502c33fe9fb6587e22f5ac1cb0caef82e9'),
('9mbbc9l1olv60alp8mkjbnlso8v7270gen4d4cg62osj2ubano0cjtbapon3p12litqr55b795mmaif0vfp3so7b6iduspflgeuj532', '1558988029', 'MTufNLwZ5hGBq1RXYtVIClGV9dw9Mx9BwaKXuh7AVqU=', '98161d4abc018ebf2ddec293779481524a5895b8985fadcb2af4057602c29cf4d49ffbc38a55c15d384202d73a055f97a090aaad253868a44e23a4c46fe2d2bb'),
('9med05n7c2k3fvf55788eqeb77nlkkrffpmkb62s8dlo8up8ickdca9d3f8b42rvjtlh2t4764p08293ll5jdcq4bq9bam8a5r4i430', '1558989201', 'q9NqTPMNgZwhCZF50vqSBMbOuk1AhMrTZR6xzQ95b9E=', 'aa663125076d3459c6f00b730aa9c69ac402f965895b7def349f75ae4bd3f3f377dad3950bea94b1b28a1cc750d90161d32125c5aea9dd0a0ba9b01589476519'),
('9p92acquelulfnar8qaqn69182kvb4pdqpetr6tf9cj605hl4aivqchck735jk33g4filoj92ilr68habft2uctgpljck25m6ca4tq3', '1558986728', 'qu6Gyi0+QGcNm68J+pDOWclKWDMfA2Kl10MqDznXo3Q=', '2dd58d423b14fa00d29b808ecfe12991afd1b92de29b58fc2bf483eb5ed956c453b3394d803d4f5c1b5dcf3f71e785a09d6a10c30932aea0adf263179a3e36ac'),
('9sgbvpt9o8bbc3k16togahd0oakjoa65vqvent251as4sl92hp78b89ecl1nuos8f9bnica09jq86qeuko22u5b3i6rmajpmmkevhu0', '1558991131', 'efcf427fxdtd7e50Ai6E4zBeNE70FBWotZd1qEMXXJg=', '0c8a6027deff2150d631fc287d7e9d5f29c3ca0f53f36fac07f29156242918cce712539b98983d15bf47f0ac22830595e29484eea3ed70ff65904b0778aaf7c8'),
('9tn0iuf2se40in73rsoa6fffd8ee6jtkeoo6soq9mrv8sdhv7i60343dplld9ee7u223vucjcu9adsbgj85o580pahkug1separie42', '1558991130', 'Gg2158K0gqfpMlpKNX+hq3bBznG8xy4M1lI0Wc4W1P4=', '54fe9b70426d4835003eed2ba9d8e5ad31b43835a468824781f62ed9d5929883ee935119dfa267760af5183a6d6e41f8b059b29fb16d673087f5e318d5a00f05'),
('a4sbc8vpmlcl4097nei8iivu5ir5kv3i55qi4v1m0aktpcpe1hbvgb86iohqm0bac6s9bfrubi1mk78r9dgnmntjhe9jf803imm2at1', '1558989926', 'VHKhN3NMVLlFCWzTQY3WtagrULz6kt5nhk57FDyC5/E=', '25a64108572a5de19aea3eeba644763e1d1e3104b280882a5b1287dae0f0da70c99378735fd71f16ceba996be1ec2301806b44d6112fb734f91f9142ebffae96'),
('a5emi3ibffgvk4n88dgi7o41e41gfaqiami46jbv45vufm5ful3pprvdvdtfcm3ic78842i0h17r9gihchu3impcf40q0fq7b0tf6u1', '1558987207', 'UlNz5x+P56mbubdV+17V4xR38kXTQ1IOghY0zR/FKr0=', '5008b3a024d03096dfcba013cdab4678a7c3ea45a3f0efc2621f764d620188f761f957edbdb4a11e76898e4bd264e9113b700075634f37838e60d963b6e6da44'),
('a6m3pe4i9ie90l0rk2uv57b0k1br5012suuojbsnda9khhru27hmh31rsnvu2jfle95ieuqm96i1q172h374tdu5unnifiihdesa4i0', '1558991120', 'qev+ZykTEtLp7iNPtmOp+xZ8cCWFaLICyfnEJd3AaVM=', 'ab2238bfdb4a5e28f0a80f1285bd97dc21973ce762489783178181d45159fb2696a3f0152d1eab949c3c04b067277ede66b79165a151fd8343a30d53fdd92d5a'),
('ap9rpsd9ug9htu4kref56gracndh6bg1pqnbmihv2qkrlh17qri83kh1h7t72fum7676us9qdmuvnj25odr74bp535svkbtcstsnr62', '1558990605', 'nnNEYZQeNs3hD1/rdv1jW7TgBnOX2AiBhPF35xNP+iU=', '922055278a32e23c2509d5013a525a80533c296ee26fe3399310991f778f295edce54c864574a9a26b233e1d6eb29042e1e22accc4599afefbc3fe0862c3a89a'),
('b00tj1h54pbcarjuqcj3tnarjmea39nugu6vi9varag5h412f63dqhbgbgbrsloeeuo3t9fq749eddb2vm8rqalghqf82gahot2b0q1', '1558991063', 'AEhkiQKJ9ntTMPG/KQaatZ9ean4TqLNfbRtQQuI8cHc=', '408471bbaab3eb23420fb8c719db7e3d690aaa02ee5898542972da2dfb5d64452fb1b9edf76b1ca25e7c2c4f8e99586a82765768d200c01f31031e06ffebe7da'),
('b7plbha1jguc20i98sa34dvllebtusfhv66kp135lthnk2dpfgh830aikka3vhsbvqcigl303vgt0rfoq85rnj417hpqril53bm5s90', '1558997427', '0CnDT0qYaAIzSct6jCLhB0zYCgTosDwvFTR69KawSnU=', '357cb7901f6dd7eda46c1b4731496331dd259e2ad38ca0472d68c4badd6079473565e40794ecdbac5287510ecb9deb412d6a179af6f545864e20309fa7dc65ae'),
('b9rlig7j9uptvpicb11vjdpuhuh8k342ua02v2d2hm1e12543c3qgk0v0ugqp04ckbedae122bsv41m4os4i17nojdr7rnevk7er9c3', '1558991239', 'KY+HhG3XmKwZmZukNHS9xgF5G2adDfYaOqIwgujz1rs=', 'a18cf222031e1305f597ca45ab1d425858b1fd9348990903b1744f233c7babf2640270daf5a777eb8b3df76fb7e56782d09949c63c4ce346b4c4363f772395f4'),
('ba54k09qhs4331c4pc3a0dtoaj6ffgm00gn1hfbim3qlcr8uh2c72cdhkvdlo6n0eotajmuh4jnb336snmbqnjnn5fd6rt5f3blvlf3', '1558991131', 'S6tSp8ss+2zH+cOCYm1XmzEwWzdUAZtJxbpHqqruyic=', '5895acb22dca453fafd7e8616248f458080b17686aada43974cf2fb3dbdea82dc99945853b487a84b296fd3274ace60b474216f0501991c09c508a5879c48d94'),
('beffo632nkrtg10ftn9ecggur1c67sfu1els9k0hg2rsln4edgqr0sshrebllfnur4p8ornkp3qiu9ku3quprlr92r8h15ulo14g2v0', '1558989960', 'w/8LrrnSwHO8RjIEmoJTtKsaVyT7fQDYy9aa/KsaM04=', '62b1cf0b84eb9a7938ba6f014890eaf67bd9ac6a40f961d13e9296bcd7f636d1bf9938f3e1cf2a2187c538247e67d4024f0f34fa23849a1a332eaa6cc0aebd73'),
('bg332c2bsakmqfm9ogd74eq9755npsu1l1l5a98qtnmlll6hrcvq3d4jsnfus8li43mnjip8tbe666gsmt3sj3f9k201s5mtfjkrq63', '1558990482', 'CoqF3YPreFon7s2zSgNIUOj5La51ZbWBc1UCHfhtdxY=', 'b64f1d937627e250eb34973d0f873024f8a38557e02a7b40e425fd13075c4a12d33ca76795a19837dafbff44fd668940a3964c1357c4f1082a2f8fc4300525f3'),
('bmlphqkkr0hkqg9al356e2j63q7rpci9273k20634um7gf69f4u255n9h4hgqmt5gann12ba5g1ujrtp7ilkqe67jj6p3pemlkundv0', '1558990447', 'fnVr/icp5WXvGSP0RK5iLzgg8Bfayp6mE1JQBC0viqI=', 'a1c035ae0e76faaf9ad85b20efe14df705cd1106f73f9a770ffb9df8dd47c69ee3942d921039cd2caef25b8c8532411b19fb869d98fcb29f22b15793a1e786b7'),
('bql3j1pac8eh59qcs02ddm1id12nbooofu6cvpqsjd6isp5v9cbkkvf7sp6bqcg33ok1pokeceho3aekqaoaurflgfvfshf5mg95qt1', '1558988779', 'OdO20aqI+ufxDBlPPc4zNF50cMC2eNQLR7wzZJiyYZI=', '17cf9938f14d6897607184a1cb9cb80e41929f0dba64895a7582d762127347a4e5396633fceb59ad78306ad6f1911750a6f2f83f8a50742133cb18ab13e3293a'),
('c2liu7ppue0qkup3126ljg5hau8pmft09i0q1sbsc10fefsemthlbck0f66660clg452d4dl2rg7lgoghdq7mefkf4rq8l4trdcq6t2', '1558988649', 'Wc9eAYXs7Ix54zakLywGPhyHERnJlFMfQX4xOs4N9U4=', 'd845482e370b2ebbc84dd11fcc736393dcfafb1f52be0c70620488cd2ad88ce44129ffeb2356df94d64ec8cecac5948a0ddfad54a0bae34101a9eb3e986729ee'),
('c2pq5rdsfj79a58m5065nrhuiu9co40rpmj9v06i7n8m1bcfflb8hn9pp15816eak2pptp85htlhvhrtaeeur3g5l6anaf6mppbof81', '1558988076', '00pL57JplUaadd7pVBibnHl1h0pE/mERRrn5h0eeuGE=', 'd7506fb58d2f6fe282a5190998bf94cfc3cb7c77ef6a5702ca41204ab6057e7001d7a22241edff700a20086899590d72baa0d72c85fbbf8ee54a3e16a2310610'),
('c6ql4jg3dpo1j3tbkaq8nrhc9fodruscsfrfs50umao7o1v0avufhmd03f3sch4dt64j3hqq62j1ic7gfa1h7j3i3gfbtvlh21qtiq0', '1558990415', 'EF7MR1WQ1P+t4pwldCJObwGE3cikfKhDZFD2eepraYI=', 'c5f429167dd18cfb8ad28747eade72c5660c24acabbc6181aa3911bf087836d9c6cdbf5539345e28ac7d97449f57b82fd5bfff6b95c591bf7070827dbbc64785'),
('cf1r705d4kpro01hjkgpspl2aka0kjn7q27lhukpctqj5t19shjgcqorqqhsbd5t0au5mkruoanvhchartdj578eb5kbbdo9okdkc00', '1558990371', '8HxAdQV+0sQJfLw3KvLzBAIUXobHFmHvH39iAFr3uS0=', 'b0e8ac3f0d3553a7f25bd883b88f7315226f4ecfa8b06da7eae7a34399a373e5731f29ffa25cf342d3c8d940573edcefdf1cc4c642730064f89b234d39618b95'),
('ch169tehf1vtjh8qiibtiltd0m9j8dkg1h1re6dl2er1n3ldug3qoe0k1ocr88qhml5tagrgi4jmov845npeaotsulb0u6alrb5hdh2', '1558991128', '7tg3uel76nsQbum9lIxlFKh5E0IL7B7yuUdBlyYT9ec=', '76a8c088080761d045d17f4585724c594b510976a2100ede92f7a3f47b2fa51ec5a61969e16dd66c171d2a34cc689c8b383be4a3c27f69dfec1deeb9ed93adbb'),
('d68ljh6a0rfhkovcc8k6i05c9khd4fk7l5qsa1dpk193h5cbnekdi1o2bfl6hr4fhhblquu9kebp56u9q1edsomceq3p9d14fljhv80', '1558991123', 'qDoJVLtgaG6dP2Br8G/KRBsO+/wBb4Dt1Pw6ieaxp4A=', '0ceb25310bc437ee8271e8cf4f719f5197913c7eeeb1c3800710abc8143a6743e0d7297279f53c4f712a3c4007cca37c7ccbcdd7e4e808b7ab07af8305365a98'),
('d97olop9a4si6om2jpak9svbe9co02q1hvjvag3r6d3c171cr6k3atpce60o7k08sf28fua07m749hr1nunohfr0vhqt17jm0okdic1', '1558997419', 'I7vk0wmEu/xyRu7XrkOhddie1Av31LkCsJp3ACzx+bA=', '078d9f669e1e5779282bf4146dfb5b30333cc0254c150abdac40cd09117beacceb79b39b922968cb47e3037e9b1a39ee5fef75850f4b68c7d3057d0ee52f3996'),
('djvg4o3bjo997rbns35q18ds1vqarocqc2dbpg8hcdbo18pbjbmjm3irbauovma713r126m7of3r6cu1rttufm5f445eju13sdv86e1', '1558990637', '9BBXaUtWpu310C+QUYRIgSWcuiaGq21qBo3P44RgJ9w=', 'c3fba6f48247b87521fefe5c052cba29fdad36bce88318e50e30541c479e86e153571419bbb4e4d5ddcc83fdeb9578d11fc4cefe1fc0f1ebdf7e65c9fcb9b2ac'),
('e6oid48ls8pc2bkj66m4jb4mkiptfhr2eakk8mhcmb6r4v7ra51l2a6n9mk5963onuqbbej90vu1sh6ngj4urappdtpn89otd5tc9d3', '1558991120', 'OLktOi8FAxEkoZJW2O3VBeXYnvoi4jM/uwawxDc8zR4=', '38d60c787517cda8f7e098814b397fa302190706d9b005736dee0b6685a92a39fa022e9ac16b1acdd567ec1151363c26651bcf3f4c9e7c6be2ba6e02be13ee1a'),
('e7i8idbqargmekdmfo1jl61aq6d6ocirq4kk38j43o9cgv8pqqtg2ucas1s953f92ip74uha4rpb5h14i72j3gsunnpvjfod2ll1323', '1558991130', 'n73SNr521IHuBns6YwYhzgN39bTlLE5S9foBhuJ74AI=', '2fb03898480f07932cdaa44818394bdc701f4e626d1a8e870243515913855baaf2e1adb9f452c7be225be4a674f21ab520e9573ffccd0f939b7d81b6ccf4e04b'),
('eihhpne36g6gpkvielb55mfvtu36d8s2b0b2sn9r8h7v7f6v43mhloksfldj9s8l721fd77d2itm2pt8gd54iipcqprikfndrf9n1r0', '1558990674', 'fKDLyp+5DUK9DpjnDM8zijq8Bzwjq59JDitQfr2EkT8=', '6ad0e5e88cf8ea5998c5bc3014479098f57ae4a024752b5aebcdf2463863ecfd725d73955ef69ab5589e2d9cd460e97a92ec80ac40f3faf1d5538acfb5620025'),
('elkiqshvs16tuj0pskbfoifhu32kog594i296e236qhq2abcjc5a5h5vse94gksdlbjjk6007b1i5m5bgbeqb59rsn1g6t710dqjp73', '1558989470', 'bUlpG/EXFB/fZEzwqPXPou+HGv+F5gmUiEupoOxx618=', '4050c5f6eb9681dd57c8a72ec6851d7765dc8530780c193c496569198e305057ebdfe5962bc2ca5afd3f240b9e4c8e02f7dcbfcafb45af5dd6c60c6b52bcb212'),
('f6om05i2k0gqqmrggkpkdogcn2f0ete7v756sg44aqk5cmkigke5trlojvp0440lgkdcnaf12j0hmuij63tgqgbeme0cllk9prum091', '1558990871', 'FJbs+6a/xmCPjPMtF8EJnDoo2IeY6sPNnmaV3Aur0Xc=', '2c22b22ecc6eaf8c440dae02c973e3e553410a800500f85a568021697bc4340330e8faafd5b4dd4579067e855641dfb836bef5c77d4e4a8b09be95258aac4a4a'),
('faga3nmbk0n82vmbuq6mj4hjjjct8rmdsbqtk2b3h8adojlop51apf17tqd6o49qqheod32o3ajt9o5v04pkq5555onkf6566lg8h11', '1558990368', '0zfuIkMTb6UnVeIXRFC0dP8P0uzp/o5y2wTJtEankOE=', 'd96d737cd0ef97927c7ae96c30c17ebfaa716fe6c369773f2761509d0bad3f60e2c75967f96068af4931826a39a1bcfbaee19e129e6b7dc17ccb892dc4b79ba8'),
('fcc6isllq5f9e2i2nnvrenfmende5or5kgiqakebui8vqjg3ul86islbqlsq5b73e26agti166h4k61af85lr2hjrmf6c98tn2ml6o2', '1558989343', 'vu5OFT9zMKEkdkbveyoYrFTpXy6OCF2UGFftJd2bU2M=', '9f2a79729c247885136a14ddda51b9782c739917bd0bd2e54904e59bff7aa82a8e36f3769c57675ed499581ba8b9f8fe6ffab19487dbeb750f5ddf7d09f0e9ba'),
('ff3qcp7e9mqot3hd7pm1bv0f6s2rtrgrfd2dd23heka8fgn88ufpsa8k1di3hlh9tcj1ks0e28kmjdvgmoj0cor45af7ahmhnd0a2o1', '1558988015', 'CyD6EgGQt2FeKgEitqCXfrR8uwpNLIwn15aoMYqmYSM=', 'd0871904a3bdd72a9914d290e5b941f88737f95a049e28ba580d69365a8fada0a7f1fa7190d576d91aff30c25e18c6b751d43e09a9f22d5c76d3fc1d8629f58f'),
('fgvcsvrjm09ligaso38j8536e2meje97vtabs9f37kh1rj6jkdbujjndiibc2oe1j1nejgf8vrpar0vokmhrv12u31t5hfumojlorf1', '1558991130', 'xJjzRVzoLz3Qv5/6G0Q+CCoQeOp+ooqNSXn0Xl8NY/k=', '5fffe7768e10cad843bc9916432426bc8510607541e60a74ae70ff6bf66e31252081c166f4210f0cb99a580cbe6d641bdfb557a60a081b157e87dd711c1ada2a'),
('fh86d3fegl0l2mgjimvurfd0tqnfomv2eetvqeqtnpfhfhkvilndtm5sdlf17aie2gla1065n1ptv8m7higl40gnic20ho0vbr0ntr0', '1558988014', 'Nba+UMbeSmDtM+2i9EFs6poWy4aeZ+IbhS+19zZBdjw=', 'efbac74e72cb22c85ff82f55f2cef390bc73fabf99a956478258979f6639be86496bfb154747d4242bd5393e2806d61ffc44fa2879ad76962d8e875b404b4227'),
('fikl15rcnmiq1abgp4n0t5vm4rsm87an2hu1fpim5f8qtnqd97568ne51ienmu8fqrlqjqlt6drfua8tq34kr80senv8de2kla8ede1', '1558987351', 'Abx7PATR4YKNxmRDHHtG/lVwdaSJR4A7LefHp3Fv6sY=', '0a1625b006118df0f5cd7f600c27b03152a7d0bd2fa4cfb8f613c4fd36ed2bdcad6a2a89e4e396cef19c2e3efdd6634255cf63844590795278017ca4f66cb0a0'),
('fj968fni69pop83qjq7gc2q0146j1a1mtoe0lgj6a7ub8c2v1ef7f1l6ds7k0a1954l50sqr03htl0ss1v34hsojkdtonklcj2ctqa3', '1558991129', 'l0FC2fQ4bzrKFuVzjOr+jdRq0z3paQ8VL94n1yPO7Bg=', '6ead1400d57c2d2a730798f22ad5a1e63e6366276db3964895407239e0594002597574df9c7bacd499621b9813c45a9138416efde59f9a6276668673993adba4'),
('fon9mo2u81oaj0gnbkn8aoi78fl615e4mfsooo7lrd7jkprmq1ekg8k9rqt73kf8tka5b06a9qiaqju186cbpgfph8vm7ap66hhras3', '1558988867', 'v9tTAH1DgZZQnw8+kYAWiX+Q/ya8UvSJRCmVCpqI+xE=', '8e5a63339f7898e57b737616eaaeade0d96f1f3092543d4aef054515514bb30eaa26ef61ade43a0cd9b000de3ede273bdafa009453a5d59b8eb45068b25d2db6'),
('fqmjhdvkk7ale6uf46lmifirefa3jc26lov845g10tju6nv5csfn76om5u3hotef099rbidl2p7vus8p3tpt0e3ml6jn525s1k700d3', '1558990989', 'T/h69I64e/5HVfSGs6/NMLBV+wbdpruXHKBGygzl86k=', 'b080b55ef600ff01f8bd8e736f6e9802b6c5ab7da3d61f1d69b2eaa3340ea6493c75adab1506ff42d3429f1210f2b573de4b7741712ef09d1da578778ba2c315'),
('g8tadd6h1tvakct0uk45d5cbodo2t7bv4liu55ftdtt3ig8h1fa91vi53dqiklar7086o4mtrum3lchp983qn5b32j97af8m024act3', '1558990107', 'S8smLZBVPryq6ZVoli3ORtzjNIjQ5t3IhkF/gm6H0aw=', 'c5aa8acccff78eeede79232d348310ab319ee0a38c940dfc19f5c8424aad2f209848b6d8031e13d4c79d9b35d7c8426911f0bf2f926339afeacff142bad3dbe2'),
('ggaet47rcadpelbm2uvdtreqa3j8ocv7nc3srdl3hefhi5puno726jqi58cqmar7j9eim28q6lr2nljd67i5fh4lf739nnjomql5jc2', '1558989186', 'wxWCsyMzZZXcqcqlAEH9yDf6MW/pS5AaV/zaO+9bcNo=', '8b47ab6866dbaf4db59e2b9819c73dfca206baa04500d00327a5b161c0aaa36d1951d73d859a71f9cba2504e93757bf0d87e671f329f1a75a401cf6e293b291e'),
('hc9sgom2t61moel05f8cos7pf3ps3ig8ntecf56qfhpfkr5kijvgt7qcacqn0m9qfrj2dqg2sl02qd090ene5l7r9mnoqlolem0umc3', '1558991618', 'N2KiCE2nOOsiuYPl3lP9v1/1pGaXbOuefLsSOe6M3e0=', 'd4fd2c8daf83fef9ffc5122b4320f79b0160bc3c7774972f99894c7f2fa50c6789fd09c172a3ebd05fd55850d5adb4d31b087185ee9dda66c95431a8e585159a'),
('hhitdbidia8hg4b7hng7feilq9rlagoj672lu6k4joc1irh8kf61qe8auld1gu1h8n778716tke6beccp614p76p9vp540qk4pqnqq1', '1558991117', 'pq2TnNPRhnhD/Oz49V6FnFGR2G49MSRqKkBBzMDrd7U=', 'ae7a1ab1828046f69137bd115d7f5b81abfdb58152b780e7b202abe84450dfdf489a6d0b5b30f94313063d874467ec8b8ed5c9186a327f5929dcd08a180c02b1'),
('hksnk60uobtflkn7se56a59d7n7umt35l9384kh2f751a0bt9gevcl7insti42vf4j3pdp7gvcoh6jflekadkea3bb4clsgmrggpnv0', '1558997363', '5uhJz7urYlgHgEmVgLEP+v4oYw3niiG3wzrsNx4vHS4=', '7a46b500e9e55a2e4f5943cf36f03894738d0800e475891fb8a155e696555b89a00a3026663d7049c875db27b7d8850e72dd154130af6e52bd0f5c5f884370c7'),
('hl2l7oshmlad4ahgv3cmlrp36gs2ap1ddhdojg6iktnpaa6hf3soeb5n6j2i3it8g61l3npu8gudt054m6b7tih7liscv1a7a3avo93', '1558991123', 'LG/tuwQ54PHQ+0RGENsLI8cjl37pSzveghU81zKUYB8=', '98a8253c4bd8f0f441e0154ba429a1349b3300d0e12b9ef14951f518e87f15a7b22be2fb140a3bac6e57a57f1a739d2a419adfe5bb360e4aa8ed9d4053c3df5d'),
('huvkor0hekpvub1q2h035mdihcd4et1s8ao8e832de7sfqv1520uaf15it8r5ee5jq397b4gkjm70poqighgadektnketamh8h58hc1', '1558988019', 'W0gCTxeAFLTHcREE0FQHR9VEZOOBVA4OO9omOTZv1Qo=', '6d75df7816c98aa57e5f35379ab53dc1d6d2f16ba087e31d14e6265af8627bdf8137b2ead93a412202334367cb75540120953a22dea6bb021cdc65a6c92fd30c'),
('hvanc9s4qccoh3k3qrpku8ia8j138k5bte80r4tf5hck66iem4a9ijhufqpji8e6v2mvi41l6sj07boakq4b2hm89ijqtcmre1hedt1', '1558991128', 'sl1xB6ej3tGOP/GmENXss469ApOi1FjLmdRcVWoXZks=', '77d7ac6e1adc3e46e801367448712ed12bf52683c2439fcfe0453c00093b76688446ab01aafa74c44e4b270a1964e6cdafc3a6f8cb4ea95718b710d00ee5ac4a'),
('i0g8e2fmiutbnjem7e5gbr40m873bd7uabvgmjscptrra81doge22r1ute0jla611ie4ci6jic6mv7024mlhoue854cbm0gs380pbq3', '1558991123', 'Ywxz/zYjUtb7wd8sWiWvnBk8jbNzYxrThJaXn/wh8e4=', 'b946b1ca6cd01cb475b3888f75c0d517e020b899f8a2a646e14530d32fc804755c432d76044349ca7b4e3f135d9500e5e1c8f442cd648d48ffb0df1c51478331'),
('i2bf4u5v396qiphuslmma72ma3vku28jadhu4qt31b9dun3uqqvsktkv26uklsmnb2maa034hcnukrd8fabpgi29go5r4hlad7m4gb0', '1558988019', 'FhHx2H2su9UhH2ZE9SKGjfZKsdPkyWaFYxQWnf2w8F4=', '4df252cad731e4a3d19eb8c6dde03ede3553d1e387c675398ac513ab2b32fcd069064b5f2d77f6b2bfdf64581f50c41e59b9b2ad78b1d810c807d91adf805c86'),
('i2cds4j4g28omhs7puns4cqgnclh570uu1bv61l04nip1lk3mput5s6hc3ve2h9fjq5s3o6g14dt5ihmapisgrks8cn52mboeomsal1', '1558988732', 'TcoKLOnmXhb6jjI8sqVc+LFiKBpBq4TohD7rXLzDCHw=', '1c8071301ae35124f590d88c52ef0e6870fe103e839d857c585752fc5fdc9e851501641bc888bf6b95e125d545aad2220d4e657dca06f4060de9b62d2106dae0'),
('i6d7m5k2koqfed2ul3ou15qvqlue0sr10p2gs80vhicdsc142ofj5nh4vkk10l6s4lq8e81rcjphn0c87dq9q53toka064o8gk2jn82', '1558988610', 'puvmvQ92gQXogXRX2QdpT9cvDhorMP1bCIlCZfhYQd8=', 'dbb9e17e849368e3331dc71d22e70aa84212db159b90874fc2a3468c0e54b9a591f0403b69d59363c42e3bb571339ac3923509f8d7931ae7b355125f45ab4b0e'),
('ib9jto0trpn47gr4760nom4balnqbsmfoqjf0vjs3e47h2le26fgcfu1hkpo948iqh73ovqdfsjd8v2r9c1n2ddbln5h2l1b7v697b2', '1558992112', 'yHYD6ktlONX20JkhbNHB0TkWCqoMP5w2IuihIQBwdKw=', 'b732ae32722fa0b30c11f30b06793b7009ebd83ff572fb251a44253af513663e053904a08f02a2c399767ddcb1866cdee2cee3d72c4d82f216163697896f6581'),
('ic36kc580vu8pkcvc6oaq9iu54lm8599mv18s88nn2ilbva5vts2bs6rf0r634fe041s25kmapeln2ruu9l37u9489dfsukbf22s6b1', '1558991118', 'eDcpeWXuV+/zy8+RXPz0TRoj4JxHQjfok8kSUBuayrQ=', 'd4bf7647a349c23de75b0b79bc77614d9ba124f24c2708dbfce766c0e73a9392820b80a7a6bac0fc99ab5a2dfb430e0a4fa7ff207b86e3f546f263dc2c0829ef'),
('if15n2ibml319pda6e0rfts9ekd8rc9j1rvjoejaikmlf27p46mvift3g06fb1oftfd5gb2q9h7qoq7vmbfsam91qkottunf1t40r91', '1558991076', 'CRIFypT1yAoxstQQcwpKtVSLZXR4F+ACXsmUYrw6loE=', '2cdac506b5bc993d266411ec365a9397cb3d42e2d6824325058bf81247fd7b66ec9ef4859df5589d67806062dab811647057fa0ed102a1c800261eca1f2e76e3'),
('iid82d5lehj6k1a4c1smg03n69scgd8b5unl55b741ddm4hj936pdn9g1si117nj5er3695dga0rncrdqgjsop3jnk74ptj1g9bqje3', '1558986769', 'i9A1wXuvi1bMnnLP2HFqAAk3QbXYGAh4BW2Epjpnm6I=', '8659bc304d39d812c4a2ad62b52757f630afcf96e0eee9a232caeed4bd273476612efdc0371e4e9e141f18590b82ed355b4d04f56e70f261bcb5ea965fcf2171'),
('iklicmdnhjggm50i0lau3pa01cvv39pu528ck0oj0v6h9mm3fp5j09qd40ot4kllgejrrfpocei9feu434nf5rrk10v9tidlqillqv1', '1558988016', 'WK6ENI0yXRhmaOjZLtRagH2qjqgCnnd1NGtPG4xWcm4=', 'db9108c61f692a284d3e7447cc1636f57bf5895d37d29bd5ad910b239dde142f1492a7640e2f4eec5c306f179f960ac8ce54116cd0f7c38453dd298b0a45f9a6'),
('ikn8uter5kund9d4rl41jldi2c7jnhu9g7kh1q5r9hdsr5jf2d99jr25jmjr48gb8jj53s4tvckb18tc39043li5ov12rieqfdg1d11', '1558990416', '1u7jxKlxF2rwYnBEZZc6aOVj7FXFaPL8TDxONki4JmY=', '17e19e6df8ce109701f494eb4b22c33bf04ba4573916acfffea12f3b65aa53b4c5453edf6c75488ace2669d7976dd312df3274530da4e163302d6fea0e397c28'),
('inmae9b39ij1b2hh9ut91od5kb4vs8u52eqdgg1mc0hsqe87j4kj4rk35l6gi2r9d931fsnjqvr1n0j6p1u0a3konbc2k8cinb22s72', '1558990794', 'u9zlldkPg16Pc08Q4P3N6tceaiqo85iRDESX/IljCKM=', '4ba3bc291ed0ea9a05297860014fdda63c4a0205093d76627a83317d10f7d015fedb7ef225f014f8f29a90c5f7474ec1eca8c25c500b9419c8e28246bd6c4107'),
('j2edgfcrrg8ubcqo2a2obb808r8499iricmcl1pb1oqvk9mjr0tkrebc4egkd782hs7slas78a1o0tdqure86g8plbp6rvuib1on8j2', '1558991129', '2gtPenpyFyIN6xghJCTmZg2Uk4iNyTTy8mP1XQnH950=', 'd364609bb3ced3e23015c2cb2a76a3e6b5ca6f174ecec5a0f9456c68a2cb83f60ee70bd72a6961a2a65471fde406202e1c7760d0c9fb632c4e8d80595c527d3c'),
('j51pkldmv8g32dki83oh6i97m1vjkhcik86hbign78nbftfbshqvch4j97if0g3ivrij8ud926aeeab75s4kiu862otdqste1te0hh1', '1558988030', 'x2tQCC5K8aMQ4RVIMUMmaYU3Y7DgFVX42PslQh4nQYQ=', 'f33042d95304f72b5b44466e1a8ecbf18c1d0dd5a8e402f30795cf892a832c38b5bb98b65c1c90b3236c71c1516590aeea1c629f411de87587ad12d81141d0d3'),
('jbs1tio3s9ak57eqi5soa2d5480s3tdd5g396ai41a2fa2n6vrub4pgs5or5vpi3t0isju0geribg8aesacal8gdnu7ftojpqou47l3', '1558991118', 'zhlhJ5SNZyZJ8aaAYfn5aG/MDfu5zoa48jdduiLAScw=', '25231b384d105a900fdff9cdcd5a62652f5f31b547269e8e880e8b8bd7d5b586df0c8cd937042aa69a26bc3b6812ea69c3089e336e77f0493b75420502aafca9'),
('jg6eha5k9au9mq0e5f8k2k6os7jir9j5ud8j3bkgbah0rluqbq7seev17tkovqvauhnu940f8b7uh2t2sgvrrtafsh00mtel458sor3', '1558991029', 'dkEQl1zXcKAibfJuhP/zKhN8FeiM+LodYDb/lrcgrjI=', '5cbe38ad570c6c10cfcf2cb281482d0bbd856a4f5a667aa9230a84bbad843c533a65552d0c9f330b28eb3fe097411196a76f6438646eb9080eb34af573f2ed65'),
('jngl3vjoiramhu8amsan0qr613i6tl52kutpgn2qlf8jhlhgq9nc6atqnta6fprpj9e0efoqqec2pcq89bk6dg6na2s94jc9r46jd73', '1558988791', 'kJZvrZCYTAFqsoqGrPyccTvvnPkS4uYPcxK/VP/D7po=', 'a7123830dafcae7d87f699b245246d7ba09b8e12b48b8277f161d8ba1b90b936a1b5b0530addc4cfaafc8b9f194be752d9846ef6d8b2afe4d4071656fcd30069'),
('jqh39ceaou5kna218vadd77698kumbrdna4rqokk39jipheh8mvk3arr24b3vqi09hbpg9cfuf127eamdbshvad5tqs84ojmkr7b7l2', '1558988564', 'O+YN9QsZyG4L28MznhSkA/KI6KP9TO3kYXEVaKXmO6g=', '0e4ab71af47a97280cb30a8bafc7d0b49877a37bc80099c54deb8046cd333d935ea0c52c720236dd617b5cc64acf428ebca3c8648e4205911ae59507b56c6988'),
('jr1knri3glrf5mbv3g8kgo7a3mnnndg616pr6qggjpiao6o2n9rfo5fc8dduj39dia1d1vh5dujre53f71d6bbjplddlrc7dm500kc1', '1558991268', 'fGNP6Af/QjnH+E+ZlUxfoVc0yziHw+shS1Ag9h/XwU8=', 'eaeba6c1c86573e81ee95179b0af58f11f9cdd33db76368b2fd24109fbdecbe7883fc95d24fd28b65c82f60c826a4217f5163b10de10b1173114e883ed660d72'),
('ju4cbfniqml6rran9379jhtl03lipka0t3n1k681lhm7c3vsjeim6hilm9p015kk1nbk86m70liib76d4n6sl7rppv6r6eenhad1kg2', '1558991252', '0/B3rTFip/c/wsVSziTZ2t5DlXSiXoTEtCFrJixlF5U=', '5472f934ad9fa7a9b3b3f023faea814fda43bfc2e06ccc783623887037e83d7c40357c06e4fdfb90c719f75f488a9dfc11619564934e63531aaf350ae4c47189'),
('k8bo208cl2naudkb1bcasmi4jk7c4ogpgieegjh76d7rqoodia8ukn94n0uvnvo0gh6k5tbci6nosovfef8bgkdrmi73ivd87a0tg12', '1558991471', 'H2lnRQVkSv3oK3XEhkMi6SfzmgnShxtyuM96fT59gsw=', '37b2cbdfdd2f24ebaa17c644607abdcc189bb203e98c018a72cdae74727a3e1a93b70b6665bbb49e823c5f70e2b665c088cab9b2826d25f722947d964480d8dd'),
('kbumrm0l1qn124lgn20bhekd26l52i8fse2ad7n526f5ec97riq4tfkg8qqjmum2niem4sd1ehbvnddqmhtlmo736uabcfpt3hoik21', '1558992098', 'qGdwm223+wQfu9Hqx4DugTOp9qPJ0cdlUeyFrQvunUU=', '2846930827083bb0bd270305adbb41b42d68f42e0da98cc956f1ad0856e1cbfc03b338d44c62e155a88a62431834dbd6c07d7508a5c0dadf9edb6fb30f8ede2c'),
('kdpa4h7jekh7kv90adro01n2q9fqd283obrerasofal7bv4mtf1v1sn486hmvln01qvl8oun16fh61mp05li0g7avgq5rb8bvq1jl80', '1558991614', 'nFFpdCJTzYaVHrW6T3cFHEVtttYriMQx01jFrXSohPg=', 'c17cd2fae359a7202c43987f28788c9b76387bb049249e93188dd3ec47d1f3aee2f96d7f3ac6c1f632af3d316a4aca4c019aa4fcbe7b9257eaad0fa636611c4b'),
('l2j8i74a8s9o1en36gq41ql30lpk9icskgh1vvmuj2kgv24moqeato1lakh8m3v1ts3gdu0023vmhu6fa23403l14uu0brpudhhcnf3', '1558988029', '4oBxfKXshaASMlqWX5F4DKy0BWniGz5f+J4MP4H6oEM=', 'd75102da703206e6baa954a47e521aa7a7848076d860553264ad9c94c7b29ebcd4169580ceb0f4e35560512cc7b50b7e0af429411e2e8aee1fac15ca5dd9f40e'),
('l5p4lr9gveed1v1iakkkkfqrdqol33atmtdjirfqp3ldemij5lfepl109q4jc033d1eo2rcs5c7107hhd4bi8qkqrmec3180i2cocg2', '1558988017', 'aiyYqKy+EOSr0uwsD5DqmwE6CcHA7gFLu53SSIrMhmg=', 'fabc737d97ada3834a56e75c3d51226fe86deb88653c9a65fd9d0c8c779967c9213336f6cb6d7b2358f28ba6b47bc4e4e452a29a6a7fddf84416237b8ba663a3'),
('l871jrs1rs8ad3ri9fcbksub6m1jde57loonuncuhm2383eqakpaphmkih81dd0415eb5j0bbkos5330fe7chce5aochdgr2krm6fh2', '1558991124', '/ebNcBkJ27BcF6Vlny7PdzeWvRM1TZFft9ImSLZEQIs=', '65214bb88ae10334a3c259c7bdd9f44079157bf899247f7eb3b8808919b6ffc5b5bde2c32a2a5f6e5c705fb10a5bb38fd66f0e15f37b395e92b0e4816c3b2664'),
('lm24mhhcd5cb89qchg93ja5tm3u5ajee4qm3svbcmvujt8f7aq5ssq3muesk7nj63pqlsf0bqf6s2r6fcm1fqgj9o50a924af8815q0', '1558991118', 'tVnsXBs42YqoVbbgBX3YKuI/ANFPzd7R10ds5Ckya4k=', 'd00a5ee52afadbcd9b550240fde9e5e8dddbebdda92558b5394e238d580b4adc788f3a5ae438274860771c08aa7e69ed035a2e10ad01c8ad68903845f31eb755'),
('lnsnliqoqfmcnu4pajs02nh8ggs846lgbngg7uqj2e38m6kj3m6l8q2p57t5vhkf3qa7kehr7kkssujugr018t4j099vec8ru7rmar0', '1558991540', 'LTNyrc+arGcUKb7pO3UsrIFeCp8hu4j5zicpQA1YP58=', 'fcf5158a7ad1290eb31941f8062adf8e95cf78f6d3d7e12fdfcdfe9914d2d1eab40a31a40e2e5d35c82eb547a2eede086b73a2cd02099a8832551c63683b342d'),
('lp5pn9gg2l79i705s8vd0e0scl071bl0i96bof1qg66q7es8imejqvjv9hp72gir974l03vqqn9vg9ku5f18qrvelfd5qh2oda3aeo3', '1558991120', 'ErTVUMRMSD34u3oJBzmpVBSobIkee38z/wVnlo4Lyzg=', '90ce598ee02fbff1ba7acaa404ac1873367651c4e34a2f9e8c5799b1535020d186dd6ecede8836c33cccaa76802362bab0e31257ebbe00a278a713aecbe2703c'),
('lsqb7444s8oij1uidbktcd5jtneasrii8n1ncbb5ddalkru0ata44bno86t59msmvuhn02ut14f0np3bcm042m48jv7ikejfb83vho1', '1558991119', 'JWD/StWJElxfzXCUSggz8yd4IRX21EGNhPexNI7xXdI=', '631756d1b53331d5a564eb70e5a93cd57d59819c73a50dfe0bc1827bf6a491d1fe2eae24546ef0cfc98d75c17d41e662f3b247ba2cc80cb5ee31a99f67a6a916'),
('lushgcp2fkpc2g4f8cgh9j6shda75c1s8nokc9eeh10eufdo60868s736805jb72c5l7rb1dpghoat0d1csb7su4qcua1es2kpd5d80', '1558991130', 'ibtbx9Hdopwgo5KF0pe9tnS1RasChU5cb2Sz1zmXFdg=', '16a10baf22e325ab3ae8482d4072434d4f1b8c84611128900c969e6a09adb53bb36d6e6f34f3ac3192e648599244d2abd1be2d8565817c3b99b6ce5654fb3ab1'),
('m2sjkpe1pli2ed6eolchinbv2frij1tgrd23sd53ok2cftgls71jb90ps3988es6cj32dbpq5qtiv33aaq506bilrnji386l0ptltu1', '1558990322', 'VdJ4tJmu5RfiqWQ7rGP/3vKwRwQ2SfajSXU6dwl/MY4=', '343fb76b99d7276567d17bdaafe813732be3808ae7da71a522291a669bb56c2c8c8a1319a788517f57cf22774811a26df813cc614a00789184768ebfe9948d61'),
('m37j518ohndmd7j9m1huu6fkkrr7j9obcgibt9thn4vp2lbq9u76gkk663d7dd75j7drmv2ilvtv85bee6eqs9uk7tpcgbli9jclh72', '1558991124', 'Sm6O7AnokBVYTHs/0s9zsHaBrcolpmCYE7ye2qtGWR0=', 'b5ef6d7d07800845dbd0967646ef07286d868f3da93d408a7681a397aa035e0130d4350aaa9b2a2689450a402f80c074b4c43382e3fe5da0e30436217409e61a'),
('m4n32sk60pen2gp2huc99b5pdrbf9k2sv1njt0asqqhphip7p3cbc64b3uk0r0je0j8t5dvjnmi54s7brt3t5c5hoejmm9rgf9oc2d1', '1558987531', 'l8M+Lzqjjx773J0ReZVWQwOoSxnvGFbWu5Qc7TCo1GE=', '804ed568a2f0eeb1e0a066fbef9b1225099a97689f73593e704d1086a30a32393098428790304058aec16c38ed07a7c865338964974c6dd11657a10a7cf65aab'),
('m992un5s06p9c0jgr87r8bh0o4j2nig834ti0hm2jl6pqa6br0ksa0652tr1gd4342i5g1s9tvuj3l5d2sr2qqr4oq5domnnn76egi2', '1558988030', 'tu/o6Olp9DQH71cnMu1OU6VUINxKk4SwBmo/W/zdb1E=', 'a5abe4193bfa616537d893d15893d2af615a12cc64955d51cd99948273e0f60b32e0e8e3b03becc5574ec4a02c5bb18ab0d3658bce7ba3fccddb310e4d3136cb'),
('mc75qf44avj9oj8t1300tlv0c71i6pab1v0g4pvliul0f230c6ffo4rvsrbgpeupeppnmgpf7kn434mm1ut9q9d374huot0tnhs9vf1', '1558989379', 'TXaAz3Mj7kBxUS0hHqSMy28Lh4Ie7/lvAhc6OX0Ibpo=', 'c42bdc0664bb8051b408021f402067a259211d64749f175a85418edc66c95ccb1530a4ac1e821feebeeaa5a20d1aa40ed682b9769077a4fbbaab90831cf4e3ce'),
('mk7muoj085h4sankdto0th9n69v6idbk1c54i0c62dlfi4of4lru0m0lnoufu70bipo6kh4dg27q740ajqnb9ask3f13r2dboot4450', '1558990982', 'DdL6Fs3S+KMOC3LgenMeOaUnpCeS9YpW2njyKY9eSaw=', '7e4d6d6c8b3a296690bad6a019ff2d570cf44d9bcd350480eff6da4f7d4ba9a990572a23b2467d9ba5312b5c9e26167ed742155d42856b571196ded73b93b140'),
('mmg7bclqdrh792b7uei05lhik686hk5mpnqn8089robt31i0klh8rb0jp2d1kkfpmbq61r9qnng66evmftmgdicmnbl2etddjd4ln22', '1558991347', '+YE2QXZXvgfNxJN7s2p6FNkxyjBYVFoVQaFJk7LHDsA=', '7e0bbb964a0c42ae837cca8df933930418eaea96d8c9e131501bf317c782b443c470f566028a22100a010867bceaf145e6574a6709e7237544970e84877503d0'),
('msvoij0tfgpjgbs07psi4890d39lqnc6gr05leec9jm0f8k13b107q6tm6n9iu3mt4gq8ar9hv2nbbbq85b40cd190hn4hji8cdbkr2', '1558991119', 'V5dw6WThcNEcVLcqeUyGN2/h0uQXQESGMXiixRc1N1I=', 'ef79e0ad3fed5fde187bd8813c83432a99ec69da90f3b3a489b449228deb93fd757bdd95f1783c45a0d3ed6eca50c2ebf29d6d14181d5f3e2b386e2475e2b6b6'),
('mvd6n1pnqqttq3bg6rmsvhids3c8h585j9qk39t1s3era99urse5d028ibuu3enk8aar47ifoad6nku0kcoj7irh7i75o2se49ftcm2', '1558991121', 'eqF7f0u/pfkP/uM7oTbthznHYETnKgLHSLmU7CR8saA=', '709b6f7add02104a087af0f8dca1df7673416b4f5f428619294d2667999c948883617b2c691bffa1c605af6fdbb1ded206a1543f93761a71a2b66f4d1db14ac8'),
('n4slhedafjlu6j9fsck9u910p1t73h1mhoh39akt6vot79bucvb4ms39fk79i7o2peopeqdjbr1hsfkho6mefbd4c1b05eq7hgrs2j2', '1558990420', 'R/wcbQKNqK1x8TH9tPRhXIPIkxmj2oga6DZjjnKVKEo=', 'ca2fa0f47fa37f97eab4d1905e808e6531239e101acfc88ae02b525697007d8a8ecb0e9705448ae09d249d6f0d082e1ffccf8dd8f8aa5d524884db52e41eb13a'),
('n9acvfaobmia0np5c05gnpkjcu0j4hshi9u15c4prgq2a9fc9jsg7iq0pte3s8bg9r5aptfnf57hl8dtq4fr8a9eqok01ss7ki66m13', '1558988018', 'VL2nGs8wztgNgvwXk0zOoWAkQLM0tBbHwhki7wlnFOM=', 'b91b0f1826db8304967fd47651a7e72f51243490d0ec53681ea0a73893c9345f0183f98cd94a93e38eeb60497c8f54a8cf05eb48eab1fb69d130912324aedee3'),
('nca6anb7o8q9ovdmtoprihl18f6t1mi3q3sjrc9ihph7opej904234riui1cnd73l7bk75ih2fmn3ps8e6og72o7decvn2gam88sqc0', '1558990320', '+37ON/ZV3fZB0PsJr9Vtd8ZWi66Z8A5unj9NVlzg19w=', 'cb9f0930aa5973002043ad650d7413371374a909ec79448fbcc0a16612c6f1ad66b48a84bd5ec9b8a0ec63fc2b8d1308bb8d3a867267ce16c7bd7e5062270fc3'),
('nhru87in00hvve0vuqt94a3e5ah6lkek7e8ghi837pir55so0r1fkavov5r3idt2er628qoi46np93v6vp4u2oipcqot639mrmmvdq0', '1558990976', 'c2wyOv/Mbj9qKC1zQM39Ou5rLjvYWjsF7rYRuWDTzRA=', '210fff356c27e37fb7192609a4a874870031dd82538ccfc0d633e0255b8b803cc7be06030780d45596366f8384a38c6a914ee0f2ae27fba0a2c7468b7aa7630a'),
('njtprc1d8b5gamicc0sdoqj58t1hgvj0ah5t7kqqiogqa7g8hcr1mvmtiu66e15eblk1t3aumgm4e4cua14gv762jc34s2ak66h07b2', '1558991120', 'NR+53XT/tdZAJ2Rk0vPOLoN31zuPkOIN63M2Z7+QLv8=', '269856ddd2ff2fcf351fea8609f045dbf2876666ebc3db98c202d50efafcc10b2b4014a4bdc348377bf687eea1f15c7d2e2eed03c13133437b9e4bca6010158e'),
('nka0t6nci027jotgtijeus03k12f854o07173dv8msgpedkjvngdgnbne7okli2911t5f0cu3li7ci0vkto2q8ogqjpjvhka9s0goi3', '1558988018', 'c5fwqCopKVmK03OxhwL7fKJYlZwh7sJKi6ds4gBUFo4=', '82a08e545ae709183aed903655beae6bb0c854573574a990bfe9a67983b838fbfa4b29052fa86f8752f1877ae580b618c381fc95b1977ada12455830e7f283f1'),
('nljsjgoqr22hsuuuokgch7tra38n7p73kl67ng4gnvi9skd9h69bhs02913qmhcashf8prb8g0uj0vldgrg5ktplm69b7l67nvps0d3', '1558988807', 'zM2xeqS86SrUnp7QEU8kfcHI6BhHcxuSZQx4LNgKNus=', '27f273828cf76e92ec67ac82c64058a1d12eb4157652bc319d83788f56693d68cfda729403c7b261b562e289e7596a683d9ab3173a143f97bca0efabfce3e435'),
('nnerfjl9fb6bgdv58s2lqq6u5p67chg7b1irj76tvfk2u2b9qas0to9pd7l4q5oq6uq9jaaitpphgtomdh1goj2d36h7rjeahlapda1', '1558991363', 'imHRKx3Ea/8Ku7PxzJKJntboDi13VRycdCUrtqcDdQs=', '1fd65796eb5f70a45efda72cbe1421ca2a16ca6c25cca57e9846924636a04ba897dd7a4f70b81faf5108e2b53c1a72068539c2dfee6ab4c54c79918cdfcaf9e9'),
('ntsrehbk45god33vhgei2ln6lr3ihnfe469ln0hic6n7pqiu5r8gc3fduve70762emocthfl0c72ts2vgisi7fi6og5cafhgvm8sap1', '1558991122', 'h7S2eIPkGIECq6tcn8l8XrNjIsGK0HbIDwjMS+mNeTo=', '7900077089ea1c579a9f71681ec3f1ee53b19a795162a0b0ea9ae194b50a01bbc0c80cf3d3e10fe9284585970bba8f783243b5ee0ceed403e4731055b040d7d1'),
('nuhq98kp77on9c2s7aq001l91d6afuv277bn3srrkvi7976bir4e05appre0vfdcnj6vnm4562t3ms6brprj00gpahi4300uft5s1j0', '1558991376', 'xUxK7E773ilEPHP+A+Y9Ot3J4+URp0h6EU9s+ApT1lA=', '9f1c8e90120e8ec07ca6ca98091a2df5ac0acbc5241a4ec96fc5edb35c9ddf5e3b33a1459843f0429eb9df2ceb86ad0fe43b8723952445e000780c2a1dcd28ce'),
('o2goh5ee062orhv6djnt7u38j7r92ho5rr27gfjmkgfi2ptnc7uifnu28u5sihepapckj66milinbpnd6g8udg4t02d2dd1ct3l4r90', '1558988059', 'hmUkv7HzsseGO1DUilJOYszNbwC9wgQ9DntQ7TXYdYg=', '53ef58a063dea09b411f7110128e38c22fe75f5bf21d2bbb63c2a514914bbf0929fe870fda5091619fafc5dbe1a01adb84ede67ea220cf79098120ae6942f8aa'),
('o5nq99djc777olk2j06cubut7htqpth64mpokpm5nf405fl1rnguq4b3c4eqadbkdm3skv0mvd8c44m424pon2jh7k6oiqe54nrc5a2', '1558988633', 'HRldpsSvUYbOPjtmjdp6PZaC+smGIvMp/IS7PeQv/1Y=', 'beeac0f4e1b59e940b527e03784af5c99f89347060674c85b91a2d3a95f2cba42ea0af579c06dc0d9850108d2f0794e923f6f0f3210bdab3618e5d9002c7645b'),
('o72qj0qg173u04kqqvnj8m8f37ena2vocbnm4cluvn9lgcf27tl2ucetlnkt1arcbma9afrpgeks5pspcvaupigr86pgfiedjpseu43', '1558990828', 'wJCt2PcSPb7aTd5FsU4RvOkSc1su2BWZubPJA2oLcxg=', '5a76c01f9f5025da55e54d936854bf4a232f5066f5069b969d549685430deca513e354d1c072a6a296fff931d2507c508fdf1dadc1d54a93ca1212b046b2a609'),
('od80pqjts7k9u0l3heh0ecact94bo2sk69jr6ncd8do9g42lt6k8grm9mchq81gdenvkmdb4fpvsp508k6qjhpci0e2no624lmn5ao1', '1558991118', '5x6kQcsmPlOptRBPZlC57Z6Iwb7FX+ZjbxcHT3s4EtA=', '2cd03d1b52dee402cde687e85e20415bc2af522bf361ac9fa235f3ae24eb55e57ae6f5157b5bc1c982870dfea9f35d9e8b842c833975c93931489c700217523d');
INSERT INTO `sesiones` (`id`, `set_time`, `data`, `session_key`) VALUES
('oeo8o7g7bcmoqe2o49dpb3dale7gjb505ockllb406is19n156ha46p0ske5dbnbqbhkdqh3pdgvm4nd698rrk5nb6kl6uar5t60al0', '1558988670', '3Fp/HZbuHB8IcIhc2vSKXmyrEcW0CN52eMWEYnfz8xE=', '5cf5238a51d1828e6d9911d689da2f2340c36ce95f0155c2c3d365877eda359f19721398ddaeab01d581f205bf96d05b5a0d264e9ccc7c9dcb837e578c5330fa'),
('ohese0f5eh7557ilbsvmfu60vbrfdgka7s3b69pkdgdcilnm6e7p3r3i86vo7jc26sdioever25ueq2gaqf9m8rhshcdfali3v17jf1', '1558990404', 'dbqage23PLyPKpgzmWodGjaabUf1PVhrT5J4BLIqbko=', '52eded59b97a1688c2fdbacff0a8ec13db9a67611e9c86047a0e4fd48e7ea67bb434e4700ba0b65daf437d5dc63777ba2a0e6d0b131d75121e8cf41b4429f083'),
('oocn6a21t9403mv3m8fcaudonstta72ask77dqrqvvhjclifd212pl9l9rj42d11f60mnal17qeqs7l8cf0ln8acmtjh3vmt14rlkn0', '1558987215', 'TVtD9arXzoIF0fokrgih2OgA/s8kBSHLhHvm6BjoM0s=', '58f7a18494963fbc2c999d447a97ba5e7383cab6c30e12acd9946aca837b0d887daf1b15e748a8e1d014b5ac321dc76e2e7c8f2f9368e402a4c2ad1e3f608ac0'),
('op59tva7dck7t4d9sl5fu3qslgah0a88q8qhpqjelc9iuaank43i1lrk4gu9nta5kt9v6l6k7fubhotv4lncjs4hdhfeqh26oj90073', '1558991241', 'bWSphN4lk8xEXJiQYX4/MNdAp/Zb3hL6v2qZb90tAl0=', '937018da4fac8696e27f7444bfe0f742bbbd4116720dd1e72fbe6210eeb829bd6de4a9ef8cd30c61dc8fad2ba201e17b766d7d8480e4819fc72dc8cf0a28c8be'),
('p3m9h4t3hvraja9f44phduee40kfoq6h96j0gu1bdbln814lvlio652ihs1up5fs6jj5cf89drn2lmm44bpbhqfjpgka3ou3j882pe3', '1558989461', 'rdItbKZr8mFl1Y40MNXxmDULXmToCrJZiFfxmKnVcvA=', '0cec0989a02200c176a654966424dea693dea0ccb9ea2b365fbf439fd60359155e526055987b09d097fbea549d5d577e6630c6591dfe039ceb1dd2119882eb6c'),
('p9cubskg8tkcq82rmuq7jtrnpm40qdhcgutdku70bq6lq41k9i9v620ajsq9ajistglgj7g3pl7fmf9uru975n860nikub6jn1n7551', '1558990402', 'h6lgpJO51sFzuchzyxyr5Cyfj+A+m15kHmsYFEdjNCg=', 'ea0a01df9a2d10fa48b12b42ec4c666f1d1e58d059ef7d982a8855213f22773c2b6d9a41e8c1a139b423239098c80fc8c21e217d7c5d58484d9e0e8507b60623'),
('pfbl3fq23a4p6locbn2cm15tljg66bg3fqu17j5d7r93feo65gthj7u2jbd5v3v0sck5ai726q5r1nahd5068920m5ove9mqsncrn90', '1558991129', 'ipIVn49oxbNmcUAmgir/GZM80TqoVQ20q08mgfj5Qn4=', 'fc3b3b772c8edc45a8889fbac8bd3a536f45bcdccaf57af950f09f36086941a65b27e8ba6236948b5ca42bd357586ce2b0ccc4a419f86a91c3d78479ea7b993f'),
('pfvs34dj2lhj15g9pd7bbq1tcmad4iikjecgl3pj291s4q5os4j11ppnjv9vdpkoalm2lf1arh0tj4tv2jcvte67f1tjoli5cl6qhg0', '1558991547', 'YJqL5K3w1GGdchnELHAKtyuEdimFuP649M1L6dDnyrw=', '8f369fbae4e611ff3f142f9644774504437e8facf5b6f292b0b6d8d7d2624b69d182eb2fdf5f6adc32d4c57054bc0c52ffadcc070c3641d80ca9730056575650'),
('pgdtomj129mu1ksu831mt41skof69lg630gd2t0u1dj5u3ulg7aec7c6i7ln7sje92p9jsssc0s7ctlkhmm8tlmted9288p0rvqbfg1', '1558990495', 'lCW5WpVhf1bvYMeQHUxsLakKS+HodWT+bx4jyl+kbVg=', 'e73304d198d2430fb0bfe52cc33e91a53695c841ac0c1758d4cdfdbc65b5cb3bf31e13607b18a2131b59a38b9046a996f14fa25db82c159591d75baef11c6a26'),
('pm4vjujvkfmsrd9oe521lmstm4a2ststgcmk5optknnjvh1v5o6nhcdas00kh8t43fsnean1r72pd9jqpi9cnjrvjtlp3gpvbeav3g0', '1558988013', '+VyoEGfrVaHkvqTJdqEJkygCAb3tKJWivxr7SQ5qoGE=', 'd5ceb844cba440edbb72925bda150dc6e42d01c15427fcf6d84c8b4d9f3634b6ae1be699b66ae4acb4529dccf5645582b89f2e8cb421e08512393ef0d5b3f207'),
('pnke6l00b0a7gvb02asn02kfrgt23dtp1v5428g6rml641as8bs8nbv17kh1sh1if8dlramvn3a8jdp7i047cmrki2bukglm6uhr9v2', '1558991130', 'mRbThYiCkUvCpkx5jxWsme1jSMsH//lJ5PkRK4TabIY=', 'eb50527a7da09c2277f14bbbdff6c1aceb11e60d2bce041f1bb1fb17c08e4306c78637398a9bb576b8de3814fed7116fc3bdceb72af91802409196d1de22e4bf'),
('poookjv8s4o0v3e5umu4qie2hvtbid4vp1oues2q2ohkuqe8ihjt0nsdni1aoge0fcpv6s7vdbqv2a5l0loaqq2uki6v3hb87avgu33', '1558989821', 'JpxSBnbmbtvWtzsUVu3dh9c/qUKRIxWsmVPvXyCNDQQ=', 'fc6b278066488ae18f4949a806b64fdac1a631f51c74093a891877d0d5ce31b3bc26865b49a04dcad99951d798667642bb709ab5ec21b05a89e114b41476be0b'),
('pvoinho0q4eg0l4048m8m0kfht1149n8k979mbl7fkmpgp0i2scd0raocjlojjbjgma3p48gm0nb7fh7qkgq1h5vv7pum3crdlt3ds2', '1558987142', '5ag2EIBQnuh9vr/QXEmRTwzZga9Wz2hv9yNFIwYFcFs=', 'f3e50d154f1872ac4333e9e8813cc65d7cbd6ef0ddda89df01b7b26ff27496bc7ccad35851197f6a8e257cb1adb5f276fa56eccd0f8b03b5d6f0a54888294bd1'),
('q315idvsplhgg1c434e2tlr6n32vjsecu0gcm8u3e1sf2ck9tlsklgol69ir3s9dgr7gn3ug3cbe29uqidb62pgrk7u47vjdge0oev0', '1558991122', 'fVWtac9lxZwRwZ9nlx8WahPiI8oOuQPOsQDl0BLUzaA=', '555115d0681b524b25849171ca4620dc9e477031f1b33f6fe668a72b64e48c374601dcb9705c883b94d44a9053ac0950dd79788b7f9db3d2506476e5235a8726'),
('ql35cc8ohngcaoro65d5d40ctn2rntlh3a4iou5c1nd8i67vofod2d975hshfdisvmlil74nu7079c6cb27hs1mdj8piqled9r9a8p2', '1558989677', 'Q6+k1ucL1NjnYp5MgYNHQhQR1dW+AgTOITOrUo8xcJY=', '97700bc71be446bd67c7f9b02f43ab080ef7bd2cdc3fb246e785f611e697702dcd3374eeadf109f74c5a918c2642448d8c1ca94ad1dc5933f7902503770ad440'),
('qr7uc02jiq4r4f7o5dmub5t23bnqd5h5vu60hkfqcnsir71mseblc1d4v039f6mo0nd8itm12u999c5g3339do4cu9f4n00pn0iam40', '1558991131', '5kXiVlhQXboOxz9SAtHCNeTtU6aCcXtKqKV6iTxFNiY=', '6749b69e5adfaa56c58f383d22de5997a1b8293473629b21f72d2b59f64490f209762e9b6938c710a966f727ec825ea4c49267e2a4a6f6b6665064dff8148535'),
('r0pbelbaldpiv0ftctnt19qebcmeip8phr2fjeno59l02nb5aualc08c96v6od8ts60r4gl2ibpt5lq9amc3jc5o6eml48nls3o8s42', '1558991124', 'oo1l6rlbfa8VyvfIPFbMaIiVKypnN+g98yOL1tVr6xY=', '1a6d8ae1e1a1ca0969db63c4d25d7d93a486a94da306a282d0b427aa80d88529c14fe599ac746b99f0bf6a12a303ac13bff05753c2b75477f3124053db36b3e5'),
('r1cm6njvq8ooo7hcjp5bg0t0ih3o591hq9chpr5q0jj4f1bhpgtnhqun4gt0a6s8494l9ec5pkag5itpgsdkhohgt0jvcn9oiqekr92', '1558988348', 'GQgtlb9wJLuvzmnI2DUjCbcZz38tytaxcljpL76Mklg=', '4d4b6bd72c1b4b994dabd55de45753220b0565f6041775fe7be340179a9e0f7c3a9a1bf56e85aa4ce846bedee8c6220ab0750dc6bb475fafa6afccfa21463024'),
('r1k3lj21i7ndjudi6fdcjvv9cqifcmvuv27epe66kuud71d0lkv8k5erqthma9gbcue5mijjekfromabs0nk4os0u4bs87n60quk7s1', '1558988019', 'FdODrkEaTw3t4fGhUad1kjA4Dqxpd/YV+znYi7Tk1Cg=', '1f2938628055b61e368519d6dbd96a03b39aead59d36e5f9931443baddd7282271ad563693246d34d6d17aaae1ddbc3622ce432dc33fc9df70166375016d31c7'),
('r2obok7f4c31b9mt76kt0rnnmm6sadc3n695755ra7rvh0osnum5nhmicgib5pnsk31786qvuqsq94jshumqlis2ndttiubv9qna0b3', '1558990286', 'BcX+9xa6jXdu3N4dUUiT/sBf6CVcfaEbld8RNo8ryoc=', '8238ab2e88f2b9f36e72b214fd2be79360a186ddd8c5be85d1def6c6750fcdac8b09aaacee814d57ac930bd30ea27fe041202ccfc55711ae55671a2676a31501'),
('r89g9iq9n1nfq3217mubmei9f81qftfoicqvleaj1dc9je634eqollnsqjsmnhe2lt7a3nqitc10vm7kifb6hs5q3latu8cpo08n2h2', '1558992101', 'ChkZOCa00myMKlZdeFi7KQc+JoQ9+3PVlhST0K9vIxU=', 'a12cc27bb4ff44380cef385a094d9877ccecd1d13dc2fe89b0ed994fddd45b2f4a5103319e547ba22a87b3c1d784b205ccabac8da0837b0fc06151cef1561ee7'),
('rbbuo87lnd2ksaj89m1anpmde1bo93cbs2h59i1oau9ttirtb3mu9k17mo7b35gtfieeudf25mfh1coh2dn0mckg9295v4ohe6cqd81', '1558991120', 'a/MjjtGUthOEoDDPiNmekkQIwoq5xEaZ9fZyWFMLKTg=', 'd396d067f4f841cb33c67e1341681fb84478548993ca36ed56dba319afa63b6e9273e71cf027683e95402e1a31a02eeee758c9ec2f5dd7187c3f82d61f2c493e'),
('rbvgqsag4ndi4t1gjsre5vi4llelmd4ra7fjobj0loqhhcj6eqggss8dqcnkl1humn04a105653b0vkbnm4ek9uhrabph43lvbif5c1', '1558990325', 'GVuJBgZKVPzA2siwDHdKL90t3Wz+PtSaejySctndoeU=', 'c8d87699eb5bd7cf6017d8bf42e5369d253028d26fbdbe62f94bf6aaabea8048164e539ad3ef1d639b29e5a89441a3a2336525cd636afce7584a0cd085d90268'),
('rch8iq6noca997ujam945idvs9ssog81821mb2qp05qbd57piggn72ktnc40mjsfcnt9ro7dilfgv2ig2kijtconcgkgbgkm2n1tq12', '1558991235', 'TdCQC/WO+uZ2AEOEC532SaEggwetJrNCLwQvRQ2Avmw=', '82af0f3a2cae48ed94029b5e7ab165a7ab36d932b8e07c930314c1ccd1c2a5ae653943a9d76a3466f89e23e86723f36530bc9f8d93f57d70a1ff586a2864ef8c'),
('rfihg9n92germ2etcgsfk0vpmglb9btg885div9gr8ufda5uhrtosm6cnhft0hppqgviltjeqm97lnv37ftoauq1sn2e1jns0fob4t2', '1558986705', 'DhLciEzLFo5NiWs9ZNHhdeddaB3Debm8P4EXV9u5V68=', 'b0772cab7c45df592a64932f2c2e67d14b357b7f883d2530ef80fc211285dcd54f6c16729a8c4eb8d052446bfdd89d6884a6f24e0484fe29d4b25311054ccd2a'),
('rk6e5th4r21ve5h86r71egh2i1n9peqm4h5h1vflpvev7iug41714kks8hqsobi8bcclh99b2qtvm8r4nbdbpbch01gvkvlbh7j0940', '1558989652', 'mSYRfy9iJEzRrGModXMJuhOWNSFKbJDe10Rw3HNCNXg=', '7155d397a57deabbb795f029c45021bd7d4386d3fe7e594da1a5536ea495ac445a11e8d5081ae49cd63efec4d694fa61246776df00337d724d42925331b3eb40'),
('rme4jqs6hkekvf7bd2307kfoedmpt1oha06gt4ovus38922qhj1ahopt3uimdejgcbgaae917tpur6ikvtfpevvv3ovn388tgb6ugd0', '1558991123', 'vKq2IhQotdD9vuXHUrhSCGcvRRLYchoAi1W0FRQGT+E=', 'aa2d63e44ae94d11148d62ecb271e8634b6faededf83d70d4411a027b7d362d9844fbd22467d5db69c1da63e87f68bd60f1b171ba8ad7860c16e2aac867ca38e'),
('rp4a5ce47islkgttmqa9vs6mj1hetvs1reje631r7hne5io3csotiu9bpld14800voo3m3d3fmktlvgqfdghompu6m5q7kv4467isr1', '1558990013', 'NdnMUnpQbtSYgUtK40j2uvElkuP/BSXHsUvG2Th6uo4=', '424616f55d368a27cdef244f19424d57ebb7d8a42ad5d3469f95cae5a7c85b6cc559b3219bc7742ea65484e11dba9dd7acf950d4f60bde8f6e8a534639a00ee6'),
('ru2smiorpqrpuc7g1544pc8c8s3f2nodsst79ju5h6b4krksdra1lsm2cvrtnviah96q4jeo9kflhngag393a19k7g0nbafveni0nk3', '1558988013', 'oPd20czUohzSlY07To7W8JxOKw4ajgj8tSuZeMp/HXg=', '75a7588ae951537af56f85925fb97a1dd12573cb547008bff77507f5b52cade78db432dd9f234a2976f2dba4239252a122c37ac4e88e3167f0b6b331d75f782b'),
('rv28nu9n3bvdrlq546kk46bm0gib58vnhc8td7u04v5aml5ihajcdsbmi9i225cgkegq8mcggdef0kjpqa0ra5k7pamnhkms5heob52', '1558990258', 'pBEfYLOuZ/Sq7SDpn1+L7sW5Ff2ZmfDJYH19MKX7Kig=', '9ad70b2cbeaa4e13bd885a85f8df4efc8589a01e976b44acc8ce23e68bc47dacd4bc2972f68722b60c948e50b4ad624963443c9ccd4d49850388191d889dfcfe'),
('s24f069pgqa3o0mdg2ng444u10dbqon8fe6r5g8nsl6q4rs951muotn8ebr6t7uapp5221u33crbiebnakg1tfa3th885p415ideej3', '1558989010', '6C9/xLHRM6CRmjKsTjzGksDiPq0r9f0vA/x6Pcsl3wg=', 'db08420c4addf89d1f3b1651fb5a84bf22fcb6a5e1c1d1fe581b3838091ec762645e80b4d4a5a31717eced55494d78a5daaaf485f6eb4bd87a8e6846f87f8461'),
('s50hr4rqusmlthf4t86pa4nqeeqb9jouj2029hhr57vbj3f0v53n4haec7gf1neq0gtvql7kvqjksh47qqhoo3rhfgo4jqchton02n0', '1558990123', 'lkL4DYJmZFzJa70wCSJM5CEq60qBnDvgvCYd3T4W06o=', 'fd42c0a71fa1f915ef32154a33ce24c1ce7962408f8758c43f734c6e61e3ff8c61acc1e22d12dc495ca0ec5730203de88db71585a9d76060ae6537ddd2fb9d45'),
('s5ivfno073unktsclv8um6olvi1o2n1pjllfveafmrlnh7fjkaffk922kokprq37qu26s7i79bbvddvuoqk2gegec6ledidqu32fli0', '1558989419', 'CHYmR1G0xN1wjn90Vs0Q1FaEwIVUefFMT0NSphWImVY=', '38f088fb0e440379d4f0e869cbfd3cdf38b89532a0c79239f3b7958d1a30a44b78b1a4e9ddc50ab6144b449b0f48f84d9dd06f5edef85f43ed4d0bd2b9b83775'),
('sf6dtfk2co00gds7geoumnqgiq93qk9v9507u8s31e2pg91lqfk380l499v3hls3lp06helfoat0c1jnivuo5eh275r21j9ki00bmj3', '1558991044', 'vBIg0pTxKA1b0Ud3bRxtvbUAaArgypye01CBLugnFZk=', '49bd80b8571a96bcac5cf9067b92e454b28f8e7d91adf21273624e147ff567d3c264ed3941606305397d415407fc85363f50b20ee6e11108e89b06b27d288f73'),
('smbaq1ar1c3fd9e6f749v6lf5k4bsjnv9jphup8vb45cumvniqhn8ioqpgchdgva7dmtk21um6i9o2trqsqunm6krrr30dhj4enihl3', '1558991124', 'u5E13ttERr4Uhhnh1sY5QPVJwruDHXn3E8w2oHqNBAw=', 'f67a240aaed92ad8cb613e97e952a3d22847fb84e1e0af563af2e682644fa7f3dbbee27571c5f0b7126de15834cae671b86af9146507782581a6dd1a956e7b65'),
('sosp50shkbchqfkuf5pvuo9aofqkodjfh7utbepau2agln88cd1f3gvp03925tt099mj15p02n3ahl488qs9sfdi0q9bkk8d97fvul2', '1558991121', 'sxWgmwt2JYy+W5567goy9tKNEPnGyDEsNplXJEa5SAs=', '3534aa3f838f4c15d0c4ad1580242ef9d631d6e8eb3224b7025ff89432c40a1a7c14ecb506e05b46c3dafb8d78c36ac2b34194b17fca678e1cf70149b1b0fbcb'),
('ssunun8439roquvot4g1r0m2bt23p4ff7j1kvkmoarthuf8dcrb8juckb8tmo9gh3out2r7vble8oiina4kf26ertojrg9gc2ungre2', '1558991538', 'cRSXBs00+MR4exAFVbNUiQfGjTWlh4do8uDkIhyboRs=', 'ce92ad70ab8eae071af4ef5afaeea4135822b77bc1bdb6c1d8db321c3cd58dd3bfab6c2e4d6bb26944df86afbd09a8723f67f6423485ba9c524ef6cdcc9a922b'),
('t15d8u9hnvvvducgn3tlcq85dih6a0ddi0eje85vlrccrsv5327qt8qj8lbggds2pv92fbl9c9cm35j65cq9n2l8qpf7qbkqhvevk61', '1558989212', '8FVUPIz8ilBeScQeqFjip/QVMOM8zhImpEt/x9CazUo=', '8996db247550077d69b330835c7e91646ef1da784afe54444e130f1476c3c19dfce1f91e5658ee0c64d2ab404aecb1384709738bbfd8af4d5a3cab62562bbfc2'),
('t54cafr6rs3rqd7mg88ag3fjqdjftcf1g11qnh2kjcggut8mnoh1n8jo7i7nchqr92ujctmekfqlq3pvhhq18ehu51dhf7d7587h4m2', '1558990777', 'DjfrWM6w8G4zqj6ZfAXqFKO3lcr6tLt7sKLD8JMCubI=', '7dfa6ff02475cd0c99995bae7b06969d3629be69accb3550f0acad0889a3c2cc1ab0bc90105d10ec3b6227ee0d30b1bfa00ed65024147a6c4a0cffa0ccda5854'),
('tg9vmp12s43o4d642u2d1pqeabu095derr83np9qjl56521fjc9bf81avjggeqimln271cu2585kd7f396m8dv3r6bgopske9cargt0', '1558988016', 't/RQi082OjVAUjA5e3vls/cB3rn2ZplMz7gYclhj3IE=', '410ef12375c39e469c1957d7785c83350301a9358e0506287662e00e9ea4fd87e57f5f65ce38f8bc6ebe180558ad520e50559b19761c91e305e71b8580de2ac0'),
('thb3qr0hb0v0qmkkpeuo92dkama2413uge6bea5s1jcfefjall6tjvik33is9hjabfoo3jenda9ulk1rr4qqfrgll5vat7s19urol31', '1558991428', 'bYJpygBcX7WGG40Z+7PCaSHT4rBdsshqPW+4n7tYFQA=', '12169ca5ddc299330aaf339fbb6f236f72dc80b3ad93e4488a824704df4d47c8cb27054fa52446960cb27acffd32d31b02635af5a39e4ee248924d4a0317c4d0'),
('tm0977700tgmaedh51qdvepe3tbgqsbftmq137ugmb6ek7n5oe4ge25ql5q322v1idknm5h79ruhc5ikjre9crl9h1p3f9ij1ockks0', '1558990164', 'wGMOS4lDaPajwTArOMg27CZH+2q2ME8Ti/SonqJhG9I=', '8b3646649497fc010fe842e19529af09bd9d04bd49bad7fa8bc7820586184fea3ce5e619679243af582f143648f8492a014b99b65b46a5687d847e9b386c704c'),
('tq1fedo8nn1s051fbutvafimid0a0bt9bbb1a52h0s7pt4vgdirn3iiobe0b4cifcgjfukmt3dnn6se3ge5k0tkhlnm56ukbnmh4pl1', '1558991119', 'lNEiLDkt2iVCo/LrwaYAfF75M5MLWEgj+bAiDmEmeHc=', 'c3a2124d185343996caf9aeb72f4cc78fbc43836f42a063357974e6cdbf0d662af23544b89ea41e95b562dd54fe072c560e0bdb72a31451da4ab79b1a94bf356'),
('tqmfptdt89l82uj1jtkhvt2c6d7tud5fbjsh8n8av8gvuh3q8ikrc4r0e4qejt5qr32psr6i070lkc1vlj66l3001s32tf7ar62bcv3', '1558988030', 'jxwRtW7V/YXt70XZeDPs1C4gE2Gl3mHk3f6JDojaM6I=', '6b368e550053997660c3ba6914b11426d85ef40ef662129f73894cd90d18feabd85431890e76802ce034d4bf7c39c811cae18e80c003af8559f4355e10217a2a'),
('u1utpe1l9jrnt5sfk6onscr8v0ja5i85ljqdr60beg21pe06qmaaipbkol5klg4ridm8609edecpec2hcbvos6a6jrsomrc7bu2a5b3', '1558988020', '5HWEAbxPXP7bATtdDJzhcsySDZVArTqk3sQuHIA83W4=', '0fde1c727850184abff98f25eb88a1989e47ba93bd4ea11894d0cdb7f253d59f01f6b0a180ee38105573833a726624c4c34cab0d794941a1abea64a3810f6810'),
('u2qn321jr522h5nhtc8r0up0ujkc8b9866o6e0ejlcue50m7de34jgfqcqg17pfd2s5qnosjthhprs27q2p2tpkftu3a6kebupo4p92', '1558988019', 'Qp/fT2/ZoZK11vPvw3iaa+Um2SS2o7HPhBfQf0Eof8w=', 'dc214fe5152804064ee8039a2620aa597e816e76ab0f05eb709a82e2a5e9eac15923fb3ebeffe7fe74be4f6cdcd6ee6696f90b6edf58ddd1ee6d38ad17e108e7'),
('u373s328e1jq8nat5l21f12a4psme86quj6l0o24qhgbf4ksp4inev2mjldi1037jr23073eek3n7h0mv6sf3cujedn3m3ih7o80951', '1558991131', 'KLtCkP3+TQBF8tL/+WTLQmJYx+tzH2W54sAaUTZNsZI=', '223029a981f686085b25791f519715859ea5bd7d2f907744a6eaac9e699b124563e0867c198fe51bc6a9c2acece5bcfe7850cac4c865f3ddbbd950368b66f21c'),
('ubs34r6ti8l27gfq2pde1q1voflva1tk7fjg5vg086qsqjecp3o7e0a2mu2k53t2ltir1c4o0o5cpuqg18g34m5lafsnjgq9mumbbh0', '1558991576', '6xQ5eJlS0pZv2QGffExiSHuOcWmsOMtIL9Jvmd9hLXY=', '4637b58e18a06e61ef21bd428a4b43c5c313888b6b1c8d8c16f7a001722fdda7bd6d77ea34746288aac22609228fa8f0ef6930602629b381f4bf81a7aaa9af83'),
('uce1hqra03vj9eooniajscgf0n8ocoa3np6d2te61jmls68mpgm4l93udbf4km072o7id5aivq2j17mlcf9bcr05r0g1h5klbvk99d0', '1558989708', 'vZJi/rhzOjBNkV3YDB4LA3AyGFDKzK6UZ6/ywAgOedc=', '67b7f0bd7d84c289f5f1ea04cd90bd929108fcca78f6efb8efc50530287aa5d7759ac850151817fb449e2a63dfd76d1f2b01799ea5747e612ed24f31404da8ad'),
('ucg58rf74gdgad10980u1behfms0prr22rl6t9nbsqi1183cae1dvpr220p1la3f4uu6r61taf2c543dfm1dejufff6priu95oekru3', '1558988014', 'KyXMsY+ZUgpYlUaWzcL95GqnZxB0Hg9VqgaYGGJ2+iQ=', '3d48df4203a11fed46a9efd4a1e2deedec764fc93c99a7545e89dd682c3c1f79558f25b773cdf28423893c9d10597e4eb353d325acb6fa0c981e67336a387121'),
('uhnldcvrcrumgtkk5pkeir4bnaarcvd1jl2urhj3ap4rj1qs1jg3cfs070tiuq3tkts8oq7kqnj5r5jnuregqacbcnugb75717kbad0', '1558990254', 'k8FFJh+QnOok71Wlv9YIfFXDxzHQg5AmdHLsb3CYd2E=', '72cb1275b9d33ac95edc8b85849fa07a30b410fb1696c44ed1ef8d6b8dabcde2e70ab193b902099c6539359e9f639d63434276e20b029a5769e666fe8931be97'),
('uiepb59t2b1mh5ealpf0ntka1a74le37squo44i0j87ivphnt7l7ua54l71bsfee07jm0i5g0h4smuuvi1f22t1usbu1ngsc0rpq9i3', '1558991122', 'JHwhhgC6NtWRfALPbFaqkoPNK+jtTNXtPIplMBIUkuM=', 'ddaaf9dea1c90402a5863ba560985ef91ab721c7d18225656296d6575cfe1e3fa7b3624d9b2568a71133f530226fc02889adab7ede2e2a94a84d6a1063690ade'),
('uljjbte7fttvsj2up1kl5m83nmpq8i266nhsgurqtvngb9m0ghm2krjaafpma9d8nb9jtnjnru3fujt9hr3el5ibouffb873dhf99g2', '1558991073', 'HTR1TAidhm9LR7uNKMzq46HdNkFE5nlb6Ktzl8YDF14=', 'e94fc023b789c1528b6b3df90abf7bcd9f1e8243953ee15794e522af22d0cd7e42b7dfcc05c0698f7120678744d8aa498e696d6dda7573bb4481831d0b29286c'),
('uuuursqkg664d137sb45rsn8smf50qib61gjf5mqkjdqv1do7gmb28l9t2gn2i2nr0l1t15ic66kpg57v03mp8s0aa5bj077vl25mu0', '1558988020', '7rJPf5h7aES+O9D5zNzS8Fn1ev0UWvKHFX8Fkmbzre0=', '8e1bc1148e75e52994d679ebba3160ee3e0a5bc5f9a30985310b9cbb81d9ac3b595402359f5b12789fc51b2f445e692a3aeed9730b130b081f23d4c84411b168'),
('v35r9rfaihm6kdp2t0a4agvbhjok0vsmb0c1621uggg0jtfa34bjfqp6f0vvbbb9cob11puc1hmbibi20vbil0pbofvd14ig3sgcnk1', '1558991117', 'OAj+Z3BTTO9KeJyzBKmg6Lsl/anRUkwWdHmgo46sQTc=', '69ae96fbb3d1676938b55331aa0d7c049bd7710c0ea65eae0fa6feae0c3ad262e83186536724a44308e5dd6309d21abef4a04de6303bbe863d04b8ad1b127582'),
('v429l1lidg1qkerqq6nq64n75de0mvk1bvdv17mgfill2m9fmauvk0kgf4gkk2c9ftrcmqgcf2vta9le2u9p1oi24d9ljkmhjjijvn2', '1558991271', 'wgioKnJoY5/fMqcVwqHyYcc9a9CCASb05xruBLmUr4U=', '0d7a74f411b83427edfa042d70e461f878a8f4cd3e8c73f958e3676495821ab0488c73de38efb714385437132c7d006d7730e9c674f00d8604e08d654c0aac42'),
('v73s92mq87vva2ghbtoe6l6e74', '1558989015', '4zRzGF3LCH7eOqNIFd/PWWaNeLQ91Pi1utFsu/dAglY=', 'f02237e9ef09f14b3e0473a9eedd4bddf4c182fd095d5fb187d95184164b118e14b42b05290181523145c7f1addb5c3088cdb6bcc12724523d9a3dc6976ea2b1'),
('v8se18nbcf1oegl6i3q7gopt9svg4aol0kpdhdj8tjljf7nfh72vpvlrgq4k5ifrrfg7rpq52cdmblrls3v77ptlh8k27tk84vs2703', '1558991128', '5v3nmu3K5w7RdYrHfK1D/gs8PptfIwyBtdEfUZxpM/o=', '9f6d332228e3e58f99b92dd77bc411c65eb2fab823a48a14d4e228115bdf55054f058e9c31d826b9117599b628302859dea43ddb41188b8c6ceab5cb1e1e0ee1'),
('vtn7onv4p4smttqnpcp3m6p7p41a75ipkkeeqi0fs6hlunb9jh1nscc2v38mr0stb8h220p6kmovvk98eiane0jpj799k5s0rtcbl71', '1558991129', 'GROQuQQ5vcIGrULg3x7hviwFnj/horip4d9y8Ik+drc=', 'f3973a946c7cdffef83cf2a169901a22ed1158c95dd924743389789d43fe3294e3facef79f1004764d7c02da21adeb396499fb8f29f869816406209316a2ab28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesion_usuario`
--

CREATE TABLE `sesion_usuario` (
  `id_usuario` int(10) NOT NULL,
  `fecha_sesion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` int(5) NOT NULL,
  `id_post` int(5) NOT NULL,
  `tag` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nivel` char(1) NOT NULL,
  `clave` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `email`, `nivel`, `clave`) VALUES
(1, 'david', 'jduran1061539548@gmail.com', '3', '1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`compra_id`),
  ADD KEY `codigo_usuario` (`codigo_usuario`);

--
-- Indices de la tabla `ingresos_sistema`
--
ALTER TABLE `ingresos_sistema`
  ADD PRIMARY KEY (`codigo_usuario`);

--
-- Indices de la tabla `nomina`
--
ALTER TABLE `nomina`
  ADD PRIMARY KEY (`nomina_id`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`producto_id`);

--
-- Indices de la tabla `sesiones`
--
ALTER TABLE `sesiones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `compra_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT de la tabla `nomina`
--
ALTER TABLE `nomina`
  MODIFY `nomina_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `producto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`codigo_usuario`) REFERENCES `ingresos_sistema` (`codigo_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
