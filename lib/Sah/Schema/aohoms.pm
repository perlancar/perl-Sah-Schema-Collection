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
        {value=>'a', valid=>0},
        {value=>[], valid=>1},
        {value=>{}, valid=>0},
        {value=>[undef], valid=>0},
        {value=>['a'], valid=>0},
        {value=>[[]], valid=>0},
        {value=>[{}], valid=>1},
        {value=>[{}, {k=>'a'}], valid=>1},
        {value=>[{}, {k=>[]}], valid=>0},
        {value=>[{}, {k=>{}}], valid=>0},
        {value=>[{}, {k=>undef}], valid=>1},
    ],
}, {}];

1;
# ABSTRACT:

=head1 SEE ALSO

L<Sah::Schema::aohos> (array of (defined-)hashes-of-(defined-)strings).
