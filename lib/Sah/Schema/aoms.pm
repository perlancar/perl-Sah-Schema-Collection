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
        {data=>'a', valid=>0},
        {data=>[], valid=>1},
        {data=>{}, valid=>0},
        {data=>['a'], valid=>1},
        {data=>[undef], valid=>1},
        {data=>['a', []], valid=>0},
        {data=>[['a']], valid=>0},
    ],
}, {}];

1;
# ABSTRACT:

=head1 SEE ALSO

L<Sah::Schema::aos> (array of (defined) strings) where the elements of the array
are not allowed to be undefs.
