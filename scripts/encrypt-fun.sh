#!/bin/bash

# File to encrypt
file_to_encrypt="<path to file>"

recipient="<email address>"

gpg --recipient "$recipient" --encrypt "$file_to_encrypt"

echo "File encrypted successfully"