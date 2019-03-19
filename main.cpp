#include <stdio.h>

#include "test1.h"//引入头文件
#include "test2.h"
#include "test3.h"

int main(int argc, char* argv[]){

        log_1();//调用test1.h中的函数
        log_2();
        log_3();
        return 0;
}
