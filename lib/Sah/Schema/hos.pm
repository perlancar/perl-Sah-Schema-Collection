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
        {value=>'a', valid=>0},
        {value=>[], valid=>0},
        {value=>{}, valid=>1},
        {value=>{k=>'a'}, valid=>1},
        {value=>{k=>undef}, valid=>0},
        {value=>{k=>'a', k2=>[]}, valid=>0},
        {value=>{k=>'a', k2=>{}}, valid=>0},
    ],
}, {}];

1;
# ABSTRACT:

=head1 SEE ALSO

L<Sah::Schema::homs> (hash of maybe-strings) where the values of the hash
key-pairs are allowed to be undefs.
