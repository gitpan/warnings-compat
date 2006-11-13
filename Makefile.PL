use strict;
use ExtUtils::MakeMaker;

warn "This module is only intended for pre-5.6 Perls. Perl $] already has the "
   . "real module, so nothing will be installed by the current distribution.\n"
    if $] >= 5.006;

WriteMakefile(
    NAME                => 'warnings',
    DISTNAME            => 'warnings-compat',
    LICENSE             => 'perl',
    AUTHOR              => 'Sébastien Aperghis-Tramoni <sebastien@aperghis.net>',
    VERSION_FROM        => 'lib/warnings.pm',
    ABSTRACT            => 'warnings.pm emulation for pre-5.6 Perls',
    PREREQ_PM => {
        'Test::More' => 0,
    },
    PL_FILES            => {},
    ( $] >= 5.006 ? (PM => {}) : () ),
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'warnings-compat-*' },
);
