package y;

use Data::Dumper;


sub liredb{
    my $fichier=@_[0];
    my $db={};
    open DATA, $fichier; 
    my %application;
    my %book;
    my %economics;
    my %timeseries;
    my %observation;
    while ($line=<DATA>){
	chomp($line);
	if ($line=~/^O\s(.*)/){
	    $Objet=$1;
	    $Ivar=0;
	    $Isource=0;
	    $Ireference=0;
	    $Irefpage=0;
	}
	if ($line=~/^T\s(.*)/){$db->{data}->{$Objet}->{"title"}=$1}
	if ($line=~/^f\s*([^\s]*)/){
	    $db->{data}->{$Objet}->{"frequency"}=$1;
	    my @tab=@{$timeseries->{$1}};
	    push(@tab,$Objet);
	    @{$timeseries->{$1}}=@tab;
    }
	if ($line=~/^n\s(.*)/){$db->{data}->{$Objet}->{"n"}=$1}
	if ($line=~/^t\s(.*)/){$db->{data}->{$Objet}->{"T"}=$1}
	if ($line=~/^s\s(.*)/){$db->{data}->{$Objet}->{"start"}=$1}
	if ($line=~/^e\s(.*)/){$db->{data}->{$Objet}->{"end"}=$1}
	if ($line=~/^D\s(.*)/){$db->{data}->{$Objet}->{"description"}=$1}
	if ($line=~/^N\s(.*)/){$db->{data}->{$Objet}->{"note"}=$1}
	if ($line=~/^U\s(.*)/){
	    $db->{data}->{$Objet}->{"object"}=$1;
	    my @tab=@{$observation->{$1}};
	    push(@tab,$Objet);
	    @{$observation->{$1}}=@tab;
	}
	if ($line=~/^C\s(.*)/){$db->{data}->{$Objet}->{"country"}=$1}
	if ($line=~/^H\s(.*)/){$db->{data}->{$Objet}->{"theme"}=$1}
	if ($line=~/^X\s(.*)/){$db->{data}->{$Objet}->{"examples"}=$1}
	if ($line=~/^L\s(.*)/){$db->{data}->{$Objet}->{"longdes"}=$1}
	if ($line=~/^A\s(.*)/){
	    my @tab=@{$application->{$1}};
	    push(@tab,$Objet);
	    @{$application->{$1}}=@tab;
	}
	if ($line=~/^E\s(.*)/){
	    my @tab=@{$economics->{$1}};
	    push(@tab,$Objet);
	    @{$economics->{$1}}=@tab;
	}

	if ($line=~/^V\s(.*)\s&\s(.*)/){
	    $db->{data}->{$Objet}->{"Variables"}->[$Ivar]=$1;
	    $db->{data}->{$Objet}->{"DesVar"}->[$Ivar]=$2;
	    $Ivar++;
	}
	if ($line=~/^S\s(.*)/){
	    $db->{data}->{$Objet}->{"source"}->[$Isource]=$1;
	    $Isource++;
	}
	if ($line=~/^B\s(.*)/){
	    $db->{data}->{$Objet}->{"reference"}->[$Ireference]=$1;
	    $Ireference++;
	    my @tab=@{$book->{$1}};
	    push(@tab,$Objet);
	    @{$book->{$1}}=@tab;
	}
	if ($line=~/^R\s(.*)/){
	    $db->{data}->{$Objet}->{"refpage"}->[$Irefpage]=$1;
	    $Irefpage++;
	}

	my $o;
	my $t=$db->{data}->{$Objet}->{"T"};
	my $n=$db->{data}->{$Objet}->{"n"};
	if ($t){
	    if ($n){
		$o=$n*$t;
	    }
	    else{
		$o=$t
		}
	}
	else{
	    $o=$n
	    }
	$db->{data}->{$Objet}->{"NbObs"}=$o;

    }
    $db->{application}=$application;
    $db->{book}=$book;
    $db->{economics}=$economics;
    $db->{timeseries}=$timeseries;
    $db->{observation}=$observation;
    $db;
}

