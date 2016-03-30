CREATE TABLE IF NOT EXISTS `#__gcmserver_profiles` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `mid` int(6) NOT NULL DEFAULT '0',
  `regid` text NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL,
  `topic` int(1) NOT NULL DEFAULT '0',
  `address1` varchar(50) NOT NULL DEFAULT '',
  `address2` varchar(50) NOT NULL DEFAULT '',
  `locality` varchar(50) NOT NULL DEFAULT '',
  `pcode` varchar(10) NOT NULL DEFAULT '',
  `state` varchar(50) NOT NULL DEFAULT '',
  `country` varchar(50) NOT NULL DEFAULT '',
  `show` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(20) NOT NULL DEFAULT '',
  `mobile` varchar(20) NOT NULL DEFAULT '',
  `skype` varchar(255) NOT NULL DEFAULT '',
  `facebook` varchar(255) NOT NULL DEFAULT '',
  `twitter` varchar(255) NOT NULL DEFAULT '',
  `googleplus` varchar(255) NOT NULL DEFAULT '',
  `web` varchar(255) NOT NULL DEFAULT '',
  `blog` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(70) NOT NULL DEFAULT '',
  `logo_image` varchar(70) NOT NULL DEFAULT '',
  `logo_image_large` varchar(70) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(3) NOT NULL DEFAULT '0',
  `checked_out` int(6) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `#__gcmserver_notifications` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `topic_id` int(6) NOT NULL,
  `profile_id` int(6) NOT NULL,
  `regid` varchar(1000) NOT NULL DEFAULT '',
  `collapse_key` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `type` int(1) NOT NULL DEFAULT '0',
  `show` tinyint(1) NOT NULL DEFAULT '0',
  `phone` varchar(20) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(3) NOT NULL DEFAULT '0',
  `checked_out` int(6) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `sent` datetime NOT NULL,
  `language` char(7) NOT NULL,
  `result` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `#__gcmserver_topics` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `detail` text NOT NULL,
  `type` int(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(3) NOT NULL DEFAULT '0',
  `checked_out` int(6) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

INSERT INTO `#__gcmserver_topics` VALUES
(1, 'topic1', '', '', 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(2, 'topic2', '', '', 0, 0, 0, 0, '0000-00-00 00:00:00', '');
