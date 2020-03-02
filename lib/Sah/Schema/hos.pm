package Sah::Schema::hos;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [hash => {
    summary => 'Hash of (defined) strings',
    description => <<'_',

_
    of => ['str', {req=>1}, {}],
    examples => [
        {data=>'a', valid=>0},
        {data=>[], valid=>0},
        {data=>{}, valid=>1},
        {data=>{k=>'a'}, valid=>1},
        {data=>{k=>undef}, valid=>0},
        {data=>{k=>'a', k2=>[]}, valid=>0},
        {data=>{k=>'a', k2=>{}}, valid=>0},
    ],
}, {}];

1;
# ABSTRACT:

=head1 SEE ALSO

L<Sah::Schema::homs> (hash of maybe-strings) where the values of the hash
key-pairs are allowed to be undefs.
