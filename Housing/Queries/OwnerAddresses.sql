-- Owner Adresses

SELECT owneraddress
FROM housing

SELECT split_part(owneraddress,',',1) AS owneraddress, split_part(owneraddress,',',2) AS ownercity, split_part(owneraddress,',',3) AS ownerstate
FROM housing

ALTER TABLE housing
ADD COLUMN OwnerSplitAddress varchar(100)

UPDATE housing
SET OwnerSplitAddress = split_part(owneraddress,',',1)

ALTER TABLE housing
ADD COLUMN OwnerSplitCity varchar(100)

UPDATE housing
SET OwnerSplitCity = split_part(owneraddress,',',2)

ALTER TABLE housing
ADD COLUMN OwnerSplitState varchar(100)

UPDATE housing
SET OwnerSplitState = split_part(owneraddress,',',3)

SELECT * FROM
housing