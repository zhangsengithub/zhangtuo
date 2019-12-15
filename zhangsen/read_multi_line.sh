function my_function
{
    while test $# -gt 0
    do
        echo "do something with $1"
        shift
    done
}

my_function $1


远程执行

ssh nick@xxx.xxx.xxx.xxx 'bash -s' < test.sh helloworld
        
