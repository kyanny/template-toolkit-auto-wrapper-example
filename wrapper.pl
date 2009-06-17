#!/usr/bin/env perl
use strict;
use warnings;
use Template;

my $tmpl = shift || 'index.tt';
my $tt = Template->new({
    INCLUDE_PATH => 'tt',
    WRAPPER => ['outer.tt', 'inner.tt'],
});

$tt->process($tmpl, {message => 'Hello, World!'});
