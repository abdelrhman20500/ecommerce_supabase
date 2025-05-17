import 'package:ecommerce_supabase/Features/Home/presentation/view_manger/cubit/nav_bar_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavBarCubit extends Cubit<NavBarState>{
  NavBarCubit() :super(NavBarInitial());
   int currentIndex=0;
   void changeIndex(int index){
     currentIndex = index;
     emit(ChangedIndex());
   }
}