sub lirebib{
    my $fichier=@_[0];
    my $bib={};
    open BIBLIO, $fichier;
    while ($line=<BIBLIO>){
	chomp($line);
	if ($line=~/^L\s(.*$)/){
	    $Label=$1;
	    $Ivar=0;
	    $Isource=0;
	}
	if ($line=~/^Y\s(.*)/){$bib->{$Label}->{"year"}=$1}
	if ($line=~/^T\s(.*)/){$bib->{$Label}->{"title"}=$1}
	if ($line=~/^K\s(.*)/){$bib->{$Label}->{"type"}=$1}
	if ($line=~/^E\s(.*)/){$bib->{$Label}->{"editor"}=$1}
	if ($line=~/^J\s(.*)/){$bib->{$Label}->{"journal"}=$1}
	if ($line=~/^P\s(.*)/){$bib->{$Label}->{"page"}=$1}
	if ($line=~/^K\s(.*)/){$bib->{$Label}->{"kind"}=$1}
	if ($line=~/^N\s(.*)/){$bib->{$Label}->{"numero"}=$1}
	if ($line=~/^I\s(.*)/){$bib->{$Label}->{"dans"}=$1}
	if ($line=~/^M\s(.*)/){$bib->{$Label}->{"mois"}=$1}
	if ($line=~/^e\s(.*)/){$bib->{$Label}->{"edition"}=$1}
	if ($line=~/^W\s(.*)/){$bib->{$Label}->{"URL"}=$1}
	if ($line=~/^S\s(.*)/){$bib->{$Label}->{"short"}=$1}
	if ($line=~/^A\s(.*)/){
	    $Inom=0;
	    @listenoms=split/&/, $1;
	    foreach $nom (@listenoms){
		@nomprenom=split/,/, $nom;
		$bib->{$Label}->{"authors"}->[$Inom]=[$nomprenom[0],$nomprenom[1]];
		$Inom++;
	    }
	}
    }
    $bib;
}

sub verifdoc{
    my $checknb=0;
    my $db=@_[0];
    my $chemindata=@_[1];
    foreach $base (keys %{$db->{data}}){
	my $fichDATA=$chemindata.$base.".txt";
	open DATA, $fichDATA;
	my @lgnfichier=<DATA>;
	my $nblignes=@lgnfichier-1;
	my $nbobs=$db->{data}->{$base}->{"NbObs"};
	if ($nbobs !=$nblignes){
	    print "Erreur : le fichier $base.txt  a $nblignes lignes contre $nbobs observations indiques dans la documentation\n";
	}
	my @varfichier=split(/\s+/,$lgnfichier[0]);
	if ($varfichier[0] eq /\s+/){shift(@varfichier)};
	my $vardoc=$db->{data}->{$base}->{"Variables"};
	my $nbvarfichier=@varfichier;
	my $nbvardoc=@$vardoc;
	if ($nbvarfichier!=$nbvardoc){
	    print "Erreur : le nombre de variables dans le fichier $base.txt est de $nbvarfichier contre $nbvardoc indiques dans la documentation\n";
	    $checknb=1;
	}
	if ($checknb==0){
	    for($i=0;$i<$nbvardoc;$i++){
		my $unevardoc=$$vardoc[$i];
		my $unevarfichier=$varfichier[$i];
		if ($unevardoc ne $unevarfichier){
		    print "Erreur : variable $unevarfichier dans le fichier $base.Rd et $unevardoc dans la documentation\n";
		}
	    }
	}
    }
}

sub printbib{
    my $bib=@_[0];
    my $book=@_[1];
    my $titre=$bib->{$book}->{"title"};
    my $nom=$bib->{$book}->{"authors"};
    my $editeur=$bib->{$book}->{"editor"};
    my $kind=$bib->{$book}->{"kind"};
    my $year=$bib->{$book}->{"year"};
    my $journal=&majfirst($bib->{$book}->{"journal"});
    my $numero=$bib->{$book}->{"numero"};
    my $dans=$bib->{$book}->{"dans"};
    my $page=$bib->{$book}->{"page"};
    my $mois=$bib->{$book}->{"mois"};
    my $url=$bib->{$book}->{"URL"};
    my $chaine="";
    my $chaineurl="";
    my $refbib;
    if (@$nom==1){
	$chaine.=$$nom[0][0] .",".$$nom[0][1];
    }
    elsif (@$nom==2){
	$chaine.=$$nom[0][0] .",".$$nom[0][1]." and ". $$nom[1][1] ." ".$$nom[1][0];
    }
	else {
	    my $nbauteurs=@$nom;
	    $chaine=$$nom[0][0]." ,".$$nom[0][1];
	    for (my $Iauteurs=1; $Iauteurs<$nbauteurs-1 ; $Iauteurs++){
		$chaine.=", ".$$nom[$Iauteurs][1]." ".$$nom[$Iauteurs][0];
	    }
	    $chaine.=" and ".$$nom[$nbauteurs-1][1]." ".$$nom[$nbauteurs-1][0];
    }
    if ($kind eq "A"){
	$refbib="$chaine ($year) \\dQuote{$titre}, \\emph{$journal}, ";
	my @sschaine;
	if ($numero){
	    push(@sschaine,"\\bold{$numero}");
	    }
	if ($mois){
	    push(@sschaine,$mois);
	    }
	if ($page){
	    push(@sschaine,"$page");
	}
	$refbib.=join(", ",@sschaine);

    }
    elsif ($kind eq "B"){
      if ($url){$chaineurl=", \\url{$url}";}
	$refbib="$chaine ($year) \\emph{$titre}, $editeur$chaineurl";
   } 
    elsif ($kind eq "C"){
	$refbib="$chaine ed. ($year) \\emph{$titre}, $editeur";
   } 
    elsif ($kind eq "I"){
	$refin=&printbib($bib,$dans);
	$refbib="$chaine ($year) \\emph{$titre} \\emph{in}  $refin ";
   } 
    elsif ($kind eq "U"){
	$refbib="$chaine ($year) \\emph{$titre}, $journal";
   }
    $refbib;
}

