#!/bin/bash
# Functions
# pause
pause(){
  read -p "Press [Enter] key to continue..."
}
#!/bin/bash

# Functions

# pause
pause() {
  read -p "Press [Enter] key to continue..."
}

# read file
read_file() {
  echo "Enter the name of a file to read: "
  read filename
  input=$(cat "$filename")
  encryptionMethod
  pause
}

# type a message
type_message() {
  echo "Enter a message: "
  read input
  encryptionMethod
}

# encryption option
encryptionMethod() {
  echo "Enter '1' for ROT13, '2' for CC, or '3' to quit:"
  local pick
  read -p "Enter choice [1-3]: " pick

  case $pick in
    1) ROT13 ;;
    2) CC ;;
    3) exit 0 ;;
    *) echo "Error: Invalid choice" && sleep 2 ;;
  esac
}

# perform a ROT13, prompt for encrypt or decrypt then write to a file.
ROT13() {
  read -p "Enter 'e' to encrypt or 'd' to decrypt: " option

  if [ "$option" == "e" ]; then
    echo "You chose to encrypt"
    encryption=$(echo "$input" | tr 'A-Za-z' 'N-ZA-Mn-za-m')
    read -p "Enter the name of the output file: " outputFile
    echo "$encryption" > "$outputFile"
  elif [ "$option" == 'd' ]; then
    echo "You chose to decrypt"
    decryption=$(echo "$input" | tr 'A-Za-z' 'N-ZA-Mn-za-m')
    read -p "Enter the name of the output file: " outputFile
    echo "$decryption" > "$outputFile"
  else
    echo "Incorrect choice"
    return
  fi
}

# perform a Caesar Cipher, prompt for encrypt or decrypt then write to a 
file.
CC() {
  read -p "How many times do you want to shift? " shift
  read -p "Enter 'e' to encrypt or 'd' to decrypt: " option

  if [ "$option" == "e" ]; then
    echo "You chose to encrypt"
    encrypted=""
    for ((i=0; i<${#input}; i++)); do
      c="${input:$i:1}"
      for ((j=0; j<$shift; j++)); do
        c=$(echo "$c" | tr 'A-Za-z' 'B-ZAb-za')
      done
      encrypted="$encrypted$c"
    done
    echo "$encrypted"
    read -p "Enter the name of the output file: " outputFile
    echo "$encrypted" > "$outputFile"
  elif [ "$option" == 'd' ]; then
    echo "You chose to decrypt"
    decrypted=""
    for ((i=0; i<${#input}; i++)); do
      c="${input:$i:1}"
      for ((j=0; j<$shift; j++)); do
        c=$(echo "$c" | tr 'B-ZAb-za' 'A-Za-z')
      done
      decrypted="$decrypted$c"
    done
    echo "$decrypted"
    read -p "Enter the name of the output file: " outputFile
    echo "$decrypted" > "$outputFile"
  else
    echo "Incorrect choice"
    return
  fi
}

# function to display menus
show_menus() {
  clear
  echo "~~~~~~~~~~~~~~~~~~~~~"
  echo " M A I N - M E N U"
  echo "~~~~~~~~~~~~~~~~~~~~~"
  echo "1. Read File"
  echo "2. Type a message"
  echo "3. Exit"
}

# read choice from user
read_options() {
  local choice
  read -p "Enter choice [1-3]: " choice

  case $choice in
    1) read_file ;;
    2) type_message ;;
    3) exit 0 ;;
    *) echo "Error: Invalid choice" && sleep 2 ;;
  esac
}

# loop
while true; do
  show_menus
  read_options
done
# 
read file
read_file(){
        echo "Enter the name of a file to read: "
        read filename
        input=$(cat "$filename")
      encryptionMethod
        pause
}
 #type a message
 type_message(){
      echo "Enter a message: "
      read input
      encryptionMethod
}
# encryption option
encryptionMethod(){
      echo "Enter '1' for ROT13, '2' for CC or '3' to quit:"
      #echo "Enter choice [1-2]"
        local pick
        read -p "Enter choice [ 1 - 3] " pick
        case $pick in
esac
pause }
1) ROT13 ;;
2) CC ;;
3) exit 0;;
*) echo -e "${RED}Error...${STD}" && sleep 2
# perform a ROT13, prompt for encrypt or decrypt then write to a file.
ROT13(){
      read -p "Enter 'e' to encrypt or enter 'd' to decrypt: " option
      if [ "$option" == "e" ]; then
        echo "You chose to encrypt"
        encryption=$(echo "$input" | tr 'A-Za-z' 'N-ZA-Mn-za-m')
        read -p "Enter the name of the output file: " outputFile
        echo "$encryption"
        echo "$encryption" > "$outputFile"
elif [ "$option" == 'd' ]; then

        echo "You chose to decrypt"
        decryption=$(echo "$input" | tr 'A-Za-z' 'N-ZA-Mn-za-m')
        read -p "Enter the name of the output file: " outputFile
        echo "$decryption"
        echo "$decryption" > "$outputFile"
        else
        echo "Incorrect choice"
        return
fi }
# perform a Caesar Cipher, prompt for encrypt or decrypt then write to a 
file.
CC() {
      read -p "How many times do you want to shift? " shift
      read -p "Enter 'e' to encrypt or 'd' to decrypt: " option
      if [ "$option" == "e" ]; then
        echo "You chose to encrypt"
          encrypted=""
      for ((i=0; i<${#input}; i++)); do
              c="${input:$i:1}"
              for ((j=0; j<$shift; j++)); do
            c=$(echo "$c" | tr 'A-Za-z' 'B-ZAb-za')
done
          encrypted="$encrypted$c"
        done
        echo "$encrypted"
        read -p "Enter the name of the output file: " outputFile
      echo "$encrypted" > "$outputFile"
      elif [ "$option" == 'd' ]; then
        echo "You chose to decrypt"
        decrypted=""
      for ((i=0; i<${#input}; i++)); do
              c="${input:$i:1}"
              for ((j=0; j<$shift; j++)); do
            c=$(echo "$c" | tr 'B-ZAb-za' 'A-Za-z')
          done
              decrypted="$decrypted$c"
      done
      echo "$decrypted"
      read -p "Enter the name of the output file: " outputFile
      echo "$decrypted" > "$outputFile"
      else
        echo "Incorrect choice"
return fi
}
# function to display menus
show_menus() {
        clear
        echo "~~~~~~~~~~~~~~~~~~~~~"
        echo " M A I N - M E N U"
        echo "~~~~~~~~~~~~~~~~~~~~~"
        echo "1. Read File"
        echo "2. Type a message"
        echo "3. Exit"

}
# read choice from user
read_options(){
        local choice
        read -p "Enter choice [ 1 - 3] " choice
        case $choice in
esac }
# loop
while true
do
1) read_file ;;
2) type_message ;;
3) exit 0;;
*) echo -e "${RED}Error...${STD}" && sleep 2
done
show_menus
read_options

