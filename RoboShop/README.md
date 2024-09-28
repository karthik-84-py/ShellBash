SHELL Scripting Notes:

SED (Stream Editor)

1) Delete a line
2) Add a line
3) Change a line
4) Search and replace a word


## Sed is available is two forms

1. Display the changes on screen

sed 'Action' FILE

2. Edit the file

sed -i 'Action' FILE

### Action Criteria can be picked in two ways

1. Line Number based
2. String Search based

Example:

1) User Want to Delete a  Line

sed '1 d ' file

2. For Search String Criteria

sed '/root/ d' file

d - Delete

i - insert

sed '/bash -i Helloworld' passwd
sed '1 i helloworld ' passwd

a - append

c - Change only

sed '/bash c helloworld' passwd

s - search and replace 

sed 's/halt/poweroff/' pass

sed 's/halt/poweroff/g' passwd (all scenarios)


