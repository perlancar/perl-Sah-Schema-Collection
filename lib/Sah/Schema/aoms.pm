package Sah::Schema::aoms;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [array => {
    summary => 'Array of maybe-strings',
    description => <<'_',

_
    of => ['str', {}, {}],
    examples => [
        {value=>'a', valid=>0},
        {value=>[], valid=>1},
        {value=>{}, valid=>0},
        {value=>['a'], valid=>1},
        {value=>[undef], valid=>1},
        {value=>['a', []], valid=>0},
        {value=>[['a']], valid=>0},
    ],
}, {}];

1;
# ABSTRACT:

=head1 SEE ALSO

L<Sah::Schema::aos> (array of (defined) strings) where the elements of the array
are not allowed to be undefs.
