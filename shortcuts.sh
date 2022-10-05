#!/bin/bash

jira() { 
	uname | grep -qi "darwin" && open "https://loopreturns.atlassian.net/browse/$1"
}

github() { 
	open "https://github.com/$1" 
}

loop() {
	if [[ "$1" == "github" ]];
	then
		github loopreturns
	elif [[ "$1" == "infra" ]];
	then
		github loopreturns/returns-infrastructure
	elif [[ "$1" == "app" ]] || [[ "$1" == "core" ]];
	then
		github loopreturns/loop-returns-app
	fi
}
