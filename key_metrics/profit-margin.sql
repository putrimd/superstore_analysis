-- Calculate Profit Margin All Region and Market
select YEAR(o.order_Date) as Year, 
	SUM(od.sales) as TotalSales , 
	SUM(od.profit) as TotalProfit,
	SUM(od.sales)/SUM(od.profit) AS ProfitMargin

from OrderDetails od

INNER JOIN orders o ON od.corrected_order_id2=o.corrected_order_id2
group by year(o.Order_Date)
order by year, ProfitMargin asc

-- Calculate Profit Margin per Product Category
select YEAR(o.order_Date) as Year, 
	SUM(od.sales) as TotalSales , 
	SUM(od.profit) as TotalProfit,
	SUM(od.sales)/SUM(od.profit) AS ProfitMargin,
	p.category,
	p.sub_category

from OrderDetails od

INNER JOIN orders o ON od.corrected_order_id2=o.corrected_order_id2
INNER JOIN products p ON od.product_id=p.Product_ID

group by year(o.Order_Date), p.category, p.sub_category
order by year, ProfitMargin desc

-- Calculate Profit Margin Per Market
select YEAR(o.order_Date) as Year, 
	SUM(od.sales) as TotalSales , 
	SUM(od.profit) as TotalProfit,
	SUM(od.sales)/SUM(od.profit) AS ProfitMargin,
	o.market

from OrderDetails od

INNER JOIN orders o ON od.corrected_order_id2=o.corrected_order_id2
group by year(o.Order_Date), o.Market
order by year, ProfitMargin desc

-- Calculate Profit Margin Per Region
select YEAR(o.order_Date) as Year, 
	SUM(od.sales) as TotalSales , 
	SUM(od.profit) as TotalProfit,
	SUM(od.sales)/SUM(od.profit) AS ProfitMargin,
	o.Market,
	a.region

from OrderDetails od

INNER JOIN orders o ON od.corrected_order_id2=o.corrected_order_id2
INNER JOIN address a ON od.corrected_order_id2=a.corrected_order_id2

group by year(o.Order_Date),o.Market, a.region
order by year, TotalProfit desc

