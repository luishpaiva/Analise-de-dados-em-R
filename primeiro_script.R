mensagem <- "Hello World!"
print(mensagem)

# Isto é um comentário

?print

# Instalando um novo pacote
install.packages("ggplot2")

# Carregando um pacote
library(ggplot2)

# Vetores
cidade <- c("Brasília",
            "São Paulo",
            "Rio de Janeiro",
            "Porto Alegre"
            )

cidade

temperatura <- c(32, 22, 35, 17)

regiao <- c(1, 2, 2, 3)

?c()

# Acessando o primeiro elemento
cidade[1]

# Acessando um intervalo de elementos
temperatura[1:3]

# Copiando um vetor
cidade2 <- cidade
cidade2

# Excluindo o segundo elemento da consulta
temperatura[-2]

# Alterando um vetor
cidade2[3] <- "Belo Horizonte"

# Adicionando um novo elemento
cidade2[5] <- "Curitiba"

cidade2

# Deletando um vetor
cidade2 <- NULL

cidade2

# Fatores
?factor

UF <- factor(c("DF", "SP", "RJ", "RS"))

UF

grau.instrucao <- factor(c("Nível Médio",
                           "Superior",
                           "Nível Médio",
                           "Fundamental"),
                         levels = c("Fundamental",
                                    "Nível Médio",
                                    "Superior"),
                         ordered = TRUE)

grau.instrucao

# Listas
?list()

pessoa <- list(sexo = "M", cidade = "Brasília", idade = 20)

pessoa

# Acessando o primeiro elemento da lista
pessoa[1]

# Acessando o valor do primeiro elemento da lista
pessoa[[1]]

# Editando a lista
pessoa[["idade"]] <- 22

pessoa

# Deletando um elemento da lista
pessoa[["idade"]] <- NULL

pessoa

# Filtrando lementos da lista
pessoa[c("cidade", "idade")]

# Lista de listas
cidades <- list(cidade = cidade,
                temperatura = temperatura,
                regiao = regiao)

cidades

# Criando um data frame com vetores
df <- data.frame(cidade, temperatura)

df

# Criando um data frame com lista
df2 <- data.frame(cidades)

df2

# Filtrando valores do data frame
# Recuperando o valor da linha 1, coluna 2
df[1, 2]

# Todas as linhas da primeira coluna
df[, 2]

# Primeira linha e todas as colunas
df[1,]

# Selecionando as 3 primeiras linhas da primeira e última coluna
df2[c(1:3), c(1, 3)]

# Verificando o nome das colunas
names(df)

# Verificando o número de linhas x colunas
dim(df)

# Verificando os tipos de dados
str(df)

# Acessar uma coluna do data frame
df$cidade
df["cidade"]

# Matrizes
?matrix()

m <- matrix(seq(1:9), nrow = 3)
m

m2 <- matrix(seq(1:25),
             ncol = 5,
             byrow = TRUE,
             dimnames = list(c(seq(1:5)),
                             c("A", "B", "C", "D", "E")
                             )
             )
m2

# Filtrando a matriz
m2[c(1:2), c("B", "C")]