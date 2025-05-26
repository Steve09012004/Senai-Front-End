# Projeto Final - Show do Milhão.por

Bem-vindo ao **Projeto Final - Show do Milhão.por**!  
Este projeto é uma recriação do famoso jogo de perguntas e respostas "Show do Milhão" utilizando a linguagem Portugol. O objetivo é responder corretamente a 10 perguntas para acumular dinheiro e, ao final, decidir se deseja arriscar tudo na última pergunta “tudo ou nada”!

---

## 📋 Sobre o Projeto

O jogo apresenta perguntas de conhecimentos gerais, em múltipla escolha. A cada rodada, o jogador pode optar por pedir ajuda (eliminação de alternativas) até duas vezes. Caso erre uma questão, o jogo termina. Ao final das 10 perguntas, há a opção de responder uma última pergunta para dobrar o prêmio ou perder tudo.

---

## 🚀 Como Jogar

1. **Início do Jogo:**  
   - O jogo começa exibindo uma arte de abertura animada do Silvio Santos.
2. **Perguntas:**  
   - Para cada pergunta, escolha a alternativa correta (A, B, C, D, etc).
   - Você começa com duas ajudas. Para usar, digite `H` durante a resposta para eliminar duas alternativas incorretas (uma vez por pergunta).
3. **Ganhando Dinheiro:**  
   - Cada resposta correta aumenta seu prêmio de acordo com a tabela de valores.
   - Se errar, o jogo termina imediatamente.
4. **Última Pergunta:**  
   - Se acertar todas as 10 perguntas, pode jogar a última pergunta, valendo dobrar ou perder tudo.

---

## 🕹️ Regras

- Duas ajudas disponíveis durante a rodada principal.
- Só é possível usar ajuda uma vez por pergunta.
- Não é possível pedir ajuda na última pergunta.
- O jogo termina se errar qualquer pergunta antes da última.
- Se acertar a última, seu prêmio é dobrado; se errar, perde tudo.

---

## 💻 Código Principal

O jogo é implementado em Portugol, utilizando as principais estruturas:

- **Vetor de perguntas** com enunciado, alternativa correta, opções, opções para ajuda e gabarito.
- **Estruturas de controle:** laços, condições e funções.
- **Função especial para a última pergunta** (“tudo ou nada”).

---

## 🧩 Principais Funções

- `comecar()`: Exibe a animação de abertura.
- `questoes()`: Gerencia o fluxo das perguntas principais e o uso das ajudas.
- `ultimaPergunta()`: Controla a lógica da última pergunta especial.

---

## 📚 Exemplos de Perguntas

- Qual é a capital do Brasil?
- Quem pintou a Mona Lisa?
- Qual é o maior planeta do Sistema Solar?
- (e outras...)

---

## 🛠️ Como Executar

1. Copie o código para um ambiente compatível com Portugol (ex: [Visualg](https://visualg3.com.br/) ou Portugol Studio).
2. Execute o programa.
3. Siga as instruções na tela.

---

## 📄 Trechos do Código

```portugol
cadeia perguntas[11][11] = {
  {" Qual é a capital do Brasil? \n", "B", " A) São Paulo\n B) Brasília\n C) Rio de Janeiro\n D) Belo Horizonte\n", "\n B) Brasília\n C) Rio de Janeiro \n", "b"},
  // ... outras perguntas ...
}
```

---

## 👨‍💻 Autor

- **Steve09012004**

---

## 🏆 Bom jogo e boa sorte no Show do Milhão!
