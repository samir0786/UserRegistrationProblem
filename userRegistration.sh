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
read -p "Enter your Email-Id : " email
emailPattern="^([a-zA-Z]{3,}([-|+|_|.]?[a-zA-Z0-9]+)?[@][a-zA-Z0-9]+[.][a-zA-Z]{2,3}([.]?[a-zA-Z]{2,3})?)$"
validateUserDetails "$email" $emailPattern Email
read -p "Enter your mobile number : " mobileNumber
mobileFormat="^[0-9]{2} [0-9]{10}$"
validateUserDetails "$mobileNumber" $mobileFormat Mobile_Number
read -p "Enter your Password: " password
passwordPattern="^(?=.*[@#$%!_-])(?=.*[0-9])(?=.*[A-Z])[A-Za-z0-9@#$%!_-]{8,}$"
validateUserDetails $password $passwordPattern password_Pattern

