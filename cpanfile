requires 'perl', '5.010001';

requires 'Export::Attrs';
requires 'Scalar::Util';
requires 'Test::MockModule';

on configure => sub {
    requires 'Module::Build::Tiny', '0.034';
};

on test => sub {
    requires 'Test::Exception';
    requires 'Test::More', '0.96';
    recommends 'Time::HiRes';
    recommends 'EV';
    recommends 'Mojolicious';
    suggests 'AnyEvent';
};

on develop => sub {
    requires 'Test::Perl::Critic';
};
