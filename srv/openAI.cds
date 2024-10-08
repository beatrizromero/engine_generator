
using { test  } from '../db/schema';

@cds.query.limit: {
    default: 1000,
    max    : 99999
}
@requires       : [
    'authenticated-user',
    'system-user'
]
service CatalogOpenAI {

 action uploadFile( file: String ) returns String;
    entity testService as projection on test;


}
