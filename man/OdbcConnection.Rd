% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Connection.R, R/Table.R
\docType{class}
\name{OdbcConnection}
\alias{OdbcConnection}
\alias{OdbcConnection-class}
\alias{show,OdbcConnection-method}
\alias{dbIsValid,OdbcConnection-method}
\alias{dbDisconnect,OdbcConnection-method}
\alias{dbSendQuery,OdbcConnection,character-method}
\alias{dbSendStatement,OdbcConnection,character-method}
\alias{dbDataType,OdbcConnection,ANY-method}
\alias{dbDataType,OdbcConnection,data.frame-method}
\alias{dbQuoteIdentifier,OdbcConnection,character-method}
\alias{dbQuoteIdentifier,OdbcConnection,SQL-method}
\alias{dbExistsTable,OdbcConnection,character-method}
\alias{dbRemoveTable,OdbcConnection,character-method}
\alias{dbGetInfo,OdbcConnection-method}
\alias{dbGetQuery,OdbcConnection,character-method}
\alias{dbBegin,OdbcConnection-method}
\alias{dbCommit,OdbcConnection-method}
\alias{dbRollback,OdbcConnection-method}
\alias{dbExistsTable,OdbcConnection,Id-method}
\alias{dbExistsTable,OdbcConnection,SQL-method}
\title{Odbc Connection Methods}
\usage{
\S4method{show}{OdbcConnection}(object)

\S4method{dbIsValid}{OdbcConnection}(dbObj, ...)

\S4method{dbDisconnect}{OdbcConnection}(conn, ...)

\S4method{dbSendQuery}{OdbcConnection,character}(conn, statement, params = NULL, ..., immediate = FALSE)

\S4method{dbSendStatement}{OdbcConnection,character}(conn, statement, params = NULL, ..., immediate = FALSE)

\S4method{dbDataType}{OdbcConnection,ANY}(dbObj, obj, ...)

\S4method{dbDataType}{OdbcConnection,data.frame}(dbObj, obj, ...)

\S4method{dbQuoteIdentifier}{OdbcConnection,character}(conn, x, ...)

\S4method{dbQuoteIdentifier}{OdbcConnection,SQL}(conn, x, ...)

\S4method{dbExistsTable}{OdbcConnection,character}(conn, name, ...)

\S4method{dbRemoveTable}{OdbcConnection,character}(conn, name, ...)

\S4method{dbGetInfo}{OdbcConnection}(dbObj, ...)

\S4method{dbGetQuery}{OdbcConnection,character}(conn, statement, n = -1, params = NULL, ...)

\S4method{dbBegin}{OdbcConnection}(conn, ...)

\S4method{dbCommit}{OdbcConnection}(conn, ...)

\S4method{dbRollback}{OdbcConnection}(conn, ...)

\S4method{dbExistsTable}{OdbcConnection,Id}(conn, name, ...)

\S4method{dbExistsTable}{OdbcConnection,SQL}(conn, name, ...)
}
\arguments{
\item{object}{Any R object}

\item{dbObj}{An object inheriting from \linkS4class{DBIObject},
i.e. \linkS4class{DBIDriver}, \linkS4class{DBIConnection},
or a \linkS4class{DBIResult}}

\item{...}{Other arguments to methods.}

\item{conn}{A \linkS4class{DBIConnection} object, as returned by
\code{\link[=dbConnect]{dbConnect()}}.}

\item{statement}{a character string containing SQL.}

\item{params}{Query parameters to pass to \code{\link[=dbBind]{dbBind()}}, See \code{\link[=dbBind]{dbBind()}} for details.}

\item{immediate}{If \code{TRUE}, SQLExecDirect will be used instead of
SQLPrepare, and the \code{params} argument is ignored}

\item{obj}{An R object whose SQL type we want to determine.}

\item{x}{A character vector, \link[DBI]{SQL} or \link[DBI]{Id} object to quote as identifier.}

\item{name}{A character string specifying a DBMS table name.}

\item{n}{maximum number of records to retrieve per fetch. Use \code{n = -1}
or \code{n = Inf}
to retrieve all pending records.  Some implementations may recognize other
special values.}
}
\description{
Implementations of pure virtual functions defined in the \code{DBI} package
for OdbcConnection objects.
}
