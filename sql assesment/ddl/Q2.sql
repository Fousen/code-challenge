use q1;

update t_agent 
set target_policy_sum = 400000 
where agent_city = 'Pune' and agent_id = 'M%' ;

update t_agent
set target_policy_sum = 250000
where agent_city = 'Chennai' and  agent_id = 'M%';


select*from t_agent;