create table if not exists Country(
    id Integer not null primary key AUTOINCREMENT,
    name Text not null
);

create table if not exists City(
    id Integer not null primary key,
    name Text not null,
    countryId Integer not null,
    latitude Float not null,
    longitude Float not null,
    
    foreign key (countryId) references Country(id)
);

create table if not exists WeatherType(
    code Integer not null primary key,
    dayDescription Text not null,
    nightDescription Text not null,
    url Text not null,
    icon Blob
);

create table if not exists Weather(
    id Integer not null primary key AUTOINCREMENT,
    timeEpoch Integer not null,
    cityId Integer not null,
    type Integer not null,
    avgTemp Float not null,
    humidity Integer not null,
    windSpeed Integer not null,
    snowVolume Integer not null,
    precipitations Integer not null,
    vision Float not null,
    sunriseTime Integer not null,
    sunsetTime Integer not null,
    moonriseTime Integer not null,
    moonsetTime Integer not null,
    moonIllumination Integer not null,
    moonPhase Text not null,
    rainChance Integer not null,
    
    foreign key (cityId) references City(id),
    foreign key (type) references WeatherType(code)
);

create table if not exists CurrentWeather(
    id Integer not null primary key AUTOINCREMENT,
    cityId Integer not null,
    timeEpoch Integer not null,
    tempC Float not null,
    feelsLike Integer not null,
    isDay Integer not null,
    type Integer not null,
    windSpeed Integer not null,
    precipitations Integer not null,
    snow Integer not null,
    humidity Integer not null,
    cloud Integer not null,
    vision Float not null,
    
    foreign key (cityId) references City(id),
    foreign key (type) references WeatherType(code)
);

create table if not exists Plot(
    id Integer not null primary key AUTOINCREMENT,
    parameter Text not null,
    values Text not null,
    time Text not null,
    cityId Integer not null,
    authorId Text not null,
    description Text,
    
    foreign key (cityId) references City(id)
);