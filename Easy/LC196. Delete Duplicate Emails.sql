DELETE from person
where ID not in(
    select ID
    from(select Min(id) as id
    from person
    group by email)t
)
