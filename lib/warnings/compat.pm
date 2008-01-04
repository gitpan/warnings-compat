package warnings::compat;
use strict;
use warnings;

{   no strict;
    $VERSION = '0.05';
}

"this is the end of the module"

__END__

=head1 NAME

warnings::compat - warnings.pm emulation for pre-5.6 Perls

=head1 VERSION

Version 0.05

=head1 SYNOPSIS

    use warnings::compat;


=head1 DESCRIPTION

This is a module for helping writing portable programs and modules across 
recent and old Perls. The trick is that the C<warnings> pragma is located 
in the core location while the C<warnings.pm> emulation module is installed 
in the F<site_perl> location, therefore C<use warnings::compat> should DTRT 
on every Perl version. 

If you want this module to be automatically installed by the CPAN shell on
old Perls, simply add it to the prerequisites list:

    PREREQ_PM => {
        "warnings::compat"  => 0,
    }


=head1 AUTHOR

SE<eacute>bastien Aperghis-Tramoni, C<< <sebastien at aperghis.net> >>


=head1 BUGS

Please report any bugs or feature requests to
C<bug-warnings-compat at rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org/Public/Dist/Display.html?Name=warnings-compat>.
I will be notified, and then you'll automatically be notified of progress on
your bug as I make changes.


=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc warnings::compat

You can also look for information at:

=over 4

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/warnings-compat>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/warnings-compat>

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=warnings-compat>

=item * Search CPAN

L<http://search.cpan.org/dist/warnings-compat>

=back


=head1 COPYRIGHT & LICENSE

Copyright 2006, 2007, 2008 SE<eacute>bastien Aperghis-Tramoni, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

