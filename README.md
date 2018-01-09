[![Build Status](https://travis-ci.org/powerman/perl-Test-Mock-Time.svg?branch=master)](https://travis-ci.org/powerman/perl-Test-Mock-Time)
[![Coverage Status](https://coveralls.io/repos/powerman/perl-Test-Mock-Time/badge.svg?branch=master)](https://coveralls.io/r/powerman/perl-Test-Mock-Time?branch=master)

# NAME

Test::Mock::Time - Deterministic time & timers for event loop tests

# VERSION

This document describes Test::Mock::Time version v0.1.7

# SYNOPSIS

    use Test::Mock::Time;

    # All these functions will return same constant time
    # until you manually move time forward by some deterministic
    # value by sleep(), ff() or doing one tick of your event loop.
    say time();
    say localtime();
    say gmtime();
    say Time::HiRes::time();
    say Time::HiRes::gettimeofday();
    say Time::HiRes::clock_gettime(CLOCK_REALTIME());
    say Time::HiRes::clock_gettime(CLOCK_MONOTONIC());

    # All these functions will fast-forward time (so time() etc.
    # will return increased value on next call) and return immediately.
    # Pending timers of your event loop (if any) will not be processed.
    sleep(1);
    Time::HiRes::sleep(0.5);
    Time::HiRes::usleep(500_000);
    Time::HiRes::nanosleep(500_000_000);
    Time::HiRes::clock_nanosleep(500_000_000);

    # This will fast-forward time and process pending timers (if any).
    ff(0.5);

    # These will call ff() in case no other (usually I/O) event happens in
    # $Test::Mock::Time::WAIT_ONE_TICK seconds of real time and there are
    # some active timers.
    Mojo::IOLoop->one_tick;
    EV::run(EV::RUN_ONCE);

# DESCRIPTION

This module replaces actual time with simulated time everywhere
(core time(), Time::HiRes, EV, AnyEvent with EV, Mojolicious, …) and
provide a way to write deterministic tests for event loop based
applications with timers.

**IMPORTANT!** This module **must** be loaded by your script/app/test before
other related modules (Time::HiRes, Mojolicious, EV, etc.).

# EXPORTS

These functions are exported by default:

    ff

# INTERFACE

## WAIT\_ONE\_TICK

    $Test::Mock::Time::WAIT_ONE_TICK = 0.05;

This value is used to limit amount of real time spend waiting for
non-timer (usually I/O) event while one tick of event loop if there are
some active timers. In case no events happens while this time event loop
will be interrupted and time will be fast-forward to time when next timer
should expire by calling ff().

## ff

    ff( $seconds );
    ff();

Fast-forward current time by $seconds (can be fractional). All functions
like time() will returns previous value increased by $seconds after that.

Will run callbacks for pending timers of your event loop if they'll expire
while $seconds or if they've already expired (because you've used functions
like sleep() which fast-forward time without processing timers).

When called without params will fast-forward time by amount needed to run
callback for next pending timer (it may be 0 in case there are no pending
timers or if next pending timer already expired).

## Mocked functions/methods from other modules

See ["SYNOPSIS"](#synopsis) for explanation how they works.

- CORE::GLOBAL
    - time
    - localtime
    - gmtime
    - sleep
- Time::HiRes
    - time
    - gettimeofday
    - clock\_gettime
    - clock\_getres
    - sleep
    - usleep
    - nanosleep
    - clock\_nanosleep
- Mojo::Reactor::Poll

    All required methods.

- EV

    All required methods except:

        EV::once
        EV::Watcher::feed_event

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

Alex Efros <powerman@cpan.org>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2016- by Alex Efros <powerman@cpan.org>.

This is free software, licensed under:

    The MIT (X11) License
