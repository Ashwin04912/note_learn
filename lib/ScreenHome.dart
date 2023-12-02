import 'package:flutter/material.dart';
import 'package:note_app_api/ScreenAddNote.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Note App"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            padding: const EdgeInsets.all(18),
            children: List.generate(
              10,
              (index) => NoteItem(
                id: index.toString(),
                title: 'Loren Ipsum Title $index',
                content:
                    '"Loren Ipsum" is a placeholder text commonly used in the design and typesetting industry. Its used to demonstrate the visual form of a document or a font without focusing on meaningful content. The text is typically nonsensical Latin-like words, allowing the viewer to focus on the layout and design rather than the actual meaning of the text.',
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Navigator.of(context).push(MaterialPageRoute(
          //   builder: (ctx) => ScreenAddNote(type: ActionType.addNote),
          // ));
        },
        label: const Text("New"),
        icon: const Icon(Icons.add),
      ),
    );
  }
}

class NoteItem extends StatelessWidget {
  final String id;
  final String title;
  final String content;
  const NoteItem({
    Key? key,
    required this.id,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (ctx) => ScreenAddNote(
        //               type: ActionType.editNote,
        //               id: id,
        //             )));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.blueGrey)),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Expanded(
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete),
                color: Colors.red,
              ),
              Text(
                content,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
