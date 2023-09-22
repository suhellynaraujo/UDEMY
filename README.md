
# UDEMY
 📚 Aqui adicionarei resumo dos exercícios dos cursos da [UDEMY](https://www.udemy.com/).

💻 curso_programacao - Professor Nélio Álves: [Java COMPLETO Programação Orientada a Objetos + Projetos](https://www.udemy.com/course/java-curso-completo/)


📝1 _ Estrutura Sequencial:
- Entrada de dados, quando o usuário informa dados ao computador. Exemplos básicos para entendimento de leitura de dados.
- Processamento de dados, forma em que as variáveis recebem os valores. Exemplos básicos para entendimento de atribuição de dados.
- Saída de dados, quando o computador informa dados ao usuário. Exemplos básicos para entendimento de escrita de dados.

📝 1.1 _ Expressão Matemática usando Math:
- sqrt = a variável recebe o valor da raiz quadrada
- pow =  a variável recebe valor de uma variável elevada ao valor de outra variável
- abs =  a variável recebe o valor absoluto

📝 1.2 _ Estrutura condicional =  estrutura de controle, que permite a definição e execução de blocos de comandos, com uma condição:

📝 1.3 _ Expressões comparativas: 
- maior >
- menor <
-  maior ou igual >=
-  menor ou igual <=
-  igual ==
-  diferente !=

📝 1.4 _ Expressões Lógicas:
- Condição && ( E ) = Todas as condições tem que ser VERDADEIRAS
- Condição || ( OU ) = Pelo menos uma condição deve ser VERDADEIRA
- Condição ! ( NÃO ) = Inverte a condição, se a expressão for verdadeira, passará a ser falsa e virce e versa.

📝 1.5 _ Condicional Simples
- if(){} = se

📝 1.6 _ Condicional Composta
- if(){ = se
- }else{} = se não

📝 1.7 _ Condição de encadeamento
- if(){ = se
- }else if(){ = se não se
- }else {}= se não

📝 1.8 _ Condição Comulativa
- a += b; a = a + b (a recebe a + b )
-	a -= b; a = a - b (a recebe a - b )
- a *= b; a = a * b (a recebe a * b )
- a /= b; a = a / b (a recebe a / b )
- a %= b; a = a % b (a recebe a % b )

📝 1.9 _ Switch - Case
- switch(){
- case 1:
- exemplo = 'exemplo';
- break;
- default: 
- exemplo = "exemplo2";
- break;}

📝 1.10_ Condição Ternária
- (condição) ? valor_se_verdadeiro : valor_se_falso

📝 2 _ Estrutura de Controle de repetição
- while = estrutura de controle que executa um bloco de código (comandos), enquanto uma condição for verdadeira. Usar quando não se sabe previamente a quantidade de repetições a serem executadas.

- for = estrutura de controle que repete um bloco de código (comandos), para um certo intervalo de valores. Usar quando se sabe a quantidade repetições ou o intervalo de valores, podedo incrementar ou decrementar.

- do while = estrutura de controle que executa o bloco de comandos executa pelo menos 1 vez,  pois a condiçõa é verificada no final,  primeiro executa o bloco, depois verifica passa pelo bloco, quando a condição for verdadeira,a estrutura volta e executa  novamente se a condição for falsa sai do bloco.

📝 3 _ Conversão de String

- toLowerCase =  converte tudo para minúsculo.
- toUpperCase = converte tudo para maiúsculo.
- trim = mantem a string original removendo os espaços do final.
- subString = pega somente da posição declarada e monta uma nova string.
- replace = troca a string de posição por seleção.
- indexOf = primeira posição da ocorrência.
- lastIndexOf = última posição da ocorrência
- split =  função para recortar a string, criando um vetor, sendo assim colocando as partes da string em várias posições de acordo com a quantidade de valores na variável.

📝 4 _ Funções 

- Representam um processamento que possui um significado.
- Operações que pode ser reaproveitada várias vezes.
- Recebe um argumento como parâmetro e retorna uma resposta.

📝 4.1 Vantagens:

- Modulariazação: divide em vários módulos.
- Delegação: lógica para execução em outro lugar.
- Reaproveitameto: podendo ser utulizado várias vezes.
- Podem receber dados de entrada (parâmetros ou argumentos) e saída
(podendo ou não retornar uma saída)
- Em POO funções em classes são os métodos.

📝 5 _ Classes

- Tipo estruturado
- Atributos(dados/campos)
- Métodos(funções/operações)
- Construtores
- Sobrecarga
- Encapsulamento
- Herança
- Polimorfismo

Entidades
Serviços
Controladores
Utilitários
Views
Repositórios
Gerenciaodres

- Toda classe em java é uma subclasse da classe Object 

📝 5.1 _ Objeto

- São as instâncias das classes

- getClass =  retorna o tipo do objeto
- equals = compara se o objero é igual a outro
- hasCode = retorna um código has do objeto
- toString - converte o objeto para String

📝 5.2 Instanciação
- Memória Stack = estática
- Memória Heap = dinâmica 

📝 6 _ Projeto de Classes UML = Diagrama de Classes

- Representa classes, e relações entre elas

📝 7 _ Membros estáticos

- São conhecidos como membros de classes
- public static final = não pode mudar (uma constante), (para declarar nomes inal, sempre ser com letras maiusculas)
- padrão de nomeclatura para constantes = tudo maiusculas com um _ para separar as palavras, exemplo: NET_SALARY.
- Ao ser declarado, um método statico (ou uma constante), não precisa de um objeto para ser chamado em outra classe, sendo assim apenas chamamos a propria classe.método desejado, passando os parametros.

📝 8 _ SobreCarga

- É um recuso que uma classe possui de oferecer mais de uma operação (construtor) com o mesmo nome, porém com diferentes listas de parametros 

📝 9 _ Encapsulamento

- Esconde detalhes de implementação de uma classe.
- Expor somente operações seguros
- garabtir e mater que os objetos estejam em um estado consistente, não podendo ter dados inválidos
- Objeto não deve expor nenhum atributo(private)
- Atributos acessados somente por métodos get e set

📝 10 _ Modificadores de Acesso

- Private = só pde ser acessado na própria classe
- Não especificar o modificador = só pde ser acessado na classe do mesmo pacote
- Protected = só pode ser acessado no mesmo pacote, bem como subclasses de pacotes diferentes (extends = herança)
- Public = acessado por todas as classes, ao menos que ele esteja em um módulo diferente que não exporte o pacote onde ele está

📝 11 _ Tipos referência vs tipos valor

*** STACK é uma area de memória que guarda as variáveis declarada em cada classe
Quando declaramos um objeto, ele é guardado(alocado) em um local de memória chamado HEAP em tempo de execução , isso é chamdado de alocação dinâmica de memória . ***

📝 11.1 _ Classes

- Em java as classes são tipos referencias
- Variáveis do tipo classes são referencias ou tentáculos ou ponteiros, pois dentro dela vai ter uma referencia , um  endereço que vai dizer/apontar onde está o objeto 

📝 11.2 _ Valor null

- Tipos referncias(classes) aceitam valores "null", que indica que a variável aponta para ninguém, inicialmnete.
- Tipos valor(tipos primitivos) não aceitam valores "null", necessita ser declarada inicialmente

📝 11.3 _ Tipos primitivos

- Em java os tipos primitivos são tipos valor, caixas
- As variavés serão caixas alocadas na área de memória STACK, dentro será guardado o tipo exemplo booçean, char, byte, short, long, float, double, int

📝 11.4 _ Valores padrão

- Quando alocamos(new) qualquer tipo estruturado(classe ou arry), são atribuiidos valores padrão aos apontamentos
- Quando instanciamos um objeto por pardrão será inicializado com:
- numero: 0
- boolean: false
- char caracter código unicode 0
- objeto: null

📝 12 _ Desalocação de Memória - garbage collector e escopo local

📝 12.1 _ Deslocação garbage collector 

- Processo que automatiza o gerenciamento de memória de um progama em execução , monitorando os objetos alocados dinamicamente(tempo de execução) pelo programa (no heap), deslocando aqueles que não estão mais sendo utilizados

📝 12.1 _Deslocação por escopo local

- Variáveis estáticamente declaradas
- Variáveis locais são desalocadas imediatamente assim que seu escopo local sai de execução

📝 13 _ Vetores

- Arranjos unidimencionais

📝 13.1 _ Arrays(Arranjos)

- Estrtura de dados :

- Homogenia = mesmo tipo
- Ordenados = acessados por meio de posições
- Alocada de uma vez só em um bloco contíguo de memória

Vantagens : acesso imediato aos elementos de sua posição
Desvantagem : tamanho fixo, dificuldade para realizar inserçõoes e deleções

📝 14 _ Boxing (encaixotamento)

- É o processo de conversão de um objeto tipo valor para um objeto tipo referencia compatível

📝 15 _ Unboxing

- É o processo de conversão de um objeto tipo referencia para um objeto tipo valor compatível

📝 16 _ Wrapper Classes

- São classes com o objetivo de fazer o tratamento dos tipos primitivos como classes de forma transparente ao compilador sem a necessidade de utilização de casting
- São classes equivalente aos tipos primitivos(de vez com letras minusculas usar com letras maiusculas), sendo assim passam a ser uma classe e não apenas tipos primitivos
- Para serem feitos boxing e unboxing de forma natural no java		
- Aceita valor null

📝 17 _ For each

- Sintaxe simplificada para percorrer coleções
 for(tipo apelido : coleção){
    <comando 1>
    <comando 2>
 }

📝 18 _ Listas

- Estrutuda de dados 
    Homogênia
    Ordenadaa
    Inicia vazia
    Cada elemento ocupa um nó

- Tipo interface (List)
- Classes que implementam a interface List, ArrayList, LinkedList ...

📝 18.1 Demostração

- size() => Tamanho da lista
- add() => insere elementos a lista
- remove() => remove elementos da lista
- removeIf( x -> x.charAt(0) == 'M') => remove todo String(tipo) "nome do objeto" tal que "nome do objeto".(tipo primitivo) seja igual a ...
- index0f(), lastInndexOf() => encontra posição de elementos
- List<Integer> result = list.stream().filter(x -> x > 4).collect(Collectors.toList()); => Filtrar lista com base em predicado
- Integer result = list.stream().filter(x -> x > 4).findFirst().orElse(null); => encontra primeira ocorrencia com base em predicado

📝 19 _ Matriz
 
- nome dado a arranjos bidimencionais, vetores de vetores
- Linhas e colunas

📝 20 _ Data

- Data-[Hora] local

    - ano-mes-dia-[hora] armazenada sem fuso horário, hora opcional
    - utilizadas em uso comum em sistemas de região unica, excel
    - data de nascimento
    - data-hora de venda

- Data-[Hora] global

    - ano-mes-dia-[hora] armazenada com fuso horário
    - utilizados em sistemas multi-região, web
    - Sorteios
    - Eventos

- Duração

    - tempo decorrido entre duas tadas-horas

- Timezone

    - GMT(GreenWich Mean Time) 
        - Horário de londres
        - padrão UTC(Coordinated Universal Time)

    - Fuso horários relativos ao GMT/UTC
        - São Paulo: GMT-3
        - Manaus: GMT-4
        - Portugal: GMT+1

    - Linguagens/Tecnologias usam nomes para identificar Timezones
        - US/Pacific
        - America/Sao_Paulo
        - etc

- Padrão ISO 8601

    - Data-[Hora] local
        - ano-mes-dia
            - 2023-09-17

    - Data-[Hora] global
        - ano-mes-dia
            - 2023-09-17T21:35:09Z

- Operações com data-hora (Importante saber!!!!)

    - Intanciação
        - (agora) => Data-Hora
        - Texto ISO 8601 => Data-Hora
        - Texto formatado customizado => Data-Hora
        - dia, mes, ano, [horario, opcional] => Data-Hora local

    - Formatação
        - Texto ISO 8601 => Data-Hora
        - Texto formatado customizado => Data-Hora

    - Obter dados de uma data-hora local
        - Data-Hora local => dia, mes, ano, horario

    - Converter data-hora global para local
        - Data-Hora global, Timezone(sistema local) => Data-Hora local
    
    - Calculos com data-hora
        - Data-Hora +/- tempo => Data-Hora
        - Data-Hora 1, Data-Hora 2 => Duração

- Principais Tipos 

    - Data-Hora local
         - LocalDate
         - Local Time

    - Data-Hora global
        - Instant
    
    - Duração
        - Duration
    
    - Zoneld

    - ChronoUnit

📝 21 _ Enumeração => enum

- Tipo especial que serve para especiificaa de forma literal um conjunto de constantes relacionadas
- melhor semantica, código mais legivele auxiliado pelo compiilador

📝 22 _  Categorias de classes

- Entities
- Views
- Controllers
- Servvices
- Repositories

📝 23 _ Composição

- Tipo de associação que permite que um objeto cotenha outro
- Relaçõ "tem-um" ou "tem-outro"
- Organização
- Coesão
- Flexibilidade
- Reuso
- Simbolo
    - Dimante preto

📝 24 _ Herança

- Tipo de associação que permite que uma classe herde todos os dados e comportamentos de outra classe(e não entre objetos) 
- Relação "é-um"
    - Uma subclasse é uma superclasse(por receber metodos e atributos da superclasse)
- Generalização/especialização
- Reuso de atributos e metodos
- Polimorfismo
- Sintaxe
    -   Classe A extends B
- Simbolo
    - Seta com a ponta branca
- SuperClasse => classe base(mãe)
- SubClasse => classe derivada(filhos)
- Modificador de acesso protected
    - Acessivel
        - Pode ser acessado na propria classe
        - Em uma classe do mesmo pacote
        - Em uma subclasse de outro 
    - Inacessivel
- (as subclasses herda os atributos e métodos da superclasse mais os próprio atributos e métodos)

📝 24.1 Upcasting

- Casting da subclasse para a superclasse 
    - pegar um objeto da subclasse e atribuir para uma variavel da superclasse, ou seja uma variavel da superclasse recebe o valor do objeto de uma subclasse
- uso comum:
    - polomorfismo

📝 24.2 Downcasting

- Casting da superclasse para a subclasse
    - converter um objeto da superclasse para a subclasse
- palavra instanceof
- uso comum:
    - métodos que recebem parametros genéricos(ex: Equals)

📝 24.3 _ Sobreposição ou sobrescrita

- Implementação de um metodo de uma superclasse na subclasse
- Recomendado usar a anotação @Override em um metodo subresccrito

📝 24.4 _ Super

- Chamar a implemenntaçãoda superclasse utilizando o super();

📝 25 _ Final

- Classe
    - Evita que a classe seja herdada por ooutras classes, ou seja que tenha subclasses
- Metodo
    - Evita que o metodo seja sobreposto
- Segurança
    - dependendo da regra de negócio as vezes é desejavel garantir que uma classe nnnão seja herdada ou que um metodo nao seja sobreposto
- Performace
     - Atributos de tipo de uma classe final são analisados de forma mais rapida em tempo de execução

📝 26 _ Pailares de POO

- Encapsolamneto
- Herança
- Polimorfismo

📝 27 _ Polimorfismo(muitas formas)

- Recurso que permite que váriaveis de um mesmo tipo generico possam apontar para objetos de tipos especificos diferentes tendo assim comportamentos diferentes conforme cada tipo especifico
- A associação do tipo especifico com o tipo generico é feita em tempo de execução(upcasting)

📝 28 _ Classes abstratas

- Classes que não podem ser instanciadas
- Forma de garantir herança total
    - somente subclasses não abstratas podem ser instanciadas, mas nunca a superclasse abstrata
- Italico
    - o nome da classe abstract fica em italico

📝 28.1 _ Metodos abstratos

- Não possuem implementação
- Metodos precisam ser abstratos quando a classe é generica demais para conter sua implementação
- Se uma classe possuir pelo menos um metodo abstrato então essa classe tbm é abstrata
- Italico
    - o nome do metodo abstract fica em italico

📝 29 _ Tratamento de exceções

- É uma condição de erro ou erro inesperado
- Em java uma exceção é um objeto herdado da classe
    - java.lang.Exception => o compilador obriga a tratar
    - java.lang.RuntimeException => o compilador não obriga a tratar
- Pilha
    - ordem de chamada de exceções
- Hierarquia de exceções do java
    - Throwable 
        - superclasse generica de todos erros e exceções
            - Error 
                - erros que não se espera que o programaador vá tratar 
                    - OutofMemoryError
                        - estouro de memória
                    - VirtualMachineError
                        - erro na maquina virtual java
            - Excepption 
                - erros que se espera/possibilidade que o programa vá tratar 
                    - IOException 
                        - erro de entrada e saida
                    - RunTimeException
                        - exceções que não nnecessariamente o programa vai ter tratar
                            - IndexOutOfBoundsExceptions
                                - tentar acessar uma posição do array que não existe
                            - NullPointerException 
                                - tentar acessar uma variavel com valor nulo

📝 29.1 Try-

- Bloco Try
    - codigo que representa a execução
- Bloco Catch
    - codigo a ser executado caso a exceção ocorra