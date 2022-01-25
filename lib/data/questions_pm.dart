import 'package:bachelorsimulator/model/question_model.dart';

List<QuestionModel> questionsPM = [
QuestionModel( 
      "Welche ist keine formale Rolle in dem traditionellen Projektmanagement?", {
        "Projektteammitglied": false,
        "Projektadministrator": true,
        "Projektleiter": false,
        "Projektauftraggeber": false,
      }
  ),
  QuestionModel( 
      "Wofür steht die Abkürzung EVA?", {
        "Earned Value Analysis": true,
        "Estimation, Vision, Analysis": false,
        "Evaluated Volume Activity": false,
        "Earned Value Administration": false,
      }
  ),
  QuestionModel( 
      "Wie wird Earned Value (EV) gerechnet?", {
        "aktuelle Kosten x geplante Kosten": false,
        "aktueller Progress x geplante Kosten": true,
        "geplanter Progress x aktueller Kosten": false,
        "aktueller Progress x geplanter Progress": false,
      }
  ),
  QuestionModel( 
      "Wie läuft der Progress der Nutzwertanalyse?", {
        "Projekt definieren > Nutzwerte des Projektes auflisten > Hauptnutzwerte auswählen": false,
        "Benennung der Alternativen > Kosten der Alternativen definieren > Kosten vergleichen > Projekt mit den niedrigsten Kosten auswählen": false,
        "Benennung der Alternativen > Festlegung der Bewertungskriterien > Gewichtung durch Zahlen definieren > Skala zur Zielerfüllungsgrad aufstellen > Nutzwert pro Alternative definieren": true,
        "Benennung der Alternativen > Dauer der Alternativen > Dauer der Alternativen vergleichen > Projekt mit dem kürzesten Dauer auswählen": false,
      }
  ),
  QuestionModel( 
      "Welche ist eine qualitative Risikoanalye?", {
        "SWOT-Analyse": true,
        "Nutzwertanalyse": false,
        "Wahrscheinlichkeitsverteilung": false,
        "Simulationsmodelle": false,
      }
  ),
  QuestionModel( 
      "Ein Risiko ist: Eintrittswahrscheinlichkeit eines erwünschten Ereignisses × Auswirkung bei Eintritt des Ereignis.", {
        "Richtig": false,
        "Falsch": true,
   
      }
  ),
  QuestionModel( 
      "Welche Anordnungsbeziehung ist die Normalfolge (NF) bei den Vorgängen?", {
        "Anfang-Anfang": false,
        "Ende-Ende": false,
        "Anfang-Ende": false,
        "Ende-Anfang": true,
      }
  ),
  QuestionModel( 
      "Wofür steht die Abkürzung EVA?", {
        "Anfang-Anfang": false,
        "Ende-Ende": false,
        "Anfang-Ende": false,
        "Ende-Anfang": true,
      }
  ),
  QuestionModel( 
      "Was ist die Ende-Ende Beziehung?", {
        "das Beginn von Vorgang 1 ist Voraussetzung für den Beginn von Vorgang 2": false,
        "das Ende von Vorgang 1 ist Voraussetzung für das Ende von Vorgang 2": true,
        "der Beginn von Vorgang 1 ist Voraussetzung für das Ende von Vorgang 2": false,
        "das Ende von Vorgang 1 ist Voraussetzung für den Beginn von Vorgang 2": false,
      }
  ),
  QuestionModel( 
      "Der kritischer Pfad ist: Die Kette der kritischen Vorgänge.", {
        "Richtig": true,
        "Falsch": false,
       
      }
  ),
  QuestionModel( 
      "Bei der Projektumfeldanalyse wird nur das externe Umfeld analysiert?", {
        "Richtig": false,
        "Falsch": true,
     
      }
  ),
  QuestionModel( 
      "Was ist KEIN Teil des Projekthandbuches?", {
        "Projektorganigramm": false,
        "Projektabschlussbericht": false,
        "Protokolle": false,
        "Lieferantenliste": true,
      }
  ),
  QuestionModel( 
      "Der Balkenplan wird auch als GANTT Chart genannt?", {
        "Richtig": true,
        "Falsch": false,
      
      }
  ),
  QuestionModel( 
      "Welche Aussage ist bezüglich des GANTT Charts FALSCH?", {
        "Er ist ein horizontaler bar chart.": false,
        "Er wurde Anfang der 2000er entwickelt.": true,
        "Er wurde von Henry L. Gantt entwickelt.": false,
        "Es bietet eine grafische Darstellung eines Zeitplans, der bei der Planung, Koordination und Verfolgung bestimmter Aufgaben in einem Projekt hilft.": false,
      }
  ),
  QuestionModel( 
      "SCRUM ist eine agile Methode?", {
        "Richtig": true,
        "Falsch": false,
     
      }
  ),
  QuestionModel( 
      "Von welcher Firma wurde Kanban erstellt?", {
        "Toyota": true,
        "Honda": false,
        "Yamaha": false,
        "Nissan": false,
      }
  ),
  QuestionModel( 
      "Was ist KEIN Step in Kanban?", {
        "Push your tasks": true,
        "Visualize your work": false,
        "Monitor, adapt and improve": false,
        "Limit work in progress": false,
      }
  ),
  QuestionModel( 
      "In einer Meilenstein-Trendanalyse bedeutet eine steigende Linie Verzögerung bei einem Meilenstein?", {
        "Richtig": true,
        "Falsch": false,
      
      }
  ),
  QuestionModel( 
      "Was sind Ressourcen?", {
        "Geld bewertete Mengen an Produktionsfaktoren und Dienstleistungen": false,
        "Personen, die Einfluss auf oder berechtigtes Interesse am Projekt haben bzw. vom Projekt beeinflusst werden": false,
        "Mittel, die zur Durchführung von Vorhaben benötigt werden": true,
        "Ergebnisse eines Projekts": false,
      }
  ),
  QuestionModel( 
      "Der Projektstrukturplan wird auch als Work Burndown Structure genannt?", {
        "Richtig": false,
        "Falsch": true,
        
      }
  ),
  QuestionModel( 
      "Welche Aussage ist FALSCH: Der Projektstrukturplan bietet:", {
        "eine systematische Erfassung aller Aufgaben": false,
        "eine Kostenübersicht des Projekts": true,
        "eine übersichtliche Darstellung": false,
        "Untergliederung bis zu plan- und kontrollierbaren Arbeitspaketen": false,
      }
  ),
  QuestionModel( 
      "Welcher Meilenstein muss Teil eines Meilensteinplans sein?", {
        "Projekt vorbereitet": false,
        "Projekt angefangen": false,
        "Projekt kontrolliert": false,
        "Projekt zugewiesen": true,
      }
  )
];