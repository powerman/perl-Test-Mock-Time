package Test::Mock::Time;
use 5.010001;
use warnings;
use strict;
use utf8;
use Carp;

our $VERSION = 'v0.0.1';

1;
__END__

=encoding utf8

=head1 NAME

Test::Mock::Time - Deterministic time & timers for event loop tests


=head1 VERSION

This document describes Test::Mock::Time version v0.0.1


=head1 SYNOPSIS

  use Test::Mock::Time;


=head1 DESCRIPTION

This module replaces actual time with simulated time everywhere
(core time(), Time::HiRes, AnyEvent, EV, Mojolicious, …) and provide a way to
write deterministic tests for event loop based applications with timers.


=head1 SUPPORT

=head2 Bugs / Feature Requests

Please report any bugs or feature requests through the issue tracker
at L<https://github.com/powerman/perl-Test-Mock-Time/issues>.
You will be notified automatically of any progress on your issue.

=head2 Source Code

This is open source software. The code repository is available for
public review and contribution under the terms of the license.
Feel free to fork the repository and submit pull requests.

L<https://github.com/powerman/perl-Test-Mock-Time>

    git clone https://github.com/powerman/perl-Test-Mock-Time.git

=head2 Resources

=over

=item * MetaCPAN Search

L<https://metacpan.org/search?q=Test-Mock-Time>

=item * CPAN Ratings

L<http://cpanratings.perl.org/dist/Test-Mock-Time>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Test-Mock-Time>

=item * CPAN Testers Matrix

L<http://matrix.cpantesters.org/?dist=Test-Mock-Time>

=item * CPANTS: A CPAN Testing Service (Kwalitee)

L<http://cpants.cpanauthors.org/dist/Test-Mock-Time>

=back


=head1 AUTHOR

Alex Efros E<lt>powerman@cpan.orgE<gt>


=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2016 by Alex Efros E<lt>powerman@cpan.orgE<gt>.

This is free software, licensed under:

  The MIT (X11) License


=cut
