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
        {value=>'a', valid=>0},
        {value=>[], valid=>0},
        {value=>{}, valid=>1},
        {value=>{k=>'a'}, valid=>1},
        {value=>{k=>undef}, valid=>1},
        {value=>{k=>'a', k2=>[]}, valid=>0},
        {value=>{k=>'a', k2=>{}}, valid=>0},
    ],
}, {}];

1;
# ABSTRACT:

=head1 SEE ALSO

L<Sah::Schema::hos> (hash of (defined) strings) where the values of the hash
key-pairs are not allowed to be undefs.
