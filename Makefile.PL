use inc::Module::Install;

name 'UNIVERSAL-send';
license 'perl';
all_from 'lib/UNIVERSAL/send.pm';

# requires '';

tests 't/*.t';
test_requires 'Test::More' => 0.98;
test_requires 'Test::UseAllModules';

author_tests 'xt';
auto_set_repository;

WriteAll;
