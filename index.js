const express = require("express");
const { postgraphile } = require("postgraphile");
const cors = require('cors');
const PgSimplifyInflectorPlugin = require("@graphile-contrib/pg-simplify-inflector");

const app = express();

const corsOptions = {
    origin: 'http://localhost:3000',
    optionsSuccessStatus: 200 // some legacy browsers (IE11, various SmartTVs) choke on 204
}

app.use(
    cors(corsOptions),
    postgraphile("postgresql://postgres:okedeh@localhost:5432/test-graphql", "public", {
        appendPlugins: [PgSimplifyInflectorPlugin],
        classicIds:true,
        graphqlRoute: "/graphql",
        graphiql: true,
        graphiqlRoute: "/graphiql",
        showErrorStack:true,
        extendedErrors :['hint', 'detail', 'errcode'],
        legacyRelations: 'omit',
        graphileBuildOptions: {
            pgOmitListSuffix:true,
            pgShortPk: true,
        },
        simpleCollections:'only'
    })
  );

app.listen(process.env.PORT || 1000);