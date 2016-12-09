package Sah::Schema::aos;

# DATE
# VERSION

our $schema = [array => {
    summary => 'Array of strings',
    description => <<'_',

Note that for flexibility, the elements are allowed to be undefs.

_
    of => ['str', {}, {}],
}, {}];

1;
# ABSTRACT:
