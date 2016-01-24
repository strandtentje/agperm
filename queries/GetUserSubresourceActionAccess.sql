SELECT 
	* 
FROM 
	`UserGroup` 
	JOIN `GroupGrant` ON
		`UserGroup`.id = `GroupGrant`.`group`
WHERE 
	username = @username AND
	resource = @resource AND
	((subresource = @subresource) OR (subresource = '*')) AND
	action = @action;
