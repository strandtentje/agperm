SELECT
    id, `action`, `groupname`, resource, subresource
FROM
    GroupGrant
WHERE
    `groupname` = @groupname
    AND `action` = @action
    AND resource = @resource