sub makerd{
    my $db=@_[0];
    my $bib=@_[1];
    my $chemin=@_[2];
    my $chaine;
    foreach $clef (sort keys %{$db->{data}}){
	$filerd="$chemin/$clef.Rd";
	open OUT, ">$filerd";
	my $T=&majfirst($db->{data}->{$clef}->{"title"});
	my $f=$db->{data}->{$clef}->{"frequency"};
	my $t=$db->{data}->{$clef}->{"T"};
	my $n=$db->{data}->{$clef}->{"n"};
	my $s=$db->{data}->{$clef}->{"start"};
	my $e=$db->{data}->{$clef}->{"end"};
	my $o=$db->{data}->{$clef}->{"NbObs"};
	my $S=$db->{data}->{$clef}->{"source"};
	my $B=$db->{data}->{$clef}->{"reference"};
	my $R=$db->{data}->{$clef}->{"refpage"};
	my $D=$db->{data}->{$clef}->{"description"};
	my $N=$db->{data}->{$clef}->{"note"};
	my $H=$db->{data}->{$clef}->{"theme"};
	my $U=$db->{data}->{$clef}->{"object"};
	my $C=$db->{data}->{$clef}->{"country"};
	my $A=$db->{data}->{$clef}->{"application"};
	my $V=$db->{data}->{$clef}->{"Variables"};
	my $DV=$db->{data}->{$clef}->{"DesVar"};
	my $X=$db->{data}->{$clef}->{"examples"};
	my $L=$db->{data}->{$clef}->{"longdes"};

	print OUT "\\name{$clef}\n";
	print OUT "\\docType{data}\n";
	print OUT "\\alias{$clef}\n";
	print OUT "\\title{$T}\n";
	print OUT "\\description{\n";
	if ($f eq 'none'){
	    if ($s){$chaine="a cross-section from $s"}
	    elsif($U eq 'artificial'){$chaine="artificial datas"}
	    else{$chaine="a cross-section"}
	}
	elsif($t){
	    if ($n){$chaine="a panel of $n observations  from $s  to $e"}
	    else{$chaine="$f observations from $s to $e"}
	}
	my $p=substr($D,0,1);
	if ($p eq "&"){
	    $chaine=substr($D,1,length($D)-1);
	    print OUT "  $chaine\n}\n";
	}
	else{
	    print OUT "  $chaine\n\n";
	    print OUT " \\emph{number of observations} :  $o\n\n";
	    if ($U ne 'artificial'){
		if ($U){print OUT " \\emph{observation} :  $U\n\n";}
	    }
#	    print OUT "   \\emph{theme} :  $H \\cr\n   \\emph{country} :  $C \\cr\n   \\emph{application} :  $A \\cr\n  }\n";
	    if ($C){print OUT "   \\emph{country} :  $C\n\n"}
	    if ($L){
		print OUT "$L\n";
	    }
	    print OUT "}\n";
	    print OUT "\\usage{data($clef)}\n";
	    my $type;
	    if (($f eq 'none') or ($f eq 'daily') or ($f eq 'weekly') or ($t and $n)){
		$type="dataframe"}
	    else{$type="time serie"}
	    print OUT "\\format{A $type containing :\n  \\describe{\n";
	    my $I=0;
	    foreach $var (@$V){
		my $descrip=$$DV[$I];
		if ( $descrip=~/^[A-Z]/){
		    my $z=substr($descrip,0,1);
		    my $y=substr($descrip,1,length($descrip));
		    $z=~tr/A-Z/a-z/;
		    $descrip=$z.$y;
		}
		if ( $descrip=~/^\*/){
		    my $z=substr($descrip,0,1);
		    my $y=substr($descrip,1,length($descrip));
		    $descrip=$y;
		}

		print OUT "    \\item{$var}{$descrip}\n";
		$I++;
	    }
	    print OUT "  }\n";
	    print OUT "}\n";
	}
#	if ($N){
#	    print OUT "\\note{\\dQuote{$N.}}\n";
#	}
	if ($$S[0]){
	    my $chaine;
	    print OUT "\\source{\n";
	    foreach (@$S){
		my $p=substr($_,0,1);
		if ($p eq "&"){
		    $chaine=substr($_,1,length($_)-1);
		}
		else{
		    $chaine=&y::printbib($bib,$_);
		}
		print OUT "    $chaine.\n\n";
	    }
	    print OUT "}\n";
	}
	print OUT "\\references{\n";
	my $I=0;
	foreach  (@$B){
	    my $chaine=&y::printbib($bib,$_);
	    my $refpage=$$R[$I];
	    if ($refpage){print OUT "    $chaine, $refpage.\n\n";
		      }
	    else{
		print OUT "    $chaine.\n";}
	    $I++;
	}
	print OUT "}\n";
#	if ($D){
#	    if ($p ne "&"){
#		print OUT "\\section{Original description}{\\dQuote{$D.}}\n";
#	    }
#	}
	print OUT "\\seealso{\\code{\\link{Index.Books}}, \\code{\\link{Index.Economics}}, \\code{\\link{Index.Econometrics}}, \\code{\\link{Index.Observations}}";
	if ($f ne 'none'){print OUT ", \\code{\\link{Index.Time.Series}}}\n\n"}
	else{print OUT "}\n\n"}
#	if ($X) {
#	    @leslignes=split(/\s*;\s*/,$X);
#	    print OUT "\\examples{\n ";
#	    foreach(@leslignes){
#		print OUT "$_\n";
#	    }
#	    print OUT "\n}\n\n";
#	}
	print OUT "\\keyword{datasets}\n";
	close OUT;
    }
}


