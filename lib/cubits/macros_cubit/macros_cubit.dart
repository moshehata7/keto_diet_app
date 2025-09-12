import 'package:bloc/bloc.dart';
import 'package:diey_app/cubits/macros_cubit/macros_state.dart';
import 'package:meta/meta.dart';


class MacrosCubit extends Cubit<MacrosState> {
  MacrosCubit() : super(MacrosInitial());
  void calculateMacros({required double calories}) {
    double proteinCaloris;
    proteinCaloris = calories * .2;
    double carbCaloris;
    carbCaloris = calories * .1;

    double fatCaloris;
    fatCaloris = calories * .7;
    emit(MacrosCalculated(protein: proteinCaloris, carbs: carbCaloris, fat: fatCaloris));
  }
}
