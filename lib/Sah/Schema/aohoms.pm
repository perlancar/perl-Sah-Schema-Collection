package Sah::Schema::aohoms;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [array => {
    summary => 'Array of (defined-)hash-of-maybe-strings',
    description => <<'_',

_
    of => ['homs', {req=>1}, {}],
    examples => [
        {data=>'a', valid=>0},
        {data=>[], valid=>1},
        {data=>{}, valid=>0},
        {data=>[undef], valid=>0},
        {data=>['a'], valid=>0},
        {data=>[[]], valid=>0},
        {data=>[{}], valid=>1},
        {data=>[{}, {k=>'a'}], valid=>1},
        {data=>[{}, {k=>[]}], valid=>0},
        {data=>[{}, {k=>{}}], valid=>0},
        {data=>[{}, {k=>undef}], valid=>1},
    ],
}, {}];

1;
# ABSTRACT:

=head1 SEE ALSO

L<Sah::Schema::aohos> (array of (defined-)hashes-of-(defined-)strings).