sub rdtopic{
    my $db=$_[0];
    my $chemin=$_[1];
    $filerd="$chemin/Index.Econometrics.Rd";
    open OUT, ">$filerd";
    print OUT "\\name{Index.Econometrics}\n";
    print OUT "\\docType{documentation}\n";
    print OUT "\\alias{Index.Econometrics}\n";
    print OUT "\\title{Econometric fields}\n";
    print OUT "\\description{\n";
    print OUT "\\describe{\n";
    foreach $topic (sort keys %{$db->{application}}){
	print OUT "\\item $topic \n \\itemize{\n";
	foreach (sort @{$db->{application}->{$topic}}){
	    my $titre=&majfirst($db->{data}->{$_}->{title});
	    print OUT "\\item \\code{\\link{$_}} : $titre \n";
	}
	print OUT "}\n";
    }
    print OUT "}\n";
    print OUT "\n}\n";
    print OUT "\\keyword{documentation}\n";
}

sub rdobservation{
    my $db=$_[0];
    my $chemin=$_[1];
    $filerd="$chemin/Index.Observations.Rd";
    open OUT, ">$filerd";
    print OUT "\\name{Index.Observations}\n";
    print OUT "\\docType{documentation}\n";
    print OUT "\\alias{Index.Observations}\n";
    print OUT "\\title{Observations}\n";
    print OUT "\\description{\n";
    print OUT "\\describe{\n";
    foreach $topic (sort keys %{$db->{observation}}){
	print OUT "\\item $topic \n \\itemize{\n";
	foreach (sort @{$db->{observation}->{$topic}}){
	    my $titre=&majfirst($db->{data}->{$_}->{title});
	    print OUT "\\item \\code{\\link{$_}} : $titre \n";
	}
	print OUT "}\n";
    }
    print OUT "}\n";
    print OUT "\n}\n";
    print OUT "\\keyword{documentation}\n";
}

sub rdtserie{
    my $db=$_[0];
    my $chemin=$_[1];
    $filerd="$chemin/Index.Time.Series.Rd";
    open OUT, ">$filerd";
    print OUT "\\name{Index.Time.Series}\n";
    print OUT "\\docType{documentation}\n";
    print OUT "\\alias{Index.Time.Series}\n";
    print OUT "\\title{Time Series}\n";
    print OUT "\\description{\n";
    print OUT "\\describe{\n";
    foreach $ts (sort keys %{$db->{timeseries}}){
	if ($ts ne 'none'){
	    print OUT "\\item $ts \n \\itemize{\n";
	    foreach (sort @{$db->{timeseries}->{$ts}}){
		if(!$db->{data}->{$_}->{n}){
		    my $titre=&majfirst($db->{data}->{$_}->{title});
		    print OUT "\\item \\code{\\link{$_}} : $titre \n";
		}
	    }
	    print OUT "}\n";
	}
    }
    print OUT "}\n";
    print OUT "\n}\n";
    print OUT "\\keyword{documentation}\n";
}

