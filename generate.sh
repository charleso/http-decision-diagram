#!/bin/sh -eux

cd ../api-pegjs
export PATH=$PATH:node_modules/.bin
cat ../http-decision-diagram/httpdd.fsm.cosmogol | ./bin/parse.coffee 'core/ietf/draft-bortzmeyer-language-state-machines' 'state_machine' > ../http-decision-diagram/httpdd.fsm.json
