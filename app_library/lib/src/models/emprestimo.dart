class Emprestimo {
  int idEmprestimo;
  int idLivro;
  int idAluno;
  String fotoLivro;
  String tituloLivro;
  String autorLivro;
  String nomeAluno;
  String telefoneAluno;
  String dataEmprestimo;
  String dataRetirada;
  String dataDevolucao;
  String status;

  Emprestimo({
    required this.idEmprestimo,
    required this.idLivro,
    required this.idAluno,
    required this.fotoLivro,
    required this.tituloLivro,
    required this.autorLivro,
    required this.nomeAluno,
    required this.telefoneAluno,
    required this.dataEmprestimo,
    required this.dataRetirada,
    required this.dataDevolucao,
    required this.status,
  });
}
