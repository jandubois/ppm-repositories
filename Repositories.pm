package PPM::Repositories;

use strict;
use warnings;

require Exporter;

our @ISA = qw( Exporter );
our @EXPORT = qw(%Repositories);
our @EXPORT_OK = qw(%Repo list);
our $VERSION = '0.11';

our %Repositories = (
    bribes => {
        location => 'http://www.bribes.org/perl/ppm/',
        Type     => 'Webpage',
        Active   => 1,
        Notes    => 'Bribes de Perl',
        PerlV    => [ 5.6, 5.8 ],
        PerlO    => ['MSWin32'],
    },
    devhelp => {
        location => 'http://ppd.develop-help.com/ppd',
        Type     => 'Webpage',
        Active   => 1,
        Notes    => 'Imager and HTML::Embperl',
	# this repository contains a mix of 5.6 and 5.8 packages, but
	# each individual module is for only one of the 2 versions. :(
        PerlV    => [ 5.6, 5.8 ],
        PerlO    => ['MSWin32'],
    },
    gtk2 => {
        location => 'http://www.lostmind.de/gtk2-perl/ppm/',
        Type     => 'Webpage',
        Active   => 1,
        Notes    => 'gtk2-perl bindings',
        PerlV    => [ 5.8 ],
        PerlO    => ['MSWin32'],
    },
    'gtk2-old' => {
        location => 'http://gtk2-perl.sourceforge.net/win32/ppm/',
        Type     => 'Webpage',
        Active   => 1,
        Notes    => 'Old "official" Gtk2 repository',
        PerlV    => [ 5.8 ],
        PerlO    => ['MSWin32'],
    },
    jenda => {
        location => 'http://jenda.krynicky.cz/perl',
        Type     => 'Webpage or PPMServer?',
        Active   => 0,
        Notes    => 'Jenda\'s modules',
        PerlV    => [ 5.6, 5.8 ],
        PerlO    => ['MSWin32'],
    },
    log4perl => {
        location => 'http://log4perl.sourceforge.net/ppm',
        Type     => 'Webpage',
        Active   => 1,
        Notes    => 'log4perl (pure perl)',
        PerlV    => [ ],
        PerlO    => ['perl'],
    },
    openi => {
	# stale; last update in Feb 2004
        location => 'http://openinteract.sourceforge.net/ppmpackages/',
        Type     => 'Webpage',
        Active   => 1,
        Notes    => 'Template Toolkit',
        PerlV    => [ 5.6, 5.8 ],
        PerlO    => ['MSWin32'],
    },
    roth => {
        location => 'http://www.roth.net/perl/packages/',
        Type     => 'Webpage',
        Active   => 1,
        Notes    => 'Dave Roth\'s modules',
        PerlV    => [ 5.6, 5.8],
        PerlO    => ['MSWin32'],
    },
    sablot => {
        location => 'http://ppm.gingerall.cz',
        Type     => 'Webpage',
        Active   => 1,
        Notes    => 'Get your XML::Sablotron here',
        PerlV    => [ 5.6, 5.8 ],
        PerlO    => ['MSWin32'],
    },
    tcool => {
        location => 'http://ppm.tcool.org/server/ppmserver.cgi?urn:PPMServer',
        Type     => 'PPMServer',
        Active   => 1,
        Notes    => 'Kenichi Ishigaki\'s repository (PPM3))',
        PerlV    => [ 5.8 ],
        PerlO    => ['MSWin32'],
    },
    tcoolS => {
        location => 'http://ppm.tcool.org/archives/',
        Type     => 'Webpage',
        Active   => 1,
        Notes    => 'Kenichi Ishigaki\'s repository (PPM4)',
        PerlV    => [ 5.8 ],
        PerlO    => ['MSWin32'],
    },
    theory => {
        location => 'http://theoryx5.uwinnipeg.ca/cgi-bin/ppmserver?urn:/PPMServer',
        Type     => 'PPMServer',
        Active   => 1,
        Notes    => 'University of Winnipeg: 5.6',
        PerlV    => [ 5.6 ],
        PerlO    => ['MSWin32'],
    },
    theoryS => {
        location => 'http://theoryx5.uwinnipeg.ca/ppmpackages',
        Type     => 'Webpage',
        Active   => 1,
        Notes    => 'University of Winnipeg: 5.6 (slower)',
        PerlV    => [ 5.6 ],
        PerlO    => ['MSWin32'],
    },
    theory58 => {
        location => 'http://theoryx5.uwinnipeg.ca/cgi-bin/ppmserver?urn:/PPMServer58',
        Type     => 'PPMServer',
        Active   => 1,
        Notes    => 'University of Winnipeg: 5.8 (PPM3)',
        PerlV    => [ 5.8 ],
        PerlO    => ['MSWin32'],
    },
    theory58S => {
        location => 'http://theoryx5.uwinnipeg.ca/ppms',
        Type     => 'Webpage',
        Active   => 1,
        Notes    => 'University of Winnipeg: 5.8 (PPM4)',
        PerlV    => [ 5.8 ],
        PerlO    => ['MSWin32'],
    },
    theory510 => {
        location => 'http://cpan.uwinnipeg.ca/PPMPackages/10xx/',
        Type     => 'Webpage',
        Active   => 1,
        Notes    => 'University of Winnipeg: 5.10',
        PerlV    => [ '5.10' ],
        PerlO    => ['MSWin32'],
    },
    trouchelle58 => {
        location => 'http://trouchelle.com/ppm/',
        Type     => 'Webpage',
        Active   => 1,
        Notes    => 'Trouchelle (PPM3)',
        PerlV    => [ 5.8 ],
        PerlO    => ['MSWin32'],
    },
    trouchelle510 => {
        location => 'http://trouchelle.com/ppm10/',
        Type     => 'Webpage',
        Active   => 1,
        Notes    => 'Trouchelle (PPM4)',
        PerlV    => [ '5.10' ],
        PerlO    => ['MSWin32'],
    },
);


