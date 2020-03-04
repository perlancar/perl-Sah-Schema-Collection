package Sah::Schema::hohos;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [hash => {
    summary => 'Hash of (defined-)hash-of-(defined-)strings',
    description => <<'_',

_
    of => ['hos', {req=>1}, {}],
    examples => [
        {value=>'a', valid=>0},
        {value=>[], valid=>0},
        {value=>{}, valid=>1},
        {value=>{k=>undef}, valid=>0},
        {value=>{k=>'a'}, valid=>0},
        {value=>{k=>[]}, valid=>0},
        {value=>{k=>{}}, valid=>1},
        {value=>{k=>{}, k2=>{k=>'a'}}, valid=>1},
        {value=>{k=>{}, k2=>{k=>[]}}, valid=>0},
        {value=>{k=>{}, k2=>{k=>{}}}, valid=>0},
        {value=>{k=>{}, k2=>{k=>undef}}, valid=>0},
    ],
}, {}];

1;
# ABSTRACT:

=head1 SEE ALSO

L<Sah::Schema::hohoms> (hash of (defined-)hashes-of-(maybe-)-strings).
