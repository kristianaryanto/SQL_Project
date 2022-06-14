select *
from(
    select *,
        case when pm10 >= 100 
        OR pm25 >= 100
        or so2 >= 100
        or o3 >= 100
        then 'lari su'
            when pm10 between 50 and 80
            or pm25 between 50 and 80
            then 'tidak sehat'
            when pm10 between 10 and 49
            or pm25 between 10 and 49
            then 'aman'
        else null
    end  as kondisi_udara
    from DKI2) as x
where kondisi_udara = 'lari su'
