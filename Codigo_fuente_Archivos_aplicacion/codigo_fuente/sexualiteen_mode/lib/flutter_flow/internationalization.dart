import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en'];

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
  }) =>
      [esText, enText][languageIndex] ?? '';

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
  // home
  {
    'q4f1jm4h': {
      'es': 'Sexualiteen',
      'en': '',
    },
    'bw2ngz9x': {
      'es': 'Mi perfil',
      'en': '',
    },
    'sqvrypu2': {
      'es': 'MIs testimonios',
      'en': '',
    },
    'mdx3bs3m': {
      'es': 'Nosotros',
      'en': '',
    },
    'evbexptk': {
      'es': 'Mis desafios',
      'en': '',
    },
    'j7ag3ynf': {
      'es': 'Cerrar session',
      'en': '',
    },
    'j0k6rpzs': {
      'es': '',
      'en': '',
    },
    '7scdjxf8': {
      'es': 'Buscar',
      'en': '',
    },
    '9zggzaf6': {
      'es': 'Temas',
      'en': '',
    },
    'nx9xf2cd': {
      'es': 'Chat Sexualiteen',
      'en': '',
    },
    'eg64mvay': {
      'es': 'Estoy aquí para resolver tus dudas',
      'en': '',
    },
    '5jn7lty9': {
      'es': 'Todos',
      'en': '',
    },
    '8ngsv3ex': {
      'es': 'Recientes',
      'en': '',
    },
    'ykfbz4q3': {
      'es': 'Home',
      'en': '',
    },
  },
  // acount
  {
    'mloe6d5l': {
      'es': 'Crear cuenta',
      'en': '',
    },
    'u2vk5dzq': {
      'es': 'Crear cuenta',
      'en': '',
    },
    '9obre4if': {
      'es': 'Correo electronico',
      'en': '',
    },
    'unjelcyv': {
      'es': 'Contraseña',
      'en': '',
    },
    'na1l5n1l': {
      'es': 'Confirmar contraseña',
      'en': '',
    },
    'bp8f3255': {
      'es': 'Crear cuenta',
      'en': '',
    },
    'ayrq48fy': {
      'es': 'O',
      'en': '',
    },
    '56dj5pni': {
      'es': 'Continuar con Google',
      'en': '',
    },
    'ssjarwin': {
      'es': 'Campo requerido',
      'en': '',
    },
    'xtmq4yln': {
      'es': 'Correo no valido',
      'en': '',
    },
    'l4n041zl': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'boabqtpe': {
      'es': 'Campo requerido',
      'en': '',
    },
    '5i3e2zar': {
      'es': 'Debe contener minimo 8 caracteres',
      'en': '',
    },
    'x9g9veik': {
      'es': '',
      'en': '',
    },
    'lkg0bnbd': {
      'es': 'No cumple con los requisitos',
      'en': '',
    },
    's0fplvyl': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    '7u08ojfe': {
      'es': 'Las contraseñas no coinciden',
      'en': '',
    },
    'i0cftaoi': {
      'es': 'No cumple con los requisitos de seguridad',
      'en': '',
    },
    'i9fgxb6m': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'qq1rtii8': {
      'es': 'Iniciar session',
      'en': '',
    },
    'mf0dw01u': {
      'es': 'Bienvenido nuevamente',
      'en': '',
    },
    '99blsjwf': {
      'es': 'Completa los siguientes campos',
      'en': '',
    },
    'kjz3o2jl': {
      'es': 'Correo electronico',
      'en': '',
    },
    '342zn159': {
      'es': 'Contraseña',
      'en': '',
    },
    '2v8fxybd': {
      'es': 'Comenzar',
      'en': '',
    },
    'phjmcosc': {
      'es': 'O',
      'en': '',
    },
    'gyonbu8a': {
      'es': 'Continuar con Google',
      'en': '',
    },
    'jurqup4l': {
      'es': '¿Has olvidado tu contraseña?',
      'en': '',
    },
    'l9836309': {
      'es': 'Campo requerido',
      'en': '',
    },
    '1anwigas': {
      'es': 'Correo no valido',
      'en': '',
    },
    'z02b5tnd': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'fs8liguf': {
      'es': 'Campo requerido',
      'en': '',
    },
    'rdcwx5qi': {
      'es': 'Debe contener minimo 8 caracteres',
      'en': '',
    },
    'ho5xr06w': {
      'es': 'La contraseña no cumple con los requisitos de seguridad',
      'en': '',
    },
    'rox66bd7': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'd7w2nllt': {
      'es': 'Home',
      'en': '',
    },
  },
  // Forward
  {
    'rr1j8nbj': {
      'es': 'Back',
      'en': '',
    },
    '2exmyjrr': {
      'es': '¿Has olvidado la contraseña?',
      'en': '',
    },
    'p03z0v23': {
      'es':
          'Le enviaremos un correo electrónico con un enlace para restablecer su contraseña; ingrese el correo electrónico asociado con su cuenta a continuación.',
      'en': '',
    },
    '794x150i': {
      'es': 'Email',
      'en': '',
    },
    '9bbwbtb7': {
      'es': 'Ingrese su correo electronico',
      'en': '',
    },
    'x7wxl4y1': {
      'es': 'Enviar',
      'en': '',
    },
    'p1o6piuk': {
      'es': 'Home',
      'en': '',
    },
  },
  // updateForward
  {
    'srurr43z': {
      'es': 'Back',
      'en': '',
    },
    'aupxe6g1': {
      'es': 'Actualizar contraseña',
      'en': '',
    },
    's0c7xbhh': {
      'es': 'Ingresa su nueva contraseña',
      'en': '',
    },
    'rhbt68cg': {
      'es': 'Contraseña',
      'en': '',
    },
    'u1q67kke': {
      'es': 'Confirmar contraseña',
      'en': '',
    },
    '9qp0gugf': {
      'es': 'Actualizar',
      'en': '',
    },
    'dbpmy71a': {
      'es': 'Home',
      'en': '',
    },
  },
  // CreateAccount2
  {
    'saji5ntw': {
      'es': 'Sexualiteen',
      'en': '',
    },
    'pkg6h17q': {
      'es': 'Completa la siguieten información para poder continuar',
      'en': '',
    },
    's7abxofe': {
      'es': 'Nombres',
      'en': '',
    },
    'j4x137gj': {
      'es': 'Edad',
      'en': '',
    },
    'ogord8aj': {
      'es': 'MASCULINO',
      'en': '',
    },
    '96q0vw8k': {
      'es': 'FEMENINO',
      'en': '',
    },
    'elws8z61': {
      'es': 'Genero',
      'en': '',
    },
    'aeacz3di': {
      'es': 'Search for an item...',
      'en': '',
    },
    'l0a3t2e8': {
      'es': 'Siguiente',
      'en': '',
    },
    '5uqon144': {
      'es': 'Campo requerido',
      'en': '',
    },
    '4ican1x6': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    '5ijnn0fk': {
      'es': 'Campo requerido',
      'en': '',
    },
    'hkwzttld': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'kkxvsey3': {
      'es': 'Home',
      'en': '',
    },
  },
  // CreateAccount3
  {
    'fhpvqie9': {
      'es': 'Sexualiteen',
      'en': '',
    },
    '37r76dbn': {
      'es': 'Seleccione un avatar o cargue una imagen',
      'en': '',
    },
    'z7vh8chv': {
      'es': 'Seleccionar',
      'en': '',
    },
    'cbe9n171': {
      'es': 'Seleccionar',
      'en': '',
    },
    'kximn9ni': {
      'es': 'Seleccionar',
      'en': '',
    },
    'y18ixrvc': {
      'es': 'Seleccionar',
      'en': '',
    },
    'epxpjzw6': {
      'es': 'Finalizar',
      'en': '',
    },
    '6fxw45ko': {
      'es': 'Home',
      'en': '',
    },
  },
  // DsrPage
  {
    'lwecgr4t': {
      'es': 'Share',
      'en': '',
    },
    'kf3q22xm': {
      'es': '',
      'en': '',
    },
    'zcm3iyww': {
      'es': 'Home',
      'en': '',
    },
  },
  // OpcSubTemas
  {
    '8gp95z4u': {
      'es': 'Share',
      'en': '',
    },
    '4ag4sz75': {
      'es': '',
      'en': '',
    },
    'qwtkqv4e': {
      'es': 'Home',
      'en': '',
    },
  },
  // profile
  {
    '90a5xy9e': {
      'es': 'Editar Perfil',
      'en': '',
    },
    'd6h3rku6': {
      'es': '********',
      'en': '',
    },
  },
  // OpcSubTemasContenido
  {
    'njg6olra': {
      'es': 'ver...',
      'en': '',
    },
    'uimta48k': {
      'es':
          'Empezar a tener relaciones sexuales a temprana edad, antes de los 20, conlleva riesgos como quedar embarazada, contraer ITS e incluso aumentar las probabilidades de desarrollar cáncer. Es importante estar INFORMADO(A) Y CUIDARSE ANTES DE TOMAR ESA DECISIÒN.',
      'en': '',
    },
    's9hhkumq': {
      'es': 'Home',
      'en': '',
    },
  },
  // DetailsTestimonio
  {
    'sjdsbtyk': {
      'es': 'Testimonios Reales',
      'en': '',
    },
  },
  // ListTestimonio
  {
    'pdywrk0e': {
      'es': 'Mis testimonios',
      'en': '',
    },
    'fi0tzv2w': {
      'es': 'Home',
      'en': '',
    },
  },
  // favTestimonio
  {
    'b0qwvonk': {
      'es': 'Favoritos',
      'en': '',
    },
    'qg7h7goq': {
      'es': 'Home',
      'en': '',
    },
  },
  // otrsTemas
  {
    'mxczmysl': {
      'es': 'Share',
      'en': '',
    },
    'm1qlbuut': {
      'es': '',
      'en': '',
    },
    'zrtb7rxr': {
      'es': 'Home',
      'en': '',
    },
  },
  // DsaPage
  {
    'yn9e4vb3': {
      'es': 'Share',
      'en': '',
    },
    '4najk4nu': {
      'es': '',
      'en': '',
    },
    'mmw5akq5': {
      'es': 'Home',
      'en': '',
    },
  },
  // dsaContentPageborrar
  {
    'pzh1akv6': {
      'es': 'Masculino',
      'en': '',
    },
    'omevaf02': {
      'es':
          'Puedes llegar a tener acné, pero lo puedes manejar con alimentación saludable y deporte',
      'en': '',
    },
    'y26w62y7': {
      'es': 'Tus hombros comenzarán a ponerse mas anchos',
      'en': '',
    },
    '9s90h8wk': {
      'es': 'Tu voz comenzará a cambiar y ponerse más gruesa',
      'en': '',
    },
    '0k4m9tw1': {
      'es': 'Puedes comenzar a ver vellos en las axilas',
      'en': '',
    },
    'trt5a9cd': {
      'es': 'ANATOMÌA DEL APARATO REPRODUCTOR MASCULINO.',
      'en': '',
    },
    'mcdytzca': {
      'es': 'Puedes comenzar a ver vellos en las axilas',
      'en': '',
    },
    '9joumcgb': {
      'es': 'Femenino',
      'en': '',
    },
    '9tve0h8t': {
      'es':
          'Puedes llegar a tener acné, pero lo puedes manejar con alimentación saludable y deporte',
      'en': '',
    },
    'ugabgdvf': {
      'es': 'Los senos te pueden comenzar a crecer a partir de los 11 años,',
      'en': '',
    },
    '9qkmtlfk': {
      'es': 'Tu voz comenzará a cambiar y ponerse más delgada',
      'en': '',
    },
    '78vgiu66': {
      'es': 'Puedes comenzar a ver vellos en las axilas',
      'en': '',
    },
    'ooknf9mu': {
      'es': 'ANATOMÌA DEL APARATO REPRODUCTOR MASCULINO.',
      'en': '',
    },
    '83ncwba2': {
      'es': 'Puedes comenzar a ver vellos en las axilas',
      'en': '',
    },
    'uzhsbcid': {
      'es': 'Home',
      'en': '',
    },
  },
  // chatSexTeen
  {
    '9juwdfss': {
      'es': 'Ingrese su pregunta aquí',
      'en': '',
    },
    'kv8hhasz': {
      'es': 'Respuesta',
      'en': '',
    },
    '8t2u96wr': {
      'es': 'Restablecer',
      'en': '',
    },
    '5aup6rrb': {
      'es': 'Enviar',
      'en': '',
    },
    '21f8wnwk': {
      'es': 'ChatSexualiteen',
      'en': '',
    },
    '1yhmu3px': {
      'es': 'Home',
      'en': '',
    },
  },
  // SSRPage
  {
    '9dr03zoy': {
      'es': 'Share',
      'en': '',
    },
    'q6yfleut': {
      'es': '',
      'en': '',
    },
    'n1t0ptnv': {
      'es': 'Home',
      'en': '',
    },
  },
  // ssrEnDContentPage
  {
    'xcexp051': {
      'es':
          'Valeria tenía 12 años y estaba con los cambios de la pubertad comenzaron a crecer sus senos, a menstruar y blablablá… ella era una chica que le gustaba las matemáticas y jugar futbol con sus amigos del colegio,',
      'en': '',
    },
    'gqn89ia6': {
      'es':
          'aparte de los cambios físicos que tenía los chicos ya le llamaba la atención, pero no tanto para acercarse, paso el tiempo y Valeria acababa de cumplir 15 años pero su cumpleaños no fue el mejor pues había discutido con su mamá por su forma de vestir, además que sus padres se estaban separando. ',
      'en': '',
    },
    'wl41k8mo': {
      'es':
          'Un día de camino al colegio Diego un amigo del colegio comenzó a molestarla, Valeria no entendía porque, pasó 1 semana…',
      'en': '',
    },
    'tcodlaf8': {
      'es': 'Diego: Valeria me gustas…',
      'en': '',
    },
    '0yt5fjqk': {
      'es':
          'Valeria no sabía que decir entonces solo se fue a su casa con la cara muy muy roja. Pasaron los días Diego comenzó a hacerle cartas, dedicaba canciones, ponía indirectas en sus estados y más detalles a Valeria, Valeria se emocionaba mucho con los detalles de Diego. Un buen día Diego le hace una pregunta…',
      'en': '',
    },
    '0cx55fmm': {
      'es':
          'Diego: ¿Valeria quieres ser mi enamorada? (Teniendo de regalo un oso de peluche.)',
      'en': '',
    },
    '6obewmkw': {
      'es': 'Valeria: (muy emocionada) Sí. ',
      'en': '',
    },
    '5l3xyshg': {
      'es':
          'Y es ahí cuando comenzó una bonita historia de amor…\nUn mes después Diego y sus amigos estaban jugando futbol ',
      'en': '',
    },
    'c3v95yvw': {
      'es': 'Amigos de Diego: ¿ya tuviste relaciones sexuales con Valeria? ',
      'en': '',
    },
    'yfqviy3q': {
      'es': 'Diego: No',
      'en': '',
    },
    'r2ig8znh': {
      'es':
          'Amigos de Diego: jajajjaja teniendo enamorada no lo hace jajaja que monse eres jajajjaja yo ya lo hubiera hecho.',
      'en': '',
    },
    '7mny5cfo': {
      'es': 'Diego: (avergonzado se fue a casa)',
      'en': '',
    },
    '28n8mljp': {
      'es':
          'Unos días después y Diego pensaba en lo que sus amigos le dijeron entonces al encontrarse con Valeria hablan un poco y Diego le propone tener relaciones sexuales pero Valeria se queda sorprendida y asustada a la vez no sabía que decir pues nunca lo había hecho. … ',
      'en': '',
    },
    '6ya096vn': {
      'es':
          'Valeria al encontrarse con sus amigas les comento sobre lo ocurrido y sus amigas no sabía que decirle, Valeria con miedo de preguntar sobre el tema a sus docentes fue a casa y trato de preguntar a su mamá, pero su mamá que estaba con muchas peleas con su papá por su separación, no le tomo importancia.',
      'en': '',
    },
    'ewt8opep': {
      'es':
          'Un día que Diego invito a su casa a almorzar y Valeria comenzó hablar del tema de las relaciones sexuales. \nDiego: ¿quieres hacerlo?',
      'en': '',
    },
    'gxyxa4fp': {
      'es': 'Valeria: no se tengo miedo',
      'en': '',
    },
    'o9autszq': {
      'es': 'Diego: ¿de que tienes miedo?',
      'en': '',
    },
    '3bn0nqsm': {
      'es': 'Valeria: de quedar embarazada ',
      'en': '',
    },
    'm7hwb9oy': {
      'es':
          'Diego: a mi me contaron que primera vez no se quedan embarazadas, entonces no tienes porque tener miedo\n',
      'en': '',
    },
    '0f9izp6g': {
      'es':
          'Valeria: esta bien \nDiego y Valeria tuvieron relaciones sexuales sin usar ningún método anticonceptivo. \nLuego de un mes Valeria estaba asustada pues su regla no le venia 1 semana, ella pensó que era normal un retraso y no le tomo importancia.\n\n',
      'en': '',
    },
    's8d6ui2w': {
      'es':
          'Paso un mes mas Valeria ya no tenia apetito y se sentía mareada con nauseas y había dias en los que devolvía la comida. Un repentino día estaban almorzando con su mamá y Valeria sintió desvanecerse y cayo de la silla para un costado su mamá asustada la llevo al centro de salud.',
      'en': '',
    },
    '7g7tvi5d': {
      'es':
          'El medico encargado les da la noticia de que Valeria está embarazada.\nHan pasado 7 meses de la noticia, Diego y Valeria ',
      'en': '',
    },
    'o1sx9cj6': {
      'es':
          '•\t Dejaron el colegio.\n•\t Sufrían de bullyng \n•\tSe fue a vivir a casa de Diego con su familia  \n•\t Diego comenzó a trabajar de ayudante de construcción \n•\t El obstetra le decía que su embarazo es de riesgo por su edad.\n',
      'en': '',
    },
    '8et71qhn': {
      'es': 'Te tengo algunas preguntas',
      'en': '',
    },
    'sngigour': {
      'es': '¿Qué hubieras hecho en el lugar de Diego o de Valeria?',
      'en': '',
    },
    '52auialv': {
      'es': '¿Qué le dirías ahora a Diego o a Valeria?',
      'en': '',
    },
    'uyg0tizp': {
      'es': '¿Te identificas con esta historia?',
      'en': '',
    },
    '5dslcjyh': {
      'es': 'Leer',
      'en': '',
    },
    '7e469nsj': {
      'es': 'Hola',
      'en': '',
    },
    'swjzyf87': {
      'es':
          'Te invito a leer conmigo una historia que seguro que se te hará familiar. ',
      'en': '',
    },
    's8fpwj03': {
      'es': 'Atras',
      'en': '',
    },
    'rw3cemwu': {
      'es': 'Siguiente',
      'en': '',
    },
    '3riz8n15': {
      'es': 'Home',
      'en': '',
    },
  },
  // ssrITSContentPagecopy2
  {
    'zowg6v8z': {
      'es': 'Información general',
      'en': '',
    },
    'qvp8rmjb': {
      'es':
          'Son infecciones de transmisión sexual que tienen diferentes orígenes, se transmiten a través de las relaciones sexuales. ',
      'en': '',
    },
    'ma39t36j': {
      'es': '¿Como me contagio?',
      'en': '',
    },
    'jl9fcwvt': {
      'es': '¿Que actividades no contagian?',
      'en': '',
    },
    'rsfof319': {
      'es': '¿Cuales son estas ITS?',
      'en': '',
    },
    'ynq01ddu': {
      'es': '¿Me voy a morir si me contagio?',
      'en': '',
    },
    'i1ijmgkd': {
      'es': '¿Tiene cura la ITS?',
      'en': '',
    },
    'wdhz6gtv': {
      'es': 'TIpos de ITS',
      'en': '',
    },
    'o77b470p': {
      'es': 'Gonorrea',
      'en': '',
    },
    's3txj1gv': {
      'es':
          'La gonorrea es una infección de transmisión sexual (ITS) causada por la bacteria Neisseria gonorrhoeae.',
      'en': '',
    },
    '9v12mhq6': {
      'es': 'Ver mas',
      'en': '',
    },
    '9vedgflu': {
      'es': 'Clamidiasis',
      'en': '',
    },
    'qch72glp': {
      'es':
          'La clamidiasis, también conocida como clamidia, es una infección bacteriana de transmisión sexual (ETS) causada por la bacteria Chlamydia trachomatis.',
      'en': '',
    },
    'bxpdnfgy': {
      'es': 'Ver mas',
      'en': '',
    },
    'xmfmhhcb': {
      'es': 'Sifilis',
      'en': '',
    },
    's731kzwq': {
      'es':
          'La sífilis es una infección de transmisión sexual (ITS) bacteriana que se puede prevenir y curar.',
      'en': '',
    },
    'mis58z23': {
      'es': 'Ver mas',
      'en': '',
    },
    'ydmcy2gl': {
      'es': 'Vaginosis bacteriana',
      'en': '',
    },
    'fd1tzug3': {
      'es':
          'La vaginosis bacteriana es una enfermedad frecuente que aparece cuando se altera el equilibrio normal de los microorganismos de la vagina.',
      'en': '',
    },
    'pts6yjvc': {
      'es': 'Ver mas',
      'en': '',
    },
    'kw7y2zbv': {
      'es': 'Herpes',
      'en': '',
    },
    'tujug65j': {
      'es':
          'El herpes es una infección causada por el virus del herpes simple (VHS)',
      'en': '',
    },
    'z7h91kab': {
      'es': 'Ver mas',
      'en': '',
    },
    '6uxes4np': {
      'es': 'VPH',
      'en': '',
    },
    'zhe9bf5n': {
      'es':
          'El virus del papiloma de humano es una de las infecciones de transmisión sexual más frecuentes en todo el mundo.',
      'en': '',
    },
    '1y2jrfzc': {
      'es': 'Ver mas',
      'en': '',
    },
    's4swm014': {
      'es': 'VIH',
      'en': '',
    },
    '5suwwd29': {
      'es':
          'La infección por el VIH ataca el sistema inmunitario, y el síndrome de inmunodeficiencia adquirida (sida) es la fase más avanzada de la enfermedad.',
      'en': '',
    },
    'znlkoq0h': {
      'es': 'Ver mas',
      'en': '',
    },
    'hy6p6nvu': {
      'es': 'Candidiasis Vulvovaginal',
      'en': '',
    },
    '9asjjwfy': {
      'es':
          'La candidiasis vulvovaginal (VVC) es una infección vaginal por hongos causada por el crecimiento excesivo del hongo Candida albicans.',
      'en': '',
    },
    'un3t6gfv': {
      'es': 'Ver mas',
      'en': '',
    },
    'd3cynx4s': {
      'es': 'Tricomoniasis',
      'en': '',
    },
    'offssvlx': {
      'es':
          'La tricomoniasis es una infección de transmisión sexual (ITS) causada por el parásito protozoario Trichomonas vaginalis.',
      'en': '',
    },
    'y4qwm6li': {
      'es': 'Ver mas',
      'en': '',
    },
    'g2hgem30': {
      'es': 'Preguntas frecuentes',
      'en': '',
    },
    'wzbr31po': {
      'es': '¿Como me contagio?',
      'en': '',
    },
    'h8m7psg6': {
      'es': '',
      'en': '',
    },
    'ktv1iik2': {
      'es': '¿Que actividades no contagian?',
      'en': '',
    },
    'cdzw7lm6': {
      'es': '',
      'en': '',
    },
    'g41n13cw': {
      'es': '¿Cuales son estas ITS?',
      'en': '',
    },
    't5uayj2z': {
      'es': '',
      'en': '',
    },
    'jxizx8d4': {
      'es': '¿Me voy a morir si me contagio?',
      'en': '',
    },
    'r0ls5i9q': {
      'es': '',
      'en': '',
    },
    '43g845h5': {
      'es': '¿Tiene cura la ITS?',
      'en': '',
    },
    'kii7xkw4': {
      'es': '',
      'en': '',
    },
    'qx7jjthb': {
      'es': 'Cerrar',
      'en': '',
    },
    '9uyepqg0': {
      'es': '¿Como me contagio?',
      'en': '',
    },
    'tvp3awkm': {
      'es': 'Si tienes relaciones sexuales sin preservativo(anal. oral),',
      'en': '',
    },
    'zayw9pbh': {
      'es': '',
      'en': '',
    },
    'x6isqn2k': {
      'es': '',
      'en': '',
    },
    'lz5a12fh': {
      'es': '¿y si solo doy besoso?',
      'en': '',
    },
    'zw223o84': {
      'es':
          'Aunque es posible contagiarse de algunas ITS a través de un beso, el riesgo es mucho menor que a través de otras prácticas sexuales',
      'en': '',
    },
    '3hx782um': {
      'es': '¿Cuáles son estas ITS?',
      'en': '',
    },
    '7f3ce7wb': {
      'es':
          'Gonorrea\nClamidiasis\nSífilis\nVaginosis bacteriana\nHerpes\nVPH\nVIH\nCandidiasis vulvovaginal\nTricomoniasis',
      'en': '',
    },
    '2irlyunu': {
      'es': '¿Me voy a morir?',
      'en': '',
    },
    'sbr6gt9k': {
      'es':
          'NO lo ideal es que reconozcas cualquiera de estos síntomas a tiempo y te dirijas a tu posta o centro de salud para identificar la causa y darte el tratamiento ideal.',
      'en': '',
    },
    'wn79etn5': {
      'es': '¿Como protegerse de la ITS?',
      'en': '',
    },
    'v1vksaoa': {
      'es':
          'Usar preservativos (masculino o femenino) al tener relaciones sexuales vaginales, anales u orales.',
      'en': '',
    },
    'heav8772': {
      'es':
          'Es importante hablar con la pareja sexual acerca de su pasado sexual y del uso de drogas.',
      'en': '',
    },
    'gsfspjxj': {
      'es':
          'Aprender a reconocer los indicios y síntomas de una ITS. Si notas un síntoma que te preocupa, ve a tu centro de salud o centro de ITS a solicitar una revisión.',
      'en': '',
    },
    '1eb0569t': {
      'es':
          'Si tienes una ITS, la persona/s que han tenido o tienen contacto sexual contigo es conveniente que acudan al centro para ser revisadas y recibir tratamiento si se considerara necesario.',
      'en': '',
    },
    'bj9nqns0': {
      'es': '¿Y si tengo una its me voy a curar?',
      'en': '',
    },
    'kwe3cv4p': {
      'es':
          'Si, si estas tomando el tratamiento que te han dado si te vas a curar ahora tu pareja también tiene que tratarse para no volver a infectarse. ',
      'en': '',
    },
    'gkwld2u3': {
      'es': 'Ver mas sobre el tema presione aqui',
      'en': '',
    },
    '8e3zho4u': {
      'es': 'Compartes juguetes sexuales sin limpiarlos o desinfectarlos',
      'en': '',
    },
    '079v7ljn': {
      'es': 'Consumes leche materna de una persona infectada',
      'en': '',
    },
    'zqzdq0lm': {
      'es': 'Home',
      'en': '',
    },
  },
  // ITSgonorrea
  {
    '9oi53us7': {
      'es': 'Gonorrea',
      'en': '',
    },
    'd17gfd6v': {
      'es':
          'La gonorrea es una infección de transmisión sexual (ITS) causada por la bacteria Neisseria gonorrhoeae.',
      'en': '',
    },
    'ui4xmrn5': {
      'es': 'Causas',
      'en': '',
    },
    'cyuld77l': {
      'es': 'Neisseria gonorrhoeae es una bacteria',
      'en': '',
    },
    'heyqm6b4': {
      'es': 'Síntomas',
      'en': '',
    },
    'awwefx4w': {
      'es':
          'secreción amarillenta y con molestias al orinar.  En la garganta hay molestias. Anorrectal. Puede haber secreción amarillenta, espesa, con picor anal. Los síntomas parecen entre el segundo día y el séptimo día o a veces en más tiempo.  ',
      'en': '',
    },
    'yy5y399s': {
      'es': 'Formas de transmisión',
      'en': '',
    },
    'rrj2fudl': {
      'es': 'Relaciones sexuales sin preservativo, sexo oral.',
      'en': '',
    },
    'guxmzr1z': {
      'es': 'Home',
      'en': '',
    },
  },
  // ITSClamidiasis
  {
    'w8fsy226': {
      'es': 'Clamidiasis',
      'en': '',
    },
    '5d8t21vw': {
      'es':
          'La clamidiasis, también conocida como clamidia, es una infección bacteriana de transmisión sexual (ETS) causada por la bacteria Chlamydia trachomatis.',
      'en': '',
    },
    'qro4vtuo': {
      'es': 'Causas',
      'en': '',
    },
    '4luxnhyv': {
      'es': 'Chlamydia trachomatis es una bacteria',
      'en': '',
    },
    'qptkqnr8': {
      'es': 'Sintomas',
      'en': '',
    },
    'a9qi3h73': {
      'es':
          'Casi no hay síntomas pero puede que en el varón haya secreción clara y dolor al orinar.  Mujer. – aumento de flujo, alteración de la menstruación y sangrado después de tener relaciones sexuales  Los síntomas aparecen entre el día 7 y 21 depues de las relaciones sexuales.',
      'en': '',
    },
    'tmiugqjq': {
      'es': 'Formas de transmisión',
      'en': '',
    },
    'zfb9d779': {
      'es': 'Relaciones sexuales sin preservativo',
      'en': '',
    },
    'u0vsw8yo': {
      'es': 'Home',
      'en': '',
    },
  },
  // ITSSIfilis
  {
    '2ilgyuul': {
      'es': 'Sifilis',
      'en': '',
    },
    'dejaezda': {
      'es':
          'La sífilis es una infección de transmisión sexual (ITS) bacteriana que se puede prevenir y curar.',
      'en': '',
    },
    'u8uhw1qv': {
      'es': 'Causas',
      'en': '',
    },
    's06n98va': {
      'es': 'Treponema pallidum es una bacteria ',
      'en': '',
    },
    '9h7awdk4': {
      'es': 'Sintomas',
      'en': '',
    },
    'bedwl2o3': {
      'es':
          'se caracteriza por la aparición de chancros o granitos en forma de ampolla formando ulcera con una inflación en la ingle.\nla sífilis primaria si no es tratada pasa a otra etapa que es la sífilis secundaria donde aparecen erupciones en la piel incluidas las palmas de las manos y planta del pie. Los cuales son muy contagiosas. \nLos síntomas aparecen en el día 20 y 40 después de las relaciones sexuales. \n',
      'en': '',
    },
    '2phj9fpo': {
      'es': 'Formas de transmisión',
      'en': '',
    },
    'l657je9v': {
      'es':
          'Relaciones sexuales sin preservativo, sexo oral, sexo anal, contacto con las zona lesionada de otra persona, contacto con la sangre de una persona contagiada, compartir rasurador, agujas.',
      'en': '',
    },
    'l18friw3': {
      'es': 'Home',
      'en': '',
    },
  },
  // ITSVaginosisBac
  {
    'rw0og0ja': {
      'es': 'Vaginosis Bacteriana',
      'en': '',
    },
    '4dbs42av': {
      'es':
          'La vaginosis bacteriana es una enfermedad frecuente que aparece cuando se altera el equilibrio normal de los microorganismos de la vagina.',
      'en': '',
    },
    'ednnzwj5': {
      'es': 'Causas',
      'en': '',
    },
    '54dcz7wk': {
      'es': 'Aumento de secreción vaginal con mal olor y de color gris.',
      'en': '',
    },
    'ifvz6tke': {
      'es': 'Formas de transmisión',
      'en': '',
    },
    'emt2qeie': {
      'es':
          'Esta its es causa por el cambio hormonal que sufre el cuerpo de la mujer.',
      'en': '',
    },
    'fm66vbzg': {
      'es': 'Síntomas',
      'en': '',
    },
    '895ukr9l': {
      'es':
          'Esta its es causa por el cambio hormonal que sufre el cuerpo de la mujer.',
      'en': '',
    },
    'ubkhychq': {
      'es': 'Home',
      'en': '',
    },
  },
  // ITSHerpes
  {
    'l84vbjx9': {
      'es': 'Herpes',
      'en': '',
    },
    'j5mq2f84': {
      'es':
          'El herpes es una infección causada por el virus del herpes simple (VHS)',
      'en': '',
    },
    'ec81m3je': {
      'es': 'Causas',
      'en': '',
    },
    'bhhplnzt': {
      'es': 'virus herpes simple (VHS)',
      'en': '',
    },
    'dhcot3gm': {
      'es': 'Causas',
      'en': '',
    },
    '274bjta5': {
      'es': 'virus herpes simple (VHS)',
      'en': '',
    },
    '1nwh7dgz': {
      'es': 'Síntomas',
      'en': '',
    },
    'pccuh2if': {
      'es':
          'Aparición de pequeños granos con ampollas o ulceras dolorosas el cual aparece en la zona contaminada. Aparece entre el día 2 y 20 depues del contacto.',
      'en': '',
    },
    'kt1p9tuf': {
      'es': 'Causas',
      'en': '',
    },
    'ztoulb2v': {
      'es': 'virus herpes simple (VHS)',
      'en': '',
    },
    'jxg2rwh3': {
      'es': 'Formas de transmisión',
      'en': '',
    },
    '7quheitg': {
      'es': 'Relaciones sexuales sin preservativo, sexo anal y sexo oral. ',
      'en': '',
    },
    'suy5xv8a': {
      'es': 'Home',
      'en': '',
    },
  },
  // ITSVPH
  {
    'j2z9digk': {
      'es': 'VPH',
      'en': '',
    },
    'w1bc2txn': {
      'es':
          'El virus del papiloma de humano es una de las infecciones de transmisión sexual más frecuentes en todo el mundo.',
      'en': '',
    },
    'shva3dxe': {
      'es': 'Causas',
      'en': '',
    },
    'j9iffnt4': {
      'es': 'Virus del papiloma',
      'en': '',
    },
    'qgl5d8hl': {
      'es': 'Causas',
      'en': '',
    },
    'l4v7spm5': {
      'es': 'virus herpes simple (VHS)',
      'en': '',
    },
    'qqnljk4s': {
      'es': 'Síntomas',
      'en': '',
    },
    '5zo631k4': {
      'es':
          'Aparición de pequeños granos con ampollas o ulceras dolorosas el cual aparece en la zona contaminada. Aparece entre el día 2 y 20 depues del contacto.',
      'en': '',
    },
    '4t2cdt8g': {
      'es': 'Causas',
      'en': '',
    },
    'ipttkh9g': {
      'es': 'virus herpes simple (VHS)',
      'en': '',
    },
    '800ixe7f': {
      'es': 'Formas de transmisión',
      'en': '',
    },
    'm5ezx103': {
      'es': 'Relaciones sexuales sin preservativo, sexo anal y sexo oral. ',
      'en': '',
    },
    '70yjy75q': {
      'es': 'Home',
      'en': '',
    },
  },
  // ITSVIH
  {
    'rpur7jsc': {
      'es': 'VIH',
      'en': '',
    },
    '3lt63tnp': {
      'es':
          'La infección por el VIH ataca el sistema inmunitario, y el síndrome de inmunodeficiencia adquirida (sida) es la fase más avanzada de la enfermedad.',
      'en': '',
    },
    '2li1mx49': {
      'es': 'Causas',
      'en': '',
    },
    'lxpjfgpm': {
      'es': 'Virus de la inmunodeficiencia',
      'en': '',
    },
    'lcn22pdm': {
      'es': 'Causas',
      'en': '',
    },
    'hbks1i90': {
      'es': 'virus herpes simple (VHS)',
      'en': '',
    },
    '4g6pqt62': {
      'es': 'Síntomas',
      'en': '',
    },
    '6tcx4lrt': {
      'es':
          'Casi no presenta síntomas pero puede haber fiebre, cansancio, inflamación de algunos ganglios, diarrea, pérdida de peso.',
      'en': '',
    },
    '0364dadm': {
      'es': 'Causas',
      'en': '',
    },
    'okf370m3': {
      'es': 'virus herpes simple (VHS)',
      'en': '',
    },
    'o73oigo1': {
      'es': 'Formas de transmisión',
      'en': '',
    },
    '7326z38w': {
      'es':
          'Relaciones sexuales sin preservativo, sexo anal, sexo oral. En el embarazo la madre a hijo a través de la placenta, en el momento del parto,  leche materna. ',
      'en': '',
    },
    'tjol4m83': {
      'es': 'Home',
      'en': '',
    },
  },
  // ITSCandidiasisVulvo
  {
    'qwnc6ecj': {
      'es': 'Candidiasus Vulvovaginal',
      'en': '',
    },
    'q72yyuik': {
      'es':
          'La candidiasis vulvovaginal (VVC) es una infección vaginal por hongos causada por el crecimiento excesivo del hongo Candida albicans.',
      'en': '',
    },
    'sym09bzh': {
      'es': 'Causas',
      'en': '',
    },
    's868p3w2': {
      'es': 'Candida albicans es un hongo',
      'en': '',
    },
    'z0etjq0u': {
      'es': 'Causas',
      'en': '',
    },
    'fcwmlt3t': {
      'es': 'virus herpes simple (VHS)',
      'en': '',
    },
    'u14b0xmi': {
      'es': 'Síntomas',
      'en': '',
    },
    'o7uc2bgd': {
      'es':
          'secreción blanquecina espesa parecida al requesón hay picazón dolor al orinar y aparece justo antes de la regla. Y en los hombres puede haber una inflamación con zonas blanquecinas con picor.',
      'en': '',
    },
    's3q67ik6': {
      'es': 'Causas',
      'en': '',
    },
    'epo3iynk': {
      'es': 'virus herpes simple (VHS)',
      'en': '',
    },
    'kl830de6': {
      'es': 'Formas de transmisión',
      'en': '',
    },
    'qyi0ego3': {
      'es':
          'en las mujeres es por un cambio hormonal y en los varones si es por tener relaciones sexuales sin preservativo.',
      'en': '',
    },
    'q6rd3b6v': {
      'es': 'Home',
      'en': '',
    },
  },
  // ITSTricomoniasis
  {
    '7ic8ughc': {
      'es': 'Tricomoniasis',
      'en': '',
    },
    '0fkfp8sl': {
      'es':
          'La tricomoniasis es una infección de transmisión sexual (ITS) causada por el parásito protozoario Trichomonas vaginalis.',
      'en': '',
    },
    '4tvbqod4': {
      'es': 'Causas',
      'en': '',
    },
    'zg3nb39n': {
      'es': 'Trichomona vaginalis es un protozoario',
      'en': '',
    },
    'xeai0f7t': {
      'es': 'Causas',
      'en': '',
    },
    'twwolk9s': {
      'es': 'virus herpes simple (VHS)',
      'en': '',
    },
    'ebbsv3dd': {
      'es': 'Síntomas',
      'en': '',
    },
    'v97ktp4y': {
      'es':
          'Secreción vaginal espumoso, con mal olor y aveces con sangre, hay comezón en la vagina, dolor al orinar. En la mayoría de los varones no hay síntomas.',
      'en': '',
    },
    '8hri8ver': {
      'es': 'Causas',
      'en': '',
    },
    'w5qw5ps9': {
      'es': 'virus herpes simple (VHS)',
      'en': '',
    },
    'wcxxc591': {
      'es': 'Formas de transmisión',
      'en': '',
    },
    'fao2qttn': {
      'es': 'Relaciones sexuales sin preservativo.',
      'en': '',
    },
    'lb7z1zns': {
      'es': 'Home',
      'en': '',
    },
  },
  // ssrMAContentPage
  {
    'uh6v1ga5': {
      'es': 'Share',
      'en': '',
    },
    't86uczgo': {
      'es': 'Métodos de Abstinencia',
      'en': '',
    },
    'w57wgdqc': {
      'es': '',
      'en': '',
    },
    'sv2nq8q0': {
      'es': 'Share',
      'en': '',
    },
    'rcshy1w8': {
      'es': 'Método de Barrera',
      'en': '',
    },
    'kaw0wssz': {
      'es': '',
      'en': '',
    },
    '2akwgoji': {
      'es': 'Share',
      'en': '',
    },
    '7l8g8klo': {
      'es': 'Anticonceptivos Hormonales',
      'en': '',
    },
    '535375gq': {
      'es': '',
      'en': '',
    },
    'iscgvjor': {
      'es': 'Share',
      'en': '',
    },
    'bjf33yhe': {
      'es': 'Dispositivos Intrauterinos (DIU)',
      'en': '',
    },
    '2a4dbgjv': {
      'es': '',
      'en': '',
    },
    'stguts0c': {
      'es': 'Share',
      'en': '',
    },
    'wfa1er0d': {
      'es': 'Anticoncepción Oral de Emergencia (AOE)',
      'en': '',
    },
    'p16j7jmq': {
      'es': '',
      'en': '',
    },
    'ry1aylct': {
      'es': 'Home',
      'en': '',
    },
  },
  // MAanbsP
  {
    'his0a9t1': {
      'es':
          'La abstinencia sexual es la forma más efectiva de control de la natalidad (o anticoncepción). Si dos personas no mantienen relaciones sexuales, el esperma no puede fecundar el óvulo y es imposible que la chica se quede embaraza.',
      'en': '',
    },
    'kaqyykiu': {
      'es': 'Home',
      'en': '',
    },
  },
  // MAbarrera
  {
    'f5yh63ox': {
      'es': 'Preservativo Masculino (Condón)',
      'en': '',
    },
    'frl1g79w': {
      'es': 'Función',
      'en': '',
    },
    'pj2p8zl7': {
      'es':
          'Impide que los espermatozoides ingresen al tracto reproductor femenino.',
      'en': '',
    },
    'mtyle8xw': {
      'es': 'Uso correcto',
      'en': '',
    },
    '07n9rc9c': {
      'es': 'Verificar que esté completamente cerrado, sin agujeros.',
      'en': '',
    },
    'p8x4rgg4': {
      'es': 'Debe tener aire comprimido como una almohada.',
      'en': '',
    },
    'v89n4py3': {
      'es': 'No debe estar vencido.',
      'en': '',
    },
    '6pcvwgxd': {
      'es':
          'Colocar desenrollándolo sobre el pene erecto antes de la penetración.',
      'en': '',
    },
    '3z7f1kq7': {
      'es': 'Usar solo una vez y desechar después del uso.',
      'en': '',
    },
    'm2fit8kp': {
      'es': 'Ventajas',
      'en': '',
    },
    'tyw3zfgk': {
      'es': 'Previene ITS, incluyendo el VIH.',
      'en': '',
    },
    'ws2yapmx': {
      'es': 'Fácil de conseguir, económico y gratuito en centros de salud.',
      'en': '',
    },
    'sgil23en': {
      'es': 'No tiene efectos hormonales.',
      'en': '',
    },
    '8w85j3xt': {
      'es': 'Fácil de usar.',
      'en': '',
    },
    'o6yqvfp4': {
      'es': 'Home',
      'en': '',
    },
  },
  // MAlistAntiHormo
  {
    'c9v9t6us': {
      'es': 'Share',
      'en': '',
    },
    '17z90q7h': {
      'es': 'Anticonceptivo Oral Combinado',
      'en': '',
    },
    '6nr2jcr9': {
      'es': '',
      'en': '',
    },
    'udzfu9qu': {
      'es': 'Share',
      'en': '',
    },
    '3dgfjpw1': {
      'es': 'Anticonceptivos  inyectables',
      'en': '',
    },
    '424fgm64': {
      'es': '',
      'en': '',
    },
    'p8226pul': {
      'es': 'Share',
      'en': '',
    },
    'oak8xhar': {
      'es': 'Implante Subdérmico',
      'en': '',
    },
    'cgchv781': {
      'es': '',
      'en': '',
    },
    '8fetf177': {
      'es': 'Home',
      'en': '',
    },
  },
  // MAaoc
  {
    'v50irfpl': {
      'es': 'Función',
      'en': '',
    },
    'uws249ol': {
      'es': 'Espesan el moco cervical y evitan la ovulación.',
      'en': '',
    },
    '19vk7935': {
      'es': 'Uso correcto',
      'en': '',
    },
    'bex4np3b': {
      'es': 'Recetado por personal capacitado como un obstetra.',
      'en': '',
    },
    'nxkmpoj4': {
      'es': 'Verificar que no esté vencido.',
      'en': '',
    },
    '2si7aiad': {
      'es': 'Seguir las indicaciones del personal.',
      'en': '',
    },
    'iocogwvh': {
      'es': 'Tiras de 21 o 28 pastillas.',
      'en': '',
    },
    'ghdbmg0k': {
      'es': 'Empezar el primer día de la menstruación.',
      'en': '',
    },
    'q3zyylzq': {
      'es': 'Tomar una pastilla diaria a la misma hora.',
      'en': '',
    },
    '9f9efcbi': {
      'es': 'Precausiones',
      'en': '',
    },
    '8d24t9mr': {
      'es': 'Si te olvidaste de tomar',
      'en': '',
    },
    'ne4q220l': {
      'es': 'Un día: Tomar la pastilla olvidada y continuar normalmente.',
      'en': '',
    },
    'sip5rxtf': {
      'es':
          'Más de 2 días: Suspender y usar método alternativo hasta la próxima menstruación.',
      'en': '',
    },
    'mlupi6eh': {
      'es': 'Posibles efectos',
      'en': '',
    },
    't4d782pr': {
      'es': 'Náuseas, vómitos, mareos, aumento de peso, dolor de cabeza.',
      'en': '',
    },
    '160x2kh9': {
      'es': 'Home',
      'en': '',
    },
  },
  // MAaic
  {
    '6hvqft6s': {
      'es': 'Inyectable Mensual',
      'en': '',
    },
    'iqiyuqdk': {
      'es': 'Función',
      'en': '',
    },
    'byqq1cun': {
      'es': 'Espesan el moco cervical y evitan la ovulación.',
      'en': '',
    },
    'rlqmmjyo': {
      'es': 'Uso correcto',
      'en': '',
    },
    's61bj0ro': {
      'es':
          'Aplicar en la región glútea entre el primer y quinto día de la menstruación.',
      'en': '',
    },
    'i6hgs8rr': {
      'es':
          'Es una ampolla que se debe aplicar entre el primer y quito día de tu menstruación.',
      'en': '',
    },
    'rt5oojhd': {
      'es': 'Posibles efectos',
      'en': '',
    },
    'h49oez0r': {
      'es': 'Aumento de peso (relacionado con hábitos alimenticios).',
      'en': '',
    },
    'q27g1olo': {
      'es': 'Sangrado irregular (disminuye después de 3 meses).',
      'en': '',
    },
    'fo70y9kw': {
      'es': 'Posible desaparición de la menstruación.',
      'en': '',
    },
    '89b7rbc9': {
      'es': 'Náuseas y vómitos (primeros 3 meses).',
      'en': '',
    },
    'gev5wknx': {
      'es': 'Dolor de cabeza',
      'en': '',
    },
    'fqyakq1f': {
      'es': 'Precauciones',
      'en': '',
    },
    '8vq7zqxm': {
      'es':
          'La ampolla se aplica cada mes y debes ir a que te vuelvan aplicar puede ser desde 3 días antes de tu fecha programada.',
      'en': '',
    },
    'lpnc8fk3': {
      'es': 'No te protege de las ITS',
      'en': '',
    },
    'al565bof': {
      'es': 'Inyectable trimestral',
      'en': '',
    },
    '40yd3yfb': {
      'es': 'Función',
      'en': '',
    },
    'ozbr4clz': {
      'es': 'Es una ampolla que espesa el moco cervical y  evita la ovulación.',
      'en': '',
    },
    '2189b4ft': {
      'es': 'Precauciones',
      'en': '',
    },
    'pq0xnc0j': {
      'es':
          'La ampolla se aplicada cada 3 meses entonces debes ir a que te vuelvan aplicar puede ser desde 3 días antes después de tu fecha programada.',
      'en': '',
    },
    'jo56shye': {
      'es': 'No te protege de las ITS',
      'en': '',
    },
    'xvm9yxkc': {
      'es': 'Uso correcto',
      'en': '',
    },
    '804lqmkn': {
      'es': 'Se aplica en la región glútea.',
      'en': '',
    },
    'rhoi8qnt': {
      'es':
          'Es una ampolla que se debe aplicar entre el primer y quito día de tu menstruación.',
      'en': '',
    },
    'djpp48dy': {
      'es': 'Tipos',
      'en': '',
    },
    'b8ggbyql': {
      'es': 'Implante de 68 mg de etonogestrel (3 años).',
      'en': '',
    },
    'zczlao9b': {
      'es': 'Implante de levonorgestrel (4-5 años, dependiendo del peso).',
      'en': '',
    },
    'wspb78u2': {
      'es': 'Posibles efectos',
      'en': '',
    },
    '7ii8v0z3': {
      'es': 'Aumento de peso (relacionado con hábitos alimenticios).',
      'en': '',
    },
    'go9p8ndq': {
      'es': 'Sangrado irregular (disminuye después de 3 meses).',
      'en': '',
    },
    '1oi2ivry': {
      'es': 'Posible desaparición de la menstruación.',
      'en': '',
    },
    'vhbkdher': {
      'es': 'Náuseas y vómitos (primeros 3 meses).',
      'en': '',
    },
    'ezuszxv6': {
      'es': 'Dolor de cabeza',
      'en': '',
    },
    'uyk786qd': {
      'es': 'Home',
      'en': '',
    },
  },
  // MAsubdermico
  {
    'vdhqkbol': {
      'es': 'Implante Subdérmico',
      'en': '',
    },
    'sfzw46ze': {
      'es': 'Función',
      'en': '',
    },
    'gmkfs2kc': {
      'es':
          'Espesa el moco cervical y evita la ovulación.\nDuración: 3 a 5 años, dependiendo del tipo.',
      'en': '',
    },
    '4htfwtkj': {
      'es': 'Uso correcto',
      'en': '',
    },
    'ltzfgkmu': {
      'es': 'Inserción y extracción por personal capacitado.',
      'en': '',
    },
    '8hepsh80': {
      'es': 'Controles: 3 días, 1 mes, 3 meses, y luego anual.',
      'en': '',
    },
    'hi5w1jfb': {
      'es': 'Tipos',
      'en': '',
    },
    'zo71l3nu': {
      'es': 'Implante de 68 mg de etonogestrel (3 años).',
      'en': '',
    },
    'g59ihjpg': {
      'es': 'Implante de levonorgestrel (4-5 años, dependiendo del peso).',
      'en': '',
    },
    '0bw8zwzo': {
      'es': 'Posibles efectos',
      'en': '',
    },
    'cocu0jxj': {
      'es': 'Sangrado irregular o ausencia de menstruación.',
      'en': '',
    },
    'pi5lx2b5': {
      'es': 'Dolor de cabeza, acné, alteración de peso, dolor abdominal.',
      'en': '',
    },
    'oa5qn2ar': {
      'es': 'Precauciones',
      'en': '',
    },
    'ya1ixr56': {
      'es':
          'El primer control es a los 3 días, al mes, a los 3 meses y luego al año.',
      'en': '',
    },
    'khgzr5bu': {
      'es': 'No te protege de las ITS',
      'en': '',
    },
    'dqr4u01h': {
      'es': 'Home',
      'en': '',
    },
  },
  // MAlisDIU
  {
    'g9aydyjr': {
      'es': 'Share',
      'en': '',
    },
    'qpfx7o3n': {
      'es': 'DIU T de Cobre',
      'en': '',
    },
    '81jxtrhh': {
      'es': '',
      'en': '',
    },
    'wjpinou2': {
      'es': 'Share',
      'en': '',
    },
    'xvnkguw8': {
      'es': 'DIU Hormonal',
      'en': '',
    },
    'qhdx2vcf': {
      'es': '',
      'en': '',
    },
    'ys2s0hfn': {
      'es': 'Home',
      'en': '',
    },
  },
  // MAdiuTCobre
  {
    'qiwz7vko': {
      'es': 'Función',
      'en': '',
    },
    'i1e0ax79': {
      'es':
          'Es un dispositivo que se introduce por la vagina y hace  que los espermatozoides se inmovilicen o los destruye tiene una duración de 12 años.',
      'en': '',
    },
    'h10ex3fj': {
      'es': 'Uso correcto',
      'en': '',
    },
    'hdap4h6p': {
      'es': 'Debe ser insertado por profesional capacitado como un obstetra. ',
      'en': '',
    },
    'oc6qeiqp': {
      'es':
          'Puede ser en los primeros 5 días del ciclo menstrual o en cualquier momento mientras no haya',
      'en': '',
    },
    'uptn3r23': {
      'es': 'Posibles efectos',
      'en': '',
    },
    '56tksfvp': {
      'es': 'Insertado por profesional capacitado.',
      'en': '',
    },
    'z5ab36lj': {
      'es':
          'Sangrado vaginal abundante se da en los primeros meses hay cambios en el sangrado.',
      'en': '',
    },
    'ijt4ea1x': {
      'es': 'Dolor abdominal o calambres (primeros 3-6 meses).',
      'en': '',
    },
    '06j4dhqn': {
      'es': 'Precauciones',
      'en': '',
    },
    '7114t7b8': {
      'es':
          'El primer control es a la semana luego al mes, finalmente cada año.',
      'en': '',
    },
    's3p514at': {
      'es': 'No te protege de las ITS',
      'en': '',
    },
    't3fux0hk': {
      'es': 'Home',
      'en': '',
    },
  },
  // MAdiuHormonal
  {
    'oqwt12ms': {
      'es': 'Función',
      'en': '',
    },
    'yoqxzqox': {
      'es':
          'Es un dispositivo que se introduce por la vagina y hace se espese el moco cervical también evita la ovulación tiene una duración de 5 años. ',
      'en': '',
    },
    'flow8lyr': {
      'es': 'Uso correcto',
      'en': '',
    },
    'clgovt42': {
      'es': 'Debe ser insertado por profesional capacitado como un obstetra. ',
      'en': '',
    },
    't7mye9sj': {
      'es':
          'Puede ser en los primeros 5 días del ciclo menstrual o en cualquier momento mientras no haya ',
      'en': '',
    },
    'n99r1vti': {
      'es':
          'La extracción del dispositivo también debe ser por un personal capacitado. ',
      'en': '',
    },
    'yidf0cs4': {
      'es': 'Posibles efectos',
      'en': '',
    },
    'jkwp406p': {
      'es':
          'Puede haber abundante sangrado o desparecer lo ideal es ir con el obstetra para una evaluación.',
      'en': '',
    },
    'd62s4jic': {
      'es':
          'Un descenso anormal y abundante debes ir con el obstetra para una nueva evaluación. ',
      'en': '',
    },
    '4a4dxo78': {
      'es': 'Precauciones',
      'en': '',
    },
    'xhyjkr8o': {
      'es': 'El primer control es depues de las 4 semanas luego de la regla. ',
      'en': '',
    },
    'bgua2dyn': {
      'es':
          'El siguiente control será a los 6 meses y luego  serán cada año o cuando cree que lo necesita. ',
      'en': '',
    },
    'bj94bjeo': {
      'es': 'No te protege de las ITS',
      'en': '',
    },
    'yszecmgs': {
      'es': 'Home',
      'en': '',
    },
  },
  // MAAOEContent
  {
    'gi7qjj26': {
      'es': 'Función',
      'en': '',
    },
    'k59wvu1t': {
      'es':
          'Previene embarazo en caso de emergencia.\nInhibe la ovulación y espesa el moco cervical.',
      'en': '',
    },
    'c75n4m0m': {
      'es': 'Como usar',
      'en': '',
    },
    '3gfgwxbu': {
      'es': 'Relaciones sexuales forzadas.',
      'en': '',
    },
    'wbqrcxo9': {
      'es': 'Rotura de condón.',
      'en': '',
    },
    'l8s4emnn': {
      'es': 'Expulsión de DIU.',
      'en': '',
    },
    '58nozbxl': {
      'es': 'Olvido de anticonceptivos regulares.',
      'en': '',
    },
    'z91ekmoa': {
      'es': 'Relaciones sin protección.',
      'en': '',
    },
    'm3xtpo7c': {
      'es': 'Tipos y uso',
      'en': '',
    },
    'c4sfotpj': {
      'es': 'Levonorgestrel 1.5mg: Dosis única.',
      'en': '',
    },
    'qdy1g983': {
      'es': 'Levonorgestrel 0.75mg: Dos dosis separadas por 12 horas.',
      'en': '',
    },
    'mnoqldkw': {
      'es': 'Posibles efectos',
      'en': '',
    },
    'fkd6gwte': {
      'es':
          'náuseas, vómitos, dolor de cabeza, mareos, cansancio y tensión mamaria.',
      'en': '',
    },
    'kpgd2w2n': {
      'es': 'Precauciones',
      'en': '',
    },
    'stqt2fll': {
      'es': 'No protege contra ITS.',
      'en': '',
    },
    'rcexq6kb': {
      'es': 'No usar de forma continua.',
      'en': '',
    },
    'sjwuh0a6': {
      'es': 'Verificar fecha de vencimiento y concentración.',
      'en': '',
    },
    '2c8jrrf9': {
      'es': 'Tomar lo antes posible para mayor efectividad.',
      'en': '',
    },
    'swp4yx08': {
      'es': 'Consultar ante irregularidades menstruales.',
      'en': '',
    },
    'tzaucrd9': {
      'es': 'Home',
      'en': '',
    },
  },
  // sexualidadList
  {
    'aqzge9xb': {
      'es': 'Share',
      'en': '',
    },
    'qqv03gt4': {
      'es': 'Yo me amo, soy muy valios@',
      'en': '',
    },
    'l8jsvfro': {
      'es': '',
      'en': '',
    },
    'cdicxcsk': {
      'es': 'Share',
      'en': '',
    },
    'zhqnk3os': {
      'es': 'Autocuidado',
      'en': '',
    },
    'xm5lri1a': {
      'es': '',
      'en': '',
    },
    'o5jpujtq': {
      'es': 'Share',
      'en': '',
    },
    '23wlvztb': {
      'es': 'Mi plan de vida',
      'en': '',
    },
    'suegunmc': {
      'es': '',
      'en': '',
    },
    'oymxfsvk': {
      'es': 'Share',
      'en': '',
    },
    'p0x4yvkw': {
      'es': 'Mis valores',
      'en': '',
    },
    'jh0e3h17': {
      'es': '',
      'en': '',
    },
    '0eenhpzn': {
      'es': 'Share',
      'en': '',
    },
    'd6hk1ixo': {
      'es': 'Violencia',
      'en': '',
    },
    '1mldg3w0': {
      'es': '',
      'en': '',
    },
    'l29ji6q3': {
      'es': 'Home',
      'en': '',
    },
  },
  // autoestima
  {
    '66rywwgq': {
      'es': 'El autoestima...',
      'en': '',
    },
    'tt94j7rs': {
      'es': 'Es la confianza en uno mismo ',
      'en': '',
    },
    '16bcuhwp': {
      'es': 'Es ser realistas y positivos',
      'en': '',
    },
    'ddhzy11v': {
      'es': 'Es descubrir nuestras habilidades y destrezas',
      'en': '',
    },
    'lr1p8cyz': {
      'es': 'Es aceptar que tenemos defectos y virtudes',
      'en': '',
    },
    'w1haiz1m': {
      'es': 'Desarrolla tu autoestima',
      'en': '',
    },
    'ucrd9muj': {
      'es': 'Asume que eres responsable de tus acciones',
      'en': '',
    },
    'qdr7sgou': {
      'es': 'Decir “No” a veces es necesario',
      'en': '',
    },
    'gn61ams3': {
      'es': 'Valora tu trabajo y el de los demás',
      'en': '',
    },
    'txdcxikc': {
      'es': 'Las cosas no siempre salen como uno lo espera no te sientas mal.',
      'en': '',
    },
    '5v1nmvfi': {
      'es': 'Todos los días son una oportunidad para mejorar como persona',
      'en': '',
    },
    '4s8tmsqx': {
      'es': 'Descubriendo pensamientos erróneos',
      'en': '',
    },
    '04l2bzlx': {
      'es':
          'Si te identificas con alguna de estas situaciones, los consejos te serán de mucha ayuda...\nEres así? ¡Nosotros te ayudamos!',
      'en': '',
    },
    'w75k4sa4': {
      'es': '¿Alguna vez hiciste esto?',
      'en': '',
    },
    'mtii9b15': {
      'es': 'Home',
      'en': '',
    },
  },
  // autocuidado
  {
    'd6kn08kd': {
      'es': 'El desarrollo de su personalidad',
      'en': '',
    },
    '799l8wfz': {
      'es': '“Una buena apariencia”',
      'en': '',
    },
    'aj4bpbiy': {
      'es': 'Piel',
      'en': '',
    },
    'zxvwhepb': {
      'es': 'Pelo',
      'en': '',
    },
    '6c4a4i6c': {
      'es': 'Ojos',
      'en': '',
    },
    '57418e0u': {
      'es': '¿Qué parte de mi cuerpo debo cuidar entonces?',
      'en': '',
    },
    'as9dethy': {
      'es': 'Si te ves bien, te sentirás bien y darás lo mejor de tí',
      'en': '',
    },
    'mjvgkyxp': {
      'es': 'Home',
      'en': '',
    },
  },
  // miPlanV
  {
    'abn1zgg6': {
      'es': 'Todo a su tiempo',
      'en': '',
    },
    'rjrdltu2': {
      'es': 'Menstruación',
      'en': '',
    },
    'qx5t1nqa': {
      'es': 'ver',
      'en': '',
    },
    'evm7dpnv': {
      'es': 'Eyaculación',
      'en': '',
    },
    'dt9oxk8k': {
      'es': 'ver',
      'en': '',
    },
    'js0roqrp': {
      'es': 'Conductas sexuales de riesgo',
      'en': '',
    },
    '22gomebj': {
      'es': 'ver',
      'en': '',
    },
    '1y87h3q7': {
      'es': 'Home',
      'en': '',
    },
  },
  // mvPage
  {
    'jmxp3abs': {
      'es': 'Información general',
      'en': '',
    },
    'g1rlg46s': {
      'es':
          'Es lo que nosotros creemos, evaluar cuidadosamente nuestro pasado y futuro, familia y amigos nos ayudarán a tomar buenas decisiones cuando seamos adultos. ENTONCES, LOS VALORES...',
      'en': '',
    },
    '0wps1emt': {
      'es': 'Son cualidades o ideas en las que crees firmemente',
      'en': '',
    },
    '10axinzq': {
      'es': 'Afectan tus decisiones',
      'en': '',
    },
    'ww7h36va': {
      'es':
          'Los obtienes de tu entorno (familia, iglesia, etc.) y son esos valores los que trasmitirás a tus hijos.',
      'en': '',
    },
    'pk0sc6tq': {
      'es': 'Se pueden aprender viendo las opiniones de los demás.',
      'en': '',
    },
    'nere37s9': {
      'es':
          'Se modifican con el tiempo, las experiencias y a medida que maduras.',
      'en': '',
    },
    'q0onkvxg': {
      'es': 'MIs emociones',
      'en': '',
    },
    'vbbdeczk': {
      'es':
          'Las emociones están presentes desde que nacemos, y son esas sensaciones que sentimos ante cualquier situación. ',
      'en': '',
    },
    'knr54r4t': {
      'es':
          'Por ejemplo cuando recibes una buena noticia estas muy muy feliz o cuando perdió tu equipo favorito estas triste o cuando te enojas porque tomaron tus cosas sin consentimiento. ',
      'en': '',
    },
    'zqvxtvrs': {
      'es':
          'En la adolescencia, las emociones cambian rápidamente, en un momento estas feliz y al otro estas molesto y es normal por todo el cambio que estas teniendo. ',
      'en': '',
    },
    '5q0bvtnn': {
      'es': 'Consejos',
      'en': '',
    },
    '2kcgynhk': {
      'es': 'Manten habitos saludables',
      'en': '',
    },
    'ob2nwx4v': {
      'es': 'Establece una rutina',
      'en': '',
    },
    '9xblhtcd': {
      'es': 'Está bien sentirse mal',
      'en': '',
    },
    'drqvle5n': {
      'es': 'Identifica tus emociones para aprender a gestionarlas',
      'en': '',
    },
    '47dg3mvm': {
      'es': 'Fluir y soltar',
      'en': '',
    },
    '6l8s82l6': {
      'es': 'Escucha tu cuerpo',
      'en': '',
    },
    'zbpddizl': {
      'es': 'No niegues tus emociones',
      'en': '',
    },
    '4yz3qjzs': {
      'es': 'Relájate',
      'en': '',
    },
    '4kxlp1rr': {
      'es': 'Cerrar',
      'en': '',
    },
    'g14nc3p1': {
      'es': '¿Como me contagio?',
      'en': '',
    },
    'gp8e2y00': {
      'es':
          'Si tienes relaciones sexuales sin preservativo,\nSexo anal sin preservativo,\nSexo oral sin preservativo masculino,\nCompartes juguetes sexuales sin limpiarlos o desinfectarlos,\nConsumes leche materna de una persona infectada.',
      'en': '',
    },
    'hakf50g1': {
      'es': '',
      'en': '',
    },
    'i9cwhq9k': {
      'es': '',
      'en': '',
    },
    'qvliqgez': {
      'es': '¿y si solo doy besoso?',
      'en': '',
    },
    'nis79xlp': {
      'es':
          'Sin tener relaciones sexuales; los abrazos; masajes; frotación cuerpo a cuerpo; masturbación; fantasías; besos secos; no compartir juguetes sexuales; baño caliente de tina en pareja; ducharse juntos; sauna. No te contagian de una ITS.',
      'en': '',
    },
    '6k6o663v': {
      'es': '¿Cuáles son estas ITS?',
      'en': '',
    },
    'w0dq9o6s': {
      'es':
          'Gonorrea\nClamidiasis\nSífilis\nVaginosis bacteriana\nHerpes\nVPH\nVIH\nCandidiasis vulvovaginal\nTricomoniasis',
      'en': '',
    },
    'jj9r74nj': {
      'es': '¿Me voy a morir?',
      'en': '',
    },
    '8rgxr1lb': {
      'es':
          'NO lo ideal es que reconozcas cualquiera de estos síntomas a tiempo y te dirijas a tu posta o centro de salud para identificar la causa y darte el tratamiento ideal.',
      'en': '',
    },
    'ji3ph2c6': {
      'es': '¿Como protegerse de la ITS?',
      'en': '',
    },
    'msk1mcqp': {
      'es':
          'Usar preservativos (masculino o femenino) al tener relaciones sexuales vaginales, anales u orales.',
      'en': '',
    },
    's93wizru': {
      'es':
          'Es importante hablar con la pareja sexual acerca de su pasado sexual y del uso de drogas.',
      'en': '',
    },
    'nno3vyxj': {
      'es':
          'Aprender a reconocer los indicios y síntomas de una ITS. Si notas un síntoma que te preocupa, ve a tu centro de salud o centro de ITS a solicitar una revisión.',
      'en': '',
    },
    'u5o10bnz': {
      'es':
          'Si tienes una ITS, la persona/s que han tenido o tienen contacto sexual contigo es conveniente que acudan al centro para ser revisadas y recibir tratamiento si se considerara necesario.',
      'en': '',
    },
    'v4rotayv': {
      'es': '¿Y si tengo una its me voy a curar?',
      'en': '',
    },
    '65sx24s7': {
      'es':
          'Si, si estas tomando el tratamiento que te han dado si te vas a curar ahora tu pareja también tiene que tratarse para no volver a infectarse. ',
      'en': '',
    },
    'mr2lu92r': {
      'es': 'Ver mas sobre el tema presione aqui',
      'en': '',
    },
    'qbdu7x1e': {
      'es': 'Home',
      'en': '',
    },
  },
  // violenciaPage
  {
    'blux555r': {
      'es':
          'Celos excesivos, insultos, te compara con otras personas, empujar, golpear, arañar, morder, gritar, obliga a tener relaciones sexuales, obliga a enviar fotos intimas, amenaza. ',
      'en': '',
    },
    'odlksuwa': {
      'es': '¿Cómo saber si mi pareja es violenta? ¡¡¡¡¡Hay señales!!!!!',
      'en': '',
    },
    'y6u5l2pd': {
      'es': 'ver',
      'en': '',
    },
    'j0t518mo': {
      'es': '¿Como se si sufro de violencia?',
      'en': '',
    },
    'nqz5t1qx': {
      'es': 'ver',
      'en': '',
    },
    'lguhh2d8': {
      'es': 'Ahora ya sé, pero ¿qué hago? ',
      'en': '',
    },
    '0pi06lmh': {
      'es': 'ver',
      'en': '',
    },
    'dk1r3moy': {
      'es': 'Conozco a alguien que sufre de violencia ¿como ayudo?',
      'en': '',
    },
    '9gvb3o1k': {
      'es': 'ver',
      'en': '',
    },
    'rjnfdr1v': {
      'es': 'Home',
      'en': '',
    },
  },
  // dsaContentPageAR
  {
    '9eg9yd6o': {
      'es': 'Aparato reproductor',
      'en': '',
    },
    'd4tcgyka': {
      'es':
          '¡¡La adolescencia no se da de un solo porrazo!! Tiene etapas que seguramente estás atravesando. ',
      'en': '',
    },
    '5yq6tov8': {
      'es':
          'Primero aprendamos lo básico, las partes principales de nuestro aparato reproductor.',
      'en': '',
    },
    '2ux4g4my': {
      'es': 'Etapas',
      'en': '',
    },
    'zhx8mdjh': {
      'es': 'Pubertad',
      'en': '',
    },
    'aaamtf7w': {
      'es':
          'Proceso Biológico del que se encarga una glándula de nuestro cuerpo.\nLa hipófisis libera hormonas en la sangre y esta produce cambios en la mujer y el varón.',
      'en': '',
    },
    'paufhxkl': {
      'es': 'Ver mas',
      'en': '',
    },
    '220et3cf': {
      'es': 'Adolecencia',
      'en': '',
    },
    'he2gsiqe': {
      'es': 'Etapa de paso de la niñez a la adultez',
      'en': '',
    },
    'blo3gshp': {
      'es': 'Ver mas',
      'en': '',
    },
    'nvtyr2tu': {
      'es': 'Home',
      'en': '',
    },
  },
  // dsaContentPageARpubertad
  {
    '5xd8vukt': {
      'es': 'Masculino',
      'en': '',
    },
    'saee8oxy': {
      'es': 'Inicia la producción de espermatozoides.',
      'en': '',
    },
    'bhuss6wi': {
      'es': 'Observa la',
      'en': '',
    },
    'rg7ryaew': {
      'es': 'eyaculación',
      'en': '',
    },
    'lg5pa0gb': {
      'es': 'por primera vez.',
      'en': '',
    },
    'z4l7xouz': {
      'es': 'Feminino',
      'en': '',
    },
    'u3i9evyv': {
      'es': 'Inicia la producción de óvulos.',
      'en': '',
    },
    'h5xpfqh0': {
      'es': 'Observa la',
      'en': '',
    },
    'qeyumhyg': {
      'es': 'menstruación',
      'en': '',
    },
    'zagk6awp': {
      'es': 'por primera vez.',
      'en': '',
    },
    'y8uebhey': {
      'es': 'Home',
      'en': '',
    },
  },
  // dsaContentPageARadolecente
  {
    'c6ntikj7': {
      'es': 'Cambios Secundarios',
      'en': '',
    },
    'mxia9z16': {
      'es': 'Masculino',
      'en': '',
    },
    'mrdk93x7': {
      'es':
          'La hormona masculina, la testosterona, se libera de los testículos y provoca los siguientes cambios: ',
      'en': '',
    },
    'y3wtbkh4': {
      'es': 'Ver ',
      'en': '',
    },
    '3gdak6ot': {
      'es': 'Crecimiento óseo repentino, tu talla aumenta',
      'en': '',
    },
    'byyqu6fm': {
      'es':
          'Desarrollo muscular, tus hombros y tu espalda o se hacen más ancho',
      'en': '',
    },
    'rxz1x66s': {
      'es': 'Aumenta el espesor de tu piel',
      'en': '',
    },
    'w7xbq889': {
      'es': 'Posible aparición de acné',
      'en': '',
    },
    'w8cpxcyl': {
      'es': 'Engrosamiento de la voz',
      'en': '',
    },
    'wm2b2fiz': {
      'es':
          'Aparece tu primera eyaculación, puedes experimentar sueños húmedos (eyaculaciones nocturnas).',
      'en': '',
    },
    'r3wvx6qv': {
      'es':
          'Crece tu vello en axilas, barba, pecho, piernas, brazos y pubis. Aparece tu bigote',
      'en': '',
    },
    'o2z476uw': {
      'es':
          'El tamaño de tus genitales aumenta, las erecciones son más frecuencia y a veces espontáneas. ',
      'en': '',
    },
    '8lsog9r1': {
      'es': 'Tu sudor tiene un olor más fuerte',
      'en': '',
    },
    '2h1h1lo1': {
      'es': 'Feminino',
      'en': '',
    },
    'zthe0vpp': {
      'es':
          'Las hormonas femeninas, progesterona y estrógenos, se liberan de los ovarios generando los siguientes cambios: ',
      'en': '',
    },
    'urwd3ow3': {
      'es': 'Ver',
      'en': '',
    },
    'ox73l3go': {
      'es': 'Redondeamiento de la cadera y los muslos',
      'en': '',
    },
    '08k7pbx6': {
      'es':
          'Aparición de vello en las axilas y vello suave en el pubis en forma un triángulo invertido',
      'en': '',
    },
    'nhuelw56': {
      'es': 'Aumento del tamaño de las mamas y de los botones mamarios',
      'en': '',
    },
    '3re8bwg8': {
      'es': 'Olor corporal en axilas, pies y ospis',
      'en': '',
    },
    'pqyxydjp': {
      'es': 'En ocasiones aparecen granitos (acné) en la cara, pecho y espalda',
      'en': '',
    },
    'qaixm8r4': {
      'es': 'Home',
      'en': '',
    },
  },
  // igener
  {
    'al11j26h': {
      'es': 'Vocabulario ',
      'en': '',
    },
    'd3cgaog8': {
      'es':
          'Sexo: diferencias biológicas hombre y mujer ES DECIR, su composición genética, hormonal, anatómica y fisiológica ',
      'en': '',
    },
    'gt16r7xe': {
      'es': 'ver mas',
      'en': '',
    },
    'hv0u2ohf': {
      'es':
          'Género: Es la construcción social de como deber ser un hombre y una mujer, por el mismo hecho de serlo',
      'en': '',
    },
    'wj99zjoq': {
      'es':
          'Orientación sexual: La capacidad de sentir atracción emocional, afectiva y sexual por personas de un género diferente, de su mismo género, o de más de un género al suyo, así como mantener relaciones íntimas y sexuales con estas personas.',
      'en': '',
    },
    'wnddobag': {
      'es':
          'HETEROSEXUALIDAD:  Atraccion afectivo erotica hacia las personas del sexo opuesto',
      'en': '',
    },
    'oiqy5p90': {
      'es':
          'HOMOSEXUALIDAD: Personas que manifiestan atracción sexual hacia personas de su mismo genero',
      'en': '',
    },
    '9kfxk46a': {
      'es':
          'BISEXUALIDAD Personas que sienten atracción hacia personas de ambos sexos.',
      'en': '',
    },
    'vavqpvfa': {
      'es':
          'ASEXUALIDAD: Falta de algún tipo de orientación sexual, el individuo no manifiesta atracción sexual.',
      'en': '',
    },
    'rez8w4ol': {
      'es':
          'PANSEXUALIDAD O POLISEXUALIDAD Atraccion por personas de ambos sexos biológicos y varias identidades sexuales',
      'en': '',
    },
    'wscbhqes': {
      'es':
          'DEMISEXUALIDAD: atracción sexual hacia personas con las que han desarrollado lazos emocionales.',
      'en': '',
    },
    'nntz0nd5': {
      'es': 'Ejemplos',
      'en': '',
    },
    'a98f08lu': {
      'es': 'CISGENERO',
      'en': '',
    },
    '56xkqspq': {
      'es': 'Te identificas con algún género establecido por la sociedad.',
      'en': '',
    },
    '4z0vvpol': {
      'es': 'TRANSGÉNERO',
      'en': '',
    },
    'w4f6bl6h': {
      'es':
          'Tu identidad de género no corresponde con lo que los demás esperan a tu género.',
      'en': '',
    },
    'bhyw0e2i': {
      'es': 'QUEER',
      'en': '',
    },
    'gd9b5azp': {
      'es':
          'Sueles rechazar el género socialmente asignado a tu sexo de nacimiento o no te identificas con ninguno.',
      'en': '',
    },
    '5x6lebsd': {
      'es': 'Cerrar',
      'en': '',
    },
    'jhswnuau': {
      'es': '¿Como me contagio?',
      'en': '',
    },
    '8dqsip9e': {
      'es':
          'Si tienes relaciones sexuales sin preservativo,\nSexo anal sin preservativo,\nSexo oral sin preservativo masculino,\nCompartes juguetes sexuales sin limpiarlos o desinfectarlos,\nConsumes leche materna de una persona infectada.',
      'en': '',
    },
    'beiu1ggo': {
      'es': '',
      'en': '',
    },
    'cohee0ie': {
      'es': '',
      'en': '',
    },
    '141sojha': {
      'es': '¿y si solo doy besoso?',
      'en': '',
    },
    '8wwetwqk': {
      'es':
          'Sin tener relaciones sexuales; los abrazos; masajes; frotación cuerpo a cuerpo; masturbación; fantasías; besos secos; no compartir juguetes sexuales; baño caliente de tina en pareja; ducharse juntos; sauna. No te contagian de una ITS.',
      'en': '',
    },
    '1i39xokq': {
      'es': '¿Cuáles son estas ITS?',
      'en': '',
    },
    'tarjdwvq': {
      'es':
          'Gonorrea\nClamidiasis\nSífilis\nVaginosis bacteriana\nHerpes\nVPH\nVIH\nCandidiasis vulvovaginal\nTricomoniasis',
      'en': '',
    },
    'osd3zfbc': {
      'es': '¿Me voy a morir?',
      'en': '',
    },
    '1f0p25sb': {
      'es':
          'NO lo ideal es que reconozcas cualquiera de estos síntomas a tiempo y te dirijas a tu posta o centro de salud para identificar la causa y darte el tratamiento ideal.',
      'en': '',
    },
    'ejnl65sp': {
      'es': '¿Como protegerse de la ITS?',
      'en': '',
    },
    '5cy0v4ow': {
      'es':
          'Usar preservativos (masculino o femenino) al tener relaciones sexuales vaginales, anales u orales.',
      'en': '',
    },
    'u71topwr': {
      'es':
          'Es importante hablar con la pareja sexual acerca de su pasado sexual y del uso de drogas.',
      'en': '',
    },
    'g3lkupsz': {
      'es':
          'Aprender a reconocer los indicios y síntomas de una ITS. Si notas un síntoma que te preocupa, ve a tu centro de salud o centro de ITS a solicitar una revisión.',
      'en': '',
    },
    'oiedi8o0': {
      'es':
          'Si tienes una ITS, la persona/s que han tenido o tienen contacto sexual contigo es conveniente que acudan al centro para ser revisadas y recibir tratamiento si se considerara necesario.',
      'en': '',
    },
    '02xbmx3v': {
      'es': '¿Y si tengo una its me voy a curar?',
      'en': '',
    },
    'tscqyxju': {
      'es':
          'Si, si estas tomando el tratamiento que te han dado si te vas a curar ahora tu pareja también tiene que tratarse para no volver a infectarse. ',
      'en': '',
    },
    '57u4f29p': {
      'es': 'Ver mas sobre el tema presione aqui',
      'en': '',
    },
    '835m82l1': {
      'es': 'Home',
      'en': '',
    },
  },
  // ssrITSContentPage
  {
    '4nhgb9jw': {
      'es': 'ITS',
      'en': '',
    },
    'vgf00n7t': {
      'es': 'Hablemos de ITS',
      'en': '',
    },
    'yxh1y5uo': {
      'es':
          'Son infecciones de transmisión sexual que tienen diferentes orígenes, se transmiten a través de las relaciones sexuales. ',
      'en': '',
    },
    'bvuhkud4': {
      'es': '¿Como me contagio?',
      'en': '',
    },
    'pf52k3f5': {
      'es': '¿Que actividades no contagian?',
      'en': '',
    },
    'hw3wo4rp': {
      'es': '¿Cuales son estas ITS?',
      'en': '',
    },
    'luha7ljj': {
      'es': '¿Me voy a morir si me contagio?',
      'en': '',
    },
    '1b94oy3b': {
      'es': '¿Tiene cura la ITS?',
      'en': '',
    },
    'aytxhnd3': {
      'es': 'TIpos de ITS',
      'en': '',
    },
    'ql2q0cf7': {
      'es': 'Gonorrea',
      'en': '',
    },
    'ier59oeq': {
      'es':
          'La gonorrea es una infección de transmisión sexual (ITS) causada por la bacteria Neisseria gonorrhoeae.',
      'en': '',
    },
    '7ozlh47j': {
      'es': 'Ver mas',
      'en': '',
    },
    'l23xwq19': {
      'es': 'Clamidiasis',
      'en': '',
    },
    'nwz4d5ra': {
      'es':
          'La clamidiasis, también conocida como clamidia, es una infección bacteriana de transmisión sexual (ETS) causada por la bacteria Chlamydia trachomatis.',
      'en': '',
    },
    'kjq6flvb': {
      'es': 'Ver mas',
      'en': '',
    },
    'r71vdb5j': {
      'es': 'Sifilis',
      'en': '',
    },
    '9sn57ex4': {
      'es':
          'La sífilis es una infección de transmisión sexual (ITS) bacteriana que se puede prevenir y curar.',
      'en': '',
    },
    'ilt25d2f': {
      'es': 'Ver mas',
      'en': '',
    },
    'wljtbl59': {
      'es': 'Vaginosis bacteriana',
      'en': '',
    },
    'dubnwbc0': {
      'es':
          'La vaginosis bacteriana es una enfermedad frecuente que aparece cuando se altera el equilibrio normal de los microorganismos de la vagina.',
      'en': '',
    },
    'm45o212j': {
      'es': 'Ver mas',
      'en': '',
    },
    'zwv0n854': {
      'es': 'Herpes',
      'en': '',
    },
    'dettkre0': {
      'es':
          'El herpes es una infección causada por el virus del herpes simple (VHS)',
      'en': '',
    },
    'vduthhov': {
      'es': 'Ver mas',
      'en': '',
    },
    'yasxwnxn': {
      'es': 'VPH',
      'en': '',
    },
    'sut9gtjm': {
      'es':
          'El virus del papiloma de humano es una de las infecciones de transmisión sexual más frecuentes en todo el mundo.',
      'en': '',
    },
    '7frs494x': {
      'es': 'Ver mas',
      'en': '',
    },
    'b3omtvmb': {
      'es': 'VIH',
      'en': '',
    },
    '7mcys0jz': {
      'es':
          'La infección por el VIH ataca el sistema inmunitario, y el síndrome de inmunodeficiencia adquirida (sida) es la fase más avanzada de la enfermedad.',
      'en': '',
    },
    '31iwg8ug': {
      'es': 'Ver mas',
      'en': '',
    },
    '3gop6cb9': {
      'es': 'Candidiasis Vulvovaginal',
      'en': '',
    },
    'drpg50x4': {
      'es':
          'La candidiasis vulvovaginal (VVC) es una infección vaginal por hongos causada por el crecimiento excesivo del hongo Candida albicans.',
      'en': '',
    },
    'lnxcsd5k': {
      'es': 'Ver mas',
      'en': '',
    },
    'vjr10t7k': {
      'es': 'Tricomoniasis',
      'en': '',
    },
    '585l4p50': {
      'es':
          'La tricomoniasis es una infección de transmisión sexual (ITS) causada por el parásito protozoario Trichomonas vaginalis.',
      'en': '',
    },
    '0pc4i7p8': {
      'es': 'Ver mas',
      'en': '',
    },
    'kay1g8g8': {
      'es': 'Cerrar',
      'en': '',
    },
    'bzgua5ka': {
      'es': '¿Como me contagio?',
      'en': '',
    },
    'vk1c9zcf': {
      'es': 'Si tienes relaciones sexuales sin preservativo(anal. oral),',
      'en': '',
    },
    '08dxdi5x': {
      'es': '',
      'en': '',
    },
    'zy6i8xme': {
      'es': '',
      'en': '',
    },
    'gzs2b3h5': {
      'es': '¿y si solo doy besoso?',
      'en': '',
    },
    'uc1w87x2': {
      'es':
          'Aunque es posible contagiarse de algunas ITS a través de un beso, el riesgo es mucho menor que a través de otras prácticas sexuales',
      'en': '',
    },
    'h3m4gkw5': {
      'es': '¿Cuáles son estas ITS?',
      'en': '',
    },
    'avf5tm8l': {
      'es':
          'Gonorrea\nClamidiasis\nSífilis\nVaginosis bacteriana\nHerpes\nVPH\nVIH\nCandidiasis vulvovaginal\nTricomoniasis',
      'en': '',
    },
    'j72vvh2x': {
      'es': '¿Me voy a morir?',
      'en': '',
    },
    'ouvzxhvf': {
      'es':
          'NO lo ideal es que reconozcas cualquiera de estos síntomas a tiempo y te dirijas a tu posta o centro de salud para identificar la causa y darte el tratamiento ideal.',
      'en': '',
    },
    'emtw43kz': {
      'es': '¿Como protegerse de la ITS?',
      'en': '',
    },
    'oqh4gspk': {
      'es':
          'Usar preservativos (masculino o femenino) al tener relaciones sexuales vaginales, anales u orales.',
      'en': '',
    },
    'aij79h3t': {
      'es':
          'Es importante hablar con la pareja sexual acerca de su pasado sexual y del uso de drogas.',
      'en': '',
    },
    'ta0b2hi5': {
      'es':
          'Aprender a reconocer los indicios y síntomas de una ITS. Si notas un síntoma que te preocupa, ve a tu centro de salud o centro de ITS a solicitar una revisión.',
      'en': '',
    },
    'xn5bg4lk': {
      'es':
          'Si tienes una ITS, la persona/s que han tenido o tienen contacto sexual contigo es conveniente que acudan al centro para ser revisadas y recibir tratamiento si se considerara necesario.',
      'en': '',
    },
    'gx6l6nko': {
      'es': '¿Y si tengo una its me voy a curar?',
      'en': '',
    },
    '2711ixzn': {
      'es':
          'Si, si estas tomando el tratamiento que te han dado si te vas a curar ahora tu pareja también tiene que tratarse para no volver a infectarse. ',
      'en': '',
    },
    'vvajkye2': {
      'es': 'Ver mas sobre el tema presione aqui',
      'en': '',
    },
    'vplyesx9': {
      'es': 'Compartes juguetes sexuales sin limpiarlos o desinfectarlos',
      'en': '',
    },
    'sql9c973': {
      'es': 'Consumes leche materna de una persona infectada',
      'en': '',
    },
    'yf7zxbsv': {
      'es': 'Home',
      'en': '',
    },
  },
  // verifiCompo
  {
    '307njmmq': {
      'es': 'Verificación',
      'en': '',
    },
    'eehg48m4': {
      'es':
          'Su correo no ha sido verificado, por favor revise la bandeja de su correo e ingrese en el enlace que se le envio',
      'en': '',
    },
    'obcx82o5': {
      'es': 'Verificar',
      'en': '',
    },
  },
  // btnenviado
  {
    'qs85e3ok': {
      'es': 'Verificación',
      'en': '',
    },
    'm3rn1xx3': {
      'es':
          'Le hemos enviado un link al correo proporcionado por favor presione el link para la verificación .....',
      'en': '',
    },
    '12h7bn72': {
      'es': 'Verificar',
      'en': '',
    },
  },
  // addEvent
  {
    'xh0tpwm0': {
      'es': 'Agregar Testimonio',
      'en': '',
    },
    '7wfo5pa9': {
      'es': 'Titulo',
      'en': '',
    },
    'ksrmjz8m': {
      'es': 'Option 1',
      'en': '',
    },
    'qm8plylb': {
      'es': 'Temas',
      'en': '',
    },
    'qcdd09o9': {
      'es': 'Search for an item...',
      'en': '',
    },
    '17e5i747': {
      'es': 'Descripcion',
      'en': '',
    },
    's86u0dmg': {
      'es': 'Escribe aqui....',
      'en': '',
    },
    'v2vj08kb': {
      'es': 'Guardar',
      'en': '',
    },
  },
  // editEvent
  {
    'sq8lhtah': {
      'es': 'Editar Testimonio',
      'en': '',
    },
    'o2dz7xub': {
      'es': 'Option 1',
      'en': '',
    },
    'pa6xoavn': {
      'es': 'Temas',
      'en': '',
    },
    'q3jee596': {
      'es': 'Search for an item...',
      'en': '',
    },
    'n2qj8wat': {
      'es': 'Descripcion',
      'en': '',
    },
    'ogvqjncw': {
      'es': 'Escribe aqui....',
      'en': '',
    },
    'd3tc8dvw': {
      'es': 'Guardar',
      'en': '',
    },
  },
  // compDelete
  {
    'a7ajtffn': {
      'es': 'Eliminar',
      'en': '',
    },
    '28hq4o0i': {
      'es': 'Cancelar',
      'en': '',
    },
  },
  // editProfileName
  {
    'ncwfilcs': {
      'es': 'Editar nombres',
      'en': '',
    },
    '26xd5jd6': {
      'es': 'Nombres',
      'en': '',
    },
    'z1rn9mcv': {
      'es': 'Actualizar',
      'en': '',
    },
  },
  // editProfileDni
  {
    '2h3ighoq': {
      'es': 'Editar DNI',
      'en': '',
    },
    'hnzmsg9c': {
      'es': 'DNI',
      'en': '',
    },
    'gfwwptd5': {
      'es': 'Actualizar',
      'en': '',
    },
  },
  // editProfileEdad
  {
    'z8dcamfm': {
      'es': 'Editar edad',
      'en': '',
    },
    'ebfd8t32': {
      'es': 'Edad',
      'en': '',
    },
    'h00grlon': {
      'es': 'Actualizar',
      'en': '',
    },
  },
  // editProfileGenero
  {
    '7lknesk8': {
      'es': 'Editar genero',
      'en': '',
    },
    '3zub9ynl': {
      'es': 'MASCULINO',
      'en': '',
    },
    'lgecibh2': {
      'es': 'FEMENINO',
      'en': '',
    },
    '9kf64qm7': {
      'es': 'Genero',
      'en': '',
    },
    'wm4qn32m': {
      'es': 'Search for an item...',
      'en': '',
    },
    'qqowyp2q': {
      'es': 'Actualizar',
      'en': '',
    },
  },
  // editProfileNumero
  {
    'dckabr8i': {
      'es': 'Editar numero',
      'en': '',
    },
    'tkcux7vq': {
      'es': '#Número',
      'en': '',
    },
    '4q0uy3cv': {
      'es': 'Actualizar',
      'en': '',
    },
  },
  // editProfilePass
  {
    'ovkftzo3': {
      'es': 'Editar contraseña',
      'en': '',
    },
    'mdzd0vzg': {
      'es': 'Contraseña',
      'en': '',
    },
    'lam65e9l': {
      'es': 'Confirmar contraseña',
      'en': '',
    },
    'ojmaggj9': {
      'es': 'Actualizar',
      'en': '',
    },
  },
  // addEvent1
  {
    'gv7u6qhq': {
      'es': '¿Como me contagio?',
      'en': '',
    },
    'wi6dh4j6': {
      'es': 'Si tienes relaciones sexuales sin preservativo.',
      'en': '',
    },
    'wyanc6mi': {
      'es': '',
      'en': '',
    },
    '98cg5ach': {
      'es': 'Sexo anal sin preservativo',
      'en': '',
    },
    '9j7uiyro': {
      'es': '',
      'en': '',
    },
    '6fjn11br': {
      'es': 'Sexo oral sin preservativo masculino',
      'en': '',
    },
    'e2ywx4az': {
      'es': '',
      'en': '',
    },
    '3ovt6yvn': {
      'es': 'Compartes juguetes sexuales sin limpiarlos o desinfectarlos ',
      'en': '',
    },
    'roko0ac9': {
      'es': '',
      'en': '',
    },
    '3934doc5': {
      'es': 'Consumes leche materna de una persona infectada. ',
      'en': '',
    },
    '4ttobqs4': {
      'es': '',
      'en': '',
    },
  },
  // addEvent3
  {
    '16olxa9r': {
      'es': '¿Como me contagio?',
      'en': '',
    },
    'lt6pgdg7': {
      'es': 'Gonorrea\n',
      'en': '',
    },
    'phavcj3t': {
      'es': '',
      'en': '',
    },
    'pdf86sxg': {
      'es': 'Clamidiasis\n',
      'en': '',
    },
    'rk67w9ds': {
      'es': '',
      'en': '',
    },
    'ckitfc3c': {
      'es': 'Sífilis\n',
      'en': '',
    },
    '33cjrljv': {
      'es': '',
      'en': '',
    },
    '39fhy13d': {
      'es': 'Vaginosis bacteriana\n',
      'en': '',
    },
    'dyeom2nh': {
      'es': '',
      'en': '',
    },
    '2424e8bd': {
      'es': 'Herpes\n',
      'en': '',
    },
    's8crsxqh': {
      'es': '',
      'en': '',
    },
    'a51dozvd': {
      'es': 'VPH\n',
      'en': '',
    },
    'nckgmu8d': {
      'es': '',
      'en': '',
    },
    't56yuuj4': {
      'es': 'VIH\n',
      'en': '',
    },
    'nskb8hik': {
      'es': '',
      'en': '',
    },
    'xlpw2uuh': {
      'es': 'Candidiasis vulvovaginal\n',
      'en': '',
    },
    'tjs83ld6': {
      'es': '',
      'en': '',
    },
    '6qmqre9w': {
      'es': 'Tricomoniasis\n',
      'en': '',
    },
    'gmk0nodg': {
      'es': '',
      'en': '',
    },
  },
  // addEvent4
  {
    'ttyzw9o0': {
      'es': '¿Voy a morir si me contagio?',
      'en': '',
    },
    'h1i71brt': {
      'es':
          'NO lo ideal es que reconozcas cualquiera de estos síntomas a tiempo y te dirijas a tu posta o centro de salud para identificar la causa y darte el tratamiento ideal. ',
      'en': '',
    },
    'wmsiehnc': {
      'es': '',
      'en': '',
    },
  },
  // addEvent5
  {
    '1695pjer': {
      'es': '¿Como protejerse de la ITS?',
      'en': '',
    },
    '693ey6cq': {
      'es':
          'Usar preservativos (masculino o femenino) al tener relaciones sexuales vaginales, anales u orales.',
      'en': '',
    },
    'isyeye6n': {
      'es': '',
      'en': '',
    },
    'l9aaktzm': {
      'es':
          'Es importante hablar con la pareja sexual acerca de su pasado sexual y del uso de drogas.',
      'en': '',
    },
    '41ypg4gm': {
      'es': '',
      'en': '',
    },
    'uwls1fbj': {
      'es':
          'Aprender a reconocer los indicios y síntomas de una ITS. Si notas un síntoma que te preocupa, ve a tu centro de salud o centro de ITS a solicitar una revisión.',
      'en': '',
    },
    'p200u806': {
      'es': '',
      'en': '',
    },
    '89sfsn3d': {
      'es':
          'Si tienes una ITS, la persona/s que han tenido o tienen contacto sexual contigo es conveniente que acudan al centro para ser revisadas y recibir tratamiento si se considerara necesario.',
      'en': '',
    },
    'vh1q34pb': {
      'es': '',
      'en': '',
    },
  },
  // eventConsejos
  {
    'dfrzeeqv': {
      'es': 'Sacar conclusiones usando frases como',
      'en': '',
    },
    'zzlfzhu8': {
      'es': 'Todas',
      'en': '',
    },
    '8nt4ddig': {
      'es': 'Siempre',
      'en': '',
    },
    'ecfrncp7': {
      'es': 'Nadie',
      'en': '',
    },
    'i992hhdb': {
      'es': 'Consejo',
      'en': '',
    },
    'k36qkf3z': {
      'es':
          'Recuerda que cada persona y situación son únicos así que mantén tu mente abierta y busca diferentes perspectivas.',
      'en': '',
    },
    '9mmbnsq3': {
      'es': 'Afirmar algo diciendo',
      'en': '',
    },
    '8yyq9e89': {
      'es': 'Soy un...',
      'en': '',
    },
    '0e1y7ro8': {
      'es': 'Soy muy...',
      'en': '',
    },
    'bd2qy3as': {
      'es': 'Consejo',
      'en': '',
    },
    'zoy1rlfm': {
      'es':
          'No juzgues rápidamente, tómate el tiempo de ser más comprensivo contigo y con los demás.',
      'en': '',
    },
    'wtvm9rsi': {
      'es': 'Ver solo lo negativo de las cosas y decir...',
      'en': '',
    },
    'dhyry771': {
      'es': 'Esto está mal, y esto... y esto...',
      'en': '',
    },
    'nct169u9': {
      'es': 'Si esto está mal, esto... y esto... también.',
      'en': '',
    },
    'om7u0z5l': {
      'es': 'Consejo',
      'en': '',
    },
    'rnruwpc0': {
      'es':
          'Cambia la negatividad y sé más agradecido, busca lo positivo de las cosas, no todo lo malo es tan malo; ni lo bueno, tan bueno.',
      'en': '',
    },
    'dfy9ys46': {
      'es': 'Ver las cosas solo como buenas malas',
      'en': '',
    },
    'uuj9bqin': {
      'es': 'Soy totalmente...',
      'en': '',
    },
    'majpk34k': {
      'es': 'Es totalmente...',
      'en': '',
    },
    'd57g96ed': {
      'es': 'Consejo',
      'en': '',
    },
    'jmpgur7r': {
      'es':
          'Las situaciones de la vida son tan complejas; no se reducen en buenas o malas, busca el equilibrio ya que todo tiene aspectos positivos y negativos.',
      'en': '',
    },
    '1rbhmvfc': {
      'es':
          'Creer que todo lo que dicen o sucede, tiene que ver con nosotros\n',
      'en': '',
    },
    'fidjmqu4': {
      'es': 'Seguro se refiere a mí.',
      'en': '',
    },
    'y40s3945': {
      'es': 'Seguro está hablando de mí.',
      'en': '',
    },
    'uulae70f': {
      'es': 'Consejo',
      'en': '',
    },
    'n17oi5pw': {
      'es':
          'Reflexiona si evidentemente la situación tiene que ver contigo o solo es una interpretación tuya, mira las cosas desde la perspectiva de los demás y expresa tus sentimientos asertivamente.',
      'en': '',
    },
    'ob1yqfsm': {
      'es': 'Pensar que todo está bajo nuestro control',
      'en': '',
    },
    'rur7wwm8': {
      'es': 'Puedo con todo',
      'en': '',
    },
    'uwwczfy9': {
      'es': 'Consejo',
      'en': '',
    },
    '2jdpqm0a': {
      'es':
          'Es importante que aprendas a dejar ir y reconocer que no todo está bajo tu control y que hay situaciones que no lo puedes manejar solo. Si hay algo que puedes hacer en grupo, delega funciones.',
      'en': '',
    },
    'ekivnjpl': {
      'es': 'Pensar que nada está bajo nuestro control',
      'en': '',
    },
    'w6gbkoeb': {
      'es': 'No puedo hacer nada, que pase lo que tenga que pasar.',
      'en': '',
    },
    '1qoyocph': {
      'es': 'Consejo',
      'en': '',
    },
    '955uex4a': {
      'es':
          'Identifica lo que sí puedes controlar, hay aspectos en tu vida y situaciones en las que, si puedes influir, fija metas a corto plazo que sean realistas y alcanzables.',
      'en': '',
    },
    '10gsrsyy': {
      'es': 'Usar las emociones o prejuicios para valorar la realidad',
      'en': '',
    },
    'jkor4l6q': {
      'es': 'Me siento culpable, así que debo de haber hecho algo mal.',
      'en': '',
    },
    '8dqamjm0': {
      'es':
          'Me siento desesperado, para mí debe ser imposible resolver problemas.',
      'en': '',
    },
    '1584iwzf': {
      'es': 'Consejo',
      'en': '',
    },
    '9zz2ube5': {
      'es':
          'Es importante que reconozcas como tus emociones afectan la forma en que percibes las situaciones, separa tus emociones y prejuicios para pensar objetivamente.',
      'en': '',
    },
    'mtq7qucr': {
      'es': 'Sentirte culpable sin serlo realmente',
      'en': '',
    },
    '2i68qe15': {
      'es': 'Siempre lo estropeo todo',
      'en': '',
    },
    'ewxppwyv': {
      'es': 'Lo tenia que haber evitado.',
      'en': '',
    },
    '9w9obp4g': {
      'es': 'Consejo',
      'en': '',
    },
    '3umtjxky': {
      'es':
          'Reflexiona y analiza si eres responsable realmente, sé más compasivo contigo, hay cosas que no puede controlar, perdónate y acepta que el pasado ya no se puede cambiar.',
      'en': '',
    },
    '1kd73tlt': {
      'es': 'Creer que los demás ven las cosas como uno los ve',
      'en': '',
    },
    '78ddgg2s': {
      'es': 'Yo la amo, de seguro ella también...',
      'en': '',
    },
    'r87innvg': {
      'es': 'Yo quiero iniciar mis vida sexual... de seguro los demás tambien ',
      'en': '',
    },
    'mfljt4u3': {
      'es': 'Consejo',
      'en': '',
    },
    '0wh1zqqy': {
      'es':
          'Trata de ponerte en el lugar de los demás y reconoce como piensan y reconoce que todos somo diferentes y por ende tenemos perspectivas diferentes.',
      'en': '',
    },
  },
  // eventConsejosMPV1
  {
    'o3rii3sx': {
      'es': '¿Hay necesidades sexuales?',
      'en': '',
    },
    'dtormio1': {
      'es': 'Primero ¿qué es la menstruación?',
      'en': '',
    },
    'wpafkzhi': {
      'es':
          'Es el flujo mensual de sangre, que resulta del desprendimiento del endometrio que deja de ser necesario y sale por la vagina.',
      'en': '',
    },
    'h0r6kfdx': {
      'es': '¿Como me cuido?',
      'en': '',
    },
    'mr2tqq77': {
      'es': 'Usar toallas higiénicas según la cantidad de sangrado que tengas.',
      'en': '',
    },
    '11fah8dx': {
      'es':
          'Es necesario que durante esos días te laves diariamente solo con agua.',
      'en': '',
    },
    '2mc9yoxh': {
      'es':
          'Las toallas higiénicas que utilices, cámbialo por lo menos 3 veces al día.',
      'en': '',
    },
    'srwx47q7': {
      'es':
          'Si el sangrado es abundante debes acudir al obstetra, pues perder demasiada sangre afecta a nuestras defenzas.',
      'en': '',
    },
    'r2wmn28u': {
      'es':
          'Puedes continuar con tus actividades diarias (lavar, caminar, correr, etc.)',
      'en': '',
    },
    'q816volf': {
      'es':
          'Si tienes demasiados cólicos puedes tomar analgésicos, como el ibuprofeno de 400mg y tomar cada 8 horas por 3 días. ',
      'en': '',
    },
  },
  // eventConsejosMPV2
  {
    'dewx37h1': {
      'es': '¿Eyaculación?',
      'en': '',
    },
    '9b3ng5gl': {
      'es':
          'Es la expulsión de semen y espermatozoides a través del canal urinario. Ocurre por la contracción de los músculos sexuales pélvicos, esto acompañado de la sensación de placer.',
      'en': '',
    },
    'phqu8i7d': {
      'es': 'Es importante conocerte y saber lo que ocurre en tu cuerpo',
      'en': '',
    },
    '0bvp4m5u': {
      'es': '¿COmo me cuido?',
      'en': '',
    },
    'vzwxu98j': {
      'es': 'Es importante conocerte y saber lo que ocurre en tu cuerpo',
      'en': '',
    },
    'nxw6e85z': {
      'es':
          'En cada eyaculación, produces entre 200 a 300 millones de espermatozoides.',
      'en': '',
    },
    '2zx6iicy': {
      'es':
          'Antes de cada eyaculación sale una gota transparente que también contiene espermatozoides',
      'en': '',
    },
    '08xw0dwa': {
      'es':
          'Entonces... debes tener cuidado de tener intimidad sin protección, porque si se penetra o al mínimo rose con la vagina, se produce un embarazo.',
      'en': '',
    },
  },
  // eventConsejosMPV3
  {
    'pku4747c': {
      'es': 'Conductas sexuales de riesgo',
      'en': '',
    },
    'youjz5kc': {
      'es':
          'Tu conducta determina tus actitudes y tus actitudes son el resultado de tu crianza y educación. ',
      'en': '',
    },
    '5yag0dao': {
      'es': 'Es importante conocerte y saber lo que ocurre en tu cuerpo',
      'en': '',
    },
    '1bm2ev38': {
      'es': '¿Tener o no tener relaciones sexuales?',
      'en': '',
    },
    '02r1raz6': {
      'es':
          'Iniciar tu actividad sexual por primera vez es una decisión importante.',
      'en': '',
    },
    '8qo9s070': {
      'es': '¿o sea hacerlo por primera vez?',
      'en': '',
    },
    '6qlpav3d': {
      'es':
          'Debes sentirte seguro de querer hacerlo\nEs importante que te sientas cómod@ y que tu pareja te respete.',
      'en': '',
    },
    '21itrbl4': {
      'es':
          'Si sientes que estás cerca de “tu primera vez”, ten en cuenta lo siguiente',
      'en': '',
    },
    'hvcoqjqg': {
      'es': 'Conductas sexuales de riesgo',
      'en': '',
    },
    '2u763q45': {
      'es': 'Tu primera vez',
      'en': '',
    },
    'lcs6qqxp': {
      'es': '¿Sentiré dolor?',
      'en': '',
    },
    'ebra4a5o': {
      'es':
          'La posibilidad de sentir dolor \nEs importante comunicar a tu pareja si tienes alguna molestia, las relaciones sexuales por primera vez pueden doler o en algunos casos sangrar.',
      'en': '',
    },
    'wve6uvhy': {
      'es': '¿Qué es lubricación? ',
      'en': '',
    },
    '1yh80w7p': {
      'es':
          'Lubricación es el humedecimiento vaginal\nSi la vagina no está lo suficientemente húmeda puede causar dolor o irritación más de lo normal.',
      'en': '',
    },
    'q7negg7g': {
      'es': '¿La primera vez no te quedas embarazada?',
      'en': '',
    },
    'b6yly2eh': {
      'es':
          'SÍ te puedes quedar embarazada entonces sin importar si es la primera vez o no, podemos embarazar o quedar embarazadas desde el momento en que el semen o líquido preseminal entre en contacto con el ovulo, es por ello que debemos cuidarnos con algún método anticonceptivo.',
      'en': '',
    },
    'kidtui6v': {
      'es': '¿Si tengo relaciones sexuales ya no voy a crecer?',
      'en': '',
    },
    '5jzx6ti2': {
      'es':
          'Hay quienes dicen que las caderas se ensanchan cuando tienes actividad sexual, pero esto no está demostrado, cada persona es diferente y los cambios dependen de su estilo de vida.',
      'en': '',
    },
  },
  // eventConsejosMPVJ1
  {
    'tg63ixbw': {
      'es': 'Duerme bien por 8 horas',
      'en': '',
    },
    '14xi3v8i': {
      'es': '¿Por qué?',
      'en': '',
    },
    'ipgdp0r8': {
      'es': 'Consume más frutas y toma más de 2 litros de agua al día.',
      'en': '',
    },
    'p83nt67n': {
      'es': '¿Por qué?',
      'en': '',
    },
    '18lq1dz3': {
      'es':
          'Haz ejercicio\nHaz más de las cosas que te gustan, sin dejar de cumplir con tus responsabilidades.',
      'en': '',
    },
  },
  // chatFloatMPV
  {
    'g0iscxny': {
      'es': 'Ingrese su pregunta aquí',
      'en': '',
    },
    'sb5t2of9': {
      'es': 'Respuesta',
      'en': '',
    },
    'yx5173db': {
      'es': 'Restablecer',
      'en': '',
    },
    '4a1rhmnw': {
      'es': 'Enviar',
      'en': '',
    },
  },
  // eventConsejosMPVJ2
  {
    'ywhyptfn': {
      'es': 'Puedes empezar haciendo una lista de cosas que gustan. ',
      'en': '',
    },
    's8kyjf0j': {
      'es': 'hoy saldré a correr luego hare mis tareas. ',
      'en': '',
    },
  },
  // eventConsejosMPVJ3
  {
    'bq8k31nj': {
      'es':
          'Todos somos vulnerables en algún momento, normaliza lo que sientes.',
      'en': '',
    },
  },
  // eventConsejosMPVJ4
  {
    'z4nr09eq': {
      'es': 'Identifica lo que sientes',
      'en': '',
    },
    'xfwnr7ge': {
      'es': 'Date el permiso de sentirlo',
      'en': '',
    },
    'j01desf4': {
      'es': 'Busca que alguien de tu confianza te escuche',
      'en': '',
    },
    'sm3dh8nw': {
      'es': 'Busca y encuentra una salida',
      'en': '',
    },
    '0sal25gc': {
      'es': 'Sé amable contigo',
      'en': '',
    },
  },
  // eventConsejosMPVJ5
  {
    'x4kttnho': {
      'es':
          'Si una emoción no te gusta, no te aferres a ella, etiqueta la emoción y déjala ir.',
      'en': '',
    },
  },
  // eventConsejosMPVJ6
  {
    '0x38uit2': {
      'es':
          'En nuestro cuerpo se refleja lo que sentimos, busca la ayuda de un profesional si ves que tu cuerpo tiene cambios perjudiciales ante una emoción.',
      'en': '',
    },
  },
  // eventConsejosMPVJ7
  {
    'a1ax4kq6': {
      'es':
          'Darle la espalda a tu estado de ánimo no es lo mejor, busca a alguien en quien confies o escribelo en algún lugar y la razón de ese sentimiento.',
      'en': '',
    },
  },
  // eventViolenci1
  {
    'j79ngm94': {
      'es': 'Tu pareja',
      'en': '',
    },
    '0sk6bhc4': {
      'es': 'Te compara con otras personas o sus exparejas. ',
      'en': '',
    },
    'oydhyzr3': {
      'es': 'Te insulta y se burla de ti en publico o privado. ',
      'en': '',
    },
    'bomznh6g': {
      'es': 'Cambia de humor ',
      'en': '',
    },
    'gymvsyhy': {
      'es': 'Trata mejor a otras personas',
      'en': '',
    },
    'nal9duxo': {
      'es': 'Quiere saber todo lo que haces al mínimo detalle.',
      'en': '',
    },
    '3jpz0hbh': {
      'es': 'No quiere que tenga secretos ',
      'en': '',
    },
    'kv9mzcvn': {
      'es': 'Amenaza con terminarme si no tengo relaciones sexuales',
      'en': '',
    },
    'pdniy5p7': {
      'es':
          'Me dice que se va a ir con otro/a si no le envío mis fotos intimas. ',
      'en': '',
    },
    '21vie2rw': {
      'es': 'Tu pareja',
      'en': '',
    },
    'amlyilae': {
      'es': 'Cuando se enoja me quiere golpear ',
      'en': '',
    },
    'da1t71t3': {
      'es': 'Critica mi forma de ser y como me visto. ',
      'en': '',
    },
    '6okn1ru7': {
      'es': 'No me escucha como antes. ',
      'en': '',
    },
    '9c208749': {
      'es':
          'Cuando quiere tener relaciones sexuales no quiere cuidarse con ningún método anticonceptivo. ',
      'en': '',
    },
    'ia4b5x67': {
      'es': '¿Como me cuido? ',
      'en': '',
    },
    'pwqecui0': {
      'es': 'Usar toallas higiénicas según la cantidad de sangrado que tengas.',
      'en': '',
    },
    'a36dl5y2': {
      'es':
          'Es necesario que durante esos días te laves diariamente solo con agua.',
      'en': '',
    },
    'xsglvokg': {
      'es':
          'Las toallas higiénicas que utilices, cámbialo por lo menos 3 veces al día.',
      'en': '',
    },
    'ogwpag8y': {
      'es':
          'Si el sangrado es abundante debes acudir al obstetra, pues perder demasiada sangre afecta a nuestras defenzas.',
      'en': '',
    },
    '7qn37d41': {
      'es':
          'Puedes continuar con tus actividades diarias (lavar, caminar, correr, etc.)',
      'en': '',
    },
    'hpgd7j27': {
      'es':
          'Si tienes demasiados cólicos puedes tomar analgésicos, como el ibuprofeno de 400mg y tomar cada 8 horas por 3 días. ',
      'en': '',
    },
    '0b1smq81': {
      'es': '¿Como me cuido? ',
      'en': '',
    },
    'qncc5vnx': {
      'es': 'Usar toallas higiénicas según la cantidad de sangrado que tengas.',
      'en': '',
    },
    'my5p5ii3': {
      'es':
          'Es necesario que durante esos días te laves diariamente solo con agua.',
      'en': '',
    },
    'uaghwbpw': {
      'es':
          'Las toallas higiénicas que utilices, cámbialo por lo menos 3 veces al día.',
      'en': '',
    },
    'ql62heja': {
      'es':
          'Si el sangrado es abundante debes acudir al obstetra, pues perder demasiada sangre afecta a nuestras defenzas.',
      'en': '',
    },
    '1okbfery': {
      'es':
          'Puedes continuar con tus actividades diarias (lavar, caminar, correr, etc.)',
      'en': '',
    },
    'y7wifmwl': {
      'es':
          'No estas solo, tienes a tus amigos y familia, pero también nos tienes a nosotros llama a la línea 100.  \nRecuerda que tienes el derecho a la libertad, a la seguridad jurídica y a la integridad física y psicológica.',
      'en': '',
    },
  },
  // eventViolenci2
  {
    'mwqnkxz3': {
      'es': 'Yo',
      'en': '',
    },
    'ep3nlaif': {
      'es': 'Cambié mi forma de vestir.',
      'en': '',
    },
    '51ckqiov': {
      'es': 'Ya no salgo con mis amig@s.',
      'en': '',
    },
    'u1apw73r': {
      'es': 'Quiero que mi pareja me dé su aprobación.',
      'en': '',
    },
    'mnk4en8y': {
      'es': 'Peleo mucho con mi pareja.',
      'en': '',
    },
    'arx7uhi1': {
      'es': 'Quiere saber todo lo que haces al mínimo detalle.',
      'en': '',
    },
    '00ue5zmr': {
      'es': 'Ya no tengo apetito, me siento triste y sin ganas. ',
      'en': '',
    },
    '9u69o7e7': {
      'es': 'Cambio de humor fácilmente.',
      'en': '',
    },
    'c34vvin0': {
      'es': 'Siento que sin mi pareja no puedo vivir.',
      'en': '',
    },
    '9e1wq6pb': {
      'es':
          'Antes me gustaba bailar, pero a mi pareja no le gusta así que ya no lo hago',
      'en': '',
    },
    'hhksplen': {
      'es': 'Yo',
      'en': '',
    },
    'vhspdb7i': {
      'es': 'Acepto tener relaciones con mi pareja para que no me termine. ',
      'en': '',
    },
    'r2ubsq5g': {
      'es': 'Cuando mi pareja se enoja me levanta la mano o me pellizca. ',
      'en': '',
    },
    '1o5bxfrw': {
      'es':
          'Antes no me tomaba fotos sin ropa, pero eso le gusta a mi pareja. ',
      'en': '',
    },
    '0wqink9v': {
      'es': 'Tengo miedo de que se enoje.',
      'en': '',
    },
    'ryt9smr7': {
      'es': 'Yo no le tengo secretos a mi pareja porque lo amo. ',
      'en': '',
    },
    'iyoh43mn': {
      'es': 'Me obligaron a tener relaciones sexuales. ',
      'en': '',
    },
    '0mvsa6r2': {
      'es': '¿Como me cuido? ',
      'en': '',
    },
    'cxdikkc7': {
      'es': 'Usar toallas higiénicas según la cantidad de sangrado que tengas.',
      'en': '',
    },
    '38k8dbbj': {
      'es':
          'Es necesario que durante esos días te laves diariamente solo con agua.',
      'en': '',
    },
    '5cdhea66': {
      'es':
          'Las toallas higiénicas que utilices, cámbialo por lo menos 3 veces al día.',
      'en': '',
    },
    'wh6aqz3j': {
      'es':
          'Si el sangrado es abundante debes acudir al obstetra, pues perder demasiada sangre afecta a nuestras defenzas.',
      'en': '',
    },
    'q9463gbe': {
      'es':
          'Puedes continuar con tus actividades diarias (lavar, caminar, correr, etc.)',
      'en': '',
    },
    'usr5ixbb': {
      'es':
          'No estas solo, tienes a tus amigos y familia, pero también nos tienes a nosotros llama a la línea 100.  \nRecuerda que tienes el derecho a la libertad, a la seguridad jurídica y a la integridad física y psicológica.',
      'en': '',
    },
  },
  // eventViolenci3
  {
    'feewu19y': {
      'es':
          'Si eres víctima de violencia o sabes de alguien que lo esté sufriendo',
      'en': '',
    },
    'nrh3rqm8': {
      'es': 'No te calles',
      'en': '',
    },
    '0rs7zom3': {
      'es':
          'Pide ayuda a tu persona de confianza ya sea tu mamá, papá, hermano/a, profesor/a del colegio.',
      'en': '',
    },
    '7ftv2tb1': {
      'es':
          'Ve a un lugar seguro o donde te pueden ayudar, casa de tus padres o algún amigo/a, puesto de salud o comisaria. ',
      'en': '',
    },
    'iyby4tki': {
      'es':
          'Llama al número 100 desde tu celular o escribe al chat100 para que te orienten',
      'en': '',
    },
    'g8jbjfnu': {
      'es': 'Acércate a la comisaria o al centro emergencia mujer (01) 4197260',
      'en': '',
    },
    'mp865t6i': {
      'es': '¿Como me cuido? ',
      'en': '',
    },
    '2vb7j3kx': {
      'es': 'Usar toallas higiénicas según la cantidad de sangrado que tengas.',
      'en': '',
    },
    'm37duubm': {
      'es':
          'Es necesario que durante esos días te laves diariamente solo con agua.',
      'en': '',
    },
    'eydqwqfs': {
      'es':
          'Las toallas higiénicas que utilices, cámbialo por lo menos 3 veces al día.',
      'en': '',
    },
    'fctg6ha2': {
      'es':
          'Si el sangrado es abundante debes acudir al obstetra, pues perder demasiada sangre afecta a nuestras defenzas.',
      'en': '',
    },
    'ydvtk6x2': {
      'es':
          'Puedes continuar con tus actividades diarias (lavar, caminar, correr, etc.)',
      'en': '',
    },
    'as5fextr': {
      'es':
          'No estas solo, tienes a tus amigos y familia, pero también nos tienes a nosotros llama a la línea 100.  \nRecuerda que tienes el derecho a la libertad, a la seguridad jurídica y a la integridad física y psicológica.',
      'en': '',
    },
  },
  // eventViolenci4
  {
    '07mab4gq': {
      'es':
          'Si eres víctima de violencia o sabes de alguien que lo esté sufriendo',
      'en': '',
    },
    'd34tzzdr': {
      'es': 'Denuncia virtual:',
      'en': '',
    },
    'e49kmbtb': {
      'es': 'Conversar con esa persona y dale la confianza',
      'en': '',
    },
    'dbqxhgy7': {
      'es':
          'Trata de hacerle entender que sufre de violencia pero que tú lo vas a apoyar.',
      'en': '',
    },
    'jkd8wwrp': {
      'es': 'No juzgues lo que te cuenta y transmite comprensión.',
      'en': '',
    },
    'w1duv4fb': {
      'es':
          'Convence y acompaña a ir al establecimiento de salud o comisaria para que pueda recibir ayuda profesional.',
      'en': '',
    },
    'qhi1yept': {
      'es': '¿Como me cuido? ',
      'en': '',
    },
    'tjje68ql': {
      'es': 'Usar toallas higiénicas según la cantidad de sangrado que tengas.',
      'en': '',
    },
    'x92zmots': {
      'es':
          'Es necesario que durante esos días te laves diariamente solo con agua.',
      'en': '',
    },
    'rmjtiq8x': {
      'es':
          'Las toallas higiénicas que utilices, cámbialo por lo menos 3 veces al día.',
      'en': '',
    },
    't8crcubk': {
      'es':
          'Si el sangrado es abundante debes acudir al obstetra, pues perder demasiada sangre afecta a nuestras defenzas.',
      'en': '',
    },
    't37xoa03': {
      'es':
          'Puedes continuar con tus actividades diarias (lavar, caminar, correr, etc.)',
      'en': '',
    },
    'ne70ul9j': {
      'es':
          'No estas solo, tienes a tus amigos y familia, pero también nos tienes a nosotros llama a la línea 100.  \nRecuerda que tienes el derecho a la libertad, a la seguridad jurídica y a la integridad física y psicológica.',
      'en': '',
    },
  },
  // dsaComponent
  {
    '9fld545q': {
      'es': 'Masculino',
      'en': '',
    },
    'l87nxbps': {
      'es':
          'Puedes llegar a tener acné, pero lo puedes manejar con alimentación saludable y deporte',
      'en': '',
    },
    'ek6rsj1p': {
      'es': 'Tus hombros comenzarán a ponerse mas anchos',
      'en': '',
    },
    '8u1ucqbg': {
      'es': 'Tu voz comenzará a cambiar y ponerse más gruesa',
      'en': '',
    },
    'dw8mlfa4': {
      'es': 'Puedes comenzar a ver vellos en las axilas',
      'en': '',
    },
    'ldf7qujx': {
      'es': 'ANATOMÌA DEL APARATO REPRODUCTOR MASCULINO.',
      'en': '',
    },
    '9wrv2ovl': {
      'es': 'Puedes comenzar a ver vellos en las axilas',
      'en': '',
    },
    'e8dikfj4': {
      'es': 'Femenino',
      'en': '',
    },
    'owucy29u': {
      'es':
          'Puedes llegar a tener acné, pero lo puedes manejar con alimentación saludable y deporte',
      'en': '',
    },
    'u8jfswsb': {
      'es': 'Los senos te pueden comenzar a crecer a partir de los 11 años,',
      'en': '',
    },
    '9cos5kgs': {
      'es': 'Tu voz comenzará a cambiar y ponerse más delgada',
      'en': '',
    },
    'eb996bx3': {
      'es': 'Puedes comenzar a ver vellos en las axilas',
      'en': '',
    },
    'fq0njorg': {
      'es': 'ANATOMÌA DEL APARATO REPRODUCTOR MASCULINO.',
      'en': '',
    },
    '8y9boklf': {
      'es': 'Puedes comenzar a ver vellos en las axilas',
      'en': '',
    },
  },
  // mas
  {
    'ltl940tv': {
      'es':
          'A partir de ese día los varones corren el riesgo de embarazar a alguien sin desearlo.',
      'en': '',
    },
  },
  // fem
  {
    'jw53vcig': {
      'es':
          'a partir de ese día las mujeres corren el riesgo de tener un embarazo no deseado. ',
      'en': '',
    },
  },
  // arFM_DSA
  {
    'o94bk1se': {
      'es': 'Masculino',
      'en': '',
    },
    '12ymav87': {
      'es':
          'Conducto deferente Es la continuación del epidídimo y  transporta los espermatozoides. Cuando se mezclan con otros fluidos resulta el semen.',
      'en': '',
    },
    '92v7wha4': {
      'es':
          'Vesículas seminales: son dos. Y producen 70% del líquido seminal, el cual alimenta a los espermatozoides para que fluyan más rápido',
      'en': '',
    },
    'lkxdovxl': {
      'es':
          'Próstata: Órgano formado de varias glándulas su secreción le da el olor al semen. se situa en la pelvis y atrás del pubis, su tamaño varía.',
      'en': '',
    },
    'cyg4r1eu': {
      'es':
          'Glándulas de COWPER: se localizan justo debajo de la próstata, producen el líquido préseminal',
      'en': '',
    },
    '4wtzaeo1': {
      'es':
          'Epidídimo: Órgano en forma de c encargado de madurar y activar los espermatozoides para que adquieran movilidad y su estructura definitiva.',
      'en': '',
    },
    't3xo2roj': {
      'es':
          'Testículos: Órganos que producen hormonas sexuales y espermatozoides.',
      'en': '',
    },
    'nh7y2oaw': {
      'es':
          'URETRA: se  encarga de eliminar la orina del organismo y expulsar el semen en la eyaculación. ',
      'en': '',
    },
    'tivu8ftu': {
      'es': 'Femenino',
      'en': '',
    },
    'kkyzwaii': {
      'es':
          'Trompas de Falopio: es como un tuvo que conecta el vario y al útero. Este órgano es el que participa en la ligadura de trompas',
      'en': '',
    },
    'kjd5zb85': {
      'es': 'Ovario: Órganos que producen hormonas sexuales y óvulos.',
      'en': '',
    },
    '06m9cuca': {
      'es':
          'Útero o Matriz: Tiene una capa mucosa, muscular y serosa. El endometrio se desprende en la menstruación ',
      'en': '',
    },
    'jb4tz3jd': {
      'es':
          'Cervix o Cuello Uterino porción inferior del útero que lo conecta con la vagina',
      'en': '',
    },
    '6saanief': {
      'es':
          'Vagina: recepciona semen, por medio de ella pasa el flujo menstrual y el bebé al nacer. En su interior cubierto por mucosa y la parte externa es exitable.',
      'en': '',
    },
    't9ngiig7': {
      'es': 'Glándulas de Bartolini: encargadas de lubricar la parte intima',
      'en': '',
    },
  },
  // addEvent2
  {
    'k74sdg5a': {
      'es': 'No contagia',
      'en': '',
    },
    'xi7b94v6': {
      'es': 'Sin tener relaciones sexuales',
      'en': '',
    },
    'xpxv2uuj': {
      'es': '',
      'en': '',
    },
    'mumdevjh': {
      'es': 'Abrazos y masajes',
      'en': '',
    },
    'qwadbh1r': {
      'es': '',
      'en': '',
    },
    '8awpwb74': {
      'es': 'Frotación cuerpo a cuerpo',
      'en': '',
    },
    'kdyw31jb': {
      'es': '',
      'en': '',
    },
    'qztg6sqw': {
      'es': 'Masturbación y fantasias',
      'en': '',
    },
    'ckfx6gej': {
      'es': '',
      'en': '',
    },
    'm4r8wskg': {
      'es': 'besos secos',
      'en': '',
    },
    'v2fhr9xm': {
      'es': '',
      'en': '',
    },
    'ea0fw0e9': {
      'es': 'Ducharse juntos, sauna, etc',
      'en': '',
    },
    'ejanc0f6': {
      'es': '',
      'en': '',
    },
    'psggfg8f': {
      'es': 'No compartir juguetes sexuales',
      'en': '',
    },
    'u9tlvoft': {
      'es': '',
      'en': '',
    },
  },
  // eventConsejosAutocui
  {
    'tyhvjb9a': {
      'es': 'Piel',
      'en': '',
    },
    'p7ij8pw7': {
      'es':
          'La piel es el órgano más grande de tu cuerpo y te protege de diversas bacterias, nos ayuda a eliminar los desechos del cuerpo y regula la temperatura por medio del sudor. ',
      'en': '',
    },
    'v0wm482a': {
      'es': 'Consejos',
      'en': '',
    },
    '50n97kkv': {
      'es':
          'Báñate con frecuencia para mantener tu piel limpia y evitar el mal olor.',
      'en': '',
    },
    'g0qfua8u': {
      'es':
          'Lava tu ropa después de usarla para eliminar el mal olor que se impregna en ella.',
      'en': '',
    },
    'tckw45ao': {
      'es':
          'Cuida tu salud íntima lavándote de adelante hacia atrás para evitar infecciones.',
      'en': '',
    },
    '20bwe314': {
      'es': 'Piel',
      'en': '',
    },
    'vsdlhan1': {
      'es': '¿El Acné tiene solución?',
      'en': '',
    },
    '4dh3f87w': {
      'es':
          'Sí pero recuerda que tu piel tiene glándulas que constantemente expulsan grasa y agua. Cuando estas se cierran lo evidencias en forma de “granitos”.',
      'en': '',
    },
    '9f1lzxda': {
      'es': 'Recomendación',
      'en': '',
    },
    'zx37axav': {
      'es': 'Usa jabón para limpiar tu piel.',
      'en': '',
    },
    'uh7kfh0v': {
      'es':
          'Si tienes piel grasosa, usa cremas limpiadoras y luego aplica un astringente.',
      'en': '',
    },
    'uoqn37yq': {
      'es': 'Si el acné persiste y causa dolor, consulta a un dermatólogo.',
      'en': '',
    },
  },
  // eventConsejosAutocui2
  {
    'ld4wpgcb': {
      'es': 'Pelo',
      'en': '',
    },
    'h3ockcbf': {
      'es':
          'Tenemos aproximadamente 90 mil cabellos, todos hechos de proteína. Para mantenerlo saludable',
      'en': '',
    },
    'egoferx4': {
      'es': 'Consejos',
      'en': '',
    },
    'slp45lxg': {
      'es': 'Come más verduras.',
      'en': '',
    },
    '9glw14g6': {
      'es':
          'Mantén tu cabello limpio y sin mal olor, lo que refleja buenos hábitos.',
      'en': '',
    },
    'bzmkzfgy': {
      'es':
          'Lava y enjuaga bien tu cabello para evitar que se vea opaco y sucio.',
      'en': '',
    },
    'gpo9sy45': {
      'es': 'Si tu cabello es grasoso, lávalo todos los días.',
      'en': '',
    },
    '7wy34sax': {
      'es': 'Si es seco, lávalo 2 a 3 veces a la semana.',
      'en': '',
    },
  },
  // eventConsejosAutocui3
  {
    'iqua896j': {
      'es': 'Ojos',
      'en': '',
    },
    'dhydv7as': {
      'es':
          'Las partes más importantes del ojo son la pupila (puntito negro) y el iris (porción coloreada). ',
      'en': '',
    },
    'zpvpsg2p': {
      'es': 'Consejos',
      'en': '',
    },
    'i9ge4l7i': {
      'es': 'Visita a un oftalmólogo al menos una vez al año.',
      'en': '',
    },
    'w53qf5lj': {
      'es': 'Usa lentes oscuros para protegerte del sol y sus rayos UV.',
      'en': '',
    },
    '6h0iidu0': {
      'es': 'Evita frotarte los ojos con las manos para prevenir infecciones.',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'ofujfj4p': {
      'es': '',
      'en': '',
    },
    '6ratu2gb': {
      'es': '',
      'en': '',
    },
    'kpg62ezi': {
      'es': '',
      'en': '',
    },
    'tkculz26': {
      'es': '',
      'en': '',
    },
    'ueuq3nhp': {
      'es': '',
      'en': '',
    },
    'e2envef6': {
      'es': '',
      'en': '',
    },
    'wytx1ahi': {
      'es': '',
      'en': '',
    },
    '2indok5y': {
      'es': '',
      'en': '',
    },
    'zjl45nur': {
      'es': '',
      'en': '',
    },
    '9schfe4s': {
      'es': '',
      'en': '',
    },
    'o2ull5qi': {
      'es': '',
      'en': '',
    },
    'm3yjw7e2': {
      'es': '',
      'en': '',
    },
    'jngjntqg': {
      'es': '',
      'en': '',
    },
    '9fzz95hq': {
      'es': '',
      'en': '',
    },
    '0f5wqjta': {
      'es': '',
      'en': '',
    },
    'a0u44scu': {
      'es': '',
      'en': '',
    },
    '26tqo5hw': {
      'es': '',
      'en': '',
    },
    '00n9m2o4': {
      'es': '',
      'en': '',
    },
    '436ap776': {
      'es': '',
      'en': '',
    },
    '75zmb9iw': {
      'es': '',
      'en': '',
    },
    'wdyilnzj': {
      'es': '',
      'en': '',
    },
    'zxxtwtvx': {
      'es': '',
      'en': '',
    },
    'ldckrfhd': {
      'es': '',
      'en': '',
    },
    'fuq6pw49': {
      'es': '',
      'en': '',
    },
    '34uz7hfy': {
      'es': '',
      'en': '',
    },
    '43e0faht': {
      'es': '',
      'en': '',
    },
    'hl8i8hvx': {
      'es': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
