SELECT 
	* 
FROM 
	`Group` 
	JOIN `Grant` ON
		`Group`.id = `Grant`.group
WHERE 
	username = @username AND
	resource = @resource AND
	action = @action;
