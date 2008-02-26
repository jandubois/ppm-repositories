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

__END__
perl Makefile.PL && nmake realclean && cls && perl Makefile.PL && nmake disttest
nmake dist TAR=ptar
chmod 7777 *.gz
perl -le" `cpan-upload $_` for( (sort glob q,*.gz,)[-1]) "
