# perl Makefile.PL && nmake realclean && cls && perl Makefile.PL && nmake test
# cpan-upload -mailto yo@yo.yo -verbose -user podmaster PPM-Repositories-0.06.tar.gz

use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'PPM::Repositories',
    'VERSION_FROM'	=> 'Repositories.pm', # finds $VERSION
    'PREREQ_PM'		=> { Exporter => undef, }, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM => 'Repositories.pm', # retrieve abstract from module
      ) : ()),
);
