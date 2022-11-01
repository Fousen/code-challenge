create database q1;
use q1;

create table t_agent(
agent_id varchar(25) primary key not null,
agent_name varchar(100),
agent_email varchar (50),
agent_city varchar(100),
agent_phone decimal(15,0),
target_policy_sum decimal(15,0)
);

create table t_policy(
policy_id varchar(25) primary key not null,
policy_name varchar(100),
agent_id varchar(25),
policy_type varchar(100),
policy_sum decimal(10,0),
policy_status varchar(100),
policy_tenure decimal(5,0),
foreign key (agent_id) references t_agent(agent_id)
);

create table t_member(
member_id varchar(25) primary key not null,
member_name varchar (100),
member_email varchar (100),
member_city varchar(100),
member_phone decimal(10,0),
agent_id varchar(100),
policy_id varchar(100),
foreign key (agent_id) references t_agent(agent_id),
foreign key (policy_id) references t_policy(policy_id)
);