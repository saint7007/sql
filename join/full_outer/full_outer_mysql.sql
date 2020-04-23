--  sons with no parents
select * from (SELECT my_db.parent_table.id as p_id,my_db.parent_table.name as p_name , my_db.child_table.id as c_id, my_db.child_table.name as c_name, my_db.child_table.parent_id as parent_id FROM my_db.parent_table
LEFT JOIN my_db.child_table ON my_db.parent_table.id = my_db.child_table.id
UNION
SELECT my_db.parent_table.id as p_id,my_db.parent_table.name as p_name , my_db.child_table.id as c_id, my_db.child_table.name as c_name, my_db.child_table.parent_id as parent_id FROM my_db.parent_table
RIGHT JOIN my_db.child_table ON my_db.parent_table.id = my_db.child_table.id) as t where t.parent_id="";

-- parents with no son
select * from (SELECT my_db.parent_table.id as p_id,my_db.parent_table.name as p_name , my_db.child_table.id as c_id, my_db.child_table.name as c_name, my_db.child_table.parent_id as parent_id FROM my_db.parent_table
LEFT JOIN my_db.child_table ON my_db.parent_table.id = my_db.child_table.id
UNION
SELECT my_db.parent_table.id as p_id,my_db.parent_table.name as p_name , my_db.child_table.id as c_id, my_db.child_table.name as c_name, my_db.child_table.parent_id as parent_id FROM my_db.parent_table
RIGHT JOIN my_db.child_table ON my_db.parent_table.id = my_db.child_table.id) as t where t.parent_id != t.p_id;
