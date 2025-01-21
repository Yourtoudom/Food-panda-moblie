import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  ListTile listTile (BuildContext context, String text, IconData? icon, VoidCallback onTap){
    return icon == null ? ListTile(
      onTap: onTap,
      title: Text(text, style: const TextStyle(
        color: Colors.black,
        fontSize: 14,
      ),
      ),
    ) 
    : ListTile(
      onTap: onTap,
      leading: Icon(
        icon, color: const Color(0xFFFF2b85),
        ),
      title: Text(text, style: const TextStyle(
        color: Colors.black,
        fontSize: 14,
      ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          Builder(builder: (c){
            return  DrawerHeader(
              decoration: BoxDecoration(
                color: const Color(0xFFFF2b85),
                border: Border.all(color: const Color(0xFFFF2b85),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,

                    ),
                    child: const Center(
                      child: Text("D", style: TextStyle(
                        color: Color(0xFFFF2b85),
                        fontSize: 30,
                        fontWeight: FontWeight.w700,

                      ),
                      ),
                    ),
                  ),
                  const Text("YOURT OUDOMMONY",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,

                  ),
                  ),
                ],
              ),
              );
          }),

          Column(
            children: [
              listTile(context, "Voucherss & offers", Icons.local_offer_outlined,
              (){ },
              ),
              listTile(context, "Favouites", Icons.favorite_outline_rounded,(){ },
              ),
              listTile(context, "Orders & reordering", Icons.my_library_books_outlined,(){ },
              ),
              listTile(context, "Addresses", Icons.location_on_outlined,(){ },
              ),
              listTile(context, "Payment mathods", Icons.payment_rounded, () { },
              ),
              listTile(context, "help center", Icons.help_center_outlined, (){ },
              ),
              listTile(context, "Invite friends", Icons.wallet_giftcard_outlined, (){ },
              ),
              const Divider(),
              listTile(context, "Setting", null, (){ }),
              listTile(context, "Terms & Conditions / Privacy", null, (){ }),
              listTile(context, "Logout", null, (){ }),
            ],
          ),
        ],
      ),
    );
  }
}