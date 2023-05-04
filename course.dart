// balta.io - dart logic progamming

// enum

enum UserType {
  ADMIN,
  CUSTOMER,
  EMPLOYER,
  DRIVER,
} // Enum rules = start the var name with upper case

void main() {
  print("Hello World");

  var x = 2;

  late int a = 2;

  a = 3;
  print(a);
  print(x);

  var text = "1";
  var numberVar = int.tryParse(text);

  print("Number var: $numberVar");

  // operators
  var k = 10;
  var w = 10;
  var sum = k + w;
  var sub = k - w;
  var div = k ~/ w; // int division of k by w with an int return
  var mult = k * w;

  print("Sum of k + w = $sum");
  print("Sub of k - w = $sub");
  print("Div of k / w = $div");
  print("Mult of k * w = $mult");

  /*
  
  boas praticas no dart (com tipo primitivo double)
  var a = 1.0;
  double a;
  a = 1.0;

  más praticas

  double a = 2.0; <- to forçando tipagem duas vezes

    
  */

  var t = 5.0;

  t += 6;

  // a = 5 + 6 = 11;

  var text2 = "a10.55";
  var convert = double.tryParse(text2) ?? 0;
  convert += t;
  print(convert);

  // Duration

  final duration = Duration(
      days: 100,
      hours: 24,
      minutes: 100,
      microseconds: 30000,
      milliseconds: 999999);

  print(duration.inDays);
  print(duration.inHours);
  print(duration.inMicroseconds);

  const firstHalf = Duration(minutes: 45);
  const secondHalf = Duration(minutes: 45);
  const overtime = Duration(minutes: 15);

  final totalDuration = firstHalf + secondHalf + overtime;
  print("${totalDuration.inMinutes} minutes");

  // DateTime yyyy-mm-DD + hh-mm-ss.mcs INTL

  var date = DateTime(2004, 9, 27, 13, 30, 50, 321);
  print(date);

  final parseDate = DateTime.parse("2022-04-27");

  final dateNow = DateTime.now();

  print(parseDate);

  print(
      "Date now ${DateTime.now()}, [FORMATED] hours: ${dateNow.hour}:${dateNow.minute}:${dateNow.second}, $dateNow ");

  // enum

  final userType = UserType.DRIVER;

  switch (userType) {
    case UserType.ADMIN:
      {
        print("ADMIN");
      }
      break;
    case UserType.CUSTOMER:
      {
        print("CUSTOMER");
      }
      break;
    case UserType.DRIVER:
      {
        print("DRIVER");
      }
      break;
    case UserType.EMPLOYER:
      {
        print("EMPLOYER");
      }
      break;
    default:
      {
        print("NONE ROLE");
      }
      break;
  }

  // String - Declaração

  // dinamico
  var texto1;

  //dinamico (var) -> com valor inicial
  var texto2 = "test";

  //Explicito
  String
      texto3; // explicito com valor inicial String texto3 = "dart"; (msm linha)
  texto3 = "Dart";

  var primeiraString = "Logica com";
  var segundaString = "Dart";

  var stringFinal = primeiraString + " " + segundaString;
  print(stringFinal);
  //Logica com Dart
  // substring
  var subs = stringFinal.substring(11, 15);
  print(subs);

  var splitz = stringFinal.split(" ");

  print(splitz);
  print(splitz[0] + " " + splitz[2]);
  print(stringFinal
      .length); // Logica com Dart -> lenght = 15; you can do with this method too: var lenght = your string.lenght
  // dont use int lenght cuz lenght is already an int primitive type

  /*INTERPOLAÇÃO DE STRINGS*/

  var nomePessoa = "Fulano de Tal";
  print("Olá, $nomePessoa, seja bem-vindo");
  print("isEmpty: ${nomePessoa.isEmpty}");
  print("isNotEmpty: ${nomePessoa.isNotEmpty}");
  print("contains 'Fulano': ${nomePessoa.contains("Fulano")} ");

  //imprimir $ no console precisa da barra para negar o identifier

  final value = "R\$10,00";

  // String replaceAll

  final meuTextoReplaceAll = "         Esse é meu texto";
  print(meuTextoReplaceAll.replaceAll("meu", "nosso"));
  print(meuTextoReplaceAll
      .trim()); // caso tenha espaço - email // trimright... etc
  //startswith, endswith...

  //Listas <3

  List feira = [
    "Arroz, Feijão, Macarrão, Açucar, Ovo, Carne"
  ]; // Lista do tipo dinamico

  List<int> numeros = [1, 2, 3, 4, 5, 6];

  print("Feira List Dinamica: $feira");
  print("Numeros List de tipo de inteiro: $numeros");
  print("Pos[0] lista de numeros: ${numeros[0]}");

  var list = <String>[];
  list.add("Tiago");
  list.add("Felipe");

  print(list);
  list.addAll(["Arthur", "Breno", "Lucas", "João"]);
  print("list with add all: $list");

  list.remove("Arthur");

  print("List remove at[0]: ${list.removeAt(0)} - Remove Arthur.");
  print(list);

  //LIST.CLEAR
  print("CLEARING...");
  list.clear();
  print(list);

  list.addAll(["Marcos", "Paulo", "Ricardo"]);

  var containsMarcos = list.contains("Marcos");

  if (containsMarcos) {
    print("Tem Marcos");
  } else {
    print("Não tem Marcos");
  }

  print("LISTA ATUAL = $list");

  // list first where
  String? item = list.firstWhere((e) => e.contains("M"), orElse: () => "VAZIO");
  print("First where contains 'M': $item");

  print("");

  // list for each
  list.forEach((e) {
    print("Item: $e");
  });

  var salarios = [1000, 2000, 3000, 4000, 5000];

  var somaSalarios = 0;

  salarios.forEach((element) {
    somaSalarios += element;
  });

  print("Soma salarios =  $somaSalarios");
  print("Salarios, indexOf[2000]: ${salarios.indexOf(2000)}");

  print("Salarios indexOf elemento que nao existe: ${salarios.indexOf(999)}");
  // retorna um valor >= 0 (elemento está inserido), -1 = não tem
  print(
      "Index where salario > 2000: ${salarios.indexWhere((element) => element > 2000)}");

  // list insert -> insere um valor na posição que vc escolhe salarios.insert(posicao, valor) -> sem deletar os demais valores! vc só "empurra" eles <- assim ->
  var index = 2;
  salarios.insert(index, 200);
  print(salarios);
  print("Inserindo os valores 2 e 3 a partir da pos 2...");

  salarios.insertAll(2, [2, 3]);
  print(salarios);

  // ------------------------------------------------------------------------------------------
  // Exercicio: calcular a média de N números.

  final numerosLista = <int>[10, 25, 30, 45, 50, 32];

  var somaLista = 0;

  numerosLista.forEach((element) {
    somaLista += element;
  });

  double media = somaLista / numerosLista.length;

  print(media);

  //2da forma

  double media2 = numerosLista.reduce((value, element) => value + element) /
      numerosLista
          .length; // value = valor inicial (inicialmente o primeiro elemento da lista, element o proximo, e depois o value fica acumulado)
  // traduzindo literalmente o value é valorAcumulado e o element o elemento atual da lista, é como se fosse value = lista[0], e depois value += elementoAtual (prox da lista, depois do [0]);
  print(media2);

  // map

  final map = {"name": "Bob", "age": "18", "salary": "2500.00"};
  //map.containsKey("name") = true., containsValue "Bob" = true
  print(map);
  print(map['name']); // print(map)... etc

  final map2 = Map<String,
      dynamic>(); // criando um map2 dizendo que minha chave é String e meu valor é dinamico

  // quer limpar ele? map.clear();
  //temos o map Add all tbm, pra adicionar novas chaves no nosso map, addentries pra fazer um merge de dados.
}
