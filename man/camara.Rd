\docType{data}
\name{camara}
\alias{camara}
\title{Pedidos de reembolso dos deputados federais brasileiros}
\format{
  Tibble com 3.100.697 linhas e 29 colunas. Cada linha equivale a um pedido de reembolso. Os pedidos de reembolso foram realizados entre 2009 e 2018.

\describe{

\item{\code{applicant_id}}{Identifying number of a congressperson or the Chamber of Deputies leadership for the sake of transparency and accountability within this allowance.}

\item{\code{batch_number}}{In the context of this allowance the batch number refers to the cover number of a batch grouping receipts handed in to the Chamber of Deputies to be reimbursed. This data together with the reimbursement number helps in finding the receipt in the Lower House Archive.}

\item{\code{cnpj_cpf}}{CNPJ or CPF are identification numbers issued for, respectively, companies and people by Federal Revenue of Brazil. CNPJ are 14 digits long and CPF are 11 digits long. This field is the identification number (CNPJ or CPF) of the legal entity issuing the receipt. The receipt is a proof of the expense and is a valid document used to claim for a reimbursement.}

\item{\code{congressperson_document}}{Document used to identify the congressperson at the Chamber of Deputies. May change from one term to another.}

\item{\code{congressperson_id}}{Unique identifier number of a congressperson at the Chamber of Deputies.}

\item{\code{congressperson_name}}{Name used by the congressperson during his term in office. Usually it is composed by two elements: a given name and a family name; two given names; or two forename, except if the head of the Chamber of Deputies explicitly alter this rule in order to avoid confusion.}

\item{\code{document_id}}{}

\item{\code{document_number}}{This field is the identifying number issued in the receipt, in the proof of expense declared by the congressperson in this allowance.}

\item{\code{document_type}}{Type of receipt ? 0 (zero) for bill of sale; 1 (one) for simple receipt; and 2 (two) to expense made abroad.}

\item{\code{document_value}}{Value of the expense in the receipt. If it refers to fly tickets this value can be negative, meaning that it is a credit related to another fly tickets issued but not used by the congressperson (the same is valid for `total_net_value`).}

\item{\code{installment}}{The number of the installment of the receipt. Used when the receipt has to be reimbursed in installments.}

\item{\code{issue_date}}{Issuing date of the receipt.}

\item{\code{leg_of_the_trip}}{Leg of the trip when the receipt refers to a fly ticket.}

\item{\code{month}}{Month of the receipt. It is used together with the year to determine in which month the debt will be considered in the context of this allowance.}

\item{\code{numbers}}{}

\item{\code{party}}{It represents the abbreviation of a party. Definition of party: it is an organization built by people with interests or ideologies in common. They form an association with the purpose of achieving power to implement a government program. They are legal entities, free and autonomous when it comes to their creation and self-organization, since they respect the constitutional commandments.}

\item{\code{passenger}}{Name of the passenger when the receipt refers to a fly ticket.}

\item{\code{remark_value}}{Remarked value of the expense concerning the value of the receipt, or remarked value of the expense.}

\item{\code{state}}{In the context of this allowance it represents the state or federative unit that elected the congressperson; it is also used to define the value of the allowance to the congressperson.}

\item{\code{subquota_description}}{The description of the category group referring to the nature of the expense.}

\item{\code{subquota_group_description}}{Description of the detailed specification required by certain category groups.}

\item{\code{subquota_group_id}}{In the context of this allowance there are expenses under certain category groups that require further specifications (e.g. fuel). This variable represents the code of these detailed specification.}

\item{\code{subquota_number}}{In the context of this allowance this is the code of the category group referring to the nature of the expense claimed by the congressperson's receipt, the receipt of what was debited from the congressperson's account.}

\item{\code{supplier}}{Name of the supplier of the product or service specified by the receipt.}

\item{\code{term}}{Legislative period: 4 years period, the same period of the term of congresspeople. In the context of this allowance, it represents the initial year of the legislature. It is also used as part of the Congressperson Document Number since it changes in between legislatures.}

\item{\code{term_id}}{Legislative period: 4 years period, the same period of the term of congresspeople. In the context of this allowance it represents the identifying code of the legislature, an ordinal number incremented by one each new legislature (e.g. the 2011 legislature is the 54th legislature).}

\item{\code{total_net_value}}{Net value of the receipt calculated from the value of the receipt and the remarked value. This is the value that is going to be debited from the congressperson's account. If the category group is Telephone and the value is zero, it means the expense was franchised out.}

\item{\code{total_value}}{}

\item{\code{year}}{Year of the receipt. It is used together with the month to determine in which month the debt will be considered in the context of this allowance.}

}

}

\usage{
data(camara)
}

\description{
Pedidos de reembolso dos deputados federais brasileiros entre 2009 e 2018
}

\examples{
data(camara)
camara \%>\%
  filter(year <= 2017) \%>\%
  select(document_value, year) \%>\%
  group_by(year) \%>\%
  summarise(total=sum(document_value)) \%>\%
  print(n=Inf) \%>\%
  ggplot(., aes(x=year, y=total/1e6)) +
  geom_line() +
  labs(x="Ano", y="Reembolsos (em milhoes de R$)") +
  scale_x_continuous(breaks = seq(2009, 2017, 1), minor_breaks = NULL) +
  scale_y_continuous(limits = c(0, 250))
}
\references{
https://github.com/okfn-brasil/serenata-toolbox/
}
\keyword{datasets}
