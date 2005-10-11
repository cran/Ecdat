$fichier="Tobacco.txt";
open fich, $fichier;
open fichout, ">Tobaccobis.txt";

my $I=0;
my $chaine;
while ($line=<fich>){
	my $z=chop($line);
	my $z=chop($line);
    if ($I>0){
	print "ligne non chopée $line\n";
	print "ligne chopée $line\n";
	print "le chop $z\n";
	if ($I%3 ==0){
	    $chaine=$chaine.$line;
	    print fichout "$chaine\n";
	    $chaine="";
	}
	else{
	    $chaine.=$line;
	}
    }
    else{
	print fichout "$line\n";
    }
    $I++;
}
