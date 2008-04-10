package PPM::Repositories;

use strict;
use warnings;

require Exporter;

our @ISA = qw( Exporter );
our @EXPORT = qw(%Repositories);
our $VERSION = '0.11';

our %Repositories = (
    bribes => {
        location => 'http://www.bribes.org/perl/ppm/',
        Type     => 'Webpage',
        Active   => 1,
        Notes    => 'Digest::*, Net::Pcap, Win32::* ...',
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
    theory => {
        location => 'http://theoryx5.uwinnipeg.ca/cgi-bin/ppmserver?urn:/PPMServer',
        Type     => 'PPMServer',
        Active   => 1,
        Notes    => 'Get your mod_perl(s) here',
        PerlV    => [ 5.6 ],
        PerlO    => ['MSWin32'],
    },
    theoryS => {
        location => 'http://theoryx5.uwinnipeg.ca/ppmpackages',
        Type     => 'Webpage',
        Active   => 1,
        Notes    => 'Get your mod_perl(s) here(SLOWER)',
        PerlV    => [ 5.6 ],
        PerlO    => ['MSWin32'],
    },
    theory58 => {
        location => 'http://theoryx5.uwinnipeg.ca/cgi-bin/ppmserver?urn:/PPMServer58',
        Type     => 'PPMServer',
        Active   => 1,
        Notes    => 'Get your mod_perl(s) here',
        PerlV    => [ 5.8 ],
        PerlO    => ['MSWin32'],
    },
    theory58S => {
        location => 'http://theoryx5.uwinnipeg.ca/ppms',
        Type     => 'Webpage',
        Active   => 1,
        Notes    => 'Get your mod_perl(s) here(SLOWER)',
        PerlV    => [ 5.8 ],
        PerlO    => ['MSWin32'],
    },
    devhelp => {
        location => 'http://ppd.develop-help.com/ppd',
        Type     => 'Webpage',
        Active   => 1,
        Notes    => 'Get your Apache::Session here',
        PerlV    => [ 5.6 ],
        PerlO    => ['MSWin32'],
    },
    jenda => {
        location => 'http://jenda.krynicky.cz/perl',
        Type     => 'Webpage or PPMServer?',
        Active   => 0,
        Notes    => 'AWSOME (tons of Win32 related stuff by him)',
        PerlV    => [ 5.6, 5.8 ],
        PerlO    => ['MSWin32'],
    },
    openi => {
        location => 'http://openinteract.sourceforge.net/ppmpackages',
        Type     => 'Webpage',
        Active   => 1,
        Notes    => 'Template Toolkit!!!',
        PerlV    => [ 5.6, 5.8 ],
        PerlO    => ['MSWin32'],
    },
    roth => {
        location => 'http://www.roth.net/perl/packages',
        Type     => 'Webpage',
        Active   => 1,
        Notes    => 'More Win32:: stuff',
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
    gtk => {
        location => 'http://gtk2-perl.sourceforge.net/win32/ppm',
        Type     => 'Webpage',
        Active   => 1,
        Notes    => 'Get your Gtk2 modules here',
        PerlV    => [ 5.8 ],
        PerlO    => ['MSWin32'],
    },
);

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
