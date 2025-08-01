% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/learner_abess_classif_abess.R
\name{mlr_learners_classif.abess}
\alias{mlr_learners_classif.abess}
\alias{LearnerClassifAbess}
\title{Classification Abess Learner}
\description{
Adaptive best-subset selection for classification.
Calls \code{\link[abess:abess]{abess::abess()}} from \CRANpkg{abess}.
}
\section{Dictionary}{

This \link[mlr3:Learner]{Learner} can be instantiated via \link[mlr3:mlr_sugar]{lrn()}:

\if{html}{\out{<div class="sourceCode">}}\preformatted{lrn("classif.abess")
}\if{html}{\out{</div>}}
}

\section{Meta Information}{

\itemize{
\item Task type: \dQuote{classif}
\item Predict Types: \dQuote{response}, \dQuote{prob}
\item Feature Types: \dQuote{integer}, \dQuote{numeric}
\item Required Packages: \CRANpkg{mlr3}, \CRANpkg{abess}
}
}

\section{Parameters}{
\tabular{lllll}{
   Id \tab Type \tab Default \tab Levels \tab Range \cr
   family \tab character \tab - \tab binomial, multinomial, ordinal \tab - \cr
   tune.path \tab character \tab sequence \tab sequence, gsection \tab - \cr
   tune.type \tab character \tab gic \tab gic, aic, bic, ebic, cv \tab - \cr
   normalize \tab integer \tab NULL \tab  \tab \eqn{(-\infty, \infty)}{(-Inf, Inf)} \cr
   support.size \tab untyped \tab NULL \tab  \tab - \cr
   c.max \tab integer \tab 2 \tab  \tab \eqn{[1, \infty)}{[1, Inf)} \cr
   gs.range \tab untyped \tab NULL \tab  \tab - \cr
   lambda \tab numeric \tab 0 \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   always.include \tab untyped \tab NULL \tab  \tab - \cr
   group.index \tab untyped \tab NULL \tab  \tab - \cr
   init.active.set \tab untyped \tab NULL \tab  \tab - \cr
   splicing.type \tab integer \tab 2 \tab  \tab \eqn{[1, 2]}{[1, 2]} \cr
   max.splicing.iter \tab integer \tab 20 \tab  \tab \eqn{[1, \infty)}{[1, Inf)} \cr
   screening.num \tab integer \tab NULL \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   important.search \tab integer \tab NULL \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   warm.start \tab logical \tab TRUE \tab TRUE, FALSE \tab - \cr
   nfolds \tab integer \tab 5 \tab  \tab \eqn{(-\infty, \infty)}{(-Inf, Inf)} \cr
   foldid \tab untyped \tab NULL \tab  \tab - \cr
   cov.update \tab logical \tab FALSE \tab TRUE, FALSE \tab - \cr
   newton \tab character \tab exact \tab exact, approx \tab - \cr
   newton.thresh \tab numeric \tab 1e-06 \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   max.newton.iter \tab integer \tab NULL \tab  \tab \eqn{[1, \infty)}{[1, Inf)} \cr
   early.stop \tab logical \tab FALSE \tab TRUE, FALSE \tab - \cr
   ic.scale \tab numeric \tab 1 \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   num.threads \tab integer \tab 0 \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   seed \tab integer \tab 0 \tab  \tab \eqn{(-\infty, \infty)}{(-Inf, Inf)} \cr
}
}

\section{Initial parameter values}{

\itemize{
\item \code{num.threads}: This parameter is initialized to 1 (default is 0) to avoid conflicts with the mlr3 parallelization.
\item \code{family}: Depends on the task type, if the parameter \code{family} is \code{NULL}, it is set to \code{"binomial"} for binary
classification tasks and to \code{"multinomial"} for multiclass classification problems.
}
}

\examples{
\dontshow{if (mlr3misc::require_namespaces(lrn("classif.abess")$packages, quietly = TRUE)) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
# Define the Learner
learner = mlr3::lrn("classif.abess")
print(learner)

# Define a Task
task = mlr3::tsk("sonar")

# Create train and test set
ids = mlr3::partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
\dontshow{\}) # examplesIf}
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
abess-team
}
\section{Super classes}{
\code{\link[mlr3:Learner]{mlr3::Learner}} -> \code{\link[mlr3:LearnerClassif]{mlr3::LearnerClassif}} -> \code{LearnerClassifAbess}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-LearnerClassifAbess-new}{\code{LearnerClassifAbess$new()}}
\item \href{#method-LearnerClassifAbess-selected_features}{\code{LearnerClassifAbess$selected_features()}}
\item \href{#method-LearnerClassifAbess-clone}{\code{LearnerClassifAbess$clone()}}
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
<li><span class="pkg-link" data-pkg="mlr3" data-topic="Learner" data-id="train"><a href='../../mlr3/html/Learner.html#method-Learner-train'><code>mlr3::Learner$train()</code></a></span></li>
<li><span class="pkg-link" data-pkg="mlr3" data-topic="LearnerClassif" data-id="predict_newdata_fast"><a href='../../mlr3/html/LearnerClassif.html#method-LearnerClassif-predict_newdata_fast'><code>mlr3::LearnerClassif$predict_newdata_fast()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LearnerClassifAbess-new"></a>}}
\if{latex}{\out{\hypertarget{method-LearnerClassifAbess-new}{}}}
\subsection{Method \code{new()}}{
Creates a new instance of this \link[R6:R6Class]{R6} class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LearnerClassifAbess$new()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LearnerClassifAbess-selected_features"></a>}}
\if{latex}{\out{\hypertarget{method-LearnerClassifAbess-selected_features}{}}}
\subsection{Method \code{selected_features()}}{
Extract the name of selected features from the model by \code{\link[abess:extract.abess]{abess::extract()}}.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LearnerClassifAbess$selected_features()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
The names of selected features
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LearnerClassifAbess-clone"></a>}}
\if{latex}{\out{\hypertarget{method-LearnerClassifAbess-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LearnerClassifAbess$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
