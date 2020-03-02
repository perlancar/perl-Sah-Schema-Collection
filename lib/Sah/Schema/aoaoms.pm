package Sah::Schema::aoaoms;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [array => {
    summary => 'Array of (defined-)array-of-maybe-strings',
    description => <<'_',

_
    of => ['aoms', {req=>1}, {}],
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
        {data=>[[undef], []], valid=>1},
    ],
}, {}];

1;
# ABSTRACT:

=head1 SEE ALSO

L<Sah::Schema::aoaos> (array of (defined-)arrays-of-(defined-)strings).
