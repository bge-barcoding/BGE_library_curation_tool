#!/usr/bin/env perl

use warnings;
use strict;
my$debug=0;
my%done; # documents weather a record has been already loaded or not. binary: 0/1
my@templist; # in-loop list of records per update event
my%donetemp; # serves as control for in-loop lists to avoid duplicates
my%lastupd; # documents the last update event of this record
my%species; # original species name. refers to identification
my%addstat; # refers to additionalStatus
my%stat; # refers to status
my%synonym;
my%identification; # original name (identification)
my%typo;
my@proclist; # list of all process IDs that were updated
my$procID;
my%changed;
my%notes;
my$syn; # documents synonyms
open(DAT,"logfile.txt");



while(<DAT>){
	my$line=$_;
	chomp$line;
	if($line=~/^(.*)\.[\s*\d*\w*]*- Process ID: ([^,]*),/) { 
		print "$line\n" if $debug == 1;
		print "$1	$2\n" if $debug == 1;
		$procID=$2;
		$lastupd{$2}=$1;
		push(@templist,$2) unless defined $donetemp{$2};
		$donetemp{$2}=1;
		push(@proclist,$2) unless defined $done{$2};
		$done{$2}=1;
	}
	if($line=~/^    species: (.*) -> (.*)/) {
		print "$1	$2\n" if $debug==1;
		$identification{$procID}=$1;
		$changed{$procID}=$2;
	}	
	if($line=~/    additionalStatus:  -> (.*)$/) {

		if($1 eq "synonym"){
			foreach(@templist) {
				$synonym{$_}="$changed{$procID}";
			}
		}
		if($1 eq "typo"){
			foreach(@templist) {
				$typo{$_}="$changed{$procID}";
			}			
		}
		@templist=();
	}

	if($line=~/^    status:  -> ([^,\s]*)/) {
		print "$1\n" if $debug==1;
		$stat{$procID}=$1;
	}
	if($line=~/^    curator_notes:  -> (.*)$/) {
		print "$1\n" if $debug==1;
		$notes{$procID}=$1;
	}
	    


}
exit if $debug==1;
unlink "output_logfile.csv";
open(OUT,">>output_logfile.csv");
print OUT "Process ID;status;identification;synonym;typo;curator notes;last updated\n";
foreach(@proclist) {
	print OUT "$_";
	print OUT ";";
	print OUT "$stat{$_}"if defined $stat{$_};
	print OUT ";";
	print OUT "$identification{$_}" if defined $identification{$_};
	print OUT ";";
	print OUT "$synonym{$_}" if defined $synonym{$_};
	print OUT ";";
	print OUT "$typo{$_}" if defined $typo{$_};
	print OUT ";";
	print OUT "$notes{$_}" if defined $notes{$_};
	print OUT ";";
	print OUT "$lastupd{$_}" if defined $lastupd{$_};
	print OUT "\n";
}