create index index_Country_name on Country(name);

create index index_Plot_authorId on Plot(authorId);

create index index_Weather_cityId_timeEpoch
on Weather(cityId, timeEpoch);

create index index_CurrentWeather_cityId_timeEpoch
on CurrentWeather(cityId, timeEpoch);