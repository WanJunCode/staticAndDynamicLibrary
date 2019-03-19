# staticAndDynamicLibrary
before you use dynamic libarary, you should add dynamic_main after all in Makefile.
then , you can use make to compiler all target.
after that you have to execute export LD_LIBRARY_PATH=/home/dir:$LD_LIBRARY_PATH

note that dir is your project's path
