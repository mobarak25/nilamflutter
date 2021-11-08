import 'dart:io';
import 'package:flutter/material.dart';
import 'package:nilam/components/default_button.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/size_healper.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:image_picker/image_picker.dart';

class ImageForm extends StatefulWidget {
  const ImageForm({Key? key}) : super(key: key);

  @override
  _ImageFormState createState() => _ImageFormState();
}

class _ImageFormState extends State<ImageForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kWidth(context) * 0.04),
      child: DottedBorder(
        color: kBorderColor,
        dashPattern: [4, 3],
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Form(
          child: Column(
            children: [
              SizedBox(height: 20),
              ProductImagePicker(),
              SizedBox(height: 20),
              DefaultButton(
                text: 'Next',
                press: () {},
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductImagePicker extends StatefulWidget {
  const ProductImagePicker({Key? key}) : super(key: key);

  @override
  _ProductImagePickerState createState() => _ProductImagePickerState();
}

class _ProductImagePickerState extends State<ProductImagePicker> {
  final ImagePicker _picker = ImagePicker();
  final List<XFile>? imagesFileList = [];

  void selectImages() async {
    final List<XFile>? selectedImages = await _picker.pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      imagesFileList!.addAll(selectedImages);
    }

    setState(() {});
  }

  int _radioGroupValue = 0;

  void changeRadioSelection(int value) {
    setState(() {
      _radioGroupValue = value;
      //print('Radio butto selected: $value');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DottedBorder(
          color: kBrandPrimaryColor.withOpacity(0.5),
          borderType: BorderType.Circle,
          dashPattern: [3, 2],
          child: Center(
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: kBrandPrimaryColor.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.add_a_photo,
                  color: kBrandPrimaryColor,
                ),
                onPressed: () {
                  selectImages();
                },
              ),
            ),
          ),
        ),
        imagesFileList!.isNotEmpty
            ? Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text("This will be your main photo"),
                  ),
                  Container(
                    height: kHeight(context) * 0.3,
                    padding: EdgeInsets.only(top: 10, bottom: 20),
                    width: kWidth(context),
                    child: Image.file(
                      File(
                        imagesFileList![_radioGroupValue].path,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              )
            : Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text("Please select your image"),
              ),
        Container(
          width: kWidth(context),
          child: Wrap(
            spacing: 4,
            alignment: WrapAlignment.start,
            children: [
              ...List.generate(
                imagesFileList!.length,
                (index) => Container(
                  width: kWidth(context) * 0.205,
                  child: InkWell(
                    onTap: () => changeRadioSelection(index),
                    child: Column(
                      children: [
                        AspectRatio(
                          aspectRatio: 1,
                          child: Image.file(
                            File(
                              imagesFileList![index].path,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Radio(
                          activeColor: kBrandPrimaryColor,
                          value: index,
                          groupValue: _radioGroupValue,
                          onChanged: (int? value) {
                            changeRadioSelection(value!);
                          },
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
