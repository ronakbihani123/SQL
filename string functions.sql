-- string functions 

select name , code , concat( name , "-" , code ) from country ;

select name , code , concat_ws( "-" , name  , code ) from country ;

-- substr = substring
-- substring ka mtlb h hme data konse character se chahiye 
select name , substr(name,1) from country;

select name , substr(name,5) from country; 

select name , substr(name,2) , substr(name , 2,4) from country;

select name , substr(name,2 ),substr(name,-2) from country;

select name , substr(name,2 ),substr(name,-4 , 2) from country;

-- get the country name where first character of country = to the ccontinent first character 

select name , continent , substr(name,1 , 1) , substr(continent ,1,1)from country
where substr(name,1 , 1) = substr(continent ,1,1) ;

-- get the country name and population where the starting three character 
-- of the country is alg

select name , population , substring(name,1,3) from country 
where substring(name,1,3) = "alg";

-- instr = string ke andr kya find krna h 
-- it is used for returing position of the character in the string 
select name, instr(name , "e") from country;
-- char_length btata h kitne no of character h us string me 
select name , char_length(name) from country;

select char_length( "         ronak      ");

select char_length(trim("         ronak      "));

select char_length(rtrim("         ronak      "));

select char_length(ltrim("         ronak      "));

select trim("          ronazzzz kzzzzz");

select trim(both'z' from "          ronazzzz kzzzzz");

select name,trim(both 'a' from name) from country;

select name,trim(both 'A' from trim(both 'a' from name)) from country;

-- lpad and rpad

-- when we want to define a column with fixed size 
select name , population , rpad(population,9,'#')from country;

select name , population , lpad(population,9,0)from country;

select name , replace(name,'a','') from country;