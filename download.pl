#!/usr/bin/env perl
use strict;
use warnings;
use autodie;
use v5.14;
$| = 1;

use Data::Dumper;
use File::Spec;
use File::Path   qw< make_path >;
use Getopt::Long qw< :config auto_abbrev >;

# Extract hyperlinks from a string
sub extractLinks {
	(local $_) = @_;
	my @links = ();
	s/\R+/ /g;
	foreach(m/<a\s+[^>\s][^>]*+>/gi){
		s/\s+href\s*=\s*/ href=/gi;
		s/\shref=\K'([^']*)'/<$1>/g;
		s/\shref=\K"([^"]*)"/<$1>/g;
		s/\shref=\K([^<>"'\s]+)/<$1>/g;
		push @links, m/\shref=<([^>]+)>/g;
	}
	return @links;
}

# Filter duplicate entries from an array
sub uniq {
	my %found = ();
	my $index = 0;
	my @unique = ();
	foreach(@_){
		next if $found{$_};
		push @unique, $_;
		$found{$_} = ++$index;
	}
	return @unique;
}

# Generate a makefile, not a dwarf planet
sub makeMake {
	my @input = sort { scalar($a) <=> scalar($b) } keys shift;
	say Dumper \@input;
}


our %tree = ();

sub outlinePage {
	my $url = shift;
	return if defined $tree{$url};
	say "Outlining: $url";
	
	$url =~ s/'/'\\''/g;
	my $html = `curl -sSL '$url'`;
	
	# Don't try scraping links from hosted HTML documents
	return unless
		$html =~ m/mailto:opensource\@apple\.com/ and
		$html =~ m/\R\h*<title>Source Browser<\/title>\h*\R/;
	
	(my $root = $url) =~ s|^(https?://[^/]+)\S*|$1|gi;
	my @links = ();
	foreach(extractLinks $html){
		next if /^mailto:/i;
		s|^(?:\./)+||;
		next if /^\.\.(?:$|\/)/;
		s|^/|$root/|;
		s|^(?!https?://)|$url/|i;
		s|//+|/|g;
		s|^https?:/\K(?!/)|/|i;
		s|/\./|/|g;
		s|/\.?$||;
		
		# Don't bother cleaning up paths with relative segments in them; we aren't
		# expecting any, and it's easier to just report any aberrations instead of
		# attempting a cleanup ourselves. Note that File::Spec(3) is useless here.
		if(m#/\.\.(?:/|$)#){
			warn "Ignoring path with unexpected `..' segments: $_\n";
			next;
		}
		
		next unless 0 == index $_, $url and $_ ne $url;
		push @links, $_;
	}
	@links = uniq @links;
	$tree{$url} = \@links;
	foreach(@links){
		# Assumption: Apple's source browser won't have any
		# “normal” files whose names end with `.auto.html`.
		next if m/[^\/]\.auto\.html$/;
		outlinePage($_);
	}
}

outlinePage "https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/";

say Dumper \%tree;
