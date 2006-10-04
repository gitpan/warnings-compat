use strict;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'warnings',
    DISTNAME            => 'warnings-compat',
    LICENSE             => 'perl',
    AUTHOR              => 'Sébastien Aperghis-Tramoni <sebastien@aperghis.net>',
    VERSION_FROM        => 'lib/warnings.pm',
    ABSTRACT_FROM       => 'lib/warnings.pm',
    PREREQ_PM => {
        'Test::More' => 0,
    },
    PL_FILES            => {},
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'warnings-compat-*' },
);
