insert into Countries values(null, '%s');
insert or replace into City values (%d, '%s', %d, %f, %f);

insert into Weather values
    (null, %d, %d, %d, %f, %d, %d, %d, %d, %f, %d, %d, %d, %d, %d, '%s', %d);

insert into CurrentWeather values
    (null, %d, %d, %f, %d, %d, %d, %d, %d, %d, %d, %d, %f);

insert into Plot values
    (null, '%s', '%s', '%s', %d, '%s', '%s');