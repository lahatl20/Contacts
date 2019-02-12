class Contact {

  String firstName;
  String lastName;
  String phone;
  String email;
  String address;

  Contact(this.firstName, this.lastName, this.phone, this.email, this.address);
}

List<Contact> myContactList = [

  Contact('John', 'Doe', '000-000-0000', 'johndoe@gmail.com', 'Atlanta, GA'),
  Contact('Mary', 'Sue', '000-000-0001', 'marysue@gmail.com', 'Birmingham, AL'),
  Contact('David', 'Hancock', '000-000-0002', 'davehan@gmail.com', 'Richmond, VA'),
  Contact('Suzy', 'Que', '000-000-0003', 'sueq@gmail.com', 'New Orleans, CA'),
  Contact('Doom', 'Guy', '666-666-2012', 'slayalldemons@gmail.com', 'Mras Research Base, Mars'),
  Contact('Cloud', 'Strife', '000-000-0007', 'savegaia@gmail.com', 'Shinra Electric Power Company, Gaia'),
  Contact('Princess', 'Zelda', '439-547-8361', 'stopganon@gmail.com', 'Hyrule Castle, Hyrule'),
  Contact('Miles', 'Prower', '6453773747', 'mph@gmail.com', 'Green Hill Zone')
];