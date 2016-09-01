// This file was generated by Rcpp::compileAttributes
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

// FwBk
SEXP FwBk(Rcpp::NumericMatrix ledata, Rcpp::NumericMatrix workdata);
RcppExport SEXP postCP_FwBk(SEXP ledataSEXP, SEXP workdataSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< Rcpp::NumericMatrix >::type ledata(ledataSEXP);
    Rcpp::traits::input_parameter< Rcpp::NumericMatrix >::type workdata(workdataSEXP);
    __result = Rcpp::wrap(FwBk(ledata, workdata));
    return __result;
END_RCPP
}
// maxFwBk
SEXP maxFwBk(Rcpp::NumericMatrix ledata, Rcpp::NumericMatrix workdata);
RcppExport SEXP postCP_maxFwBk(SEXP ledataSEXP, SEXP workdataSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< Rcpp::NumericMatrix >::type ledata(ledataSEXP);
    Rcpp::traits::input_parameter< Rcpp::NumericMatrix >::type workdata(workdataSEXP);
    __result = Rcpp::wrap(maxFwBk(ledata, workdata));
    return __result;
END_RCPP
}