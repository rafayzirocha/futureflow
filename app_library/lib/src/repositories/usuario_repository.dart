import 'package:app_library/src/models/usuario.dart';

class UsuarioRepository {
  static List<Usuario> usuarioTabela = [
    Usuario(
      foto: 'images/perfil.jpg',
      rm: '25039',
      nome: 'Rafael Rocha Silveira',
      status: 'Ativo',
    ),
    Usuario(
      foto: 'images/perfil.jpg',
      rm: '25040',
      nome: 'Arthur Aparecido Marquesi Santana',
      status: 'Ativo',
    ),
    Usuario(
      foto: 'images/perfil.jpg',
      rm: '25041',
      nome: 'Gabriel Henrique Silva',
      status: 'Ativo',
    ),
  ];
}
