#! /bin/sh

TEST_DIR=`dirname $0`
TOOL=../insert-file-to-file

setUp()
{
  PREV_DIR=$PWD
  cd $TEST_DIR
  cp target.txt target.txt.bk
}

tearDown()
{
  if [ -f target.txt.bk ]; then
    mv target.txt.bk target.txt
  fi
  cd $PREV_DIR
}

testExample1()
{
  $TOOL src.txt target.txt 2
  diff target.txt 1-expected.txt
  assertEquals 0 $?
}

testExample2()
{
  $TOOL src.txt target.txt 2 1
  diff target.txt 2-expected.txt
  assertEquals 0 $?
}

# load shunit2
. $TEST_DIR/shunit2
