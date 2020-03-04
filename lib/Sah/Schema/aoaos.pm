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
        {value=>'a', valid=>0},
        {value=>[], valid=>1},
        {value=>{}, valid=>0},
        {value=>[undef], valid=>0},
        {value=>['a'], valid=>0},
        {value=>[[]], valid=>1},
        {value=>[[], []], valid=>1},
        {value=>[['a'], []], valid=>1},
        {value=>[['a','b'], []], valid=>1},
        {value=>[['a',[]], []], valid=>0},
        {value=>[[undef], []], valid=>0},
    ],
}, {}];

1;
# ABSTRACT:

=head1 SEE ALSO

L<Sah::Schema::aoaoms> (array of (defined-)arrays-of-maybe-strings).
