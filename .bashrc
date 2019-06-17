export TLPI_PATH="/root/lib/tlpi-dist"
alias python3="python3.6"
function glink(){
    if [ $# -ne 1 ]
    then
      echo "请输入一个程序名"
      return
    else
      name=$1
      echo "gcc -I ${TLPI_PATH}/lib $1 ${TLPI_PATH}/libtlpi.a -o ${name%.*}.o"
      gcc -I ${TLPI_PATH}/lib $1 ${TLPI_PATH}/libtlpi.a -o ${name%.*}.o
    fi
}
