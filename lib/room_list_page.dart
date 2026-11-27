import 'package:flutter/material.dart';

import 'room_type.dart';

class RoomListPage extends StatefulWidget {
  const RoomListPage({
    super.key,
    required this.preferred,
    required this.guests,
    required this.checkIn,
  });

  final RoomPreference preferred;
  final int guests;
  final String checkIn;

  @override
  State<RoomListPage> createState() => _RoomListPageState();
}

class _RoomListPageState extends State<RoomListPage> {
  late final List<RoomType> _rooms;

  @override
  void initState() {
    super.initState();
    _rooms = buildRooms(widget.preferred);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Choose Your Room')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Check-in ${widget.checkIn}\n${widget.guests} guests',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ExpansionPanelList(
              dividerColor: Colors.grey.shade300,
              elevation: 1,
              materialGapSize: 1,
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _rooms[index].isExpanded = isExpanded;
                });
              },
              children: [
                for (final room in _rooms)
                  ExpansionPanel(
                    canTapOnHeader: true,
                    isExpanded: room.isExpanded,
                    headerBuilder: (context, isExpanded) => ListTile(
                      leading: Icon(room.icon),
                      title: Text(room.name),
                    ),
                    body: ListTile(subtitle: Text(room.description)),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
