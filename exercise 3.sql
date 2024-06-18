select count(policy_holder_id) from (SELECT policy_holder_id FROM callers
group by policy_holder_id
having count(policy_holder_id) >= 3) as policy_holder_count
