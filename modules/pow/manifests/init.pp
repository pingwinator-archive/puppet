class pow {

    file { "/Users/${id}/.powconfig":
        content => "export POW_DST_PORT=8080",
        ensure  => present
    }

    file { "/etc/apache2/other/zzz_pow.conf":
        ensure  => present,
        source  => "puppet:///modules/pow/zzz_pow.conf",
        require => Package['pow']
    }

    package { "pow":
        provider => brew,
        ensure   => installed,
        require  => File["/Users/${id}/.powconfig"]
    }
}
