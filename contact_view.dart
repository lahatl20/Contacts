import 'package:flutter/material.dart';
import 'contact_data.dart';

class DisplayContacts extends StatefulWidget{

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<DisplayContacts>{

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  List<Contact> _listOfContacts = myContactList;

  @override
  void dispose(){
    firstNameController.dispose();
    lastNameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){

    return Column(
      children: <Widget>[
            TextField(controller: firstNameController, decoration: InputDecoration(labelText: 'First Name', hintText: 'Enter First Name Here')),
            TextField(controller: lastNameController, decoration: InputDecoration(labelText: 'Last Name', hintText: 'Enter Last Name Here')),
            TextField(controller: phoneController, decoration: InputDecoration(labelText: 'Phone Number', hintText: 'Enter Phone Number Here')),
            TextField(controller: emailController, decoration: InputDecoration(labelText: 'Email Address', hintText: 'Enter Email Address Here')),
            TextField(controller: addressController, decoration: InputDecoration(labelText: 'Address', hintText: 'Enter Address Here')),
            RaisedButton(
              onPressed: onBtnClick,
              child: Text('Add Contact'),
            ),

            Expanded(
                child: ListView.builder(
                    itemCount: _listOfContacts.length,
                    itemBuilder: _buildListBody))
          ],
        );
  }

  Widget _buildListBody(BuildContext context, int index){

    return ListTile(

      leading: CircleAvatar(child: Text(_listOfContacts[index].firstName[0] + _listOfContacts[index].lastName[0]),),
      title: Text(_listOfContacts[index].firstName + ' ' + _listOfContacts[index].lastName),
      subtitle: Text(_listOfContacts[index].address),
      onTap: () => _onContactTapped(context, _listOfContacts[index]),
    );
  }

  void onBtnClick(){

    setState(() {

      AlertDialog alrt = new AlertDialog(
        title: Text('Would you like to add the contact?'),
        content: Row(
          children: <Widget>[
            RaisedButton(
              onPressed: addContact,
              child: Text('Yes'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('No'),
            )
          ],
        )
      );

      showDialog(context: context, builder: (context) {
        return alrt;});
      },
    );
    }

    void addContact(){

      Contact userInput = new Contact(firstNameController.text, lastNameController.text, phoneController.text, emailController.text, addressController.text);
      _listOfContacts.add(userInput);
    }

  void _onContactTapped(BuildContext context, Contact tappedContact){
    Scaffold.of(context).showSnackBar(
        SnackBar(
            content: Text(
                tappedContact.firstName + ' ' +
                    tappedContact.lastName + "\n" +
                    tappedContact.phone + "\n" +
                    tappedContact.email)
        )
    );
  }
}