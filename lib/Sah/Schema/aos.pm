package Sah::Schema::aos;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [array => {
    summary => 'Array of (defined) strings',
    description => <<'_',

The elements (strings) of the array must be defined.

_
    of => ['str', {req=>1}, {}],
    examples => [
        {value=>'a', valid=>0},
        {value=>[], valid=>1},
        {value=>{}, valid=>0},
        {value=>['a'], valid=>1},
        {value=>[undef], valid=>0},
        {value=>['a', []], valid=>0},
        {value=>[['a']], valid=>0},
    ],
}, {}];

1;
# ABSTRACT:

=head1 SEE ALSO

L<Sah::Schema::aoms> (array of maybe-strings) where the elements of the array
are allowed to be undefs.
