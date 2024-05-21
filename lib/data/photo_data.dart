import 'package:clone_photo_app/model/photo_model.dart';
import 'package:flutter/material.dart';

List<PhotoModel> forYouPhoto = [
  PhotoModel(
    image:
        'https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcS6HuPXKLP6UfXBrzMz42_2w-8nPjgCVZNmoA2AcNt_KXR8vcMdMra-IijGBznEsxwEFIwzRSRTlRE5kDM',
    title: 'Kompong Cham',
    subTitle: '25 SEP 2022',
    mainColum: MainAxisAlignment.start,
    mainRow: MainAxisAlignment.center,
  ),
  PhotoModel(
    image:
        'https://static.politico.com/1a/e3/1223ba8149b9a4ff335be9eb1ff1/191222-kim-jong-un-gty-773.jpg',
    title: 'Phnom Penh',
    subTitle: '26 OCT 2023',
    mainColum: MainAxisAlignment.spaceBetween,
    mainRow: MainAxisAlignment.center,
  ),
  PhotoModel(
    image:
        'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcTqWTqscXMM9X9AIs0KIZruO-5mB3EfdO-LSwZ1j360iolr_dYIrU73Ans1B0wq9NY2FauWSwlEnfEEdYI',
    title: 'Kompot',
    subTitle: '27 NOV 2024',
    mainColum: MainAxisAlignment.spaceBetween,
    mainRow: MainAxisAlignment.end,
  ),
];

List<PhotoModel> peopleAnPlace = [
  PhotoModel(
    image:
        'https://venngage-wordpress.s3.amazonaws.com/uploads/2022/09/meme_doge_dog.png',
    title: 'People',
    subTitle: '14',
    mainColum: MainAxisAlignment.start,
    mainRow: MainAxisAlignment.center,
  ),
  PhotoModel(
    image:
        'https://cdn.britannica.com/39/4039-050-FA851D93/Cambodia-map-boundaries-cities-locator.jpg',
    title: 'Place',
    subTitle: '77',
    mainColum: MainAxisAlignment.spaceBetween,
    mainRow: MainAxisAlignment.center,
  ),
];
