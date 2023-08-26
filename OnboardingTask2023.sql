/* 3(a).Find out the number of cities in each state.

SELECT state,COUNT(city) AS NoofCities
FROM ['AUS_Post_suburb v2$']
Group By state


3(b).Find out the number of unique postcodes, and suburbs in each city .

SELECT DISTINCT city,postcode,suburb
FROM ['AUS_Post_suburb v2$']
Order BY city

3(c) Query the Average Property Median Value by Suburb

SELECT suburb,AVG(Property_Median_Value) AS AveragePropertyMedianValue
FROM NSW_PropertyMedainValue#csv$
Group By Suburb

3(c) Query the Average Property Median Value by Postcode 

SELECT Postcode,AVG(Property_Median_Value) AS AveragePropertyMedianValue
FROM NSW_PropertyMedainValue#csv$
Group By Postcode

3(c)Query the Average Property Median Value by Suburb and Postcode together

SELECT suburb,Postcode,AVG(Property_Median_Value) AS AveragePropertyMedianValue
FROM NSW_PropertyMedainValue#csv$
Group By Suburb,Postcode

3(c)put Where condition to remove those records where there is no median value.

SELECT suburb,Postcode,AVG(Property_Median_Value) AS AveragePropertyMedianValue
FROM NSW_PropertyMedainValue#csv$
Where Property_Median_Value IS NOT NULL
Group By Suburb,Postcode
