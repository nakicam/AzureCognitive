% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/endpoint.R
\name{cognitive_endpoint}
\alias{cognitive_endpoint}
\title{Object representing an Azure Cognitive Service endpoint}
\usage{
cognitive_endpoint(url, service_type, key = NULL, aad_token = NULL,
  cognitive_token = NULL, auth_header = "ocp-apim-subscription-key")
}
\arguments{
\item{url}{The URL of the endpoint.}

\item{service_type}{What type (or kind) of service the endpoint provides. See below for the services that AzureCognitive currently recognises.}

\item{key}{The subscription key (single- or multi-service) to use to authenticate with the endpoint.}

\item{aad_token}{An Azure Active Directory (AAD) OAuth token, as an alternative to a key for the services that allow AAD authentication.}

\item{cognitive_token}{A Cognitive Service token, as another alternative to a key for the services that accept it.}

\item{auth_header}{The name of the HTTP request header for authentication. Only used if a subscription key is supplied.}
}
\value{
An object inheriting from class \code{cognitive_endpoint}, that can be used to communicate with the REST endpoint. The subclass of the object indicates the type of service provided.
}
\description{
Object representing an Azure Cognitive Service endpoint
}
\details{
Currently, \code{cognitive_endpoint} recognises the following service types:
\itemize{
\item \code{CognitiveServices}: multiple service types
\item \code{ComputerVision}: generic computer vision service
\item \code{Face}: face recognition
\item \code{LUIS}: language understanding
\item \code{CustomVision.Training}: Training endpoint for a custom vision service
\item \code{CustomVision.Prediction}: Prediction endpoint for a custom vision service
\item \code{ContentModerator}: Content moderation (text and images)
\item \code{Text}: text analytics
\item \code{TextTranslate}: text translation
}
}
\examples{
\dontrun{

cognitive_service("https://myvisionservice.api.cognitive.azure.com",
    service_type="Computervision", key="key")

cognitive_service("https://mylangservice.api.cognitive.azure.com",
    service_type="LUIS", key="key")

# authenticating with AAD
token <- AzureAuth::get_azure_token("https://cognitiveservices.azure.com",
    tenant="mytenant", app="app_id", password="password")
cognitive_service("https://myvisionservice.api.cognitive.azure.com",
    service_type="Computervision", aad_token=token))

}
}
\seealso{
\link{call_cognitive_endpoint}, \link{create_cognitive_service}, \link{get_cognitive_service}
}
