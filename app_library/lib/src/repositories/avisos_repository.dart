import '../models/aviso.dart';

class AvisosRepository {
  static List<Aviso> tabela = [
    Aviso(
      foto: 'images/FB_IMG_1687120875176.jpg',
      titulo: 'Rato da Biblioteca',
      descricao:
          'Focado no vestibular, o "Rato de Biblioteca" do mês de fevereiro foi o aluno do 3EMDS Arthur Aparecido Marques Santana. Esse querido está há um bom tempo afiando sua leitura  e, ano passado, já apareceu por aqui como premiado do mês. Parabéns Arthur!! Que seu gosto pela leitura seja sempre assim!!',
      dataHora: DateTime.now(),
    ),
    Aviso(
      foto: 'images/caipirete.jpeg',
      titulo: 'Caipirete',
      descricao:
          'A dica cultural para sexta (16/06) não podia deixar de ser  a nossa festa!!🥰🥰🥰🔥🎆 Garanta seu ingresso 10,00 (SOMENTE ANTECIPADO). Venha se divertir!',
      dataHora: DateTime.now(),
    ),
    Aviso(
      foto: 'images/premios.jpeg',
      titulo: 'Prêmios da Semana',
      descricao:
          'Essa semana foi especial!! Entregamos dois prêmios lindos!! Ao aluno Jorge Miguel Bernardo Neto, do 2EMMECAA, o prêmio "Rato de Biblioteca" do mês de maio e ao aluno Arthur Maia Azevedo, do 2EMPIA, o prêmio de vencedor do "Concurso de Sonetos".Parabéns aos dois!! Aaaaa tão bom sempre ter tantos alunos participando dos projetos da Bibli!! Só orgulho de vcs por aqui!!',
      dataHora: DateTime.now(),
    )
  ];
}