our %Repo = (
    activestate => {
	www  => 'http://ppm.activestate.com/',
	desc => 'ActiveState',
	arch => {
	    # filled in below
	},
    },
    bribes => {
	www  => 'http://www.bribes.org/perl/ppmdir.html',
	desc => 'Bribes de Perl',
	arch => {
	    'MSWin32-x86' => {
		'5.6'  => 'http://www.bribes.org/perl/ppm',
		'5.8'  => 'http://www.bribes.org/perl/ppm',
		'5.10' => 'http://www.bribes.org/perl/ppm',
	    },
	},
    },
    gtk2 => {
	www  => 'http://www.lostmind.de/gtk2-perl',
	desc => 'gtk2-perl bindings',
	arch => {
	    'MSWin32-x86' => {
		'5.8' => 'http://www.lostmind.de/gtk2-perl/ppm/',
	    },
	},
    },
    log4perl => {
	www  => 'http://log4perl.sourceforge.net',
	desc => 'log4perl',
	arch => {
	    'perl' => 'http://log4perl.sourceforge.net/ppm',
	},
    },
    roth => {
	www  => 'http://www.roth.net/perl/packages/',
	desc => 'Dave Roth\'s modules',
	arch => {
	    'MSWin32-x86' => {
		'5.6' => 'http://www.roth.net/perl/packages/',
		'5.8' => 'http://www.roth.net/perl/packages/',
	    },
	},
    },
    sablotron => {
	www  => 'http://ppm.gingerall.cz',
	desc => 'XML::Sablotron',
	arch => {
	    'MSWin32-x86' => {
		'5.6' => 'http://ppm.gingerall.cz',
		'5.8' => 'http://ppm.gingerall.cz',
	    },
	},
    },
    tcool => {
	www  => 'http://ppm.tcool.org/intro/register',
	desc => 'Kenichi Ishigaki\'s repository',
	arch => {
	    'MSWin32-x86' => {
		'5.8'  => 'http://ppm.tcool.org/archives/',
	    },
	},
    },
    trouchelle => {
	www  => 'http://trouchelle.com/perl/ppmrepview.pl',
	desc => 'Trouchelle',
	arch => {
	    'MSWin32-x86' => {
		'5.8'  => 'http://trouchelle.com/ppm/',
		'5.10' => 'http://trouchelle.com/ppm10/',
	    },
	},
    },
    uwinnipeg => {
	www  => 'http://cpan.uwinnipeg.ca/',
	desc => 'University of Winnipeg',
	arch => {
	    'MSWin32-x86' => {
		'5.6'  => 'http://theoryx5.uwinnipeg.ca/ppmpackages/',
		'5.8'  => 'http://theoryx5.uwinnipeg.ca/ppms/',
		'5.10' => 'http://cpan.uwinnipeg.ca/PPMPackages/10xx/',
	    },
	},
    },
);

