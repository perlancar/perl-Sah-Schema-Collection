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
        {value=>[{}, {k=>undef}], valid=>0},
    ],
}, {}];

1;
# ABSTRACT:

=head1 SEE ALSO

L<Sah::Schema::aohoms> (array of (defined-)hashes-of-maybe-strings).
