import 'package:archanai/model/archanai_list.dart';
import 'package:archanai/utils/text_styles.dart';
import 'package:flutter/material.dart';

class ArchanaiDetail extends StatefulWidget {
  const ArchanaiDetail({super.key});

  @override
  State<ArchanaiDetail> createState() => _ArchanaiDetailState();
}

class _ArchanaiDetailState extends State<ArchanaiDetail> {
  late ArchanaiLists? archanaiList;

  @override
  Widget build(BuildContext context) {
    archanaiList = ModalRoute.of(context)!.settings.arguments
    as  ArchanaiLists;
    return Scaffold(
      appBar: AppBar(
        title: Text(archanaiList?.title??""),
      ),
      body:ListView.builder(
        padding: const EdgeInsets.all(10),
          itemCount: archanaiList?.datas?.length??0,
          itemBuilder:(BuildContext context,int index){
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListTile(
                  leading:(archanaiList?.datas![index].image != null && archanaiList?.datas?[index].image != "")
                      ? ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                        child: SizedBox(
                          width: 60,
                          height: 100,
                          child: Image.network(
                                                archanaiList?.datas![index].image ?? "",
                                                fit: BoxFit.fill,
                                                errorBuilder: (context, error, stackTrace) {
                          // In case of error, show the placeholder image
                          return Image.asset(
                            "assets/images/placeholder.png",
                            fit: BoxFit.fill,
                          );
                                                },
                                              ),
                        ),
                      )
                      : Image.asset(
                    "assets/images/placeholder.png",
                    fit: BoxFit.fill,
                  ),
                  title: Text(archanaiList?.datas![index].nameEnglish??"",style: TextStyles.kLabelMedium.copyWith(color: Colors.black)),
                  subtitle: Text("Created at ${archanaiList?.datas![index].created??""}",style: TextStyles.kLabelSmall.copyWith(fontSize: 10)),
                ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("ID : ",style: TextStyles.kLabelSmall.copyWith(color: Colors.black)),
                    Text(archanaiList?.datas![index].uniqueId??"",style: TextStyles.kLabelSmall.copyWith(color: Colors.grey.shade800)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Price : ",style: TextStyles.kLabelSmall.copyWith(color: Colors.black)),
                    Text("\u{20B9} ${archanaiList?.datas![index].amount??""}",style: TextStyles.kLabelSmall.copyWith(color: Colors.grey.shade800)),
                  ],
                ),
              ],
            ),
          ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
