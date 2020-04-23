select t2.city ,t2.state , t2.population, (t2.population/(SELECT sum(t1.population) as state_population  FROM my_db.tableTest as t1 where t1.state=t2.state group by  t1.state))*100  FROM my_db.tableTest as t2 LIMIT 0, 1000

