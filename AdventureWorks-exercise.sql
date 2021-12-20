/*1. Mostrar los nombre de los productos que tengan cualquier combinación de
‘mountain bike’
Tablas: Product
Campos: Name*/

select name from product
where name like "%mountain bike%";

/*Mostrar las personas cuyo nombre empiece con la letra “y”
Tablas: Contact
Campos: FirstName*/

select FirstName from contact
where FirstName like "y%";

/*Mostrar cinco productos más caros y su nombre ordenado en forma alfabética
Tablas: Product
Campos: Name, ListPrice*/

select Name, ListPrice from product
order by listPrice desc, name
limit 5;

/*1. Mostrar el nombre concatenado con el apellido de las personas cuyo apellido sea
johnson
Tablas: Contact
Campos: FirstName, LastName*/

select concat(FirstName, " ", LastName) NombreYApellido from contact
where LastName = "johnson";

/*Mostrar todos los productos cuyo precio sea inferior a 150$ de color rojo o cuyo
precio sea mayor a 500$ de color negro
Tablas: Product
Campos: ListPrice, Color*/

select ListPrice, Color from product
where (ListPrice < 150 and color = "Red") or  (ListPrice > 500 and color = "black");

/*1. Mostrar la fecha más reciente de venta
Tablas: SalesOrderHeader
Campos: OrderDate*/

select max(OrderDate) fecha from SalesOrderHeader;

/*2. Mostrar el precio más barato de todas las bicicletas
Tablas: Product 
Campos: ListPrice, Name*/

select min(ListPrice), Name from Product
where name like "%bike%";

/*1. Mostrar los productos y la cantidad total vendida de cada uno de ellos
Tablas: SalesOrderDetail
Campos: ProductID, OrderQty*/

select ProductID, sum(OrderQty) from SalesOrderDetail
group by ProductID;

/*1. Mostrar la cantidad de facturas que vendieron más de 20 unidades.
Tablas: Sales.SalesOrderDetail
Campos: SalesOrderID, OrderQty*/

select SalesOrderID, sum(OrderQty) as sumaCantidad
from SalesOrderDetail
group by SalesOrderID
having sumaCantidad >20;


/*Mostrar el código de logueo, número de territorio y sueldo básico de los
vendedores
Tablas: Employee, SalesPerson
Campos: LoginID, TerritoryID, Bonus, BusinessEntityID*/

select Employee.LoginID, SalesPerson.TerritoryID, SalesPerson.bonus
from Employee
join SalesPerson;

/*2. Mostrar los productos que sean ruedas
Tablas: Product, ProductSubcategory
Campos: Name, ProductSubcategoryID*/

select product.Name, productsubcategory.ProductSubcategoryID
from product
join productsubcategory on product.ProductSubcategoryID = productsubcategory.ProductSubcategoryID
where productsubcategory.name like "%wheel%";


/*3. Mostrar los nombres de los productos que no son bicicletas
Tablas: Product, ProductSubcategory
Campos: Name, ProductSubcategoryID*/

select product.Name, productsubcategory.ProductSubcategoryID
from Product
join ProductSubcategory on product.ProductSubcategoryID = productsubcategory.ProductSubcategoryID
where productsubcategory.ProductSubcategoryID != 1;

select * from product;

