USE WIDEWORLDIMPORTERS
GO

--Total US Population (including 1 US Territory and DC)
SELECT SUM(StatePop) TotalUSPopulation FROM (
	select CityName City, States.StateProvinceName USState, Cities.LatestRecordedPopulation StatePop from Application.Cities Cities
	LEFT OUTER JOIN Application.StateProvinces States ON States.StateProvinceID = Cities.StateProvinceID
	WHERE Cities.LatestRecordedPopulation IS NOT NULL
) USQuery

--Population by US State (highest to lowest)
SELECT USState, SUM(StatePop) TotalStatePopulation FROM (
	select CityName City, States.StateProvinceName USState, Cities.LatestRecordedPopulation StatePop from Application.Cities Cities
	LEFT OUTER JOIN Application.StateProvinces States ON States.StateProvinceID = Cities.StateProvinceID
	WHERE Cities.LatestRecordedPopulation IS NOT NULL
) StateQuery
GROUP BY USState
ORDER BY SUM(StatePop) Desc

--Population by city (highest to lowest)
SELECT City, USState, TotalCityPopulation FROM (
	select CityName City, States.StateProvinceName USState, Cities.LatestRecordedPopulation TotalCityPopulation from Application.Cities Cities
	LEFT OUTER JOIN Application.StateProvinces States ON States.StateProvinceID = Cities.StateProvinceID
	WHERE Cities.LatestRecordedPopulation IS NOT NULL
) StateQuery
order by USState, TotalCityPopulation Desc,  City

