#!/bin/bash

${1?"Usage: $0 Teleport Ent version to upgrade to, e.g. 11.1.0"}

./tup.sh $1 & disown
