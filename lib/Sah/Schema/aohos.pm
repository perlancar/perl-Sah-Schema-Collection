package Sah::Schema::aohos;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [array => {
    summary => 'Array of (defined-)hash-of-(defined-)strings',
    description => <<'_',

_
    of => ['hos', {req=>1}, {}],
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
        {data=>[{}, {k=>undef}], valid=>0},
    ],
}, {}];

1;
# ABSTRACT:

=head1 SEE ALSO

L<Sah::Schema::aohoms> (array of (defined-)hashes-of-maybe-strings).
