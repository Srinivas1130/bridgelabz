
for srini in `ls *.java *.py *.js`
do
   filename=`echo $srini | awk -F. '{ print $1 }'`
   if [ -d $filename ]
   then
        rm -rf $filename
   fi
   
   filename1=`echo $srini | awk -F. '{ print $2 }'`
   if [ -d $filename1 ]
   then
        rm -rf $filename1
   fi
   mkdir -p $filename/$filename1
    mv $srini $filename/$filename1
done
