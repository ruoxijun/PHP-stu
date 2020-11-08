/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : student

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 01/07/2020 17:27:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_article
-- ----------------------------
DROP TABLE IF EXISTS `t_article`;
CREATE TABLE `t_article`  (
  `firstname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jj` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `myeditor` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`firstname`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_article
-- ----------------------------
INSERT INTO `t_article` VALUES ('Activity', 'Android', '在 Android 平台上，Activity 是应用的基本构建块之一。它们充当用户与应用互动的入口点，同时也决定了用户在应用内部或应用之间导航的方式，前者如返回按钮，后者如“最近使用的应用”按钮。', '在 Android 平台上，Activity 是应用的基本构建块之一。它们充当用户与应用互动的入口点，同时也决定了用户在应用内部或应用之间导航的方式，前者如返回按钮，后者如“最近使用的应用”按钮。\n\n巧妙地管理 Activity 可以带来很多优势，例如：\n\n屏幕方向变化很流畅，不会破坏用户体验。\n\n用户数据不会在 Activity 转换过程中丢失。\n\n系统可在适当的情况下终止进程。\n\n本部分首先介绍 Activity 的概念，然后详细说明 Activity 生命周期，接着再讨论状态变化及其适应方式。之后，本部分将介绍 Activity 与应用内和应用间导航之间的关系。最后再阐述 Activity 与托管它们的进程之间的关系。\n\n\n');
INSERT INTO `t_article` VALUES ('android基础', 'Android', 'Android也有另一个操作系统，名为“Trusty操作系统”，作为“Trusty”当中的一部分，软件组件在移动设备中支持著一个可信运行环境（TEE）。', 'Android系统具有沙盒机制。沙盒于系统中是一个分离的区域，该区域无法获取系统的其他资源，除非在安装应用程序时，用户明确地授予其获取资源的权限。然而，这一限制对于出厂时预先安装的应用程序则可能无法实现。例如预先安装的相机应用程序，在没有完全禁用相机的情况下，无法关闭麦克风的权限。这个情况在Android的版本7和8当中也有效[282]。所有的应用程序都可先被简单地解压缩到沙盒中进行检查，并且将应用程序所需的权限提交给系统，再将其所需权限以列表的形式展现出来供用户查看。例如一个第三方的浏览器需要“连接网络”的权限，或者一些软件需要拨打电话，或发送短信等。用户可以根据所需权限来考虑自己是否需要安装，应用程序只能在用户同意之后才能进行安装[283]。');
INSERT INTO `t_article` VALUES ('HTML 基础- 4个实例', 'HTML', 'HTML 标题，HTML 标题（Heading）是通过<h1> - <h6> 标签来定义的', '<h1>这是一个标题</h1><h2>这是一个标题</h2><h3>这是一个标题</h3>\n\nHTML 段落\n\nHTML 段落是通过标签 <p> 来定义的.\n\n实例\n\n<p>这是一个段落。</p><p>这是另外一个段落。</p>\n\n\n\n\nHTML 链接\n\nHTML 链接是通过标签 <a> 来定义的.\n\n实例\n\n<a href=\"https://www.runoob.com\">这是一个链接</a>\n\n\n尝试一下 »\n\n提示:在 href 属性中指定链接的地址。\n\n(您将在本教程稍后的章节中学习更多有关属性的知识).\n\nHTML 图像\n\nHTML 图像是通过标签 <img> 来定义的.\n\n实例\n\n<img src=\"/images/logo.png\" width=\"258\" height=\"39\" />\n\n\n尝试一下 »\n\n注意： 图像的名称和尺寸是以属性的形式提供的。\n\n\n');
INSERT INTO `t_article` VALUES ('HTML基础', 'HTML', '超文本标记语言（英语：HyperText Markup Language，简称：HTML）是一种用于创建网页的标准标记语言。', 'HTML是一种基础技术，常与CSS、JavaScript一起被众多网站用于设计网页、网页应用程序以及移动应用程序的用户界面[3]。网页浏览器可以读取HTML文件，并将其渲染成可视化网页。HTML描述了一个网站的结构语义随着线索的呈现，使之成为一种标记语言而非编程语言。\n\nHTML元素是构建网站的基石。HTML允许嵌入图像与对象，并且可以用于创建交互式表单，它被用来结构化信息——例如标题、段落和列表等等，也可用来在一定程度上描述文档的外观和语义。HTML的语言形式为尖括号包围的HTML元素（如<html>），浏览器使用HTML标签和脚本来诠释网页内容，但不会将它们显示在页面上。\n\nHTML可以嵌入如JavaScript的脚本语言，它们会影响HTML网页的行为。网页浏览器也可以引用层叠样式表（CSS）来定义文本和其它元素的外观与布局。维护HTML和CSS标准的组织万维网联盟（W3C）鼓励人们使用CSS替代一些用于表现的HTML元素[4]。\n\n\n');
INSERT INTO `t_article` VALUES ('JavaScript', 'Android', 'JavaScript（通常缩写为JS）是一种高级的、解释型的编程语言[8]。', '1993年，伊利诺伊大学厄巴纳-尚佩恩分校的国家超级电脑应用中心（NCSA）发表了NCSA Mosaic，这是最早流行的图形接口网页浏览器，它在万维网的普及上发挥了重要作用。1994年，一家名为Mosaic Communications的公司在加州芒廷维尤成立了，并雇用了许多原来的NCSA Mosaic开发者用来开发Mosaic Netscape，该公司的目标是取代NCSA Mosaic成为世界第一的网页浏览器。第一个版本的网页浏览器Mosaic Netscape 0.9于1994年底发布。在四个月内，已经占据了四分之三的浏览器市场，并成为1990年代互联网的主要浏览器。为避免NCSA的商标所有权问题，该浏览器于同年更名为Netscape Navigator，该公司命名为Netscape Communications。网景预见到网络需要变得更动态。公司的创始人马克·安德森认为HTML需要一种胶水语言，让网页设计师和兼职程序员可以很容易地使用它来组装图片和插件之类的组件，且代码可以直接编写在网页标记中。\n\n1995年，网景招募了布兰登·艾克，目标是把Scheme语言嵌入到Netscape Navigator浏览器当中[11]。但更早之前，网景已经跟昇阳合作在Netscape Navigator中支持Java，这时网景内部产生激烈的争论[12]。后来网景决定发明一种与Java搭配使用的辅助脚本语言并且语法上有些类似[13]，这个决策导致排除了采用现有的语言，例如Perl、Python、Tcl或Scheme。为了在其他竞争提案中捍卫JavaScript这个想法，公司需要有一个可以运作的原型。艾克在1995年5月仅花了十天时间就把原型设计出来了。\n\n最初命名为Mocha，1995年9月在Netscape Navigator 2.0的Beta版中改名为LiveScript，同年12月，Netscape Navigator 2.0 Beta 3中部署时被重命名为JavaScript[1][14]，当时网景公司与昇阳电脑公司组成的开发联盟为了让这门语言搭上Java这个编程语言“热词”，因此将其临时改名为JavaScript，日后这成为大众对这门语言有诸多误解的原因之一[15]。\n\n\n');
INSERT INTO `t_article` VALUES ('JavaScript ( JS ) ', 'JavaScript', 'JavaScript ( JS ) 是一种具有函数优先的轻量级，解释型或即时编译型的编程语言。', 'JavaScript ( JS ) 是一种具有函数优先的轻量级，解释型或即时编译型的编程语言。虽然它是作为开发Web 页面的脚本语言而出名的，但是它也被用到了很多非浏览器环境中，例如 Node.js、 Apache CouchDB 和 Adobe Acrobat。JavaScript 是一种基于原型编程、多范式的动态脚本语言，并且支持面向对象、命令式和声明式（如函数式编程）风格。了解更多 JavaScript。\n\n本部分将专注于 JavaScript 语言本身，而非局限于网页或其他限制环境。想要了解网页有关的 APIs ，请参考 Web APIs 以及 DOM。\n\nJavaScript 的标准是 ECMAScript 。截至 2012 年，所有的现代浏览器都完整的支持  ECMAScript 5.1，旧版本的浏览器至少支持 ECMAScript 3 标准。2015年6月17日，ECMA国际组织发布了 ECMAScript 的第六版，该版本正式名称为 ECMAScript 2015，但通常被称为 ECMAScript 6 或者 ES6。自此，ECMAScript 每年发布一次新标准。本文档目前覆盖了最新 ECMAScript 的草案，也就是 ECMAScript2020。\n\n不要将 JavaScript 与 Java编程语言 混淆。虽然“Java”和“JavaScript”都是 Oracle 公司在美国和其他国家注册（或未注册）的商标，但是这两门语言在语法、语义与用途方面有很大不同。\n\n\n');
INSERT INTO `t_article` VALUES ('JavaScript 教程', 'JavaScript', 'JavaScript 是 Web 的编程语言。\n\n所有现代的 HTML 页面都使用 JavaScript。\n\nJavaScript 非常容易学。\n\n本教程将教你学习从初级到高级JavaScript知识。', '为什么学习 JavaScript?\n\nJavaScript web 开发人员必须学习的 3 门语言中的一门：\n\nHTML 定义了网页的内容\n\nCSS 描述了网页的布局\n\nJavaScript 网页的行为\n\n本教程是关于 JavaScript 及介绍 JavaScript 如何与 HTML 和 CSS 一起工作。\n\n\n\n\n谁适合阅读本教程?\n\n1. 如果您想学习 JavaScript，您可以学习本教程：\n\n了解 JavaScript 是如何与 HTML 和 CSS 一起工作的。\n\n2. 如果在此之前您已经使用过 JavaScript，您也可以阅读本教程：\n\nJavaScript 一直在升级，所以我们需要时刻了解 JavaScript 的新技术。\n\n\n\n\n阅读本教程前，您需要了解的知识：\n\n阅读本教程，您需要有以下基础：\n\nHTML 教程\n\nCSS 教程\n\n\n\n\nJavaScript 实例\n\n学习 100 多个 JavaScript 实例！\n\n在实例页面中，您可以点击 \"尝试一下\" 来查看 JavaScript 在线实例。\n\nJavaScript 实例\n\nJavaScript 对象实例\n\nJavaScript 浏览器支持实例\n\nJavaScript HTML DOM 实例\n\n\n\n\nJavaScript 测验\n\n在菜鸟教程中测试您的 JavaScript 技能！\n\n​\n');
INSERT INTO `t_article` VALUES ('JavaScript历史', 'JavaScript', 'JavaScript（通常缩写为JS）是一种高级的、解释型的编程语言[8]。', '1993年，伊利诺伊大学厄巴纳-尚佩恩分校的国家超级电脑应用中心（NCSA）发表了NCSA Mosaic，这是最早流行的图形接口网页浏览器，它在万维网的普及上发挥了重要作用。1994年，一家名为Mosaic Communications的公司在加州芒廷维尤成立了，并雇用了许多原来的NCSA Mosaic开发者用来开发Mosaic Netscape，该公司的目标是取代NCSA Mosaic成为世界第一的网页浏览器。第一个版本的网页浏览器Mosaic Netscape 0.9于1994年底发布。在四个月内，已经占据了四分之三的浏览器市场，并成为1990年代互联网的主要浏览器。为避免NCSA的商标所有权问题，该浏览器于同年更名为Netscape Navigator，该公司命名为Netscape Communications。网景预见到网络需要变得更动态。公司的创始人马克·安德森认为HTML需要一种胶水语言，让网页设计师和兼职程序员可以很容易地使用它来组装图片和插件之类的组件，且代码可以直接编写在网页标记中。\n\n1995年，网景招募了布兰登·艾克，目标是把Scheme语言嵌入到Netscape Navigator浏览器当中[11]。但更早之前，网景已经跟昇阳合作在Netscape Navigator中支持Java，这时网景内部产生激烈的争论[12]。后来网景决定发明一种与Java搭配使用的辅助脚本语言并且语法上有些类似[13]，这个决策导致排除了采用现有的语言，例如Perl、Python、Tcl或Scheme。为了在其他竞争提案中捍卫JavaScript这个想法，公司需要有一个可以运作的原型。艾克在1995年5月仅花了十天时间就把原型设计出来了。\n\n最初命名为Mocha，1995年9月在Netscape Navigator 2.0的Beta版中改名为LiveScript，同年12月，Netscape Navigator 2.0 Beta 3中部署时被重命名为JavaScript[1][14]，当时网景公司与昇阳电脑公司组成的开发联盟为了让这门语言搭上Java这个编程语言“热词”，因此将其临时改名为JavaScript，日后这成为大众对这门语言有诸多误解的原因之一[15]。\n\n\n');
INSERT INTO `t_article` VALUES ('JavaScript基础', 'JavaScript', 'JavaScript（通常缩写为JS）是一种高级的、解释型的编程语言[8]。', 'JavaScript是一门基于原型、函数先行的语言[9]，是一门多范式的语言，它支持面向对象编程，命令式编程，以及函数式编程。它提供语法来操控文本、数组、日期以及正则表达式等，不支持I/O，比如网络、存储和图形等，但这些都可以由它的宿主环境提供支持。它已经由ECMA（欧洲电脑制造商协会）通过ECMAScript实现语言的标准化[8]。它被世界上的绝大多数网站所使用，也被世界主流浏览器（Chrome、IE、Firefox、Safari、Opera）支持。\n\n虽然JavaScript与Java这门语言不管是在名字上，或是在语法上都有很多相似性，但这两门编程语言从设计之初就有很大的不同，JavaScript的语言设计主要受到了Self（一种基于原型的编程语言）和Scheme（一门函数式编程语言）的影响[9]。在语法结构上它又与C语言有很多相似（例如if条件语句、switch语句、while循环、do-while循环等）[10]。\n\n在客户端，JavaScript在传统意义上被实现为一种解释语言，但在最近，它已经可以被即时编译（JIT）执行。随着最新的HTML5和CSS3语言标准的推行它还可用于游戏、桌面和移动应用程序的开发和在服务器端网络环境运行，如Node.js。\n\n\n');
INSERT INTO `t_article` VALUES ('Java基础', 'JAVA', 'Java是一种广泛使用的计算机编程语言，拥有跨平台、面向对象、泛型编程的特性，广泛应用于企业级Web应用开发和移动应用开发。', '任职于太阳微系统的詹姆斯·高斯林等人于1990年代初开发Java语言的雏形，最初被命名为Oak，目标设置在家用电器等小型系统的编程语言，应用在电视机、电话、闹钟、烤面包机等家用电器的控制和通信。由于这些智能化家电的市场需求没有预期的高，太阳计算机系统（Sun公司）放弃了该项计划。随着1990年代互联网的发展，Sun公司看见Oak在互联网上应用的前景，于是改造了Oak，于1995年5月以Java的名称正式发布。Java伴随着互联网的迅猛发展而发展，逐渐成为重要的网络编程语言。');
INSERT INTO `t_article` VALUES ('Java基础2', 'JAVA', 'Java是一种广泛使用的计算机编程语言，拥有跨平台、面向对象、泛型编程的特性，广泛应用于企业级Web应用开发和移动应用开发。', '任职于太阳微系统的詹姆斯·高斯林等人于1990年代初开发Java语言的雏形，最初被命名为Oak，目标设置在家用电器等小型系统的编程语言，应用在电视机、电话、闹钟、烤面包机等家用电器的控制和通信。由于这些智能化家电的市场需求没有预期的高，太阳计算机系统（Sun公司）放弃了该项计划。随着1990年代互联网的发展，Sun公司看见Oak在互联网上应用的前景，于是改造了Oak，于1995年5月以Java的名称正式发布。Java伴随着互联网的迅猛发展而发展，逐渐成为重要的网络编程语言。\n\nJava编程语言的风格十分接近C++语言。继承了C++语言面向对象技术的核心，舍弃了容易引起错误的指针，以引用取代；移除了C++中的运算符重载和多重继承特性，用接口取代；增加垃圾回收器功能。在Java SE 1.5版本中引入了泛型编程、类型安全的枚举、不定长参数和自动装/拆箱特性。太阳微系统对Java语言的解释是：“Java编程语言是个简单、面向对象、分布式、解释性、健壮、安全与系统无关、可移植、高性能、多线程和动态的语言”\n\nJava不同于一般的编译语言或解释型语言。它首先将源代码编译成字节码，再依赖各种不同平台上的虚拟机来解释执行字节码，从而具有“一次编写，到处运行”的跨平台特性。在早期JVM中，这在一定程度上降低了Java程序的运行效率。但在J2SE1.4.2发布后，Java的运行速度有了大幅提升。\n\n与传统类型不同，Sun公司在推出Java时就将其作为开放的技术。全球的Java开发公司被要求所设计的Java软件必须相互兼容。“Java语言靠群体的力量而非公司的力量”是Sun公司的口号之一，并获得了广大软件开发商的认同。这与微软公司所倡导的注重精英和封闭式的模式完全不同，此外，微软公司后来推出了与之竞争的.NET平台以及模仿Java的C#语言。后来Sun公司被甲骨文公司并购，Java也随之成为甲骨文公司的产品。\n\n现时，移动操作系统Android大部分的代码采用Java编程语言编程。\n\n\n');
INSERT INTO `t_article` VALUES ('创建 Android 项目', 'Android', '本节课向您介绍如何使用 Android Studio 创建新的 Android 项目，并介绍该项目中的一些文件。\n\n要创建新的 Android 项目，请按以下步骤操作：', '安装最新版 Android Studio。\n\n在 Welcome to Android Studio 窗口中，点击 Start a new Android Studio project。\n\n​\n\n图 1. Android Studio 欢迎屏幕\n\n如果您已打开一个项目，请依次选择 File > New > New Project。\n\n在 Choose your project 窗口中，选择 Empty Activity，然后点击 Next。\n\n在 Configure your project 窗口中，完成以下操作：\n\n在 Name 字段中输入“My First App”。\n\n在 Package name 字段中输入“com.example.myfirstapp”。\n\n如果您想将项目放在其他文件夹中，请更改其 Save 位置。\n\n从 Language 下拉菜单中选择 Java 或 Kotlin。\n\n选中 Use androidx.* artifacts 旁边的复选框。\n\n其他选项保持原样。\n\n点击完成。\n\n经过一段时间的处理后，Android Studio 主窗口会出现。\n\n图 2. Android Studio 主窗口\n\n下面花一点时间了解一下最重要的文件。\n\n首先，确保已打开 Project 窗口（依次选择 View > Tool Windows > Project），并从该窗口顶部的下拉列表中选择 Android 视图。随后，您可以看到以下文件：\n\napp > java > com.example.myfirstapp > MainActivity\n\n这是主 Activity。它是应用的入口点。当您构建和运行应用时，系统会启动此 Activity 的实例并加载其布局。\n\napp > res > layout > activity_main.xml\n\n此 XML 文件定义了 Activity 界面的布局。它包含一个 TextView 元素，其中具有“Hello, World!”文本\n\napp > manifests > AndroidManifest.xml\n\n清单文件描述了应用的基本特性并定义了每个应用组件。\n\nGradle Scripts > build.gradle\n\n有两个使用此名称的文件：一个针对项目“Project: My First App”，另一个针对应用模块“Module: app”。每个模块均有自己的 build.gradle 文件，但此项目当前仅有一个模块。您可以使用每个模块的 build.file 控制 Gradle 插件编译应用的方式。要详细了解此文件，请参阅配置编译版本。\n\n要运行该应用，请继续学习下一课运行应用。\n\n\n');
INSERT INTO `t_article` VALUES ('运行应用', 'Android', '在上一课中，您创建了一个会显示“Hello, World!”的 Android 应用。现在，您可以在真实设备或模拟器上运行应用。', '在真实设备上运行\n\n按照以下步骤设置设备：\n\n使用一根 USB 数据线将设备连接到开发计算机。如果您是在 Windows 上开发的，则可能需要为设备安装合适的 USB 驱动程序。\n\n执行以下步骤，在开发者选项窗口中启用 USB 调试：\n\n打开设置应用。\n\n如果设备使用 Android v8.0 或更高版本，请选择系统。否则，请继续执行下一步。\n\n滚动到底部，然后选择关于手机。\n\n滚动到底部，然后点按版本号七次。\n\n返回上一屏幕，滚动到底部，然后点按开发者选项。\n\n在开发者选项窗口中，向下滚动以查找并启用 USB 调试。\n\n按照以下步骤操作，在设备上运行应用：\n\n在 Android Studio 中，从工具栏中的运行/调试配置下拉菜单中选择您的应用。\n\n在工具栏中，从目标设备下拉菜单中选择要用来运行应用的设备\n\n按照以下步骤操作，在模拟器上运行应用：\n\n在 Android Studio 中创建一个 Android 虚拟设备 (AVD)，模拟器可以使用它安装和运行您的应用。\n\n在工具栏中，从运行/调试配置下拉菜单中选择您的应用。\n\n从目标设备下拉菜单中，选择要用来运行应用的 AVD。\n\nAndroid Studio 会在 AVD 上安装应用并启动模拟器。您现在会看到应用中显示了“Hello, World!”。\n\n要开始开发应用，请继续学习下一课。\n\n\n');

-- ----------------------------
-- Table structure for t_article_class
-- ----------------------------
DROP TABLE IF EXISTS `t_article_class`;
CREATE TABLE `t_article_class`  (
  `classname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`classname`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_article_class
-- ----------------------------
INSERT INTO `t_article_class` VALUES ('Android');
INSERT INTO `t_article_class` VALUES ('HTML');
INSERT INTO `t_article_class` VALUES ('JAVA');
INSERT INTO `t_article_class` VALUES ('JavaScript');

-- ----------------------------
-- Table structure for t_classes
-- ----------------------------
DROP TABLE IF EXISTS `t_classes`;
CREATE TABLE `t_classes`  (
  `ClassID` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ProID` int(0) UNSIGNED NOT NULL COMMENT '所属专业ID',
  `Classname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '班级名称',
  `CreateTime` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `UpdateTime` int(0) UNSIGNED NULL DEFAULT NULL,
  `DeleteTime` int(0) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`ClassID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_classes
-- ----------------------------
INSERT INTO `t_classes` VALUES (1, 1, '计应用ZK1601', '2018-05-28 08:25:55', NULL, NULL);
INSERT INTO `t_classes` VALUES (2, 1, '计应用ZK1602', '2018-05-28 08:26:02', NULL, NULL);
INSERT INTO `t_classes` VALUES (3, 2, '软件技术ZK1601', '2018-05-28 08:26:11', NULL, NULL);

-- ----------------------------
-- Table structure for t_pro
-- ----------------------------
DROP TABLE IF EXISTS `t_pro`;
CREATE TABLE `t_pro`  (
  `ProID` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ProName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业名称',
  `CreateTime` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `UpdateTime` int(0) UNSIGNED NULL DEFAULT NULL,
  `DeleteTime` int(0) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`ProID`) USING BTREE,
  INDEX `ix_name`(`ProName`) USING BTREE,
  INDEX `ix_del`(`DeleteTime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '专业表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_pro
-- ----------------------------
INSERT INTO `t_pro` VALUES (1, '计算机应用技术', '2018-05-28 08:23:31', NULL, NULL);
INSERT INTO `t_pro` VALUES (2, '软件技术', '2018-05-28 08:23:36', NULL, NULL);

-- ----------------------------
-- Table structure for t_students
-- ----------------------------
DROP TABLE IF EXISTS `t_students`;
CREATE TABLE `t_students`  (
  `StudentID` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ClassID` int(0) UNSIGNED NOT NULL,
  `StuNo` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `StuName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `IDCard` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证号码',
  `CreateTime` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `UpdateTime` int(0) NULL DEFAULT NULL,
  `DeleteTime` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`StudentID`) USING BTREE,
  INDEX `ix_name`(`StuName`) USING BTREE,
  INDEX `ix_class`(`ClassID`) USING BTREE,
  INDEX `ix_del`(`DeleteTime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_students
-- ----------------------------
INSERT INTO `t_students` VALUES (1, 1, '1001', '张三', '123456199901021234', '2018-05-28 08:30:45', NULL, NULL);
INSERT INTO `t_students` VALUES (2, 1, '1002', '张三2', '123456199901021234', '2018-05-28 08:38:23', NULL, NULL);
INSERT INTO `t_students` VALUES (3, 1, '1003', '张三3', '123456199902021224', '2018-05-28 08:38:23', NULL, NULL);
INSERT INTO `t_students` VALUES (4, 1, '1004', '张三4', '123456199903021234', '2018-05-28 08:38:23', NULL, NULL);
INSERT INTO `t_students` VALUES (5, 1, '1005', '张三5', '123456199904021264', '2018-05-28 08:38:23', NULL, NULL);
INSERT INTO `t_students` VALUES (6, 1, '1006', '张三6', '123456199905021234', '2018-05-28 08:38:23', NULL, NULL);
INSERT INTO `t_students` VALUES (7, 2, '2001', '李四1', '123456200001021234', '2018-05-28 08:38:23', NULL, NULL);
INSERT INTO `t_students` VALUES (8, 2, '2002', '李四2', '123456200002021234', '2018-05-28 08:38:23', NULL, NULL);
INSERT INTO `t_students` VALUES (9, 2, '2003', '李四3', '123456200003021234', '2018-05-28 08:38:23', NULL, NULL);
INSERT INTO `t_students` VALUES (10, 2, '2004', '李四4', '123456200004021234', '2018-05-28 08:38:23', NULL, NULL);
INSERT INTO `t_students` VALUES (11, 2, '2005', '李四5', '123456200005021234', '2018-05-28 08:38:23', NULL, NULL);
INSERT INTO `t_students` VALUES (12, 3, '3001', '和和', '123456199901023001', '2018-05-28 00:00:00', NULL, NULL);
INSERT INTO `t_students` VALUES (13, 3, '3002', '够俄日', '123456199901023002', '2018-05-28 00:00:00', NULL, NULL);
INSERT INTO `t_students` VALUES (14, 3, '3003', '啤酒花甜热热', '123456199901023003', '2018-05-28 00:00:00', NULL, NULL);

-- ----------------------------
-- View structure for v_article_pro
-- ----------------------------
DROP VIEW IF EXISTS `v_article_pro`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_article_pro` AS select `t_article`.`firstname` AS `firstname`,`t_article`.`class` AS `class`,`t_article`.`jj` AS `jj`,`t_article`.`myeditor` AS `myeditor` from (`t_article_class` join `t_article` on((`t_article_class`.`classname` = `t_article`.`class`)));

-- ----------------------------
-- View structure for v_stu_class_pro
-- ----------------------------
DROP VIEW IF EXISTS `v_stu_class_pro`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_stu_class_pro` AS select `t_students`.`StudentID` AS `StudentID`,`t_students`.`ClassID` AS `ClassID`,`t_students`.`StuNo` AS `StuNo`,`t_students`.`StuName` AS `StuName`,`t_students`.`IDCard` AS `IDCard`,`t_classes`.`Classname` AS `Classname`,`t_pro`.`ProName` AS `ProName`,`t_classes`.`ProID` AS `ProID` from ((`t_students` join `t_classes` on((`t_students`.`ClassID` = `t_classes`.`ClassID`))) join `t_pro` on((`t_classes`.`ProID` = `t_pro`.`ProID`))) where (`t_students`.`DeleteTime` is null) order by `t_students`.`StuNo`;

SET FOREIGN_KEY_CHECKS = 1;
