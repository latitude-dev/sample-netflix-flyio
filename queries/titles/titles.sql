select *,
       string_to_array(ltrim(rtrim(production_countries, ']'), '['), ', ') as clean_countries
from read_csv_auto('~/Dev/latitude/template/.latitude/app/static/latitude/queries/netflix.csv')
{#if param('start_year') && param('end_year')}
    where release_year between { interpolate(param('start_year')) } and { interpolate(param('end_year')) }
{/if}
order by imdb_score desc