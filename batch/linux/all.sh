# http://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR_PROJECT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/../.. #
(cd $DIR_PROJECT; rm -rf ./target; cd -) #
(cd $DIR_PROJECT; ./batch/linux/mvn-compile.sh; cd -) #
(cd $DIR_PROJECT; ./batch/linux/mvn-run.sh; cd -) #
(cd $DIR_PROJECT; ./batch/linux/mvn-test.sh; cd -) #
(cd $DIR_PROJECT; ./batch/linux/mvn-uberjar.sh; cd -) #
(cd $DIR_PROJECT; ./batch/linux/jvm-run-uberjar.sh; cd -) #
(cd $DIR_PROJECT; ./batch/linux/jvm-run.sh; cd -) #