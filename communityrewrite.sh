while read line; 
echo $line
do git checkout $line; 
if [ $? -ne 0 ] ; then exit ; fi; 
../mixxx-conversion-stuff/git-filter-branch-command-all.sh ; 
done < ../mixxx-conversion-stuff/community_gitnames.txt
