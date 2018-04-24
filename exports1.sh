#!/bin/bash

#demonstrate variable scope

var1=blah
var2=foo

#verify their values
echo $0 :: var1 : $var1, var2 : $var2

export var1
./exports2.sh


# and now?

echo $0 :: var1 : $var1, var2 : $var2