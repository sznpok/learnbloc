import 'package:basiclearnbloc/sijan_sir_assignment/searchtextfield/presentation/bloc/searchtextfield_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchtextField extends StatelessWidget {
  const SearchtextField({super.key});

  @override
  Widget build(BuildContext context) {
    //maile yo stateless ma gareko sir lai sodhxu , stateless banayera yesari garda ramro ki stateful ma initiState ma garda ramro hunxa
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SearchtextfieldBloc>().add(GetAllSearchEvent());
    });
    final TextEditingController searchController = TextEditingController();

    return BlocProvider(
      create: (context) => SearchtextfieldBloc(),
      child: Scaffold(
        appBar: AppBar(title: Text('SearchTextield Screen')),
        body: BlocBuilder<SearchtextfieldBloc, SearchtextfieldState>(
          builder: (context, state) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextField(
                    controller: searchController,
                    onChanged: (value) {
                      context.read<SearchtextfieldBloc>().add(
                        SearchTextEvent(value),
                      );
                    },
                    decoration: InputDecoration(
                      hintText: 'Search Text',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          if ((searchController).text.isNotEmpty) {
                            searchController.clear();
                            context.read<SearchtextfieldBloc>().add(
                              SearchTextEvent(''),
                            );
                          }
                        },
                        icon: state.icon ?? Icon(Icons.search),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  if (state.status == FetchDropdownStatus.loaded)
                    Expanded(
                      child: ListView.builder(
                        itemCount: state.searchFieldValues.length,

                        itemBuilder: (context, index) {
                          final item = state.searchFieldValues[index];
                          return Card(child: ListTile(title: Text(item.value)));
                        },
                      ),
                    )
                  else if (state.status == FetchDropdownStatus.failure)
                    const Text('Failed to load data'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
