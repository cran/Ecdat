use y;

use Data::Dumper;

my $livre="latot";
my $filebib="biblio.txt";
my $chemin="/home/yves/PackR/Ecdat";
my $cheminRd=$chemin."/man";
my $chemintxt=$chemin."/datatxt/";
my $livretxt="$chemin/srcdoc/$livre.txt";
print "$livretxt\n$cheminRd\n$chemintxt\n";

my $bib=&y::lirebib($filebib);
my $db=&y::liredb($livretxt);
&y::makerd($db,$bib,$cheminRd);
&y::verifdoc($db,$chemintxt);

&y::rdtopic($db,$cheminRd);
&y::rdeconomics($db,$cheminRd);
&y::rdbook($db,$cheminRd,$bib);
&y::rdtserie($db,$cheminRd);
&y::rdobservation($db,$cheminRd);

#print "$cheminRd  $chemintxt";
&y::printvar($db,$chemin);

#print Dumper($db->{application});
#print Dumper($db->{book});
print Dumper($db);
