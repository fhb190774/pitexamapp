import 'package:bachelorsimulator/model/question_model.dart';

List<QuestionModel> questionsIT = [
QuestionModel(
    "Welche Aufgaben hat Entity Relationship Diagramm?", {
      "eine Art Flussdiagramm, das zeigt, welche Beziehungen zwischen „Entitäten“ wie Menschen, Objekten und Konzepten innerhalb eines Systems bestehen": true,
      "ist eine Darstellung externer Datenflüsse zu und von einem Geschäftssystem": false,
      "ist eine grafische Darstellung der Prozesse in einem Geschäftssystem": false,
      "ist ein Use-Case Diagramm, um die Daten- und Prozessmodellierung zu zeigen": false,
    },
  ),
  QuestionModel( 
      "Was prüft die referenzielle Integrität?", {
        "ob es in der betrachteten Tabelle einen Primärschlüssel gibt": false,
        "ob die referenzierten Datensätze in der verknüpften Tabelle wirklich vorhanden sind": true,
        "ob es in der betrachteten Tabelle einen Fremdschlüssel gibt": false,
        "ob es in der betrachteten Tabelle einen Primärschlüssel gibt": false,
      }
  ),
  
  QuestionModel( 
      "Welche der folgenden Komponenten gehört nicht zu OOP?", {
        "Polimorphismus": false,
        "Type checking": false,
        "Multitasking": true,
        "Information hiding": false,
      }
  ),
  QuestionModel( 
      "Ein Objekt ist eine Instanz von:", {
        "Parameter": false,
        "Klasse": true,
        "Methode": false,
        "Applikation": false,
      }
  ),
  QuestionModel( 
      "Der Vorgang, bei dem Objekte einer Klasse die Eigenschaften von Objekten einer anderen Klasse erwerben, wird bezeichnet als?", {
        "Polimorphismus": false,
        "Encapsulation": false,
        "Vererbung": true,
        "Information hiding": false,
      }
  ),
  QuestionModel( 
      "Welches der folgenden OOP-Konzepte bedeutet, dem Kunden nur die notwendigen Informationen zur Verfügung stellen.", {
        "Abstraktion": true,
        "Encapsulation": false,
        "Data binding": false,
        "Information hiding": false,
      }
  ),
  QuestionModel( 
      "Welches der folgenden ist kein Constraint?", {
        "NOT NULL": false,
        "DEFAULT": false,
        "PRIMARY KEY": false,
        "DELETE": true,
      }
  ),
  QuestionModel( 
      "Wofür steht IOT in Bezug auf die 5G-Technologie?", {
        "Institute of Technology": false,
        "Internet of Things": true,
        "International Operations Tech": false,
        "Interstate of Transportation": false,
      }
  ),
  QuestionModel( 
      "KI ist der Versuch, menschliches Lernen und Denken auf den Computer zu übertragen und ihm damit Intelligenz zu verleihen?", {
        "True": true,
        "False": false,
 
      }
  ),
  QuestionModel( 
      "Was ist KEIN Merkmal von Big Data?", {
        "Volume": false,
        "Vision": true,
        "Velocity": false,
        "Variety": false,
      }
  ),
  QuestionModel( 
      "Welche sind die vier V, die Big Data am besten definieren?", {
        "Varsity - Velocity - Volume - Validity": false,
        "Vacant - Victini - Volume - Validity": false,
        "Validity - Velocity - Veracity - Volume": false,
        "Volume - Velocity - Variety - Veracity": true,
      }
  ),
  QuestionModel( 
      "Welches ist KEIN gültiger Weg, um ein Array zu definieren?", {
        "int[3] i = new int[];": true,
        "int[ ] i = new int[ ]{1, 2, 3};": false,
        "int[ ] i = {1,2,3};": false,
        "int[ ] i = new int[3];": false,
      }
  ),
  QuestionModel( 
      "Welcher Modifikator für Klassen macht eine Klasse nur für Klassen im selben Paket zugänglich?", {
        "private": false,
        "default": true,
        "static": false,
        "public": false,
      }
  ),
  QuestionModel( 
      "Welches Schlüsselwort können Sie verwenden, um von einer anderen Klasse zu erben?", {
        "extends": true,
        "inherits": false,
        "implements": false,
        "instanceof": false,
      }
  ),
  QuestionModel( 
      "Welcher Modifikator macht ein Attribut nur innerhalb der deklarierten Klasse zugänglich?", {
        "private": true,
        "abstract": false,
        "static": false,
        "default": false,
      }
  ),
  QuestionModel( 
      "Wofür steht SQL?", {
        "Structured Query Language": true,
        "Structured Question Language": false,
        "Sequential Query Language": false,
        "Standard Query Language": false,
      }
  ),
  QuestionModel( 
      "Wenn du Daten filtern möchtest, welche Klausel würdest du verwenden?", {
        "Where": true,
        "Select": false,
        "Order by": false,
        "From": false,
      }
  ),
  QuestionModel( 
      "Welche Abfrage würde nur die Felder DesignerID und Designer zurückgeben?", {
        "SELECT * FROM Designers": false,
        "SELECT DesignerID AND Designer FROM Designers": false,
        "SELECT DesignerID, Designer FROM Designers": true,
        "SELECT DesignerID, Name FROM Designers": false,
      }
  ),
  QuestionModel( 
      "Was prüft die referenzielle Integrität?", {
        "SELECT * FROM Designers": false,
        "SELECT DesignerID AND Designer FROM Designers": true,
        "SELECT DesignerID, Designer FROM Designers": false,
        "SELECT DesignerID, Name FROM Designers": true,
      }
  ),
  QuestionModel( 
      "Wie würdest du Chairs in der Item-Tabelle anzeigen lassen, die einen Preis von mehr als 50 € haben?", {
        "SELECT * FROM Items WHERE Type = 'Chair' OR Price < 100": false,
        "SELECT * FROM Items WHERE Type = 'Chair' AND Price > 50": true,
        "SELECT * FROM Iterms WHERE Type = 'Chair' AND Price >= 50": false,
        "SELECT * FROM Items WHERE Price > 50": false,
      }
  ),
  QuestionModel( 
      "Eine Entität ____________.?", {
        "ist die Verbindung zwischen zwei verwandten Prozessen": false,
        "ist eine Person, ein Ort oder eine Sache": true,
        "hat Kardinalität (1:1, 1:N oder M:N)": false,
        "zeigt an, ob es null oder nicht null sein kann": false,
      }
  ),
];