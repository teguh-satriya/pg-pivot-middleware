const express = require("express");
const { postgraphile } = require("postgraphile");
const cors = require('cors');
require('dotenv').config();

const PgSimplifyInflectorPlugin = require("@graphile-contrib/pg-simplify-inflector");

const app = express();

const corsOptions = {
    origin: process.env.CORS_ORIGIN,
    optionsSuccessStatus: 200 // some legacy browsers (IE11, various SmartTVs) choke on 204
}

app.use(
    cors(corsOptions),
    postgraphile(process.env.CONN_STRING, process.env.DB_SCHEMA, {
        appendPlugins: [PgSimplifyInflectorPlugin],
        classicIds:true,
        graphqlRoute: "/graphql",
        graphiql: true,
        graphiqlRoute: "/graphiql",
        showErrorStack:true,
        extendedErrors :['hint', 'detail', 'errcode'],
        legacyRelations: 'omit',
        disableDefaultMutations:true,
        graphileBuildOptions: {
            pgOmitListSuffix:true,
            pgShortPk: true,
        },
        simpleCollections:'only'
    })
  );

app.listen(process.env.PORT);