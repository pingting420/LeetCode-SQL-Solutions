SELECT p.FirstName,p.LastName,a,City, a.State
FROM Person p left join Address a 
on p.PersonID = a.PersonID