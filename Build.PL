use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Text::Printf',
    license             => 'unrestricted',
    dist_author         => 'Eric J. Roode <roode@cpan.org>',
    dist_version_from   => 'lib/Text/Printf.pm',
    build_requires => {
                       'Test::More'         => '0.10',
                       'Readonly'           => '1.00',
                       'Exception::Class'   => '1.21',
                      },
    add_to_cleanup      => [ 'Text-Printf-*' ],
    sign => 1,
);

$builder->create_build_script();
