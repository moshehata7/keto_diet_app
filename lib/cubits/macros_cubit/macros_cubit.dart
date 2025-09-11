import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'macros_state.dart';

class MacrosCubit extends Cubit<MacrosState> {
  MacrosCubit() : super(MacrosInitial());
}
