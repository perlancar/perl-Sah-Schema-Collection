package Sah::Schema::hohos;

# DATE
# VERSION

our $schema = [hash => {
    summary => 'Hash of hash-of-strings',
    description => <<'_',

Note that for flexibility, the strings are allowed to be undefs.

_
    of => ['hos', {req=>1}, {}],
}, {}];

1;
# ABSTRACT:
