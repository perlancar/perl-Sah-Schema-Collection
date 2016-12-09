package Sah::Schema::hoaos;

# DATE
# VERSION

our $schema = [hash => {
    summary => 'Hash of array-of-strings',
    description => <<'_',

Note that for flexibility, the strings are allowed to be undefs.

_
    of => ['aos', {req=>1}, {}],
}, {}];

1;
# ABSTRACT:
