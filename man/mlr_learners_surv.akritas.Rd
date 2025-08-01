% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/learner_survivalmodels_surv_akritas.R
\name{mlr_learners_surv.akritas}
\alias{mlr_learners_surv.akritas}
\alias{LearnerSurvAkritas}
\title{Survival Akritas Estimator Learner}
\description{
Survival akritas estimator.
Calls \code{\link[survivalmodels:akritas]{survivalmodels::akritas()}} from package 'survivalmodels'.
}
\section{Prediction types}{

This learner returns two prediction types:
\enumerate{
\item \code{distr}: a survival matrix in two dimensions, where observations are
represented in rows and time points in columns.
Calculated using the internal \code{\link[survivalmodels:predict.akritas]{survivalmodels::predict.akritas()}} function.
The survival matrix uses the unique time points from the training set.
We advise to set the parameter \code{ntime} which allows to adjust the granularity
of these time points to a reasonable number (e.g. \code{150}).
This avoids large execution times during prediction.
\item \code{crank}: the expected mortality using \code{\link[survivalmodels:surv_to_risk]{survivalmodels::surv_to_risk()}}.
}
}

\section{Dictionary}{

This \link[mlr3:Learner]{Learner} can be instantiated via \link[mlr3:mlr_sugar]{lrn()}:

\if{html}{\out{<div class="sourceCode">}}\preformatted{lrn("surv.akritas")
}\if{html}{\out{</div>}}
}

\section{Meta Information}{

\itemize{
\item Task type: \dQuote{surv}
\item Predict Types: \dQuote{crank}, \dQuote{distr}
\item Feature Types: \dQuote{logical}, \dQuote{integer}, \dQuote{numeric}, \dQuote{character}, \dQuote{factor}
\item Required Packages: \CRANpkg{mlr3}, \CRANpkg{mlr3proba}, \CRANpkg{mlr3extralearners}, \CRANpkg{survivalmodels}, \CRANpkg{distr6}
}
}

\section{Parameters}{
\tabular{lllll}{
   Id \tab Type \tab Default \tab Levels \tab Range \cr
   lambda \tab numeric \tab 0.5 \tab  \tab \eqn{[0, 1]}{[0, 1]} \cr
   reverse \tab logical \tab FALSE \tab TRUE, FALSE \tab - \cr
   ntime \tab integer \tab NULL \tab  \tab \eqn{[1, \infty)}{[1, Inf)} \cr
   round_time \tab integer \tab 2 \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
}
}

\section{Installation}{

Package 'survivalmodels' is not on CRAN and has to be install from GitHub via
\code{remotes::install_github("RaphaelS1/survivalmodels")}.
}

\references{
Akritas, G M (1994).
\dQuote{Nearest neighbor estimation of a bivariate distribution under random censoring.}
\emph{The Annals of Statistics}, 1299--1327.
}
\seealso{
\itemize{
\item \link[mlr3misc:Dictionary]{Dictionary} of \link[mlr3:Learner]{Learners}: \link[mlr3:mlr_learners]{mlr3::mlr_learners}.
\item \code{as.data.table(mlr_learners)} for a table of available \link[mlr3:Learner]{Learners} in the running session (depending on the loaded packages).
\item Chapter in the \href{https://mlr3book.mlr-org.com/}{mlr3book}: \url{https://mlr3book.mlr-org.com/basics.html#learners}
\item \CRANpkg{mlr3learners} for a selection of recommended learners.
\item \CRANpkg{mlr3cluster} for unsupervised clustering learners.
\item \CRANpkg{mlr3pipelines} to combine learners with pre- and postprocessing steps.
\item \CRANpkg{mlr3tuning} for tuning of hyperparameters, \CRANpkg{mlr3tuningspaces} for established default tuning spaces.
}
}
\author{
RaphaelS1
}
\section{Super classes}{
\code{\link[mlr3:Learner]{mlr3::Learner}} -> \code{\link[mlr3proba:LearnerSurv]{mlr3proba::LearnerSurv}} -> \code{LearnerSurvAkritas}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-LearnerSurvAkritas-new}{\code{LearnerSurvAkritas$new()}}
\item \href{#method-LearnerSurvAkritas-clone}{\code{LearnerSurvAkritas$clone()}}
}
}
\if{html}{\out{
<details><summary>Inherited methods</summary>
<ul>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="base_learner"><a href='../../mlr3/html/Learner.html#method-Learner-base_learner'><code>mlr3::Learner$base_learner()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="configure"><a href='../../mlr3/html/Learner.html#method-Learner-configure'><code>mlr3::Learner$configure()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="encapsulate"><a href='../../mlr3/html/Learner.html#method-Learner-encapsulate'><code>mlr3::Learner$encapsulate()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="format"><a href='../../mlr3/html/Learner.html#method-Learner-format'><code>mlr3::Learner$format()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="help"><a href='../../mlr3/html/Learner.html#method-Learner-help'><code>mlr3::Learner$help()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="predict"><a href='../../mlr3/html/Learner.html#method-Learner-predict'><code>mlr3::Learner$predict()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="predict_newdata"><a href='../../mlr3/html/Learner.html#method-Learner-predict_newdata'><code>mlr3::Learner$predict_newdata()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="print"><a href='../../mlr3/html/Learner.html#method-Learner-print'><code>mlr3::Learner$print()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="reset"><a href='../../mlr3/html/Learner.html#method-Learner-reset'><code>mlr3::Learner$reset()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="selected_features"><a href='../../mlr3/html/Learner.html#method-Learner-selected_features'><code>mlr3::Learner$selected_features()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="train"><a href='../../mlr3/html/Learner.html#method-Learner-train'><code>mlr3::Learner$train()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LearnerSurvAkritas-new"></a>}}
\if{latex}{\out{\hypertarget{method-LearnerSurvAkritas-new}{}}}
\subsection{Method \code{new()}}{
Creates a new instance of this \link[R6:R6Class]{R6} class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LearnerSurvAkritas$new()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LearnerSurvAkritas-clone"></a>}}
\if{latex}{\out{\hypertarget{method-LearnerSurvAkritas-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LearnerSurvAkritas$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
