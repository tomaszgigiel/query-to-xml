# http://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR_PROJECT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/../.. #
(cd $DIR_PROJECT; java -cp ./target/query-to-xml-jar-with-dependencies.jar -jar ./target/query-to-xml.jar; cd -) #