class People{
  int id;
  String name;
  String gender;
  String email;
  String address;
  String phonenumber;
  String photo;

  People(this.id, this.name, this.gender, this.email, this.address, this.phonenumber, this.photo);

  static List<People> generate(){

    return[
      People(1, 'Jonh', 'M', 'Jonh@gmail.com', 'Home', '090909909', 'https://t3.ftcdn.net/jpg/04/73/67/64/240_F_473676400_VyH1ey15WGBA6L9MILjha6thtMVfuRh2.jpg'),
      People(2, 'Anna', 'F', 'Anna@gmail.com', 'Home', '090909909', 'https://t4.ftcdn.net/jpg/02/20/75/75/240_F_220757539_PDi6DArFB3rKkc35S6COFH9527OWpK94.jpg'),
      People(3, 'Billy', 'M', 'Billy@gmail.com', 'Home', '090909909', 'https://t4.ftcdn.net/jpg/02/35/69/37/240_F_235693712_FjxiuelKbA9gZVqvfJ4hfOBHF06ipVKv.jpg'),
      People(4, 'Nancy', 'M', 'Nancy@gmail.com', 'Home', '090909909', 'https://t4.ftcdn.net/jpg/01/39/46/71/240_F_139467131_ZXu2eLaPHiP6fqVARnVuPq2AHF4v7qcX.jpg'),
      People(5, 'Emily', 'F', 'Emily@gmail.com', 'Home', '090909909', 'https://t3.ftcdn.net/jpg/04/20/63/50/240_F_420635045_1W48gZrWMmvw2o4r9t7bi49aCRj71JLt.jpg'),
      People(6, 'Jack', 'M', 'Jack@gmail.com', 'Home', '090909909', 'https://t3.ftcdn.net/jpg/01/65/66/88/240_F_165668859_7GUoYxU6CqN0HtBBphQzEfcstFazYtRV.jpg'),

    ];
  }
}