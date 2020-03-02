package Sah::Schema::aoaos;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [array => {
    summary => 'Array of (defined-)array-of-(defined-)strings',
    description => <<'_',

_
    of => ['aos', {req=>1}, {}],
    examples => [
        {data=>'a', valid=>0},
        {data=>[], valid=>1},
        {data=>{}, valid=>0},
        {data=>[undef], valid=>0},
        {data=>['a'], valid=>0},
        {data=>[[]], valid=>1},
        {data=>[[], []], valid=>1},
        {data=>[['a'], []], valid=>1},
        {data=>[['a','b'], []], valid=>1},
        {data=>[['a',[]], []], valid=>0},
        {data=>[[undef], []], valid=>0},
    ],
}, {}];

1;
# ABSTRACT:

=head1 SEE ALSO

L<Sah::Schema::aoaoms> (array of (defined-)arrays-of-maybe-strings).
