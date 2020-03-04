package Sah::Schema::hoaoms;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [hash => {
    summary => 'Hash of (defined-)array-of-(maybe-)strings',
    description => <<'_',

_
    of => ['aoms', {req=>1}, {}],
    examples => [
        {value=>'a', valid=>0},
        {value=>[], valid=>0},
        {value=>{}, valid=>1},
        {value=>{k=>undef}, valid=>0},
        {value=>{k=>'a'}, valid=>0},
        {value=>{k=>[]}, valid=>1},
        {value=>{k=>{}}, valid=>0},
        {value=>{k=>[], k2=>['a']}, valid=>1},
        {value=>{k=>[], k2=>[[]]}, valid=>0},
        {value=>{k=>[], k2=>[{}]}, valid=>0},
        {value=>{k=>[], k2=>[undef]}, valid=>1},
    ],
}, {}];

1;
# ABSTRACT:

=head1 SEE ALSO

L<Sah::Schema::hoaos> (hash of (defined-)arrays-of-(defined-)-strings).
