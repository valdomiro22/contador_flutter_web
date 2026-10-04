import 'dart:developer' as dev;

import 'package:contador/features/feature_modelo/domain/providers/contador_comain_providers.dart';
import 'package:contador/features/feature_modelo/domain/usecases/insert_contador_use_case.dart';
import 'package:contador/features/feature_modelo/presentation/screens/listar/listar_contadores_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'adicionar_contador_notifier.freezed.dart';

part 'adicionar_contador_notifier.g.dart';

@riverpod
class AdicionarContadorNotifier extends _$AdicionarContadorNotifier {
  @override
  AdicionarContadorState build() => AdicionarContadorState.inicial();

  void onNomeChanged(String value) {
    state = state.copyWith(nome: value, nomeErro: null, geralErro: null, isSuccess: false);
  }

  void onValorAtualChanged(String value) {
    state = state.copyWith(
      valorAtual: value,
      valorAtualErro: null,
      geralErro: null,
      isSuccess: false,
    );
  }

  void onIncrementoChanged(String value) {
    state = state.copyWith(
      incremento: value,
      incrementoErro: null,
      geralErro: null,
      isSuccess: false,
    );
  }

  void onDecrementoChanged(String value) {
    state = state.copyWith(
      decremento: value,
      decrementoErro: null,
      geralErro: null,
      isSuccess: false,
    );
  }

  void onMinimoChanged(String value) {
    state = state.copyWith(
      valorMinimo: value,
      valorMinimoErro: null,
      geralErro: null,
      isSuccess: false,
    );
  }

  void onMaximoChanged(String value) {
    state = state.copyWith(
      valorMaximo: value,
      valorMaximoErro: null,
      geralErro: null,
      isSuccess: false,
    );
  }

  void onMetaChanged(String value) {
    state = state.copyWith(meta: value, metaErro: null, geralErro: null, isSuccess: false);
  }

  Future<void> adicionarContador() async {
    dev.log('AdicionarContadorNotifier: adicionar: Entrou no metodo');
    if (!_validarCampos()) return;
    dev.log('AdicionarContadorNotifier: adicionar: Validou');

    late final int valorAtualInt;
    if (state.valorAtual.trim().isEmpty) {
      valorAtualInt = 0;
    } else {
      final valorPassado = int.tryParse(state.valorAtual.trim());
      if (valorPassado == null) {
        state = state.copyWith(valorAtualErro: 'Digite um valor atual válido');
        return;
      }
      valorAtualInt = valorPassado;
    }
    dev.log('AdicionarContadorNotifier: adicionar: Criou params');

    final incrementoInt = int.tryParse(state.incremento.trim());
    if (incrementoInt == null || incrementoInt <= 0) {
      state = state.copyWith(incrementoErro: 'Informe uma quantidade válida');
      return;
    }

    final decrementoInt = int.tryParse(state.decremento.trim());
    if (decrementoInt == null || decrementoInt <= 0) {
      state = state.copyWith(decrementoErro: 'Informe uma quantidade válida');
      return;
    }

    late final int minimoInt;
    if (state.valorMinimo.trim().isEmpty) {
      minimoInt = 1;
    } else {
      final valorPassado = int.tryParse(state.valorMinimo.trim());
      if (valorPassado == null) {
        state = state.copyWith(incrementoErro: 'Digite um valor de incremento válido');
        return;
      }
      minimoInt = valorPassado;
    }

    final valorMaximoTexto = state.valorMaximo.trim();
    int? valorMaximoInt;
    if (valorMaximoTexto.isNotEmpty) {
      valorMaximoInt = int.tryParse(valorMaximoTexto);

      if (valorMaximoInt == null) {
        state = state.copyWith(valorMaximoErro: 'Digite um valor máximo válido');
        return;
      }
    }

    final metaTexto = state.meta.trim();
    int? metaInt;
    if (metaTexto.isNotEmpty) {
      metaInt = int.tryParse(metaTexto);
      if (metaInt == null) {
        state = state.copyWith(metaErro: 'Digite uma meta válida');
        return;
      }
    }

    final params = InsertContadorParams(
      valorAtual: valorAtualInt,
      nome: state.nome,
      incremento: incrementoInt,
      decremento: decrementoInt,
      valorMinimo: minimoInt,
      meta: metaInt,
    );

    dev.log('AdicionarContadorNotifier: adicionarContador: meta: $metaInt');

    final useCase = ref.read(insertContadorUseCaseProvider);
    final result = await useCase(params);

    return result.fold(
      (failure) => state.copyWith(isLoading: false, geralErro: failure.message, isSuccess: false),
      (_) {
        ref.invalidate(listarContadoresProvider);
        state = state.copyWith(isLoading: false, isSuccess: true);
      },
    );
  }

  bool _validarCampos() {
    bool validos = true;
    String? erroNome;
    String? erroValorAtual;
    String? erroIncremento;
    String? erroDecremento;

    if (state.nome.isEmpty) {
      validos = false;
      erroNome = 'Insira um nome para o contador';
    }

    if (state.valorAtual.isEmpty) {
      validos = false;
      erroValorAtual = 'Insira um nome para o contador';
    }

    if (state.incremento.isEmpty) {
      validos = false;
      erroIncremento = 'Informe o valor de decremento';
    }

    if (state.decremento.isEmpty) {
      validos = false;
      erroDecremento = 'Informe o valor de decremento';
    }

    state = state.copyWith(
      nomeErro: erroNome,
      incrementoErro: erroIncremento,
      decrementoErro: erroDecremento,
      valorAtualErro: erroValorAtual,
      geralErro: null,
    );

    return validos;
  }

  void limpar() => state = AdicionarContadorState.inicial();
}

@freezed
sealed class AdicionarContadorState with _$AdicionarContadorState {
  const factory AdicionarContadorState({
    @Default('') String nome,
    @Default('0') String valorAtual,
    @Default('1') String incremento,
    @Default('1') String decremento,
    @Default('0') String valorMinimo,
    @Default('') String valorMaximo,
    @Default('') String meta,
    String? nomeErro,
    String? valorAtualErro,
    String? incrementoErro,
    String? decrementoErro,
    String? valorMinimoErro,
    String? valorMaximoErro,
    String? metaErro,
    String? geralErro,
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool camposValidos,
  }) = _AdicionarContadorState;

  factory AdicionarContadorState.inicial() => const AdicionarContadorState();
}
