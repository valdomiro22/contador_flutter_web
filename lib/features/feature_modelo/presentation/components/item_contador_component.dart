import 'package:contador/features/feature_modelo/domain/entities/contador_entity.dart';
import 'package:contador/theme/app_colors.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class ItemContadorComponent extends StatelessWidget {
  final ContadorEntity contador;
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  final VoidCallback onCardClick;

  const ItemContadorComponent({
    super.key,
    required this.contador,
    required this.onEdit,
    required this.onDelete,
    required this.onCardClick,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.primaryContainerLight,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Text(
                contador.nome,
                style: TextStyle(color: AppColors.onPrimaryContainerLight),
              ),
            ),

            Divider(color: AppColors.surfaceVariantLight),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Valor Atual', style: TextStyle(color: AppColors.surfaceVariantLight)),
                      Text(
                        contador.valorAtual.toString(),
                        style: TextStyle(color: AppColors.yellowProject),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Méta', style: TextStyle(color: AppColors.surfaceVariantLight)),
                      valorMeta(contador.meta),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget valorMeta(int? meta) {
    return meta == null
        ? Text(
            'Não definida',
            style: TextStyle(
              fontSize: 12,
              fontStyle: FontStyle.italic,
              color: AppColors.onPrimaryContainerLight,
            ),
          )
        : Text(meta.toString(), style: TextStyle(color: Colors.white));
  }
}
