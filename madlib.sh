#!/bin/bash

clear
echo "Let's build a mad-lib!"

read -p "1. Name an unusual sport: " SPORT
read -p "2. Enter a verb ending in 'ing': " VERB_ING
read -p "3. Choose an adjective: " ADJECTIVE1
read -p "4. Name a famous person: " CELEBRITY
read -p "5. Pick a noun: " NOUN1
read -p "6. Select an adverb: " ADVERB
read -p "7. Enter another adjective: " ADJECTIVE2
read -p "8. Provide a plural noun: " PLURAL_NOUN

echo
echo "Once upon a time, in a $ADJECTIVE1 kingdom far, far away, there lived a $CELEBRITY who was obsessed with $SPORT."
echo "Every day, the $CELEBRITY would spend hours $VERB_ING with a $NOUN1, trying to perfect their technique."
echo "The kingdom's residents found this behavior $ADVERB $ADJECTIVE2, but they couldn't deny the $CELEBRITY's dedication."
echo "Soon, $SPORT became so popular that even the $PLURAL_NOUN joined in on the fun, turning the kingdom into a $SPORT paradise!"
