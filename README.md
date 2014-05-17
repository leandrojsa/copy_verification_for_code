copy_verification_for_code
==========================

(Script in Shell for verification of copies of source code for homeworks)


Script para identificação de cópia em códigos fontes, voltado principalmente para trabalhos universitários.

O script compara os códigos fontes de uma determinada extensão contido em uma mesma pasta. Assim o programa tenta identificar possíveis códigos com alto grau de semelhança. No caso de alguma suspeita indica na saída do terminal quais os arquivos envolvidos.

Relato:
Sou professor de uma disciplina na Universidade Federal da Bahia e consegui ter bons resultados na identificação de cópias. O script simplifica muito a verificação dos trabalhos dos alunos, o que consequentemente passa a coibir tais práticas. Com esse script identifiquei cópias não só de trabalhos totalmente idênticos, mas também códigos que mudava somente o nome de variáveis ou até mesmo possuia grande blocos iguais.



How to use:

The script is executed for main.sh file and get two arguments:

+ First argument extension of file (without dot)

+ Second argument relative directory of files


TO DO:
+ Incrementar um mecanismo para ignorar comentários (de linha e de bloco) 

+ Ter a capacidade de analisar projetos onde o código fonte esteja distribuído vários arquivos.
