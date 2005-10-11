open DATA,"schooling.dat";
open OUT, ">schooling.txt";
my $I=0;
my $chaine;
while($line=<DATA>){
    chop($line);
    chop($line);
    if ($I==4){
	$chaine.=$line;
	print OUT "$chaine\n";
	$I=0;
	$chaine="";
    }
    else{
	$chaine.=$line;
	$I++;
    }
	
}
close DATA;
close OUT;

       
