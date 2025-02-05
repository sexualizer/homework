

a.По каждому городу количество продуктов, продаваемых 02.01.2024 
select city, count(product) as quantity from test
group by city, date
having date = '2024-01-02';

b.Минимальную стоимость каждого товара за все время работы сети магазинов
select product, min(cost) from test
group by product;

c.Среднюю цену всего ассортимента товаров по каждому городу на каждый день
select city, avg(cost) as average_cost, date from test
group by city, "date" 
order by date, city;

d.Самый дорогой товар по каждому городу 03.01.2024
select city, max(cost) as max_cost, date from test
group by city, date
having date = '2024-01-03'
order by max_cost;

e.Товары, которые продавались в Кирове, но не продавались в Москве
select city, product from test
group by city, product 
having city in ('Москва', 'Киров')
except
select city, product from test
group by city, product 
having city = 'Москва';


f.Среднюю цену каждого товара на каждый день в сети магазинов
select product, avg(cost), date as avg_per_day from test
group by product, date
order by date;

g.Сколько товаров продается ежедневно в сети магазинов. И сколько уникальных.
select count(product) as count_per_day, date from test
group by date
order by date;

select count(distinct product) as count_per_day, date from test
group by date
order by date;

h.По каждому товару вывести город, в котором он был самым дорогим
select product, city, max(cost) as max_cost_per_city from test
group by product, city 
having max(cost) = (
	select max(cost) from test as t
	where t.product = test.product 
);

i.*Укажите ежедневную динамику количества ассортимента сети магазинов
select count(distinct product), date from test 
group by "date"
order by date;

j.**Укажите по каждому товару среднюю динамику изменения цены по каждому городу за все время работы сети магазинов
select product, city, avg(cost) as avg_per_city from test t 
group by product, city;


