#!/bin/bash

command="$1"
if [ "$command" = "generate" ]; then
	result=$(llm --system "Provide a zsh command that performs the described functionality. Your response will be presented to the user for review and subsequently will be executed in the shell directly, so it is important that no other output is provided.")

	# Remove the markdown block opening and language specifier
	result=${result#\`\`\`*[[:space:]]}
	# Remove the trailing backticks
	result=${result%\`\`\`}
	# Trim leading and trailing whitespace
	result=$(echo "$result" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')
	echo "$result"
	
elif [ "$command" = "explain" ]; then
    	llm --system "You are a zsh shell expert, please briefly explain how the given command works. Be as concise as possible. Use Markdown syntax for formatting."
else
    exit 1
fi

