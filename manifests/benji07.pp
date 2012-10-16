node default {
    class { 'sublime-text2':
        source => 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.1.dmg',
        cmdLine => true,
        plugins => ["Alignment", "ApacheConf.tmLanguage", "Behat", "DocBlockr", "Markdown Preview", "Package Control", "PHP-Twig", "Phpcs", "sublime-jslint", "SublimeLinter", "TrailingSpaces", "ZenCoding"]
    }

    package { 'Alfred':
        provider => appdmg,
        ensure => present,
        source => "http://cachefly.alfredapp.com/alfred_1.3.1_261.dmg"
    }

    class { 'homebrew':
      command_line_tools_package => 'command_line_tools_for_xcode_4.5_os_x_mountain_lion.dmg',
      command_line_tools_source  => '/Users/benji07/Desktop/puppet/files/command_line_tools_for_xcode_4.5_os_x_mountain_lion.dmg',
    }

    include pow
}
