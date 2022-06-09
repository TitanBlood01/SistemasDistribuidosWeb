class blog_p {
  final String date, title, description, image;

  blog_p({this.date, this.title, this.description, this.image});
}

List<blog_p> blogpost = [
  blog_p(
      date: "09 noviembre 2021",
      image: "assets/images/estacionamiento.png",
      title: "La nueva Torre Innovacion cuenta con espacios de parqueo",
      description:
          "En el presente año se inauguro la Torre Innovacion la cual contara con servico de parqueo por el momento solo esta en dispocion 25 espacios, pero por el momento aun no esta disponible para el demas pernoal que no sean directores de carrera"),
  blog_p(
      date: "09 noviembre 2021",
      image: "assets/images/semi.png",
      title: "Semisotano sera el primer espacio de parqueo",
      description:
          "La Torre Innovacion contara con dos secciones de parqueo la primera sera el Semisotano el cual contara con 37 espacios dividos tanto para coches como para motocicletas su disposicion se dara en el momento en el que se autorize su uso"),
  blog_p(
      date: "09 noviembre 2021",
      image: "assets/images/sotano.png",
      title: "El sontano 1 sera el segundo espacio de parqueo",
      description:
          "La segunda seccion que ontara la Torre Innovacion sera el sotano uno el cual contara con 37 espacios divididos en autos y motocicletas su disposicion se dara en el momento en el que se autorize su uso"),
];