sub rdeconomics{
    my $db=$_[0];
    my $chemin=$_[1];
    $filerd="$chemin/Index.Economics.Rd";
    open OUT, ">$filerd";
    print OUT "\\name{Index.Economics}\n";
    print OUT "\\docType{documentation}\n";
    print OUT "\\alias{Index.Economics}\n";
    print OUT "\\title{Economic fields}\n";
    print OUT "\\description{\n";
    print OUT "\\describe{\n";
    foreach (sort keys %{$db->{economics}}){
	print OUT "\\item $_ \n \\itemize{\n";
	foreach (sort @{$db->{economics}->{$_}}){
	    my $titre=&majfirst($db->{data}->{$_}->{title});
	    print OUT "\\item \\code{\\link{$_}} : $titre \n";
	}
	print OUT "}\n";
    }
    print OUT "}\n";
    print OUT "\n}\n";
    print OUT "\\keyword{documentation}\n";
}

sub rdbook{
    my $db=$_[0];
    my $chemin=$_[1];
    my $bib=$_[2];
    $filerd="$chemin/Index.Books.Rd";
    open OUT, ">$filerd";
    print OUT "\\name{Index.Books}\n";
    print OUT "\\docType{documentation}\n";
    print OUT "\\alias{Index.Books}\n";
    print OUT "\\title{Econometric books}\n";
    print OUT "\\description{\n";
    print OUT "\\describe{\n";
    foreach $book (sort keys %{$db->{book}}){
	my $bookmisenforme=&printbib($bib,$book);
	print OUT "\\item $bookmisenforme \n \\itemize{\n";
	foreach (sort @{$db->{book}->{$book}}){
	    my $titre=&majfirst($db->{data}->{$_}->{title});
	    print OUT "\\item \\code{\\link{$_}} : $titre \n";
	}
	print OUT "}\n\n";
    }
    print OUT "}\n";
    print OUT "\n}\n";
    print OUT "\\keyword{documentation}\n";
}

sub printvar{
    my $db=@_[0];
    my $chemin=@_[1];
    foreach $base (sort keys %$db){
	my $fichDATA="$chemin/data/$base.txt";
	open DATA, $fichDATA;
	my @lgnfichier=<DATA>;
	my $Imax=@lgnfichier;
	my $I=1;

	foreach (@lgnfichier){
	    my $nb;
	    if ($I==1){
		my $titre=$db->{$base}->{"title"};
		my $filevar="$chemin/tex/$base.tex";
		open OUT, ">$filevar";
		$_=/^\s*(.*)\s*$/;
		my @var=split(/\s+/,$1);
		$nb=@var;
		my $pos="l"."c"x($nb-1);
		print OUT "\\begin{longtable}{|$pos|}\n\\caption{$titre} \\\\ \n\\hline\n";
		my $chaine=&ligntab($1);		
		print OUT "$chaine\\hline\n";
		print OUT "\\endhead\n\\hline\n\\endfoot\n";
	    }
	    elsif($I==$Imax){
		print OUT "\\hline\n\\end{longtable}\n\n";
		close OUT;
	    }
	    else{
		$_=/^\s*(.*)\s*$/;
		my $chaine=&ligntab($1);
		print OUT "$chaine\n";
	    }
	    $I++;
	}
    }
}

sub ligntab{
    my $ligne=@_[0];
    my @var=split(/\s+/,$ligne);
    my $var=join(" & ",@var);
    my $chaine="$var \\\\";
    $chaine;
}
 
sub majfirst{
    my $chaine=$_[0];
    my @tab=split(/\s+/,$chaine);
    my $x;
    foreach (@tab){
	if ( $_ !~ m/^(of|an|a|the|and|for|on|and|from|in|to)$/i ){
	    my $z=substr($_,0,1);
	    my $y=substr($_,1,length($_));
	    if ($z eq '*'){
		$x.=$y." "}
	    else{
		$z=~tr/a-z/A-Z/;
		$y=~tr/A-Z/a-z/;
		$x.=$z.$y." ";
	    }
	}
	else{
	    $_=~tr/A-Z/a-z/;
	    $x.=$_." ";
	}
    }
    $x;
}

1;
