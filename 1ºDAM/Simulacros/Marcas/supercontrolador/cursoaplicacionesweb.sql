-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-05-2023 a las 21:47:46
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cursoaplicacionesweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` int(2) DEFAULT NULL,
  `codigo` varchar(26) DEFAULT NULL,
  `nombre` varchar(61) DEFAULT NULL,
  `frasedescriptiva` varchar(190) DEFAULT NULL,
  `FK_profesores_nombrecompleto` int(1) DEFAULT NULL,
  `FK_directores_nombrecompleto` int(1) DEFAULT NULL,
  `imagen` varchar(40) DEFAULT NULL,
  `descripcion` varchar(380) DEFAULT NULL,
  `duracion` varchar(41) DEFAULT NULL,
  `precio` varchar(3) DEFAULT NULL,
  `precio2` varchar(10) DEFAULT NULL,
  `precio3` varchar(10) DEFAULT NULL,
  `url` varchar(10) DEFAULT NULL,
  `objetivos` varchar(343) DEFAULT NULL,
  `conocimientosprevios` varchar(83) DEFAULT NULL,
  `dirigidoa` varchar(201) DEFAULT NULL,
  `metodologia` varchar(132) DEFAULT NULL,
  `software` varchar(151) DEFAULT NULL,
  `tipodecurso` varchar(40) DEFAULT NULL,
  `preinscripcion` varchar(10) DEFAULT NULL,
  `matricula` varchar(10) DEFAULT NULL,
  `financiacion` varchar(10) DEFAULT NULL,
  `activo` int(1) DEFAULT NULL,
  `gratuito` varchar(1) DEFAULT NULL,
  `visualizaciones` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `codigo`, `nombre`, `frasedescriptiva`, `FK_profesores_nombrecompleto`, `FK_directores_nombrecompleto`, `imagen`, `descripcion`, `duracion`, `precio`, `precio2`, `precio3`, `url`, `objetivos`, `conocimientosprevios`, `dirigidoa`, `metodologia`, `software`, `tipodecurso`, `preinscripcion`, `matricula`, `financiacion`, `activo`, `gratuito`, `visualizaciones`) VALUES
(1, 'joomla', 'Curso de Joomla 3', 'Aprende a crear tus propios sitios web completos con el gestor de contenido más completo', 1, 1, 'Joomla-flat-logo-en.png', 'Joomla es un gestor de contenido que te permite crear tu propia página web sin tener que programar. En este curso gratuito vas a aprender a crear tus propios sitios web de forma completamente sencilla pero con todo el control que te proporciona esta herramienta', 'Este curso tiene una duración de 15 horas', '0 €', '', '', '', 'El objetivo de este curso es que el alumno sea capaz de crear sus propios sitios web sin necesidad de programar, usando el software Joomla', 'Este curso no requiere conocimientos previos', 'Cualquier persona que quiera aprender a crear sus propios sitios web', 'Este curso tiene una metodología completamente práctica', 'El curso no requiere el uso de ningun software especial. Se requiere disponer de un ordenador o dispositivo conectado a internet', 'Curso online gratuito sin soporte', '', '', '', 0, '1', 497),
(2, 'blenderinicial', 'Curso Inicial de Blender', 'Aprende los fundamentos de Blender 3D ', 1, 1, 'BlenderDesktopLogo.png', 'Blender es el software de creación 3D de software libre con más capacidades del mercado. El objetivo de este curso es proporcionarte los conocimientos necesarios para que puedas realizar proyectos de cualquier tipo en este programa 3D', '25 horas', '15', '', '', '', 'El objetivo de este curso es proporcionar los conocimientos necesarios para realizar cualquier proyecto de animación en el sector de la arquitectura, los efectos especiales y la animación de personajes', 'Este curso no requiere conocimientos de base', 'Este curso esta dirigido a cualquier persona interesada en aprender a trabajar en 3D con Blender', 'Este curso se presenta en formato online, con ejercicios prácticos dirigidos paso a paso', 'Blender 3D', 'Curso online con soporte', '', '', '', 1, '0', 589),
(5, '3dsmax', 'Curso completo de 3dsmax', 'Crea tus propias animaciones 3D con 3dsmax', 1, 1, '3ds-max-icon-400px-social.png', '3dsmax es el software de animación 3D más utilizado de la industria. El objettivo de este curso es proporcionarte una formación completa a través de cuatro módulos: inicial, arquitectura, animación de personajes y presentación de producto', 'Este curso tiene una duración de 25 horas', '15', '', '', '', 'El objetivo de este curso es proporcionar al alumno una formación completa acerca de 3dsmax', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona interesada en obtener una formación completa en cuando al uso de 3dsmax', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', 'Este curso requiere el uso del software Autodesk 3dsmax', 'Este curso es de tipo online con soporte', '', '', '', 0, '', 345),
(4, 'wordpress', 'Curso de Wordpress', 'Aprende a crear tus propias páginas web con el gestor de contenido más potente', 1, 1, 'logo-wordpress_318-33553.jpg', 'Wordpress es el software de creación de sitios web más usado en el mercado. El objetivo de este curso es mostrarte, paso a paso, como usar Wordpress.', '15 hroas', '20', '', '', '', 'El objetivo de este curso es que el alumno aprenda a usar el software Wordpress para crear sus propios sitios web sin programar', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona que desee aprender a crear sitios web sin necesidad de programar', 'Este curso tiene una medología completamente práctica, mostrando el uso del software a partir de un ejercicio completamente práctico', 'Este curso no requiere ningun tipo de software', 'Este es un curso online con soporte', '', '', '', 0, '0', 399),
(8, 'j2ee', 'Curso completo en desarrollo con Java y J2EE', 'Desarrolla aplicaciones web de escritorio y en el servidor con Java, Java Enterprise y MySQL', 1, 1, 'java-1.png', 'En este completo curso de Java y Java Enterprise, el alumno aprenderá tanto a crear aplicaciones de escritorio basadas en Java, como a crear aplicaciones web basadas en Java Enterprise. Además, tambien mostraremos como conectar tanto las aplicaciones de escritorio como las aplicaciones web a un servidor de bases de datos basado en MySQL', 'Este curso tiene una duración de 25 horas', '50', '', '', '', 'El objetivo de este curso es que el alumno aprenda a crear completas aplicaciones de escritorio y en la web, basadas en Java y Java Enterprise', 'Este curso empieza completamente desde cero y no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona que desee aprender a crear aplicaciones basadas en Java en en Java Enterprise', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', 'Este curso no requiere ningun software de partida', 'Este es un curso online con soporte', '', '', '', 0, '0', 576),
(7, 'aplicacionesweb', 'Curso en desarrollo de aplicaciones web', 'Desarrolla completas aplicaciones web 2.0 con HTML5, CSS3, PHP, Javascript y MySQL', 1, 1, 'aplicacionesweb.jpeg', 'Curso completo de creación de aplicaciones web, en el que aprenderás todo lo necesario para crear completas aplicaciones basadas en HTML5, CSS3, Javascript, PHP y MySQL', 'Este curso tiene una duración de 30 horas', '50', '', '', '', 'El curso tiene como objetivo mostrar al alumnado los procesos completos de creación de una web tanto en el lado del cliente como en el lado del servidor', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona interesada en conocer cómo se crean completas aplicaciones web', 'El curso muestra los contenidos teóricos constantemente aplicados en ejercicios practicos', 'Este curso requiere el uso de editores de código de software libre. Durante el curso se ofrecen las indicaciones necesarias para obtener estos editores', 'Este es un curso online con soporte', '', '', '', 0, '0', 597),
(9, 'html5css3', 'Curso en desarrollo de webs con HTML5 y CSS3', 'Desarrolla sitios web con HTML5 y CSS3', 1, 1, 'html5-logo-300.png', 'HTML5 y CSS3 son las tecnologías base para realizar cualquier web a dia de hoy. El objetivo de este curso es mostrar a los alumnos como desarrollar completas webs usando estos dos lenguajes de programacion', 'Este curso tiene una duración de 10 horas', '40', '', '', '', 'El objetivo de este curso es enseñar a los alumnos a crear paginas web basadas en HTML5', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona interesada en aprender a crear sitios web con HTML5 y CSS3', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', 'El curso no requiere el uso de ningun software especial. Se requiere disponer de un ordenador o dispositivo conectado a internet', 'Este es un curso online con soporte', '', '', '', 0, '0', 471),
(10, 'prestashop', 'Curso de PrestaShop', 'Crea tu propia tienda online con Prestashop sin necesidad de programar', 1, 1, 'descarga.png', 'El comercio online esta en auge, y todo parece indicar que esta tendencia se va a mantener a lo largo de los próximos años. PrestaShop es un software que te permite crear tu propia tienda virtual y publicarla online, sin tener que aprender a programar', 'Este curso tiene una duración de 15 horas', '40', '', '', '', 'El objetivo de este curso es enseñar a los alumnos a crear su propia tienda online, de forma gratuita y sin tener que aprender a programar', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona que quiera crear su propia tienda virtual onlin', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', 'Este curso no requiere ningun software de partida', 'Este es un curso online con soporte', '', '', '', 0, '1', 442),
(11, 'robotica', 'Curso de robotica con Arduino e impresión 3D', 'Crea tus propios robots usando Arduino como plataforma electrónica e imprimiendo tus propias piezas en 3D', 1, 1, 'Arduino_logo_pantone_2.png', 'Arduino es una plataforma de hardware libre que te permite crear tus propios sistemas animatrónicos de la forma más sencilla posible. ', 'Este curso tiene una duración de 25 horas', '49', '', '', '', 'El objetivo de este curso es mostrar a los alumnos como crear completos proyectos animatrónicos basados en Arduino e impresión 3D', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona interesada en aprender a crear sistemas animatrónicos basados en Arduino para la parte electrónica y técnicas de impresión 3D para las piezas del ensamblaje', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', 'Este curso no requiere ningun software de partida', 'Este es un curso online con soporte', '', '', '', 0, '0', 1254),
(12, 'sculptris', 'Escultura digital con Sculptris', 'Esculpe en 3D con el software gratuito más potente actualmente en el mercado', 1, 1, 'sculptris_logo.png', 'Sculptris es un programa de escultura digital 3D con un enfoque único, basado en Voxeles. Nos permite crear completos modelos 3D esculpidos con una técnica que nos ofrece resolución infinita, y un conjunto de herramientas que posibilitan el modelado sencillo de modelos 3D organicos', 'Este curso tiene una duración de 10 horas', '40', '', '', '', 'El objetivo de este curso es enseñar a los alumnos a realizar escultura digital 3D usando Sculptris', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona interesada en aprender técnicas de escultura digital 3D', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', 'Este curso no requiere ningun software de partida', 'Este es un curso online con soporte', '', '', '', 0, '1', 510),
(14, '3dsmaxbasico', 'Curso inicial de 3D Studio MAX', 'Aprende los fundamentos de trabajo de 3d studio max', 1, 1, '3ds-max-icon-400px-social.png', '3dsmax es el software de animación 3D más utilizado de la industria. El objettivo de este curso es proporcionarte una formación esencial de base para poder realizar cualquier tipo de proyecto', 'Este curso tiene una duración de 10 horas', '40', '', '', '', 'El objetivo de este curso es proporcionar una formación de base a cualquier persona interesada en realizar proyectos de infografía 3D con 3dsmax', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona interesada en aprender a usar 3dsmax', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', 'Este curso requiere que el alumno tenga instalado el software 3dsmax en su ordenador', 'Este es un curso online con soporte', '', '', '', 0, '', 405),
(15, '3dsmaxarquitectura', 'Curso de modelado y render arquitectónico con 3dsmax', 'Crea tus propios proyectos de arquitectura e interiorismo en 3D ', 1, 1, '3ds-max-icon-400px-social.png', ' 3D Studio Max es el software más usado para la creación de proyectos de visualización arquitectónica en 3D. Gracias a este curso, podrás no solo modelar entre tus proyectos, sino también obtener representaciones foto realistas de los mismos ', '', '40', '', '', '', ' El objetivo de este curso es que el alumno aprenda a crear proyectos ártica arquitectónicos tridimensionales a partir de los planos proporcionados en dos dimensiones. A lo largo del curso se muestra tanto la fase de modelado, como la materialidad, como la iluminación, como las cámaras, así como realizar animaciones de  tipo arquitectónico ', '', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '', 361),
(16, '3dsmaxpersonajes', 'Curso de modelado y animación de personajes con 3d studio max', 'Aprende a modelar, rigear, y animar tus propios personajes en 3D con 3dsmax 2014', 1, 1, '3ds-max-icon-400px-social.png', 'Tres de estudio Max es uno de los programas más usados para crear completas animaciones de personajes tridimensionales.  En este curso tres de estudio Max es uno de los programas más usados para crear completas animaciones de personajes tridimensionales. En este curso estaremos visualizando las herramientas necesarias para modelar, colocar esqueletos, y animar personajes en 3D ', '', '40', '', '', '', ' El objetivo de este curso es mostrar todas las herramientas y las técnicas necesarias para conseguir crear completas animaciones de personajes bípedos en 3D usando el software 3D Studio Max ', '', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '', 412),
(17, 'blender', 'Curso completo de Blender', 'Aprende a crear todo tipo de proyectos 3D con el software libre más potente', 1, 1, 'BlenderDesktopLogo.png', ' En este curso completo aprenderás todos los aspectos del manejo de Blender, el programa de software libre de creación 3D más extendido actualmente. Este curso incluye tanto los módulos inicial, como el de modelado y representación arquitectónica, modelado y representación de personajes, efectos especiales, partículas, simulación de humo y fuego, y representación foto realista ', '', '40', '', '', '', ' El objetivo de este curso consiste en proporcionar una formación completa al estudiante para que pueda afrontar cualquier proyecto en el que se requiera el uso del programa Blender 3D ', '', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 554),
(18, 'blendercycles', 'Curso de render fotorrealista con Blender Cycles', 'Crea tus imágenes con el más alto grado de fotorrealismo con el motor de render integrado dentro de Blender', 1, 1, 'BlenderDesktopLogo.png', ' Blender incorpora un  Motor de representación física que nos permite obtener imágenes y animaciones de la máxima calidad. En este curso te enseñamos cómo crear diferentes tipos de escena para sacarle el máximo partido a este excelente motor de representación 3D ', '', '40', '', '', '', 'El objetivo de este curso consiste en proporcionar una formación completa en cuanto a generación de imágenes y animaciones foto realistas con Blender 3D', 'para realizar este curso se requiere tener conocimientos fluidos de base de Blender', ' Éste curso está dirigido a todas aquellas personas que desean realizar representaciones foto realistas de la máxima calidad utilizando Blender 3D ', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 469),
(19, 'scratch', 'Curso de Scratch', 'Introdúcete en el mundo de la programación con el lenguaje Scratch', 1, 1, 'Scratch_Logo.png', 'Si deseas aprender a programar completamente desde cero, pero de la forma más sencilla, posible, este es el curso indicado para comenzar. Scratch es un entorno visual en el que se realizan programas de con nodos y bloques, de forma que cualquier persona, especialmente los más pequeños, pueden comenzar su camino en el mundo de la programación.', '12 horas', '20', '', '', '', 'El objetivo de este curso es que el alumno aprenda los conceptos básicos necesarios para programar en cualquier lenguaje, a través del sistema de creación visual de Scratch', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona que quiera empezar a aprender a programar, y quiera realizar la tarea mediante un lenguaje visual', 'El curso está basado en ejercicios prácticos en los que se va aplicando la teoría necesaria', 'Para realizar este curso unicamente es necesario un ordenador con un navegador web y conexión a internet', 'Este es un curso online con soporte', '', '', '', 0, '0', 425),
(20, 'bluegriffon', 'Curso de desarrollo HTML5 con BlueGriffon', 'Bluegriffon es un editor web de código abierto', 1, 1, 'bluegriffon.png', 'Bluegriffon es un completo editor de código HTML de tipo WYSIWYG', '', '20', '', '', '', '', 'Este curso no requiere conocimientos previos', 'Cualquier persona que quiera aprender a crear sus propios sitios web', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', 'Este curso no requiere ningun software de partida', 'Curso online gratuito sin soporte', '', '', '', 0, '1', 599),
(21, 'photoshop', 'Curso de Photoshop', 'Aprende a tratar imágenes basadas en pixeles', 1, 1, 'Photoshop.png', ' Photoshop es el programa comercial de retoque fotográfico y de imágenes más extendido del mercado. Gracias a este curso aprenderás a manejar este imprescindible programa que te permitirá crear, editar y retocar tus propias imágenes ', '', '20', '', '', '', ' El objetivo de este curso consiste en proporcionar una formación completa, paso a paso y desde cero del programa Photoshop para permitir que el alumno pueda realizar proyectos gráficos en los que haya que realizar retoques de imágenes basadas en píxeles ', ' Este curso no requiere ningún conocimiento previo ', ' Éste curso está dirigido a todas aquellas personas que deseen formarse en el uso de la herramienta Photoshop ', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 650),
(22, 'illustrator', 'Illustrator', 'Aprende a crear ilustraciones vectoriales', 1, 1, 'Illustrator_CC_icon.png', ' Si vas a generar ilustraciones vectoriales, este es el programa imprescindible que debes aprender, ya que contiene todas las herramientas necesarias para realizar cualquier proyecto gráfico basado en vectores ', '', '20', '', '', '', ' El objetivo de este curso es proporcionar al alumno el conocimiento del uso de la herramienta, y a crear completas ilustraciones vectoriales por ordenador ', ' Este curso no requiere conocimientos previos ', ' Éste curso está dirigido a cualquier persona interesada en aprender a crear ilustraciones vectoriales ', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 435),
(23, 'inDesign', 'inDesign', 'Aprende a crear maquetaciones multipágina', 1, 1, 'Adobe_InDesign_CC_icon.svg.png', ' Esta es la herramienta imprescindible si quieres aprender a realizar maqueta aciones de documentos multi página. Esta herramienta es de uso imprescindible junto con una herramienta de edición de imágenes y otra de ilustración vectorial, para poder crear completos proyectos gráficos ', '', '20', '', '', '', ' El objetivo de esta formación es mostrarle al alumno los procesos y las metodologías involucrados en la creación de documentos multi página maqueta dos con este software. Además, se hace un refuerzo muy importante en la relación de este programa con Photoshop e illustrator ', 'Este curso requiere conocimientos previos del uso de herramientas de Adobe', ' Éste curso está dirigido a cualquier persona interesada en aprender a realizar maquetación es multi página usando Adobe InDesign ', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 408),
(24, 'proyectosgraficos', 'Proyectos gráficos con Adobe Creative Cloud', 'En este curso desarrollamos proyectos prácticos mediante la combinación de Photoshop, Illustrator e inDesign', 1, 1, 'adobecs.jpeg', 'En este curso te mostramos cómo crear proyectos gráficos mediante la combinación de herramientas de diseño de Adobe', '', '20', '', '', '', '', '', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 410),
(25, 'flashcs5', 'Crea sitios web con Flash', 'Aprende a crear tus propios sitios web con Adobe Flash', 1, 1, 'flashlogo.jpg', ' Flash es una tecnología de Adobe que nos permite crear páginas web dinámicas interactivas. Éste cursos que te muestra paso a paso cómo realizar un sitio web usando la tecnología de Adobe flash ', '', '20', '', '', '', ' El objetivo de este curso es proporcionar al alumno los conocimientos necesarios para desarrollar cualquier proyecto de desarrollo de sitio web usando la tecnología de Adobe flash. Se muestran las herramientas principales de la interfaz de usuario, así como una introducción a la programación en el lenguaje específico de la tecnología flash ', ' Este curso no requiere conocimientos previos ', ' Éste curso está dirigido a cualquier persona interesada en aprender a crear sitios web usando la tecnología de Adobe flash ', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 448),
(26, 'gimp', 'GIMP', 'Edita imágenes con el editor de código libre más potente', 1, 1, 'GIMP.jpg', ' En este curso aprenderás a editar tus propias imágenes y a retocar imágenes existentes usando el software libre más utilizado del sector. Este programa te permite crear tus propios proyectos gráficos utilizando un software completamente abierto, y sin tener que pagar por una licencia ', '', '0 €', '', '', '', ' El objetivo de este curso es proporcionar los conocimientos necesarios para crear cualquier proyecto gráfico utilizando software libre ', ' Este curso no requiere conocimientos previos ', ' Este curso está dirigido a cualquier persona interesada en aprender a crear proyectos gráficos basados en imágenes de mapas de bits utilizando uso fuera abierto ', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 499),
(27, 'inikscape', 'Inkscape', 'Creación de ilustraciones vectoriales con software libre', 1, 1, '1024px-Inkscape_Logo.svg.png', 'Con este curso aprenderás a crear ilustraciones vectoriales con el software libre Inkscape. Las ilustraciones vectoriales tienen una calidad ilimitada, ya que no se basan en píxeles, y son esenciales para el trabajo de ilustracion', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', 'Este curso está dirigido a cualquier persona interesada en aprender diseño gráfico', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 445),
(28, 'access', 'Access 2010', 'Creación de bases de datos con Access 2010', 1, 1, 'microsoft-access-logo.png', 'La gestión de bases de datos es un proceso imprescindible en cualquier empresa moderna. A través de este curso aprenderás a gestionar bases de datos de una forma eficiente, usando el software Microsoft Access', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', 'Este curso está dirigido a cualquier persona que desee aprender a trabajar con bases de datos empresariales', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 408),
(29, 'php', 'Curso de PHP', 'Aprende a crear aplicaciones en el lado del servidor', 1, 1, 'php.png', 'PHP es el lenguaje de programación del lado del servidor más utilizado para aplicaciones web 2.0. Aprende todo lo necesario para programar aplicaciones web con este curso de PHP', '', '40', '', '', '', '', ' Este curso no requiere conocimientos previos ', 'Este curso está dirigido a cualquier persona interesada en aprender a programar en el lenguaje PHP', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 499),
(30, 'phpprogramarunblog', 'Taller: Como programar un blog en PHP', 'Taller para aprender a programar un blog en PHP', 1, 1, 'php.png', 'En este taller te mostramos un ejemplo práctico de programación con PHP, para crear un blog con contenido', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', 'Este taller esta dirigido a personas que quieran profundizar en sus conocimientos en el lenguaje PHP', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 365),
(31, 'html5portafolio', 'Creación de un portafolio con HTML5', 'Taller de creación de un portafolio en HTML5 y CSS3', 1, 1, '2000px-HTML5_logo_and_wordmark.svg.png', 'Este taller te mostrará cómo crear un blog de portafolio, ussando tecnologías nativas como HTML5 y Javascript', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', 'Este curso está dirigido a personas que quieran aprender a hacer un portafolio con html5 y javascript', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 400),
(32, 'htmlmaquetacionmovil', 'Taller de maquetación móvil en HTML5', 'Taller en el que aprenderás como maquetar una aplicación móvil en HTML5', 1, 1, '2000px-HTML5_logo_and_wordmark.svg.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 387),
(33, 'mysql', 'MySQL', 'Curso para aprender a trabajar con bases de datos MySQL a través de phpMyAdmin', 1, 1, 'My-SqlLogo.png', '', '', '', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 407),
(34, 'dreamweavercs5', 'Dreamweaver CS5', 'Crea tus propios sitios web con Dreamweaver', 1, 1, 'dreamweaverloho.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 427),
(35, 'dreamweaverphp', 'PHP con dreamweaver', 'Aprende a crear aplicaciones del lado del servidor con PHP en Dreamweaver', 1, 1, 'dreamweaverloho.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 398),
(36, 'dreamweavertiendaonline', 'Creación de una tienda online con Dreamweaver', 'Aprende a maquetar una tienda online con HTML5 y CSS3 en Dreamweaver', 1, 1, 'dreamweaverloho.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 431),
(37, 'dreamweaverjquery', 'jQuery con Dreamweaver', 'Aprende a trabajar con la librería jQuery en Dreamweaver', 1, 1, 'dreamweaverloho.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 405),
(38, 'webapps', 'Curso de creación de Webapps', 'Aprende a crear apps móviles web con este completo curso', 1, 1, 'webapplogo.png', '', '', '40', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 424),
(39, 'html5css3-2', 'Curso de creación de sitios web con HTML5 y CSS3', 'Aprende a crear sitios web con las ultimas tecnologías', 1, 1, '2000px-HTML5_logo_and_wordmark.svg.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 403),
(40, 'windowsserver2012', 'Windows Server 2012', 'Instala y administra tu servidor con Windows Server versión 2012', 1, 1, 'windows-server-blue-a517bed8722d2e78.jpg', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 565),
(41, 'phpsqlite', 'Bases de datos SQLite con PHP', 'aprende a crear tus propias bases de datos SQLite y gestionarlas con PHP', 1, 1, 'Sqlite-square-icon.svg.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 627),
(42, 'phpcrearcms', 'Crea un CMS con PHP', 'Con este taller aprenderás a crear un CMS con PHP', 1, 1, 'php.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 477),
(43, 'phpintroduccion', 'Introducción a PHP', 'Introdúcete en el mundo de la programación de aplicaciones en el servidor', 1, 1, 'php.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 397),
(44, 'introduccionseo', 'Introducción al SEO', 'Conoce las técnicas que te permitirán posicionar tu sitio web', 1, 1, '577034-106vxE1514532250.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 399),
(45, 'analyticsintroduccion', 'Introducción a Analytics', 'Aprende a analizar a los visitantes de tus sitios web', 1, 1, 'google_analytics_oficial.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 398),
(47, 'mysql56', 'MySQL 5.6', 'Apende a trabajar con bases de datos MySQL a través del gestor phpMyAdmin', 1, 1, 'mysql-logo-square.jpg', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 408),
(48, 'mysql558', 'MySQL 5.5', 'Aprende a crear bases de datos con MySQL y a administrarlas con phpMyAdmin', 1, 1, 'mysql-logo-square.jpg', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 379),
(49, 'mysqlconexionphp', 'Conexión de MySQL con PHP', 'Aprende a conectar tus aplicaciones PHP con un servidor de bases de datos MySQL', 1, 1, 'mysql-logo-square.jpg', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 388),
(50, 'blendersatelites', 'Taller de creación de animación con Blender', 'El objetivo de este taller es ofrecerte una aplicación práctica de la creación de proyectos con Blender a través de una animación sobre una nave espacial que se acerca a la órbita de saturno', 1, 1, 'blender_logo_square.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 368),
(51, 'blenderarquitectura', 'Taller de arquitectura 3D con Blender', 'Aprede a crear y representar edificios en 3D con Blender', 1, 1, 'blender_logo_square.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 392),
(52, 'blenderanimacionpersonajes', 'Taller de animación de personajes 3D con Blender', 'Aprende a modelar, rigear, y animar tus propios personajes en 3D con Blender', 1, 1, 'blender_logo_square.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 427),
(53, 'wordpress41', 'Curso de Wordpress 4.1', 'Crea tu propio blog sin tener que programar', 1, 1, 'logo-wordpress_318-33553.jpg', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 407),
(54, 'wordpress31', 'Curso de Wordpress 3.1', 'Crea tu propio blog sin tener que programar', 1, 1, 'logo-wordpress_318-33553.jpg', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 388),
(55, 'wordpressconstructor', 'Plugin Constructor para Wordpress', 'Crea tus propias plantillas sin tener que programar', 1, 1, 'logo-wordpress_318-33553.jpg', '', '', '', '', '', '', '', '', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 371),
(56, 'wordpress35', 'Curso de Wordpress 3.5', 'Crea tu propio blog sin tener que programar', 1, 1, 'logo-wordpress_318-33553.jpg', '', '', '', '', '', '', '', '', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 367),
(57, 'wordpress342', 'Wordpress 3.4.2', 'Crea tu propio blog sin tener que programar', 1, 1, 'logo-wordpress_318-33553.jpg', '', '', '', '', '', '', '', '', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 331),
(58, 'wordpress351', 'Wordpress 3.5.1', 'Crea tu propio blog sin tener que programar', 1, 1, 'logo-wordpress_318-33553.jpg', '', '', '', '', '', '', '', '', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 381),
(59, 'suscripcion', 'Suscripcion', '', 1, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestion`
--

