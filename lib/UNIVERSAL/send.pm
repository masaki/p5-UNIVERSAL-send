package UNIVERSAL::send;

use 5.008001;
use strict;
use warnings;
use Carp ();
use UNIVERSAL ();

our $VERSION = '0.01';
$VERSION = eval $VERSION;

sub __send__ {
    my $self = shift;
    my ($method, @args) = @_;

    Carp::croak("No method name given.") unless defined $method;
    return $self->$method(@args);
}

{
    no warnings 'redefine';
    *UNIVERSAL::send     = \&__send__;
    *UNIVERSAL::__send__ = \&__send__;
}

1;

=head1 NAME

UNIVERSAL::send - A module that ...

=head1 SYNOPSIS

    use UNIVERSAL::send;

=head1 DESCRIPTION

UNIVERSAL::send is

=head1 METHODS

=head1 AUTHOR

NAKAGAWA Masaki E<lt>masaki@cpan.orgE<gt>

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

=cut
