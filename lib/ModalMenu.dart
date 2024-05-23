import 'package:flutter/material.dart';
import 'package:flutter_tarea/Datos.dart';

void ModalMenu(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Menú modal"),
          backgroundColor: Colors.brown,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        backgroundColor: Colors.green[50],
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // columnas
          ),
          itemCount: opcionesAcademicas.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: IconButton(
                onPressed: () {
                  llamadoModalMenu(
                    context,
                    opcionesAcademicas[index]['titulo'],
                    opcionesAcademicas[index]['icono'],
                    opcionesAcademicas[index]['codigo'],
                  );
                },
                icon: Column(
                  children: [
                    Icon(opcionesAcademicas[index]["icono"]),
                    Text(opcionesAcademicas[index]["titulo"]),
                  ],
                ),
              ),
            );
          },
        ),
      );
    },
  );
}

List opcionesAcademicas = [
  {
    'codigo': '001',
    'titulo': 'Notas',
    'icono': Icons.note,
  },
  {
    'codigo': '002',
    'titulo': 'Calendario',
    'icono': Icons.calendar_today,
  },
  {
    'codigo': '003',
    'titulo': 'Profesores',
    'icono': Icons.people,
  },
  {
    'codigo': '004',
    'titulo': 'Asignaturas',
    'icono': Icons.book,
  },
  {
    'codigo': '005',
    'titulo': 'Horarios',
    'icono': Icons.schedule,
  },
  {
    'codigo': '006',
    'titulo': 'Tareas',
    'icono': Icons.assignment,
  },
  {
    'codigo': '007',
    'titulo': 'Exámenes',
    'icono': Icons.assignment_turned_in,
  },
  {
    'codigo': '008',
    'titulo': 'Biblioteca',
    'icono': Icons.menu_book,
  },
  {
    'codigo': '009',
    'titulo': 'Eventos',
    'icono': Icons.event,
  },
  {
    'codigo': '010',
    'titulo': 'Laboratorios',
    'icono': Icons.science,
  },
  {
    'codigo': '011',
    'titulo': 'Tutorías',
    'icono': Icons.group,
  },
  {
    'codigo': '012',
    'titulo': 'Proyectos',
    'icono': Icons.group_work,
  },
  {
    'codigo': '013',
    'titulo': 'Investigación',
    'icono': Icons.search,
  },
  {
    'codigo': '014',
    'titulo': 'Inscripciones',
    'icono': Icons.how_to_reg,
  },
  {
    'codigo': '015',
    'titulo': 'Aulas Virtuales',
    'icono': Icons.computer,
  },
  {
    'codigo': '016',
    'titulo': 'Recursos Educativos',
    'icono': Icons.school,
  },
  {
    'codigo': '017',
    'titulo': 'Deportes',
    'icono': Icons.sports_soccer,
  },
  {
    'codigo': '018',
    'titulo': 'Actividades Extracurriculares',
    'icono': Icons.emoji_events,
  },
  {
    'codigo': '019',
    'titulo': 'Consejería',
    'icono': Icons.forum,
  },
  {
    'codigo': '020',
    'titulo': 'Voluntariado',
    'icono': Icons.volunteer_activism,
  },
];

void llamadoModalMenu(BuildContext context, String tituloAppBar, IconData menuIcono, String codigo) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(tituloAppBar),
          backgroundColor: Colors.green[800],
          foregroundColor: Colors.white,
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(menuIcono),
            )
          ],
        ),
        backgroundColor: Colors.green[50],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.save),
          backgroundColor: Colors.teal[700],
          foregroundColor: Colors.white,
        ),
        body: codigo == '001'
            ? ListView.builder(
                itemCount: notas.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(notas[index]["nombre"]),
                    subtitle: Text(notas[index]["creditos"].toString()),
                  );
                },
              )
            : const Text("No tiene texto"),
      );
    },
  );
}

