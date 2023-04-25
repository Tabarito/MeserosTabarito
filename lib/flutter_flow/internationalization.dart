import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en', 'ru', 'pt'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? enText = '',
    String? ruText = '',
    String? ptText = '',
  }) =>
      [esText, enText, ruText, ptText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Inicio
  {
    'p32ljov9': {
      'es': 'Ingresar',
      'en': 'Get into',
      'pt': 'Entrar',
      'ru': 'Попасть в',
    },
    'vguhdzrd': {
      'es': 'Correo electrónico',
      'en': 'Email',
      'pt': 'Correio eletrônico',
      'ru': 'Электронная почта',
    },
    '3p40xdxd': {
      'es': 'Contraseña',
      'en': 'Password',
      'pt': 'Senha',
      'ru': 'Пароль',
    },
    'yf60mf2i': {
      'es': 'Iniciar sesión',
      'en': 'Log in',
      'pt': 'Iniciar sessão',
      'ru': 'Авторизоваться',
    },
    'c1q9acl8': {
      'es': '¿Olvidó su contraseña?',
      'en': 'Forgot your password?',
      'pt': 'esqueceu sua senha?',
      'ru': 'Забыли пароль?',
    },
    '13vm9wud': {
      'es': '-- o use --',
      'en': 'Forgot your password?',
      'pt': 'esqueceu sua senha?',
      'ru': 'Забыли пароль?',
    },
    'i24fjlg1': {
      'es': 'G',
      'en': '',
      'pt': '',
      'ru': '',
    },
    'uv3l56d0': {
      'es': 'Fecha:',
      'en': 'Date:',
      'pt': 'Data:',
      'ru': 'Дата:',
    },
    'md12o804': {
      'es': 'Tipo de cambio dolar:',
      'en': 'Dollar exchange rate:',
      'pt': 'Taxa de câmbio do dólar:',
      'ru': 'Курс доллара:',
    },
    'w9oepa04': {
      'es': '\$',
      'en': '\$',
      'pt': '\$',
      'ru': '\$',
    },
    'a1gg2x10': {
      'es': 'Home',
      'en': 'home',
      'pt': 'lar',
      'ru': 'дом',
    },
  },
  // ingresarPedido
  {
    '4et2uyrv': {
      'es': 'Ingresar Pedido',
      'en': 'Enter Order',
      'pt': 'Inserir Pedido',
      'ru': 'Введите заказ',
    },
    'z5lzdc6f': {
      'es': 'Mesa #1',
      'en': 'Table #1',
      'pt': 'Tabela 1',
      'ru': 'Таблица 1',
    },
    'v6w2q2sw': {
      'es': 'Mesa #2',
      'en': 'Table #2',
      'pt': 'Mesa 2',
      'ru': 'Таблица 2',
    },
    'hs7sy0h5': {
      'es': 'Mesa #3',
      'en': 'Table #3',
      'pt': 'Tabela 3',
      'ru': 'Таблица №3',
    },
    'cmhp47l3': {
      'es': 'Mesa #4',
      'en': 'Table #4',
      'pt': 'Tabela #4',
      'ru': 'Таблица №4',
    },
    'yo6ms7ti': {
      'es': 'Mesa #5',
      'en': 'Table #5',
      'pt': 'Tabela #5',
      'ru': 'Таблица №5',
    },
    '0hbrt663': {
      'es': 'Mesa #6',
      'en': 'Table #6',
      'pt': 'Tabela #6',
      'ru': 'Таблица №6',
    },
    '2emleh5v': {
      'es': 'Mesa #7',
      'en': 'Table #7',
      'pt': 'Tabela #7',
      'ru': 'Таблица №7',
    },
    '9uc0e9fg': {
      'es': 'Seleccione la mesa',
      'en': 'select the table',
      'pt': 'selecione a mesa',
      'ru': 'выберите таблицу',
    },
    'p7n43n8w': {
      'es': 'Buscar...',
      'en': 'Look for...',
      'pt': 'Procurar...',
      'ru': 'Искать...',
    },
    'h1cgkw0b': {
      'es': 'Comidas',
      'en': 'Foods',
      'pt': 'Alimentos',
      'ru': 'продукты',
    },
    'fut4bye3': {
      'es': 'Hamburguesa sencilla',
      'en': 'Basic burguer',
      'pt': 'Hambúrguer básico',
      'ru': 'Простой бургер',
    },
    'nyvfqod9': {
      'es': '₡ 2000 ',
      'en': '₡2000',
      'pt': '₡2000',
      'ru': '₡2000',
    },
    '4g0g0ct7': {
      'es': 'Sándwich de carne',
      'en': 'Meat sandwich',
      'pt': 'Sanduíche de carne',
      'ru': 'Сэндвич с мясом',
    },
    'hvhhltz7': {
      'es': '₡ 2000 ',
      'en': '₡2000',
      'pt': '₡2000',
      'ru': '₡2000',
    },
    'jamjcvkv': {
      'es': 'Sándwich de pollo',
      'en': 'Chicken sandwich',
      'pt': 'Sanduíche de frango',
      'ru': 'Куриный сендвич',
    },
    'dsh4wlr1': {
      'es': '₡ 2000 ',
      'en': '₡2000',
      'pt': '₡2000',
      'ru': '₡2000',
    },
    'ee6ia5vc': {
      'es': 'Casado',
      'en': 'Married',
      'pt': 'Casado',
      'ru': 'Женатый',
    },
    '4f1u0e5k': {
      'es': '3500 ₡',
      'en': '3500₡',
      'pt': '3500₡',
      'ru': '3500₡',
    },
    '7smq8wd7': {
      'es': 'Pinto con huevo',
      'en': 'I paint with egg',
      'pt': 'eu pinto com ovo',
      'ru': 'я рисую яйцом',
    },
    'txryqo16': {
      'es': '2500 ₡',
      'en': '2500₡',
      'pt': '2500₡',
      'ru': '2500₡',
    },
    '8tamkg48': {
      'es': 'Papas',
      'en': 'Potatoes',
      'pt': 'Batatas',
      'ru': 'Картофель',
    },
    'z6xz33io': {
      'es': '2000 ₡',
      'en': '2000₡',
      'pt': '2000₡',
      'ru': '2000₡',
    },
    'e3na5r5b': {
      'es': 'Entradas de comida',
      'en': 'food entrees',
      'pt': 'entradas de comida',
      'ru': 'первые блюда',
    },
    'cy8x2j1p': {
      'es': '1500 ₡',
      'en': '1500₡',
      'pt': '1500₡',
      'ru': '1500₡',
    },
    'glvnqydr': {
      'es': 'Bebidas',
      'en': 'Drinks',
      'pt': 'bebidas',
      'ru': 'Напитки',
    },
    '2cje8jst': {
      'es': 'Gaseosas',
      'en': 'soft drinks',
      'pt': 'Refrigerantes',
      'ru': 'безалкогольные напитки',
    },
    'gfw3bck7': {
      'es': '₡ 1000',
      'en': '₡1000',
      'pt': '₡1000',
      'ru': '₡1000',
    },
    '56lhyno3': {
      'es': 'Natural Sandia',
      'en': 'natural watermelon',
      'pt': 'melancia natural',
      'ru': 'натуральный арбуз',
    },
    'yfkemgjs': {
      'es': '₡ 1200',
      'en': '₡1200',
      'pt': '₡1200',
      'ru': '₡1200',
    },
    'kg0pa0g4': {
      'es': 'Natural Fresa',
      'en': 'Plain Strawberry',
      'pt': 'Morango Simples',
      'ru': 'Обычная клубника',
    },
    '8smtm6ko': {
      'es': '₡ 1200',
      'en': '₡1200',
      'pt': '₡1200',
      'ru': '₡1200',
    },
    'hv6lt64i': {
      'es': 'Café',
      'en': 'Coffee',
      'pt': 'Café',
      'ru': 'Кофе',
    },
    'rxyv4imz': {
      'es': '₡ 1000',
      'en': '₡1000',
      'pt': '₡1000',
      'ru': '₡1000',
    },
    'rw0ehs0w': {
      'es': 'Batidos',
      'en': 'smoothies',
      'pt': 'batidos',
      'ru': 'смузи',
    },
    'ciglupuu': {
      'es': '₡ 1400',
      'en': '₡1400',
      'pt': '₡1400',
      'ru': '₡1400',
    },
    'zz4ndv77': {
      'es': 'Combos',
      'en': 'combos',
      'pt': 'combos',
      'ru': 'комбо',
    },
    '9wyci3pc': {
      'es': 'Combo 1',
      'en': 'Bundle 1',
      'pt': 'Pacote 1',
      'ru': 'Пакет 1',
    },
    '0jtuelp5': {
      'es': '₡ 5500',
      'en': '₡5500',
      'pt': '₡5500',
      'ru': '₡5500',
    },
    'eedwmy3b': {
      'es': 'Combo 2',
      'en': 'Combo 2',
      'pt': 'Combo 2',
      'ru': 'Комбо 2',
    },
    'brwg1w6u': {
      'es': '₡ 6000',
      'en': '₡6000',
      'pt': '₡6000',
      'ru': '₡6000',
    },
    'goq3fvu8': {
      'es': 'Combo 3',
      'en': 'Combo 3',
      'pt': 'Combo 3',
      'ru': 'Комбо 3',
    },
    'pexj9pbe': {
      'es': '₡ 3500',
      'en': '₡3500',
      'pt': '₡3500',
      'ru': '₡3500',
    },
    'n31oofox': {
      'es': 'Home',
      'en': 'home',
      'pt': 'lar',
      'ru': 'дом',
    },
  },
  // Principal
  {
    'peyzeei3': {
      'es': 'Menú principal',
      'en': 'Main menu',
      'pt': 'Menu principal',
      'ru': 'Главное меню',
    },
    'e17iplr3': {
      'es': 'Ingresar pedido',
      'en': 'enter order',
      'pt': 'entrar no pedido',
      'ru': 'ввести заказ',
    },
    'xynh6z3a': {
      'es': 'Productos',
      'en': 'Products',
      'pt': 'Produtos',
      'ru': 'Продукты',
    },
    'liqgludc': {
      'es': 'Demostración',
      'en': 'Products',
      'pt': 'Produtos',
      'ru': 'Продукты',
    },
    'h1qhmofo': {
      'es': 'Carrito',
      'en': 'orders',
      'pt': 'ordens',
      'ru': 'заказы',
    },
    'fzzvft5q': {
      'es': 'Orden',
      'en': 'Order',
      'pt': 'Ordem',
      'ru': 'Заказ',
    },
    '403b1d7o': {
      'es': '¿Por favor podrías\n valorar nuestra aplicación?',
      'en': 'Could you please rate our app?',
      'pt': 'Você poderia avaliar nosso aplicativo?',
      'ru': 'Не могли бы вы оценить наше приложение?',
    },
    'dxlnb6ed': {
      'es': 'Cerrar sesión',
      'en': 'Sign off',
      'pt': 'Fechar Sessão',
      'ru': 'выйти',
    },
    'lso3bc47': {
      'es': 'Home',
      'en': 'home',
      'pt': 'lar',
      'ru': 'дом',
    },
  },
  // verPedido
  {
    'qtsf8g7t': {
      'es': 'Pedido',
      'en': 'Order',
      'pt': 'Ordem',
      'ru': 'Заказ',
    },
    'oelq3nmi': {
      'es': 'Pedido #101',
      'en': 'Order #101',
      'pt': 'Pedido nº 101',
      'ru': 'Заказ №101',
    },
    'fhljn55m': {
      'es': 'Home',
      'en': 'home',
      'pt': 'lar',
      'ru': 'дом',
    },
  },
  // ingresarArticulo
  {
    '0vql8vkc': {
      'es': 'Ingresar Pedido',
      'en': 'Enter Order',
      'pt': 'Inserir pedido',
      'ru': 'Введите заказ',
    },
    'qrbiia6u': {
      'es': 'Hamburguesa sencilla',
      'en': 'Basic burguer',
      'pt': 'Hambúrguer básico',
      'ru': 'Простой бургер',
    },
    'm1q1o2k5': {
      'es': '¢2000',
      'en': '¢2000',
      'pt': '¢2000',
      'ru': '¢2000',
    },
    'wbxnu33j': {
      'es': 'Indicaciones',
      'en': 'Indications',
      'pt': 'Indicações',
      'ru': 'Показания',
    },
    'cbaf61yr': {
      'es': 'Agregar a pedido',
      'en': 'add to order',
      'pt': 'adicionar ao pedido',
      'ru': 'добавить в заказ',
    },
    '4txt9hvc': {
      'es': 'Home',
      'en': 'home',
      'pt': 'lar',
      'ru': 'дом',
    },
  },
  // OlvidoContrasea
  {
    'hy47ettb': {
      'es': 'Restablecer contraseña',
      'en': 'Restore password',
      'pt': 'Restaurar senha',
      'ru': 'Восстановить пароль',
    },
    'q62bs9uh': {
      'es':
          'Enviaremos un correo con un enlace para restablecer su contraseña. Por favor ingrese el correo asociado a la cuenta que a la que desea restablecer la contraseña, en el siguiente campo de texto.',
      'en':
          'We will send an email with a link to reset your password, please enter your email associated with the account you want to reset the password in the text field below.',
      'pt':
          'Enviaremos um e-mail com um link para redefinir sua senha, digite seu e-mail associado à conta que deseja redefinir a senha no campo de texto a seguir.',
      'ru':
          'Мы отправим электронное письмо со ссылкой для сброса пароля. Введите адрес электронной почты, связанный с учетной записью, для которой вы хотите сбросить пароль, в текстовое поле ниже.',
    },
    'snhi53vh': {
      'es': 'Su dirección de correo electrónico...',
      'en': 'Your email address...',
      'pt': 'Seu endereço de correio eletrônico...',
      'ru': 'Ваш электронный адрес...',
    },
    '4v5ci7di': {
      'es': 'Ingrese su correo electrónico',
      'en': 'Enter your email...',
      'pt': 'Digite seu e-mail...',
      'ru': 'Введите адрес электронной почты...',
    },
    'dg8a2wch': {
      'es': 'Enviar enlace',
      'en': 'send link',
      'pt': 'enviar Link',
      'ru': 'Отправить ссылку',
    },
    '27464aqx': {
      'es': 'Cancelar',
      'en': 'Cancel',
      'pt': 'Cancelar',
      'ru': 'Отмена',
    },
    'e25ezhx8': {
      'es': 'Home',
      'en': 'home',
      'pt': 'lar',
      'ru': 'дом',
    },
  },
  // Productos
  {
    'pxgqahc5': {
      'es': 'Comidas',
      'en': 'Foods',
      'pt': 'Alimentos',
      'ru': 'продукты',
    },
    'wvc7f97z': {
      'es': 'Comidas',
      'en': 'Foods',
      'pt': 'Alimentos',
      'ru': 'продукты',
    },
    '7ur337lp': {
      'es': 'Nombre:',
      'en': 'Name:',
      'pt': 'Nome:',
      'ru': 'Имя:',
    },
    '6oeatysv': {
      'es': 'Precio:',
      'en': 'Price:',
      'pt': 'Preço:',
      'ru': 'Цена:',
    },
    '1yospfp9': {
      'es': 'Bebidas',
      'en': 'Drinks',
      'pt': 'bebidas',
      'ru': 'Напитки',
    },
    'ih2wy5kj': {
      'es': 'Nombre:',
      'en': 'Name:',
      'pt': 'Nome:',
      'ru': 'Имя:',
    },
    'kbxhiq1c': {
      'es': 'Precio:',
      'en': 'Price:',
      'pt': 'Preço:',
      'ru': 'Цена:',
    },
    'k8idy8v5': {
      'es': 'Combos',
      'en': 'combos',
      'pt': 'combos',
      'ru': 'комбо',
    },
    'tuu9765e': {
      'es': 'Precio:',
      'en': 'Price:',
      'pt': 'Preço:',
      'ru': 'Цена:',
    },
    'ofsy12ts': {
      'es': 'Productos Favoritos',
      'en': 'Favorite Products',
      'pt': 'Produtos favoritos',
      'ru': 'Любимые продукты',
    },
    'np1s7j4g': {
      'es': 'Nombre:',
      'en': 'Name:',
      'pt': 'Nome:',
      'ru': 'Имя:',
    },
    'tx7g4cy5': {
      'es': 'Precio:',
      'en': 'Price:',
      'pt': 'Preço:',
      'ru': 'Цена:',
    },
    'xwpp14ww': {
      'es': 'Combos Favoritos',
      'en': 'Favorite Combos',
      'pt': 'Combos favoritos',
      'ru': 'Любимые комбинации',
    },
    'swjk6y10': {
      'es': 'Precio:',
      'en': 'Price:',
      'pt': 'Preço:',
      'ru': 'Цена:',
    },
    '7khs92vb': {
      'es': 'Carrito',
      'en': 'orders',
      'pt': 'ordens',
      'ru': 'заказы',
    },
    'sc6yk46z': {
      'es': 'Shop',
      'en': 'shop',
      'pt': 'comprar',
      'ru': 'магазин',
    },
  },
  // DetalleCombo
  {
    'k9kyb6o9': {
      'es': 'Nombre:',
      'en': 'Name:',
      'pt': 'Nome:',
      'ru': 'Имя:',
    },
    'ab1pmwt1': {
      'es': 'Precio:',
      'en': 'Price:',
      'pt': 'Preço:',
      'ru': 'Цена:',
    },
    'rljir9m3': {
      'es': 'Carrito',
      'en': 'orders',
      'pt': 'ordens',
      'ru': 'заказы',
    },
    '9v9aafd1': {
      'es': 'Home',
      'en': 'home',
      'pt': 'lar',
      'ru': 'дом',
    },
  },
  // Carrito
  {
    '1bgick2o': {
      'es': 'Pedidos en carrito',
      'en': 'cart orders',
      'pt': 'pedidos de carrinho',
      'ru': 'корзина заказов',
    },
    'sdsrwx6f': {
      'es': 'Productos',
      'en': 'Products',
      'pt': 'Produtos',
      'ru': 'Продукты',
    },
    'yrftrui9': {
      'es': 'Agregar monto presiona ->',
      'en': 'Worth:',
      'pt': 'Valor:',
      'ru': 'Ценность:',
    },
    'porj4ag7': {
      'es': '₡',
      'en': '',
      'pt': '',
      'ru': '',
    },
    'wozl1bpf': {
      'es': 'Precio/U: ',
      'en': 'Price:',
      'pt': 'Preço:',
      'ru': 'Цена:',
    },
    'wxsswlha': {
      'es': 'Sub total ₡ ',
      'en': 'Price:',
      'pt': 'Preço:',
      'ru': 'Цена:',
    },
    '7mzfi7ai': {
      'es': 'Combos',
      'en': 'combos',
      'pt': 'combos',
      'ru': 'комбо',
    },
    '97uhynq6': {
      'es': 'Agregar monto preciona ->  ',
      'en': 'Worth:',
      'pt': 'Valor:',
      'ru': 'Ценность:',
    },
    'yotw5xl7': {
      'es': '₡',
      'en': '',
      'pt': '',
      'ru': '',
    },
    'r5uvrzox': {
      'es': 'Precio/U: ',
      'en': 'Price:',
      'pt': 'Preço:',
      'ru': 'Цена:',
    },
    't1ns6tr6': {
      'es': 'Sub total ₡ ',
      'en': 'Price:',
      'pt': 'Preço:',
      'ru': 'Цена:',
    },
    'v8f9ise1': {
      'es': 'Por favor preciona los montos finales para refrescar',
      'en': '',
      'pt': '',
      'ru': '',
    },
    'yf6v3khm': {
      'es': 'Precio Total',
      'en': '',
      'pt': '',
      'ru': '',
    },
    'u7sn4yma': {
      'es': 'Pagar',
      'en': 'button',
      'pt': 'botão',
      'ru': 'кнопка',
    },
    'hm5nn1ya': {
      'es': 'Home',
      'en': 'home',
      'pt': 'lar',
      'ru': 'дом',
    },
  },
  // Orden
  {
    'rbh6dxga': {
      'es': 'Productos: ',
      'en': '',
      'pt': '',
      'ru': '',
    },
    'a1owclpf': {
      'es': 'Combos: ',
      'en': '',
      'pt': '',
      'ru': '',
    },
    'ku6b3g3g': {
      'es': 'Cliente: ',
      'en': '',
      'pt': '',
      'ru': '',
    },
    'b4ivltdc': {
      'es': 'Ordenes',
      'en': 'Page Title',
      'pt': 'Título da página',
      'ru': 'Заголовок страницы',
    },
    'irvwqv54': {
      'es': 'Home',
      'en': 'home',
      'pt': 'lar',
      'ru': 'дом',
    },
  },
  // OtrasDemostraciones
  {
    '0x1clxqx': {
      'es': 'Demostraciones',
      'en': '',
      'pt': '',
      'ru': '',
    },
    '04od50c4': {
      'es':
          'Ayudanos a crecer sube una foto de que te gustaría que lleguemos a implementar en nuestro menú',
      'en': '',
      'pt': '',
      'ru': '',
    },
    'etdnh9fe': {
      'es': 'Cargar Imagen',
      'en': '',
      'pt': '',
      'ru': '',
    },
    '4g4at5p2': {
      'es': 'Regresar al menú',
      'en': 'orders',
      'pt': 'ordens',
      'ru': 'заказы',
    },
    'q76eheri': {
      'es': 'Home',
      'en': 'home',
      'pt': 'lar',
      'ru': 'дом',
    },
  },
  // CompPagarOrden
  {
    'qumaiu8j': {
      'es': 'Nombre cliente',
      'en': '',
      'pt': '',
      'ru': '',
    },
    'xw4bqyle': {
      'es': 'Mesa',
      'en': '',
      'pt': '',
      'ru': '',
    },
    '5l9l3w08': {
      'es': 'Observacion',
      'en': '',
      'pt': '',
      'ru': '',
    },
    'ix6dk8r9': {
      'es': 'Restaurantes',
      'en': '',
      'pt': '',
      'ru': '',
    },
    'yg912g4t': {
      'es': 'Completar Orden',
      'en': '',
      'pt': '',
      'ru': '',
    },
    '1xo9oz7h': {
      'es': 'Regresar',
      'en': '',
      'pt': '',
      'ru': '',
    },
  },
  // Miscellaneous
  {
    'bxmlogjn': {
      'es': '',
      'en': '',
      'pt': '',
      'ru': '',
    },
    'kesex9gi': {
      'es': '',
      'en': '',
      'pt': '',
      'ru': '',
    },
    '5fpb2tgr': {
      'es': '',
      'en': '',
      'pt': '',
      'ru': '',
    },
    'fma1ecgf': {
      'es': '',
      'en': '',
      'pt': '',
      'ru': '',
    },
    'f0tdf029': {
      'es': '',
      'en': '',
      'pt': '',
      'ru': '',
    },
    'g8m0imlg': {
      'es': '',
      'en': '',
      'pt': '',
      'ru': '',
    },
    'k81syw18': {
      'es': '',
      'en': '',
      'pt': '',
      'ru': '',
    },
    'pwwxnb4i': {
      'es': '',
      'en': '',
      'pt': '',
      'ru': '',
    },
    '6sn2dtfz': {
      'es': '',
      'en': '',
      'pt': '',
      'ru': '',
    },
    '127naazz': {
      'es': '',
      'en': '',
      'pt': '',
      'ru': '',
    },
    'llqk3nwj': {
      'es': '',
      'en': '',
      'pt': '',
      'ru': '',
    },
    '0b3qeyuw': {
      'es': '',
      'en': '',
      'pt': '',
      'ru': '',
    },
    'fnqdp9ye': {
      'es': '',
      'en': '',
      'pt': '',
      'ru': '',
    },
    'oaidd0c2': {
      'es': '',
      'en': '',
      'pt': '',
      'ru': '',
    },
    'uoxe1ut7': {
      'es': '',
      'en': '',
      'pt': '',
      'ru': '',
    },
    '8o8f5xrm': {
      'es': '',
      'en': '',
      'pt': '',
      'ru': '',
    },
    'qakxcxpr': {
      'es': '',
      'en': '',
      'pt': '',
      'ru': '',
    },
    '9jv8wwlt': {
      'es': '',
      'en': '',
      'pt': '',
      'ru': '',
    },
    'm6z8siu0': {
      'es': '',
      'en': '',
      'pt': '',
      'ru': '',
    },
    '5rxgp0bu': {
      'es': '',
      'en': '',
      'pt': '',
      'ru': '',
    },
    'xooneqld': {
      'es': '',
      'en': '',
      'pt': '',
      'ru': '',
    },
  },
].reduce((a, b) => a..addAll(b));
