% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/learner_class_classif_knn.R
\name{mlr_learners_classif.knn}
\alias{mlr_learners_classif.knn}
\alias{LearnerClassifKnn}
\title{Classification K-nearest Neighbour Learner}
\description{
K-nearest neighbor classification.
Calls \code{\link[class:knn]{class::knn()}} from \CRANpkg{class}.
}
\section{Dictionary}{

This \link[mlr3:Learner]{Learner} can be instantiated via \link[mlr3:mlr_sugar]{lrn()}:

\if{html}{\out{<div class="sourceCode">}}\preformatted{lrn("classif.knn")
}\if{html}{\out{</div>}}
}

\section{Meta Information}{

\itemize{
\item Task type: \dQuote{classif}
\item Predict Types: \dQuote{response}
\item Feature Types: \dQuote{numeric}
\item Required Packages: \CRANpkg{mlr3}, \CRANpkg{class}
}
}

\section{Parameters}{
\tabular{lllll}{
   Id \tab Type \tab Default \tab Levels \tab Range \cr
   k \tab integer \tab 1 \tab  \tab \eqn{[1, \infty)}{[1, Inf)} \cr
   l \tab numeric \tab 0 \tab  \tab \eqn{[0, \infty)}{[0, Inf)} \cr
   prob \tab logical \tab FALSE \tab TRUE, FALSE \tab - \cr
   use.all \tab logical \tab TRUE \tab TRUE, FALSE \tab - \cr
}
}

\examples{
\dontshow{if (mlr3misc::require_namespaces(lrn("classif.knn")$packages, quietly = TRUE)) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
# Define the Learner
learner = mlr3::lrn("classif.knn")
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
\references{
Venables WN, Ripley BD (2002).
\emph{Modern Applied Statistics with S}, Fourth edition.
Springer, New York.
ISBN 0-387-95457-0, \url{https://www.stats.ox.ac.uk/pub/MASS4/}.
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
annanzrv
}
\section{Super classes}{
\code{\link[mlr3:Learner]{mlr3::Learner}} -> \code{\link[mlr3:LearnerClassif]{mlr3::LearnerClassif}} -> \code{LearnerClassifKnn}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-LearnerClassifKnn-new}{\code{LearnerClassifKnn$new()}}
\item \href{#method-LearnerClassifKnn-clone}{\code{LearnerClassifKnn$clone()}}
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
<li><span class="pkg-link" data-pkg="mlr3" data-topic="LearnerClassif" data-id="predict_newdata_fast"><a href='../../mlr3/html/LearnerClassif.html#method-LearnerClassif-predict_newdata_fast'><code>mlr3::LearnerClassif$predict_newdata_fast()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LearnerClassifKnn-new"></a>}}
\if{latex}{\out{\hypertarget{method-LearnerClassifKnn-new}{}}}
\subsection{Method \code{new()}}{
Creates a new instance of this \link[R6:R6Class]{R6} class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LearnerClassifKnn$new()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LearnerClassifKnn-clone"></a>}}
\if{latex}{\out{\hypertarget{method-LearnerClassifKnn-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LearnerClassifKnn$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
