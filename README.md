[![Build Status](https://travis-ci.org/powerman/perl-Test-Mock-Time.svg?branch=master)](https://travis-ci.org/powerman/perl-Test-Mock-Time)
[![Coverage Status](https://coveralls.io/repos/powerman/perl-Test-Mock-Time/badge.svg?branch=master)](https://coveralls.io/r/powerman/perl-Test-Mock-Time?branch=master)

# NAME

Test::Mock::Time - Deterministic time & timers for event loop tests

# VERSION

This document describes Test::Mock::Time version v0.0.1

# SYNOPSIS

    use Test::Mock::Time;

# DESCRIPTION

This module replaces actual time with simulated time everywhere
(core time(), Time::HiRes, AnyEvent, EV, Mojolicious, …) and provide a way to
write deterministic tests for event loop based applications with timers.

# SUPPORT

## Bugs / Feature Requests

Please report any bugs or feature requests through the issue tracker
at [https://github.com/powerman/perl-Test-Mock-Time/issues](https://github.com/powerman/perl-Test-Mock-Time/issues).
You will be notified automatically of any progress on your issue.

## Source Code

This is open source software. The code repository is available for
public review and contribution under the terms of the license.
Feel free to fork the repository and submit pull requests.

[https://github.com/powerman/perl-Test-Mock-Time](https://github.com/powerman/perl-Test-Mock-Time)

    git clone https://github.com/powerman/perl-Test-Mock-Time.git

## Resources

- MetaCPAN Search

    [https://metacpan.org/search?q=Test-Mock-Time](https://metacpan.org/search?q=Test-Mock-Time)

- CPAN Ratings

    [http://cpanratings.perl.org/dist/Test-Mock-Time](http://cpanratings.perl.org/dist/Test-Mock-Time)

- AnnoCPAN: Annotated CPAN documentation

    [http://annocpan.org/dist/Test-Mock-Time](http://annocpan.org/dist/Test-Mock-Time)

- CPAN Testers Matrix

    [http://matrix.cpantesters.org/?dist=Test-Mock-Time](http://matrix.cpantesters.org/?dist=Test-Mock-Time)

- CPANTS: A CPAN Testing Service (Kwalitee)

    [http://cpants.cpanauthors.org/dist/Test-Mock-Time](http://cpants.cpanauthors.org/dist/Test-Mock-Time)

# AUTHOR

Alex Efros &lt;powerman@cpan.org>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2016 by Alex Efros &lt;powerman@cpan.org>.

This is free software, licensed under:

    The MIT (X11) License
