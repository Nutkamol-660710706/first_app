import 'package:flutter/material.dart';
//import 'components/custom_counter_widget.dart';
import 'components/profile_card.dart';

class SimpleCustomWidget extends StatefulWidget {
  const SimpleCustomWidget({super.key});

  @override
  State<SimpleCustomWidget> createState() => _SimpleCustomWidgetState();
}

class _SimpleCustomWidgetState extends State<SimpleCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Widget"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileCard(
              name: "Nutkamol Piriyatanasrub",
              position: "Programer",
              email: "piriyatanasrub_n@silpakorn.edu",
              phone: "063-8296661",
              mypic: 'https://scontent.fbkk17-1.fna.fbcdn.net/v/t39.30808-1/441902223_1591591771402911_3800409797276122048_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=105&ccb=1-7&_nc_sid=e99d92&_nc_eui2=AeHLFoaCbkdScThI675KTXROBnHw3c07dxAGcfDdzTt3EOdsk5XgWJa5D9uD3XtKVESfZ64z_NOL6HdPJmUujGUm&_nc_ohc=vxoXUNE8XE8Q7kNvwEx7lIq&_nc_oc=AdmNFPUOoQrAESUNeqKQdWFNEfwy8X9BHwEDutopUhMc2ciWnZ1F7nWxc_tQ5_F11Cc&_nc_zt=24&_nc_ht=scontent.fbkk17-1.fna&_nc_gid=LBan4SibPrViuczo_1sGug&oh=00_AfdWVRYQexohniS_u7-6eZP4z5OrehNH435fd0kNROr-xA&oe=68F8EBDF',
            ),
          ],
        ),
      ),
    );
  }
}