CREATE TABLE `gestion` (
  `Identificador` int(255) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` decimal(4,2) NOT NULL,
  `peso` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `dimensiones` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `unidades` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `gestion`
--

INSERT INTO `gestion` (`Identificador`, `nombre`, `descripcion`, `precio`, `peso`, `dimensiones`, `unidades`) VALUES
(1, 'Sandalias', 'Preciosas sandalias de piel perfectas para caminar', '49.99', '0.5', '20x30x20', 4),
(2, 'Botas de agua', 'Botas para saltar en los charcos cuando llueve y que no te mojes los pies', '65.00', '0.7', '40x50x20', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nombresninos`
--

CREATE TABLE `nombresninos` (
  `nombrenino` varchar(9) DEFAULT NULL,
  `totalnino` int(4) DEFAULT NULL,
  `genero` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `nombresninos`
--

INSERT INTO `nombresninos` (`nombrenino`, `totalnino`, `genero`) VALUES
('HUGO', 3313, 'H'),
('MATEO', 3248, 'H'),
('MARTIN', 3144, 'H'),
('LUCAS', 3024, 'H'),
('LEO', 2823, 'H'),
('DANIEL', 2592, 'H'),
('ALEJANDRO', 2525, 'H'),
('MANUEL', 2411, 'H'),
('PABLO', 2400, 'H'),
('ALVARO', 2070, 'H'),
('ADRIAN', 1906, 'H'),
('ENZO', 1843, 'H'),
('MARIO', 1782, 'H'),
('DIEGO', 1662, 'H'),
('DAVID', 1651, 'H'),
('OLIVER', 1390, 'H'),
('MARCOS', 1364, 'H'),
('THIAGO', 1344, 'H'),
('MARCO', 1317, 'H'),
('ALEX', 1313, 'H'),
('JAVIER', 1311, 'H'),
('IZAN', 1309, 'H'),
('BRUNO', 1278, 'H'),
('MIGUEL', 1258, 'H'),
('ANTONIO', 1233, 'H'),
('GONZALO', 1217, 'H'),
('LIAM', 1167, 'H'),
('GAEL', 1143, 'H'),
('MARC', 1068, 'H'),
('CARLOS', 1063, 'H'),
('JUAN', 1059, 'H'),
('ANGEL', 1031, 'H'),
('DYLAN', 1009, 'H'),
('NICOLAS', 1008, 'H'),
('JOSE', 996, 'H'),
('SERGIO', 991, 'H'),
('GABRIEL', 990, 'H'),
('LUCA', 972, 'H'),
('JORGE', 952, 'H'),
('DARIO', 874, 'H'),
('IKER', 798, 'H'),
('SAMUEL', 792, 'H'),
('ERIC', 788, 'H'),
('ADAM', 779, 'H'),
('HECTOR', 769, 'H'),
('FRANCISCO', 745, 'H'),
('RODRIGO', 736, 'H'),
('JESUS', 695, 'H'),
('ERIK', 690, 'H'),
('AMIR', 687, 'H'),
('JAIME', 686, 'H'),
('IAN', 684, 'H'),
('RUBEN', 679, 'H'),
('AARON', 667, 'H'),
('IVAN', 659, 'H'),
('PAU', 647, 'H'),
('VICTOR', 625, 'H'),
('GUILLERMO', 599, 'H'),
('LUIS', 592, 'H'),
('MOHAMED', 592, 'H'),
('PEDRO', 587, 'H'),
('JULEN', 585, 'H'),
('UNAI', 584, 'H'),
('RAFAEL', 576, 'H'),
('SANTIAGO', 554, 'H'),
('SAUL', 553, 'H'),
('ALBERTO', 547, 'H'),
('NOAH', 538, 'H'),
('AITOR', 533, 'H'),
('JOEL', 507, 'H'),
('NIL', 505, 'H'),
('JAN', 499, 'H'),
('POL', 499, 'H'),
('RAUL', 497, 'H'),
('MATIAS', 480, 'H'),
('MARTI', 476, 'H'),
('FERNANDO', 475, 'H'),
('ANDRES', 447, 'H'),
('RAYAN', 444, 'H'),
('ALONSO', 440, 'H'),
('ISMAEL', 435, 'H'),
('ASIER', 423, 'H'),
('BIEL', 410, 'H'),
('ANDER', 393, 'H'),
('ALEIX', 392, 'H'),
('AXEL', 385, 'H'),
('ALAN', 379, 'H'),
('IGNACIO', 376, 'H'),
('FABIO', 371, 'H'),
('NEIZAN', 357, 'H'),
('JON', 353, 'H'),
('TEO', 350, 'H'),
('ISAAC', 349, 'H'),
('ARNAU', 340, 'H'),
('LUKA', 335, 'H'),
('MAX', 334, 'H'),
('IMRAN', 330, 'H'),
('YOUSSEF', 330, 'H'),
('ANAS', 327, 'H'),
('ELIAS', 326, 'H'),
('LUCIA', 3432, 'M'),
('SOFIA', 3190, 'M'),
('MARTINA', 3042, 'M'),
('MARIA', 2839, 'M'),
('JULIA', 2436, 'M'),
('PAULA', 2201, 'M'),
('VALERIA', 2167, 'M'),
('EMMA', 2119, 'M'),
('DANIELA', 2015, 'M'),
('CARLA', 1831, 'M'),
('ALBA', 1788, 'M'),
('NOA', 1776, 'M'),
('ALMA', 1735, 'M'),
('SARA', 1715, 'M'),
('CARMEN', 1701, 'M'),
('VEGA', 1660, 'M'),
('LARA', 1529, 'M'),
('MIA', 1493, 'M'),
('VALENTINA', 1457, 'M'),
('OLIVIA', 1450, 'M'),
('CLAUDIA', 1408, 'M'),
('JIMENA', 1336, 'M'),
('LOLA', 1330, 'M'),
('CHLOE', 1293, 'M'),
('AITANA', 1255, 'M'),
('ABRIL', 1215, 'M'),
('ANA', 1201, 'M'),
('LAIA', 1183, 'M'),
('TRIANA', 1126, 'M'),
('CANDELA', 1109, 'M'),
('ALEJANDRA', 1081, 'M'),
('ELENA', 1036, 'M'),
('VERA', 991, 'M'),
('MANUELA', 985, 'M'),
('ADRIANA', 982, 'M'),
('INES', 946, 'M'),
('MARTA', 925, 'M'),
('CARLOTA', 910, 'M'),
('IRENE', 896, 'M'),
('VICTORIA', 834, 'M'),
('BLANCA', 821, 'M'),
('MARINA', 816, 'M'),
('LAURA', 780, 'M'),
('ROCIO', 775, 'M'),
('ALICIA', 768, 'M'),
('CLARA', 748, 'M'),
('NORA', 745, 'M'),
('LIA', 735, 'M'),
('ARIADNA', 683, 'M'),
('ZOE', 645, 'M'),
('AMIRA', 643, 'M'),
('GALA', 634, 'M'),
('CELIA', 632, 'M'),
('LEIRE', 590, 'M'),
('EVA', 563, 'M'),
('ANGELA', 560, 'M'),
('ANDREA', 538, 'M'),
('AFRICA', 530, 'M'),
('LUNA', 530, 'M'),
('AINHOA', 528, 'M'),
('AINARA', 501, 'M'),
('INDIA', 499, 'M'),
('NEREA', 493, 'M'),
('ONA', 492, 'M'),
('ELSA', 489, 'M'),
('ISABEL', 475, 'M'),
('LEYRE', 437, 'M'),
('GABRIELA', 432, 'M'),
('AINA', 421, 'M'),
('CAYETANA', 420, 'M'),
('IRIA', 419, 'M'),
('JANA', 406, 'M'),
('MAR', 404, 'M'),
('CLOE', 383, 'M'),
('LINA', 380, 'M'),
('JULIETA', 374, 'M'),
('ADARA', 362, 'M'),
('NAIA', 362, 'M'),
('IRIS', 361, 'M'),
('NOUR', 344, 'M'),
('MARA', 343, 'M'),
('HELENA', 329, 'M'),
('YASMIN', 326, 'M'),
('NATALIA', 322, 'M'),
('ARLET', 310, 'M'),
('DIANA', 302, 'M'),
('AROA', 294, 'M'),
('AMAIA', 289, 'M'),
('CRISTINA', 287, 'M'),
('NAHIA', 287, 'M'),
('ISABELLA', 286, 'M'),
('MALAK', 286, 'M'),
('ELIA', 284, 'M'),
('CAROLINA', 282, 'M'),
('BERTA', 273, 'M'),
('FATIMA', 269, 'M'),
('NURIA', 266, 'M'),
('AZAHARA', 263, 'M'),
('MACARENA', 263, 'M'),
('AURORA', 257, 'M');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `Identificador` int(255) NOT NULL,
  `idusuario` int(255) NOT NULL,
  `idproducto` int(255) NOT NULL,
  `cantidad` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`Identificador`, `idusuario`, `idproducto`, `cantidad`) VALUES
(1, 1, 2, 4),
(3, 3, 1, 4),
(5, 1, 2, 5);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `pedidos_de_cliente`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `pedidos_de_cliente` (
`usuario` varchar(255)
,`idusuario` int(255)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Identificador` int(255) NOT NULL,
  `usuario` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Aquí voy a guardar los datos de mis usuarios';

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Identificador`, `usuario`, `password`, `nombre`, `apellidos`, `email`, `direccion`, `telefono`) VALUES
(1, 'goncho', 'goncho', 'Goncho', 'Aguirre Boix', 'gonagb96@gmail.com', 'averestudiao', '669966996'),
(3, 'Isa', 'isacontra', 'Isabel', 'Gonzalez-Gallego', 'isaisa@gmail.com', 'benimamet', '677877888'),
(5, 'Rosa', 'rosacontra', 'Rosa', 'Gomez Ruíz', 'rosi@gmail.com', 'Calle Las Tablas', '654456655'),
(6, 'Xabe', 'xxbb', 'Isabel', 'Aldea', 'iab@gmail.com', 'Calle Minimas', '618108600'),
(7, 'Pepa', 'pepapepa', 'Manuela', 'Sierra', 'mansi@mail.com', 'Calle Laurel', '655478897'),
(12, 'gonagb', 'contrasena', 'Goncho', 'Aguirre Boix', 'gonagb96@gmail.com', 'calle la pantomima', '555198435');

-- --------------------------------------------------------

--
-- Estructura para la vista `pedidos_de_cliente`
--
DROP TABLE IF EXISTS `pedidos_de_cliente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pedidos_de_cliente`  AS SELECT `usuarios`.`usuario` AS `usuario`, `pedidos`.`idusuario` AS `idusuario` FROM (`usuarios` left join `pedidos` on(`usuarios`.`Identificador` = `pedidos`.`Identificador`))  ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `gestion`
--
ALTER TABLE `gestion`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `gestion`
--
ALTER TABLE `gestion`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
