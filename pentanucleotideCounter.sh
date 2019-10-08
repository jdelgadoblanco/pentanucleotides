if [ $# == 2 ]
then
	while read line
	do
		echo `cat $1 | grep -o $line | wc -l` $line
	done < $2 | sort -r -n -k1
else
	echo "Arg1: Not truncated genome fasta file"
	echo "Arg2: Polinucleotide file (comb.txt)"
fi