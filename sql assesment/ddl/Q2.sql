use q1;

update T_AGENT
set Target_policy_sum =
	case agent_city 
    when 'Pune' then 400000
    when 'Chennai' then 250000
    else Target_policy_sum
end
where agent_id like 'M%';