# Add URLs for all ActiveState repos
for my $arch (qw(MSWin32-x86 MSWin32-x64 i686-linux sun4-solaris darwin
		 PA-RISC1.1 PA-RISC2.0-LP64 IA64.ARCHREV_0 IA64.ARCHREV_0-LP64))
{
    $Repo{activestate}{arch}{$arch}{'5.8'}  = "http://ppm4.activestate.com/$arch/5.8/800/";
    next if $arch =~ /^(PA-RISC|IA64)/;
    $Repo{activestate}{arch}{$arch}{'5.10'} = "http://ppm4.activestate.com/$arch/5.10/1000/";
}

sub list {
    my($version,$arch) = @_;
    unless ($version) {
	require Config;
	$version = "$Config::Config{PERL_REVISION}.$Config::Config{PERL_VERSION}";
    }
    unless ($arch) {
	require Config;
	$arch = $Config::Config{archname};
    }
    1 while $arch =~ s/-(thread|multi|2level)//;

    my %list;
    foreach my $name (keys %Repo) {
	my %repo = %{$Repo{$name}};
	$repo{url} = $repo{arch}->{$arch}->{$version} || $repo{arch}->{perl};
	next unless $repo{url};
	delete $repo{arch};
	$list{$name} = \%repo;
    }
    return (%list);
}

1;

__END__

=head1 NAME

PPM::Repositories - a list of all I<known> ppm package repositories

=head1 SYNOPSIS

    # Print out all *Active* repositories for perl 5.8.x
    use PPM::Repositories;
    for my $rep ( sort keys %Repositories ) {
        next unless $Repositories{$rep}->{Active};
        next unless grep { $_ == 5.8 } @{ $Repositories{$rep}->{PerlV} };
        print "$rep\n";
        print "  $Repositories{$rep}->{location}\n";
        print "  $Repositories{$rep}->{Notes}\n\n";
    }


    # Print all repositories for the current architecture using the new API
    use PPM::Repositories;
    for my $version (qw(5.6 5.8 5.10)) {
        print "Perl $version\n";
        my %repo = PPM::Repositories::list($version);
        for my $name (sort keys %repo) {
            printf "  %-12s %-30s %s\n", $name, $repo{$name}{desc},
                                         $repo{$name}{url};
        }
        print "\n";
    }

=head1 DESCRIPTION

This is a list of PPM repositores for Perl 5.6 and later.

An example entry in C<%Repositories> looks like:

    bribes => {
        location => 'http://www.bribes.org/perl/ppm/',
        Type     => 'Webpage',
        Active   => 1,
        Notes    => 'Digest::*, Net::Pcap, Win32::* ...',
        PerlV    => [ 5.6, 5.8 ],
        PerlO    => ['MSWin32'],
    },

The meaning of the key/value pairs should be obvious.

Active is either 1, or 0, and it indicates whether or not that
particular repository was reachable and contained ppm packages at the
time this module was released.

PerlO is the value of $^O.  See L<perlport> for a list of values for
this variable.

=head2 EXPORT

C<%Repositories> is exported by default.

=head1 BUGS/ADDITIONS/ETC

Please use https://rt.cpan.org/NoAuth/Bugs.html?Dist=PPM-Repositories
to report bugs, request additions etc.

=head1 AUTHOR

D.H. (PodMaster)

Maintained since 2008 by Jan Dubois <jand@activestate.com>

=head1 LICENSE

Copyright (c) 2003,2004,2005 by D.H. (PodMaster). All rights reserved.

This module is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=head1 SEE ALSO

L<PPM>, L<PPM::Make>, L<CPANPLUS>, L<CPAN>.

=cut
