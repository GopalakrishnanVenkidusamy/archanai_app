import 'package:archanai/bloc/archanai_details_bloc.dart';
import 'package:archanai/routes/index.dart';
import 'package:archanai/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArchanaiList extends StatefulWidget {
  const ArchanaiList({super.key});

  @override
  State<ArchanaiList> createState() => _ArchanaiListState();
}

class _ArchanaiListState extends State<ArchanaiList> {
@override
  void initState() {
    BlocProvider.of<ArchanaiDetailsBloc>(context).add(GetArchanaiDetails());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Archanai Details"),
      ),
      body: BlocBuilder<ArchanaiDetailsBloc, ArchanaiDetailsState>(builder:(BuildContext context,state){
        if(state is ArchanaiDetail){
          return ListView.builder(
            padding: const EdgeInsets.all(10),
              itemCount: state.archanaiDetails.archanaiList?.length??0,
              itemBuilder: (BuildContext context ,int index){

            return Card(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: ListTile(
                  onTap:(){
                    Navigator.pushNamed(context, PageRoutes.archanaiDetail,arguments: state.archanaiDetails.archanaiList![index]);
                  },
                  leading: Image.asset("asserts/images/religion.png"),
                  title: Text(state.archanaiDetails.archanaiList![index].title??"",style: TextStyles.kLabelMedium.copyWith(color: Colors.black)),
                ),
              ),
            );
          });
        }
        return const Center(child: CircularProgressIndicator());
      }),
    );
  }
}
