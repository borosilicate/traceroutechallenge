# traceroutechallenge
This was the extra credit assignment from my networks class:
######################################
Traceroute Challenge (Extra Credit)
Here is the challenge:
 
Find an IP address with the longest route!
Use traceroute(8); TTL may be modified. 
Route must start on Nike.
The traceroute must reach its destination. 
You will compete in in class on T-01-16!
Top 3 will get bonus points somewhere (haven't decided where yet).
Ties will be broken based on minimal *.
 
If you have any questions, then please feel free to ask them in a follow-up discussion to this post. 
########################################
Nike is the school Server we ssh into to work on projects
After trying a few things and learning alot about how useful shell script is
I landed on the short and sweet last iteration for finding large hop IP's and 
storing them in files labeled with the hops and IP adress
____
-I sending the same packets as Ping which travel much easier and are less 
likely to be blocked by random firewalls or whatnot were not allowed 
see  >>
traceroute -I 99.99.99.99
The specified type of tracerouting is allowed for superuser only
So under the circumstances this worked well and it was fun making
hope you enjoy.
