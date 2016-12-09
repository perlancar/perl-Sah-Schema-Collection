package Sah::Schema::aoaos;

# DATE
# VERSION

our $schema = [array => {
    summary => 'Array of array-of-strings',
    description => <<'_',

Note that for flexibility, the strings are allowed to be undefs.

_
    of => ['aos', {req=>1}, {}],
}, {}];

1;
# ABSTRACT:
