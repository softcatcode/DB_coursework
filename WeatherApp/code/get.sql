select * from City;
select * from Country;
select * from City where id = %d;
select id from Country where name = '%s';
select * from WEATHER_TYPE_TABLE_NAME where code = %d;
select * from PLOT_TABLE_NAME where authorId = '%s';

select * from Weather
where cityId = %d and timeEpoch between %d and %d;

select * from CurrentWeather
where cityId = %d and %d <= timeEpoch and timeEpoch < %d;