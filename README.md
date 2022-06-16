1.Scripting task :

Write a Bash shell or a python script which can:
 - Process a text file which has users and their properties in each line.
 - Determine one by one if the ID number of the user (last column) is odd or even number if
it's specified.
 - Check whether that user has a routable, FQDN email address.
 - If so, write a message to stdout like: the $ID of $EMAIL is even|odd number.
 - If the user has no valid email address OR user ID, the script should silently continue to the
 next user.

The content of the source text file:

John john@domain.com 325
Susan 510
Jane jane@domain.com 131
Karl karl@domain.com
Bert bert@localhost 150

2.Ansible task :

 a) Delete all lines in the target file which start with the string "Apple".
The content of the target file:

 Apple is a delicious fruit.
 I like Apple.
 Apple is my fav.

 b) Write a playbook to make sure 3 services (ssh, nginx, ntp) are restarted.