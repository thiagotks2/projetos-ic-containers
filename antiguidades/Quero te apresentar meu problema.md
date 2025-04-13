Quero te apresentar meu problema...

Eu tenho um container atualmente rodando bem, porém, ele já tá buildado há tempos e agora, na hora de construir ele de novo com base do dokerfile e etc, ele tá falando que nao existe mais os repositorios. isso ocorre pq usei burramente um ubuntu nao lts e não quero continuar dependendo dele, ou de algum ubuntu mesmo que LTS se ele for no futuro perder os repositorios e eu tiver de refazer tudo. Eu uso esse container pra trabalhar com alguns sites legados em php72, mongo, phantonjs com node 12, sass, etc... duas obs importantes: Eu uso mongodb e se possivel, precisaria usar mongo, uma versao antiga do driver para php72 usado pra trabalhar com versoes antigas do mongo.

Eu já vinha falando com o chatgpt anteriormente, 

Eu perguntei o seguinte:

Eu to fazendo isso ai num ubuntu velho, esses repositorios todos cairam. Não quero continuar rabalhando com ele. Então, seguem algumas duvidas minhas, lembrando que isso ai, eu só uso pra trabalhar localmente com desenvolvimento: 1 - Ubuntu 24.04 LTS, aceita multiarch? Existe todas as libs e o phantonJs amd64 disponivel pra essaa versão? 2 - O arch Linux, que funciona como rolling release, e costuma manter compatibilidade com tudo o que passou, não seria uma solucao mais interessante pra usar pra desenvolvimento local? Ele tem veresão arm? To trabalhando com mac m1 e emular coisas com rosetta fica muuuito lento e consome muita memoria, por isso queria usar tudo em arm e só o que for estritamente necessario em amd. Tem o phanton e as libs que preciso pra arch linux arm? Existe multiarch para o arch linux? Pq veja, atualmente, eu to usando um ubuntu que os repositorios todos cairam, e aquele jeito de usar repositorios antigos que vao pra outro caminho, nao tem tudo o que eu preciso... mesmo usando um ubuntu lts, um dia, ele deixa de existir os repos, certo? ai vou precisa configurar essa coisa toda de novo...

Por fim, decidimos seguir com a ideia do arch linux, porém, o arch nao tem candidato arm no docker hub. Nem oficial, nem de terceiros.

Tentamos com FROM ghcr.io/multiarch/archlinux:arm64-latest, tentamos com FROM archlinuxarm/base:latest e com FROM archlinux:latest. Como to num m1, nada disso foi possivel sem usar virtualizacao, e nao quero de jeito nenhum usar roseta ou similares, pq fica muito pesado e lento.

O que vc me sugere fazer? Com base em qual imagem? O que tem menos chances de eu ter de recosntruir tudo depois de um tempo?

