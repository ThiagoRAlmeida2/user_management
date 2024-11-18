# Tela de Login e Registro com Firebase (Google e Facebook) - Flutter

Este projeto é uma aplicação Flutter que implementa uma tela de **Login** e **Registro** utilizando **Firebase Authentication**. Ele permite autenticação via **email/senha**, **Google** e **Facebook**, proporcionando uma experiência segura e amigável para o usuário.

---

## 📋 Funcionalidades

- **Login com email e senha**.
- **Registro de novos usuários com email e senha**.
- **Autenticação com Google**.
- **Autenticação com Facebook**.
- **Validação de campos**:
  - Campos obrigatórios.
  - Formato de email válido.
- **Persistência de sessão**: mantém o usuário autenticado.

---

## 🛠️ Tecnologias Utilizadas

- **Flutter**: framework para desenvolvimento multiplataforma.
- **Firebase Authentication**: backend para gerenciamento de autenticação.
- **Firebase Core**: integração do Flutter com Firebase.
- **Firebase Auth**: biblioteca para autenticação.
- **Google Sign-In**: para login via Google.
- **Facebook Login**: para login via Facebook.

---

## 🚀 Como Executar o Projeto

### Pré-requisitos

- [Flutter](https://flutter.dev/docs/get-started/install) instalado.
- Conta no [Firebase Console](https://console.firebase.google.com/).
- App do Google e Facebook configurados no Firebase Authentication.

### Configuração do Firebase

1. Acesse o [Firebase Console](https://console.firebase.google.com/).
2. Crie um projeto e adicione suporte para iOS e Android.
3. Habilite as opções de autenticação:
   - **Email e senha**.
   - **Google**.
   - **Facebook** (configure o App ID e App Secret do Facebook Developer Console).
4. Baixe o arquivo `google-services.json` (Android) e/ou `GoogleService-Info.plist` (iOS).
5. Adicione os arquivos à pasta correspondente do projeto:
   - `android/app` para Android.
   - `ios/Runner` para iOS.

### Instalando Dependências

Execute o seguinte comando para instalar as dependências:

```bash
    flutter pub get
```

### Executando o Projeto

1. Conecte um dispositivo ou inicie um emulador.
2. Para executar o projeto, execute o seguinte comando:

```bash
    flutter run
```

### Estrutura do Projeto

```plaintext
lib/
├── components/
│   └── app_text_form_field.dart    # Widget de campo de texto personalizado
├── resources/
│   ├── resources.dart             # Configuração geral de recursos
│   ├── strings.dart               # Strings do app
│   └── vectors.dart               # Recursos vetoriais (SVGs ou ícones)
├── screens/
│   ├── login_screen.dart          # Tela de Login
│   └── register_screen.dart       # Tela de Registro
├── utils/
│   ├── common_widgets/            # Widgets reutilizáveis
│   ├── helpers/                   # Funções utilitárias
│   └── extensions.dart            # Extensões para melhorar o código
├── values/
│   ├── app_colors.dart            # Paleta de cores
│   ├── app_constants.dart         # Constantes gerais
│   ├── app_regex.dart             # Expressões regulares
│   ├── app_routes.dart            # Gerenciamento de rotas
│   ├── app_strings.dart           # Strings globais
│   └── app_theme.dart             # Tema do app
├── login_register_app.dart        # Classe principal do app
├── main.dart                      # Ponto de entrada do app
└── routes.dart                    # Configuração de rotas
```

### 🔧 Recursos e Exemplos de Código

Exemplo de Campo de Texto Personalizado (app_text_form_field.dart)

```dart
import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;

  const AppTextFormField({
    required this.hintText,
    required this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
```

Exemplo de Configuração de Rotas (routes.dart)

```dart
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';

class AppRoutes {
  static const String login = '/login';
  static const String register = '/register';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case register:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('Rota não encontrada')),
          ),
        );
    }
  }
}
```

### 🛠️ Dependências Principais

Adicione as seguintes dependências ao seu arquivo `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^1.0.2
  flutter_svg: ^2.0.5
  spider: ^4.2.2


dev_dependencies:
  flutter_test:
    sdk: flutter

  flutter_lints: ^2.0.0
  very_good_analysis: ^5.1.0
  ```


## 🔗 Links

[![LinkedIn](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/thiago-ribeiro-139727260/)
[![Gmail](https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:thiagoralmeida23@gmail.com)
[![GitHub](https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/ThiagoRAlmeida2)
[![YouTube](https://img.shields.io/badge/YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](https://www.youtube.com/@Thiago.Ralmeida2)
