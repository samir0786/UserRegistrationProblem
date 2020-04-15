#! /bin/bash -x
shopt -s extglob

function validateUserDetails(){
	readUserDetail=$1
	validatingPattern=$2
	if [[ $readUserDetail =~ $validatingPattern ]]
	then
		echo "Valid $3"
	else
		echo "Invalid $3"
	fi
}
echo "Welcome to user registration"
read -p "Enter your first name : " firstName
namePattern="^([A-Z][A-Za-z]{2,})$"
validateUserDetails "$firstName" $namePattern First_Name
read -p "Enter your last name : " lastName
validateUserDetails "$lastName" $namePattern Last_Name
