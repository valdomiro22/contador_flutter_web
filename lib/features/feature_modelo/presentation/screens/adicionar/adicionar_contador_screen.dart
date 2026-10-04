import 'package:contador/common/components/custom_buttom_component.dart';
import 'package:contador/common/components/custom_textfiewd_component.dart';
import 'package:contador/common/components/mensagem_erro_component.dart';
import 'package:contador/features/feature_modelo/presentation/screens/adicionar/adicionar_contador_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AdicionarContadorScreen extends ConsumerStatefulWidget {
  const AdicionarContadorScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AdicionarContadorScreenState();
}

class _AdicionarContadorScreenState extends ConsumerState<AdicionarContadorScreen> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(adicionarContadorProvider);
    final notifier = ref.read(adicionarContadorProvider.notifier);

    ref.listen(adicionarContadorProvider, (previous, next) {
      if (next.isSuccess) {
        ref.read(adicionarContadorProvider.notifier).limpar();

        if (context.canPop()) {
          context.pop();
        }
      }
    });

    return Scaffold(
      appBar: AppBar(title: Text('Adicionar Contador')),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListView(
          children: [
            Text('Nome'),
            CustomTextFormFiewdComponent(
              textImputType: TextInputType.text,
              erro: state.nomeErro,
              hint: 'Ex: Copos de água',
              onFocus: true,
              onChanged: notifier.onNomeChanged,
            ),
            SizedBox(height: 16),

            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Valor atual'),
                      CustomTextFormFiewdComponent(
                        textImputType: TextInputType.number,
                        erro: state.valorAtualErro,
                        onFocus: true,
                        hint: 'Ex: 800',
                        onChanged: notifier.onValorAtualChanged,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Meta'),
                      CustomTextFormFiewdComponent(
                        textImputType: TextInputType.number,
                        erro: state.metaErro,
                        onFocus: true,
                        hint: 'Ex: 800',
                        onChanged: notifier.onMetaChanged,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),

            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Incremento'),
                      CustomTextFormFiewdComponent(
                        textImputType: TextInputType.number,
                        erro: state.incrementoErro,
                        hint: state.incremento,
                        onFocus: true,
                        onChanged: notifier.onIncrementoChanged,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Decremento'),
                      CustomTextFormFiewdComponent(
                        textImputType: TextInputType.number,
                        erro: state.decrementoErro,
                        hint: state.decremento,
                        onFocus: true,
                        onChanged: notifier.onDecrementoChanged,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),

            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Mínimo'),
                      CustomTextFormFiewdComponent(
                        textImputType: TextInputType.number,
                        erro: state.valorMinimoErro,
                        hint: 'Ex: -50',
                        onFocus: true,
                        onChanged: notifier.onMinimoChanged,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Maximo'),
                      CustomTextFormFiewdComponent(
                        textImputType: TextInputType.number,
                        erro: state.valorMaximoErro,
                        hint: 'Ex: 120',
                        onFocus: true,
                        onChanged: notifier.onMaximoChanged,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 4),
            MensagemErroComponent(mensagem: state.geralErro),
            SizedBox(height: 16),

            CustomButtonComponent(
              text: 'Salvar',
              onClick: () => notifier.adicionarContador(),
              color: Colors.blue,
              textColor: Colors.white,
              fontSize: 18,
            ),
          ],
        ),
      ),
    );
  }
}
