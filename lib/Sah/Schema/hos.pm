package Sah::Schema::hos;

# DATE
# VERSION

our $schema = [hash => {
    summary => 'Hash of strings',
    description => <<'_',

Note that for flexibility, the strings are allowed to be undefs.

_
    of => ['str', {}, {}],
}, {}];

1;
# ABSTRACT:
