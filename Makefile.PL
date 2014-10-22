use ExtUtils::MakeMaker;

my @extras = ();

push(
    @extras,
    META_MERGE     => {
        resources => {
            repository => 'https://github.com/maxmind/geoip-api-perl',
        },
    },
) if ( $ExtUtils::MakeMaker::Version >= 6.46 );

WriteMakefile(
    NAME	 => 'PPM::Repositories',
    VERSION_FROM => 'Repositories.pm',
    @extras,
);