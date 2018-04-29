use [AdventureWorks2008]
go
SELECT P.Name Product, P.ListPrice, PSC.Name Category,
    -- funkcja NTILE(3), dzieli i przypisuje elementy do 3 "równych" zbiorów
    NTILE(3) OVER(ORDER BY P.ListPrice DESC) AS Tile

FROM Production.Product P JOIN Production.ProductSubCategory PSC
    ON P.ProductSubCategoryID = PSC.ProductSubCategoryID
where PSC.Name = 'Handlebars'

-- liczba rekordow mniejsza niz liczba przedzialow

SELECT P.Name Product, P.ListPrice, PSC.Name SubCategory,
    -- funkcja NTILE(4) dzieli na kwartyle
    NTILE(4) OVER(PARTITION BY PSC.NAME ORDER BY P.ListPrice asc) AS Quartile

FROM Production.Product P JOIN Production.ProductSubcategory PSC
    ON P.ProductSubcategoryID = PSC.ProductSubcategoryID
WHERE ListPrice between 255 and 500 
