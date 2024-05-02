import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isExpanded = false;
  bool isExpandedEdu = false;
  bool isExpandedBus = false;
  bool isExpandedSkill = false;
  bool isExpandedLan = false;
  bool isExpandedApp = false;
  bool isExpandedRes = false;



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent.shade200,
        actions: [
          Padding(padding: const EdgeInsets.only(),
          child: IconButton(
            onPressed: (){},
            icon: Image.asset('assets/images/share.png',width: 25,color: Colors.white,),
          ),),

          Padding(padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: (){},
              icon: Image.asset('assets/images/settings.png',width: 25,color: Colors.white,),
            ),),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent.shade200,
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40)),

                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(right: 290),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade400.withOpacity(0.5),
                                  spreadRadius: 10,
                                  blurRadius: 5
                                )
                              ]
                            ),
                            height: 60,
                            width: 60,
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Padding(padding: const EdgeInsets.only(right: 230,top: 10),
                        child: Text('Brandone Louis',style: TextStyle(fontSize: 17,color: Colors.grey.shade200,fontWeight: FontWeight.bold)),),

                        Padding(padding: const EdgeInsets.only(right: 250),
                        child: Text('California,USA',style: TextStyle(fontSize: 16,color: Colors.grey.shade200),),),
                        const SizedBox(height: 10),
                        
                        Padding(padding: const EdgeInsets.only(),
                        child: Row(
                          children: [
                            const Padding(padding: EdgeInsets.only(left: 20),
                            child: Text('120k',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16),),),

                            Padding(padding: const EdgeInsets.only(left: 5),
                            child: Text('Followers',style: TextStyle(color: Colors.grey.shade200,fontSize: 15),),),

                            const Padding(padding: EdgeInsets.only(left: 20),
                            child: Text('23k',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),),

                            Padding(padding: const EdgeInsets.only(left: 5),
                            child: Text('Following',style: TextStyle(color: Colors.grey.shade200,fontWeight: FontWeight.bold,fontSize: 15),),),
                            const SizedBox(width: 10,),
                            IconButton(
                              onPressed: (){},
                              icon: Container(
                                height: 30,
                                width: 130,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey.shade400),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    Padding(padding: const EdgeInsets.only(left:15),
                                    child: Text('Edit profile',style: TextStyle(color: Colors.grey.shade200),),),

                                    Padding(padding: const EdgeInsets.only(left: 5),
                                    child: Image.asset('assets/images/pencil.png',width: 20,color: Colors.white,),)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),),
                        
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          ExpansionTile(
                            title: const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(),
                                  child: Icon(CupertinoIcons.profile_circled,size: 40,),
                                ),

                                Padding(padding: EdgeInsets.only(left: 20),
                                  child: Text('About me',style: TextStyle(fontSize: 20),),),
                              ],

                            ),
                            trailing: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent.shade100,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(isExpanded ? CupertinoIcons.pen : Icons.add,),
                            ),
                            onExpansionChanged: (bool expanding) {
                              setState(() {
                                isExpanded = expanding;
                              });
                              // trailing: Icon(Icons.add),
                            },
                            // actions: Icon(Icons.add),
                            children: [
                              ListTile(
                                title: Column(
                                  children: [
                                    const Divider(),
                                    SizedBox(
                                      width: 320,
                                        child: const Text('Lorem ipsum dolor sit amet,consectuter adipiscing elit. Lectus id commodo egestas metus interdum dolor.')),
                                  ],
                                ),
                              )
                            ],),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          ExpansionTile(
                            title: const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(),
                                  child: Icon(Icons.business_center,size: 40,),
                                ),

                                Padding(padding: EdgeInsets.only(left: 20),
                                  child: Text('Work Experience',style: TextStyle(fontSize: 20),),),
                              ],

                            ),
                            trailing: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent.shade100,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(isExpandedBus ? CupertinoIcons.pen : Icons.add,),
                            ),
                            onExpansionChanged: (bool expanding) {
                              setState(() {
                                isExpandedBus = expanding;
                              });
                              // trailing: Icon(Icons.add),
                            },
                            // actions: Icon(Icons.add),
                            children: [
                              ListTile(
                                title: Column(
                                  children: [
                                    const Divider(),
                                    SizedBox(
                                        width: 320,
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                const Padding(padding: EdgeInsets.only(),
                                                child: Text('Manager',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),

                                                Padding(padding: const EdgeInsets.only(left: 210),
                                                child: Image.asset('assets/images/pencil.png',width: 22,color: Colors.deepPurpleAccent.shade400,),)
                                              ],
                                            ),

                                            Padding(padding: const EdgeInsets.only(right: 235,top: 10),
                                            child: Text('Amazon Inc',style: TextStyle(fontSize: 15,color: Colors.grey.shade600),),),

                                            Padding(padding: const EdgeInsets.only(right: 117,top: 10),
                                              child: Text('Jan 2015 - Feb 2022 . 5 Year',style: TextStyle(fontSize: 15,color: Colors.grey.shade600),),),
                                          ],
                                        )),
                                  ],
                                ),
                              )
                            ],),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          ExpansionTile(
                            title: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Image.asset('assets/images/education.png',width: 40,),
                                ),

                                const Padding(padding: EdgeInsets.only(left: 20),
                                  child: Text('Education',style: TextStyle(fontSize: 20),),),
                              ],

                            ),
                            trailing: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent.shade100,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(isExpandedEdu ? CupertinoIcons.pen : Icons.add,),
                            ),
                            onExpansionChanged: (bool expanding) {
                              setState(() {
                                isExpandedEdu = expanding;
                              });
                              // trailing: Icon(Icons.add),
                            },
                            // actions: Icon(Icons.add),
                            children: [
                              ListTile(
                                title: Column(
                                  children: [
                                    const Divider(),
                                    SizedBox(
                                        width: 320,
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                const Padding(padding: EdgeInsets.only(),
                                                  child: Text('Information Technology',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),

                                                Padding(padding: const EdgeInsets.only(left: 72),
                                                  child: Image.asset('assets/images/pencil.png',width: 22,color: Colors.deepPurpleAccent.shade400,),)
                                              ],
                                            ),

                                            Padding(padding: const EdgeInsets.only(right: 235,top: 10),
                                              child: Text('Amazon Inc',style: TextStyle(fontSize: 15,color: Colors.grey.shade600),),),

                                            Padding(padding: const EdgeInsets.only(right: 117,top: 10),
                                              child: Text('Jan 2015 - Feb 2022 . 5 Year',style: TextStyle(fontSize: 15,color: Colors.grey.shade600),),),
                                          ],
                                        )),
                                  ],
                                ),
                              )
                            ],),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          ExpansionTile(
                            title: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Image.asset('assets/images/social.png',width: 40,)
                                ),

                                const Padding(padding: EdgeInsets.only(left: 20),
                                  child: Text('Skill',style: TextStyle(fontSize: 20),),),
                              ],

                            ),
                            trailing: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent.shade100,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(isExpandedSkill ? CupertinoIcons.pen : Icons.add,),
                            ),
                            onExpansionChanged: (bool expanding) {
                              setState(() {
                                isExpandedSkill = expanding;
                              });
                              // trailing: Icon(Icons.add),
                            },
                            // actions: Icon(Icons.add),
                            children: [
                              ListTile(
                                title: Column(
                                  children: [
                                    const Divider(),
                                    SizedBox(
                                        width: 320,
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                  Container(
                                                    height: 40,
                                                    width: 90,
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey.shade200,
                                                      borderRadius: BorderRadius.circular(10)
                                                    ),
                                                    child: const Center(child: Text('LeaderShip',style: TextStyle(fontSize: 13),)),
                                                  ),

                                                const SizedBox(width: 8,),

                                                Container(
                                                  height: 40,
                                                  width: 90,
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey.shade200,
                                                      borderRadius: BorderRadius.circular(10)
                                                  ),
                                                  child: const Center(child: Text('Teamwork',style: TextStyle(fontSize: 13),)),
                                                ),
                                                const SizedBox(width: 8),

                                                Container(
                                                  height: 40,
                                                  width: 90,
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey.shade200,
                                                      borderRadius: BorderRadius.circular(10)
                                                  ),
                                                  child: const Center(child: Text('Visioner',style: TextStyle(fontSize: 13),)),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                const SizedBox(height: 80,),
                                                Container(
                                                  height: 40,
                                                  width: 120,
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey.shade200,
                                                      borderRadius: BorderRadius.circular(10)
                                                  ),
                                                  child: const Center(child: Text('Target Oriented',style: TextStyle(fontSize: 13),)),
                                                ),

                                                const SizedBox(width: 8,),

                                                Container(
                                                  height: 40,
                                                  width: 90,
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey.shade200,
                                                      borderRadius: BorderRadius.circular(10)
                                                  ),
                                                  child: const Center(child: Text('Consistend',style: TextStyle(fontSize: 13),)),
                                                ),
                                                const SizedBox(width: 8,),

                                                Container(
                                                  height: 40,
                                                  width: 80,
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey.shade200,
                                                      borderRadius: BorderRadius.circular(10)
                                                  ),
                                                  child: const Center(child: Text('Friendly',style: TextStyle(fontSize: 13),)),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),),
                                  ],
                                ),
                              )
                            ],),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          ExpansionTile(
                            title: const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(),
                                  child: Icon(Icons.language,size: 40,),
                                ),

                                Padding(padding: EdgeInsets.only(left: 20),
                                  child: Text('Language',style: TextStyle(fontSize: 20),),),
                              ],

                            ),
                            trailing: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent.shade100,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(isExpandedLan ? CupertinoIcons.pen : Icons.add,),
                            ),
                            onExpansionChanged: (bool expanding) {
                              setState(() {
                                isExpandedLan = expanding;
                              });
                              // trailing: Icon(Icons.add),
                            },
                            // actions: Icon(Icons.add),
                            children: [
                              ListTile(
                                title: Column(
                                  children: [
                                    const Divider(),
                                    SizedBox(
                                        width: 320,
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  height: 40,
                                                  width: 90,
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey.shade200,
                                                      borderRadius: BorderRadius.circular(10)
                                                  ),
                                                  child: const Center(child: Text('English',style: TextStyle(fontSize: 13),)),
                                                ),

                                                const SizedBox(width: 8,),

                                                Container(
                                                  height: 40,
                                                  width: 90,
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey.shade200,
                                                      borderRadius: BorderRadius.circular(10)
                                                  ),
                                                  child: const Center(child: Text('German',style: TextStyle(fontSize: 13),)),
                                                ),
                                                const SizedBox(width: 8),

                                                Container(
                                                  height: 40,
                                                  width: 90,
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey.shade200,
                                                      borderRadius: BorderRadius.circular(10)
                                                  ),
                                                  child: const Center(child: Text('Spanish',style: TextStyle(fontSize: 13),)),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 10,),
                                            Row(
                                              children: [
                                                Container(
                                                  height: 40,
                                                  width: 90,
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey.shade200,
                                                      borderRadius: BorderRadius.circular(10)
                                                  ),
                                                  child: const Center(child: Text('Mandarin',style: TextStyle(fontSize: 13),)),
                                                ),

                                                const SizedBox(width: 8,),

                                                Container(
                                                  height: 40,
                                                  width: 90,
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey.shade200,
                                                      borderRadius: BorderRadius.circular(10)
                                                  ),
                                                  child: const Center(child: Text('Italy',style: TextStyle(fontSize: 13),)),
                                                ),
                                                const SizedBox(width: 8),
                                              ],
                                            )
                                          ],
                                        )),
                                  ],
                                ),
                              )
                            ],),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          ExpansionTile(
                            title: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Image.asset('assets/images/badge.png',width: 40,)
                                ),

                                const Padding(padding: EdgeInsets.only(left: 20),
                                  child: Text('Appreciation',style: TextStyle(fontSize: 20),),),
                              ],

                            ),
                            trailing: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent.shade100,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(isExpandedApp ? CupertinoIcons.pen : Icons.add,),
                            ),
                            onExpansionChanged: (bool expanding) {
                              setState(() {
                                isExpandedApp = expanding;
                              });
                              // trailing: Icon(Icons.add),
                            },
                            // actions: Icon(Icons.add),
                            children: [
                              ListTile(
                                title: Column(
                                  children: [
                                    const Divider(),
                                    SizedBox(
                                        width: 320,
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                const Padding(padding: EdgeInsets.only(),
                                                  child: Text('Wireless Symposium (RWS)',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),

                                                Padding(padding: const EdgeInsets.only(left: 35),
                                                  child: Image.asset('assets/images/pencil.png',width: 22,color: Colors.deepPurpleAccent.shade400,),)
                                              ],
                                            ),

                                            Padding(padding: const EdgeInsets.only(right: 220,top: 10),
                                              child: Text('Your scientist',style: TextStyle(fontSize: 15,color: Colors.grey.shade600),),),

                                            Padding(padding: const EdgeInsets.only(right: 284,top: 10),
                                              child: Text('2014',style: TextStyle(fontSize: 15,color: Colors.grey.shade600),),),
                                          ],
                                        )),
                                  ],
                                ),
                              )
                            ],),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          ExpansionTile(
                            title: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Image.asset('assets/images/resume.png',width: 40 ,)
                                ),

                                const Padding(padding: EdgeInsets.only(left: 20),
                                  child: Text('Resume',style: TextStyle(fontSize: 20),),),
                              ],

                            ),
                            trailing: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent.shade100,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(isExpandedRes ? CupertinoIcons.pen : Icons.add,),
                            ),
                            onExpansionChanged: (bool expanding) {
                              setState(() {
                                isExpandedRes = expanding;
                              });
                              // trailing: Icon(Icons.add),
                            },
                            // actions: Icon(Icons.add),
                            children: [
                              ListTile(
                                title: Column(
                                  children: [
                                    const Divider(),
                                    SizedBox(
                                        width: 320,
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                Padding(padding: const EdgeInsets.only(),
                                                child: Image.asset('assets/images/pdf.png',width: 45,)),
                                              ],
                                            ),
                                            const Column(
                                              children: [
                                                Padding(padding: EdgeInsets.only(left: 5),
                                                child: Text('Jamet kudasi - CV - UI/UX Designer',style: TextStyle(fontSize: 14),)),
                                                Padding(padding: EdgeInsets.only(right: 10),
                                                child: Text('867 Kb . 14 Feb 2022 at 11:30 am',style: TextStyle(fontSize: 13,color: Colors.grey),),)
                                              ],
                                            ),

                                            const Padding(padding: EdgeInsets.only(),
                                            child: Icon(Icons.delete,color: Colors.red,size: 30,))

                                          ],
                                        )),
                                  ],
                                ),
                              )
                            ],),
                        ],
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
