#!/bin/bash
echo Hello, Jenkins!!

CODE=$(($RANDOM % 3))

echo exit code: ${CODE}

exit ${CODE}
