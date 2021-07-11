################################################################################
#PROGRAMA BOLSA FAMÍLIA
################################################################################
getDadosProgramaBolsaFamilia <- function(anomes){
  
  url <- paste0("http://aplicacoes.mds.gov.br/sagi/servicos/misocial?q=*&fq=tipo_s:mes_mu&fq=anomes:",anomes,"&wt=csv&fl=ibge:codigo_ibge,anomes:anomes_s,qtd_familias_beneficiarias_bolsa_familia,valor_repassado_bolsa_familia&rows=10000000&sort=anomes_s%20asc,%20codigo_ibge%20asc")
  
  read.csv(url)
  
}