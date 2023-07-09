import 'package:flutter/material.dart';

class MainActivity extends StatefulWidget {
  const MainActivity({super.key});



  @override
  State<MainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {

  var MyList = [
    {"name":"Nazmul Hossain","e-mail_address":"nazmul123@gmail.com","phone_number":"01789586952"},
    {"name":"Mamun Hossain","e-mail_address":"mamun900@gmail.com","phone_number":"01720365978"},
    {"name":"Alam Hossain","e-mail_address":"alam022@gmail.com","phone_number":"01748569875"},
    {"name":"Farzana Khatun","e-mail_address":"farzana999@gmail.com","phone_number":"01903256987"},
    {"name":"Lipi Begum","e-mail_address":"lipi088@gmail.com","phone_number":"01701236589"},
    {"name":"Tithi Islam","e-mail_address":"tithi000@gmail.com","phone_number":"01745869526"},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact List"),
        centerTitle: true,
      ),

      body: ListView.builder(
          itemCount: MyList.length,
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                showModalBottomSheet(
                    context: context,
                    builder: (context){
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Contact Details",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),

                            const SizedBox(height: 20,),

                            Text("Name: ${MyList[index]["name"]!}",style: const TextStyle(fontSize: 17),),
                            Text("Email: ${MyList[index]["e-mail_address"]!}",style: const TextStyle(fontSize: 17),),
                            Text("Phone Number: ${MyList[index]["phone_number"]!}",style: const TextStyle(fontSize: 17),),
                          ],
                        ),
                      );

                    });
              },
              child : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text(MyList[index]["name"]!),
                  ),
                ],
              ),
            );
          }
      ),

    );
  }
}
