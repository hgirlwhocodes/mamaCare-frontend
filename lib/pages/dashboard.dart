import 'package:flutter/material.dart';
import './drawer.dart';
import 'dart:math';
import './notifications.dart';

enum WhyFarther { logout }

class DashboardPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DashboardPageState();
  }
}

class _DashboardPageState extends State<DashboardPage> {
  List colors = [
    Colors.lightGreen[100],
    Colors.green[100],
    Colors.yellow[100],
    Colors.pink[50],
    Colors.lightBlue[100],
    Colors.lightGreenAccent[100],
    Colors.indigo[100],
    Colors.indigo[200],
    Colors.cyan[100],
  ];
  Random random = new Random();
  dynamic _selection;

  int index = 0;

  int changeIndex() {
    setState(() => index = random.nextInt(5));
    return index;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        drawer: DrawerPage(),
        appBar: AppBar(
          title: Text('Dashboard'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications_active),
              tooltip: 'Notification',
              onPressed: () {
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationsPage()),
            );
              },
            ),
            PopupMenuButton<WhyFarther>(
              onSelected: (WhyFarther result) {
                setState(() {
                  _selection = result;
                });
              },
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<WhyFarther>>[
                    const PopupMenuItem<WhyFarther>(
                      value: WhyFarther.logout,
                      child: Text('Logout'),
                    )
                  ],
            )
          ],
        ),
        body: // RaisedButton(child: Text('Daily Check In'), onPressed: () {},),
            CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20.0),
              sliver: SliverGrid.count(
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                crossAxisCount: 3,
                children: <Widget>[
                  RaisedButton(
                      child: Text('Age-related Risks'),
                      color: colors[random.nextInt(9)],
                      onPressed: () {
                        newAgeRelated(context).then((value) {
                          print('Value is $value');
                        });
                      }),
                  RaisedButton(
                    child: Text('Diabetes'),
                    color: colors[random.nextInt(9)],
                    onPressed: () {
                      newDiabetes(context).then((value) {
                        print('Value is $value');
                      });
                    },
                  ),
                  RaisedButton(
                    child: Text('Post-Partum Depression'),
                    color: colors[random.nextInt(9)],
                    onPressed: () {
                      newDepression(context).then((value) {
                        print('Value is $value');
                      });
                    },
                  ),
                  RaisedButton(
                    child: Text('Obstetric Hemorrhage'),
                    color: colors[random.nextInt(9)],
                    onPressed: () {
                      newHemorrhage(context).then((value) {
                        print('Value is $value');
                      });
                    },
                  ),
                  RaisedButton(
                    child: Text('Pregnancy Related Infections'),
                    color: colors[random.nextInt(9)],
                    onPressed: () {
                      newInfections(context).then((value) {
                        print('Value is $value');
                      });
                    },
                  ),
                  RaisedButton(
                    child: Text('Preeclampsia & Eclampsia'),
                    color: colors[random.nextInt(9)],
                    onPressed: () {
                      newEclampsia(context).then((value) {
                        print('Value is $value');
                      });
                    },
                  ),
                  RaisedButton(
                    child: Text('Unnecessary C-Section'),
                    color: colors[random.nextInt(9)],
                    onPressed: () {
                      newCSection(context).then((value) {
                        print('Value is $value');
                      });
                    },
                  ),
                  RaisedButton(
                    child: Text('Embolism'),
                    color: colors[random.nextInt(9)],
                    onPressed: () {
                      newEmbolism(context).then((value) {
                        print('Value is $value');
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

Future<bool> newEclampsia(BuildContext context) {
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text("Pre-Eclampsia:"),
          actions: <Widget>[
            FlatButton(
              child: new Text('Read More'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
          ],
          content: Text(
              "Call 911 if you are having seizures, as this may mean you have a condition called eclampsia. Call your healthcare provider (if not, then 911) if you have a very painful headache, vision changes, or pain in the upper right area of your belly. This may mean you have high blood pressure or post-birth preeclampsia. Pre-eclampsia is a disorder that occurs only during pregnancy and the postpartum period and affects both the mother and the unborn baby. Affecting at least 5-8% of all pregnancies, it is a rapidly progressive condition characterized by high blood pressure and usually the presence of protein in the urine. Swelling, sudden weight gain, headaches and changes in vision are important symptoms; however, some women with rapidly advancing disease report few symptoms."),
        );
      });
}

Future<bool> newCSection(BuildContext context) {
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text("C Section"),
          actions: <Widget>[
            FlatButton(
              child: new Text('Read More'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
            FlatButton(
              child: new Text('Close'),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
          ],
          content: Text("""
            Call your healthcare provider (if not, then 911) if you have an incision that is not healing, has increased redness or any pus from episiotomy or c-section site. This may mean you have an infection.
Cesarean sections are the most frequent hospital surgery in the United States. Although there are many instances when c-sections are the safest choice, far too many are performed for non-medically indicated reasons.
It could be done because your labor is not progressing, your baby is in distress or in an abnormal position, you have a prolapsed umbilical cord and others. 
Risks to the mother include infection, hemorrhage (excessive bleeding), blood clots, surgical injury, and risks to future pregnancies. 
"""),
        );
      });
}

Future<bool> newEmbolism(BuildContext context) {
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text("Embolism"),
          actions: <Widget>[
            FlatButton(
              child: new Text('Read More'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
            FlatButton(
              child: new Text('Close'),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
          ],
          content: Text("""
            Call 911 if you feel pain in your chest, obstructed breathing, or trouble catching your breath. This may mean you have a blood clot in your lung or a heart problem.
Call your healthcare provider (if not, then 911) if you have redness, swelling, warmth, pain in the calf area of your leg, which may mean you have a blood clot. 
"""),
        );
      });
}

Future<bool> newAgeRelated(BuildContext context) {
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text("Age Related Risks"),
          actions: <Widget>[
            FlatButton(
              child: new Text('Read More'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
            FlatButton(
              child: new Text('Close'),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
          ],
          content: Text("""
            Age-related Pregnancy Risks:
As you get older, you’re more likely than younger women to have certain health conditions that can cause complications before and during pregnancy, including fertility problems, preexisting or gestational diabetes, hypertension, preeclampsia, birth defects, stillbirth, miscarriage, etc. 

"""),
        );
      });
}

Future<bool> newDiabetes(BuildContext context) {
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text("Diabetes"),
          actions: <Widget>[
            FlatButton(
              child: new Text('Read More'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
            FlatButton(
              child: new Text('Close'),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
          ],
          content: Text("""
            Diabetes is a condition in which the body cannot use the sugars and starches (carbohydrates) it takes in as food to make energy. The body either makes no insulin or too little insulin or cannot use the insulin it makes to change those sugars and starches into energy. As a result, extra sugar builds up in the blood.
About seven out of every 100 pregnant women in the United States get gestational diabetes. Gestational diabetes is diabetes that happens for the first time when a woman is pregnant. Most of the time, it goes away after you have your baby. But it does increase your risk for developing type 2 diabetes later on. Your child is also at risk for obesity and type 2 diabetes.

"""),
        );
      });
}

Future<bool> newDepression(BuildContext context) {
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text("Depression / Mood"),
          actions: <Widget>[
            FlatButton(
              child: new Text('Read More'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
            FlatButton(
              child: new Text('Close'),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
          ],
          content: Text("""
            Call 911 if you have thoughts or feelings of wanting to hurt yourself or someone else. This may mean you have postpartum depression.
Postpartum depression is depression that occurs after having a baby. Feelings of postpartum depression are more intense and last longer than those of “baby blues,” a term used to describe the worry, sadness, and tiredness many women experience after having a baby. “Baby blues” symptoms typically resolve on their own within a few days.


"""),
        );
      });
}

Future<bool> newHemorrhage(BuildContext context) {
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text("Diabetes"),
          actions: <Widget>[
            FlatButton(
              child: new Text('Read More'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
            FlatButton(
              child: new Text('Close'),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
          ],
          content: Text("""
            Call your healthcare provider (if not, then 911) if you have bleeding that soaks through one pad per hour, or have blood clots that are the size of an egg or bigger. This may mean you have an obstetric hemorrhage. 
Postpartum hemorrhage (also called PPH) is when a woman has heavy bleeding after giving birth. It’s a serious but rare condition. It usually happens within 1 day of giving birth, but it can happen up to 12 weeks after having a baby. About 1 to 5 in 100 women who have a baby (1 to 5 percent) have PPH. 

PPH can cause a severe drop in blood pressure. If not treated quickly, this can lead to shock and death. Shock is when your body organs don’t get enough blood flow. 

"""),
        );
      });
}

Future<bool> newInfections(BuildContext context) {
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text("Infections"),
          actions: <Widget>[
            FlatButton(
              child: new Text('Read More'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
            FlatButton(
              child: new Text('Close'),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
          ],
          content: Text("""
            Call your healthcare provider (if not, then 911) if you have an incision that is not healing, has increased redness or any pus from episiotomy or c-section site. This may mean you have an infection.
Call your healthcare provider (if not, then 911) if you have temperature of 100.4°F or 38°C, foul-smelling vaginal blood or discharge; you may have an infection. 
During pregnancy, some common infections like the common cold or a skin infection do not usually cause serious problems. But other infections can be dangerous to you, your baby, or both. Some infections may lead to preterm birth and low birth weight babies. Others can cause serious illness, birth defects, and lifelong disabilities, such as hearing loss or learning problems.

"""),
        );
      });
}
