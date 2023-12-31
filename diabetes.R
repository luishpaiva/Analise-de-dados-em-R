---
  title: "Diabetes"
output: pdf_document
---
  
  ```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

# Obtenção dos dados
```{r eval=FALSE, include=FALSE}
#Necessário fazer o download do arquivo "diabetes.csv" na biblioteca do curso que esta em:
# Biblioteca > Material Complementar

#Alterar o valor do campo file com o caminho completo do diretório em que se encontra o
# arquivo diabetes.csv

#Exemplo file = "C:/Users/NomeUsuario/Documents/Datasets/diabetes.csv"

#Nesse exemplo o arquivo diabetes.csv está no disco "E" dentro da pasta Datasets
```

```{r}

diabetes <- read.csv(
  file = "E:/Datasets/diabetes.csv"
)

head(diabetes[1:6])

```

# Preparação dos dados

```{r message=FALSE, warning=FALSE}

diabetes$Outcome <- as.factor(diabetes$Outcome)


library(dplyr)

diabetes2 <- diabetes %>%
  filter(Insulin <= 250)

```

# Construção do modelo
## Divisão dos dados
```{r message=FALSE, warning=FALSE, paged.print=TRUE}
library(caTools)

set.seed(123)
index = sample.split(diabetes2$Pregnancies, SplitRatio = .70)

train = subset(diabetes2, index == TRUE)
test  = subset(diabetes2, index == FALSE)
```

# Construção do modelo
## Treinamento
```{r message=FALSE, warning=FALSE}
library(caret)
library(e1071)
set.seed(321)

modelo2 <- train(
  Outcome ~., data = train, method = "knn",
  tuneGrid = expand.grid(k = c(1:20)))

modelo2$results

modelo2$bestTune

plot(modelo2)
```

# Avaliando o modelo
```{r message=FALSE, warning=FALSE}

predicoes <- predict(modelo2,test)

predicoes


?caret::confusionMatrix
confusionMatrix(predicoes, test$Outcome)
```
