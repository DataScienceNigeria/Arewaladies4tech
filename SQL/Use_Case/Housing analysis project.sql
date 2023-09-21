-- Creating Table 
CREATE TABLE project.NashHouseData (
UniqueID int NOT NULL,
ParcelID text,
LandUse text,
PropertyAddress text,
SaleDate text,
SalePrice int, 
LegalReference text,
SoldAsVacant text,
OwnerName text,
OwnerAddress text,
Acreage decimal,
TaxDistrict text,
LandValue int,
BuildingValue int,
TotalValue int,
YearBuilt year,
Bedrooms int,
FullBath int,
HalfBath int,
primary key (UniqueID) 
);
SELECT * FROM project.nashhousedata LIMIT 5;

-- Cleaning Data in SQL Queries
SELECT * FROM project.nashhousedata;

-- Standardize date format in SaleDate column 
SELECT SaleDate, STR_TO_DATE(saledate,'%Y-%m-%d') as sdate
FROM project.nashhousedata;
-- update project.nashhousedata
-- SET saledate = CONVERT(SaleDate, date);
SET SQL_SAFE_UPDATES = 1;
update project.nashhousedata
set SaleDate=str_to_date(SaleDate, '%Y-%m-%d');

-- Populate Property Address data
SELECT *
FROM project.nashhousedata
-- WHERE PropertyAddress IS NULL
ORDER BY ParcelID; 

SELECT a.ParcelID, a.PropertyAddress, b.ParcelID, b.PropertyAddress, 
ISNULL(a.PropertyAddress, b.PropertyAddress)
FROM project.nashhousedata AS a
INNER JOIN project.nashhousedata AS b
ON a.ParcelID = b.ParcelID 
AND a.UniqueID <> b.UniqueID
WHERE a.PropertyAddress IS NULL;

UPDATE project.nashhousedata AS a 
INNER JOIN project.nashhousedata AS b
ON a.ParcelID = b.ParcelID 
AND a.UniqueID <> b.UniqueID
SET a.PropertyAddress = b.PropertyAddress
WHERE a.PropertyAddress IS NULL;


-- Breaking Out Address from Individual Columns (Address, city, state)

SELECT *
FROM project.nashhousedata
-- WHERE PropertyAddress IS NULL
-- ORDER BY ParcelID
;

SELECT PropertyAddress,
SUBSTRING(PropertyAddress, 1, LOCATE(',', PropertyAddress)-1) AS Address,
SUBSTRING(PropertyAddress, LOCATE(',', PropertyAddress)+1, LOCATE(',', PropertyAddress)+1) AS County
FROM project.nashhousedata;

ALTER TABLE project.nashhousedata
ADD PropertySplitAddress TEXT;
UPDATE project.nashhousedata
SET PropertySplitAddress = SUBSTRING(PropertyAddress, 1, LOCATE(',', PropertyAddress)-1);
ALTER TABLE project.nashhousedata
ADD PropertySplitCounty TEXT;
UPDATE project.nashhousedata
SET PropertySplitCounty = SUBSTRING(PropertyAddress, LOCATE(',', PropertyAddress)+1, LOCATE(',', PropertyAddress)+1);

SELECT * FROM project.nashhousedata;

SELECT owneraddress
FROM project.nashhousedata;

SELECT OwnerAddress,
substring_index(substring_index(OwnerAddress, ',', 1),',',-1) AS Address,
substring_index(substring_index(OwnerAddress, ',', 2),',',-1) AS County,
substring_index(substring_index(OwnerAddress, ',', 3),',',-1) AS State
FROM project.nashhousedata;

ALTER TABLE project.nashhousedata
ADD OwnerSplitAddress TEXT;
UPDATE project.nashhousedata
SET OwnerSplitAddress = substring_index(substring_index(OwnerAddress, ',', 1),',',-1);
ALTER TABLE project.nashhousedata
ADD OwnerSplitCounty TEXT;
UPDATE project.nashhousedata
SET OwnerSplitCounty = substring_index(substring_index(OwnerAddress, ',', 2),',',-1);
ALTER TABLE project.nashhousedata
ADD OwnerSplitState TEXT;
UPDATE project.nashhousedata
SET OwnerSplitState = substring_index(substring_index(OwnerAddress, ',', 3),',',-1);

SELECT * 
FROM project.nashhousedata;

-- Change  Y and N to Yes and No in SoldAsVacant column field

SELECT DISTINCT(soldasvacant), COUNT(SoldAsVacant)
FROM project.nashhousedata
GROUP BY SoldAsVacant
ORDER BY 2;

SELECT soldasvacant,
CASE WHEN soldasvacant = 'Y' THEN 'YES'
WHEN soldasvacant = 'N' THEN 'NO'
ELSE soldasvacant 
END
FROM project.nashhousedata;

UPDATE project.nashhousedata
SET soldasvacant = CASE WHEN soldasvacant = 'Y' THEN 'YES'
WHEN soldasvacant = 'N' THEN 'NO'
ELSE soldasvacant END;


-- Removing Duplicates in our Table
SET SQL_SAFE_UPDATES = 0;
WITH RowNumCTE AS (
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY ParcelID,
			 PropertyAddress,
             SalePrice,
             SaleDate,
             LegalReference
             ORDER BY UniqueID
) AS row_num
FROM project.nashhousedata)
SELECT *
FROM RowNumCTE
-- DELETE
-- FROM project.nashhousedata 
-- USING project.nashhousedata 
-- JOIN RowNumCTE 
-- ON project.nashhousedata.ParcelID = RowNumCTE.ParcelID
WHERE row_num >1;
-- ORDER BY PropertyAddress;


-- Delete Unused Columns

SELECT * 
FROM project.nashhousedata;

ALTER TABLE project.nashhousedata
DROP COLUMN OwnerAddress, 
DROP COLUMN PropertyAddress, 
DROP COLUMN TaxDistrict;