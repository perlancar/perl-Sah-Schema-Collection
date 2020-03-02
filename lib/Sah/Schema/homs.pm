package Sah::Schema::homs;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [hash => {
    summary => 'Hash of maybe-strings',
    description => <<'_',

_
    of => ['str', {}, {}],
    examples => [
        {data=>'a', valid=>0},
        {data=>[], valid=>0},
        {data=>{}, valid=>1},
        {data=>{k=>'a'}, valid=>1},
        {data=>{k=>undef}, valid=>1},
        {data=>{k=>'a', k2=>[]}, valid=>0},
        {data=>{k=>'a', k2=>{}}, valid=>0},
    ],
}, {}];

1;
# ABSTRACT:

=head1 SEE ALSO

L<Sah::Schema::hos> (hash of (defined) strings) where the values of the hash
key-pairs are not allowed to be undefs.
