package Sah::Schema::aohos;

# DATE
# VERSION

our $schema = [array => {
    summary => 'Array of hash-of-strings',
    description => <<'_',

Note that for flexibility, the strings are allowed to be undefs.

_
    of => ['hos', {req=>1}, {}],
}, {}];

1;
# ABSTRACT:
