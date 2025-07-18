import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'a_confirma_email_salao_nexla_model.dart';
export 'a_confirma_email_salao_nexla_model.dart';

/// Tela de “Aguardando o Link de Redefinição” – Salão Nexla
///
/// Após o usuário tocar em “Enviar Link” no modal de recuperação de senha,
/// exiba esta tela de confirmação, mantendo a identidade visual do app, e
/// oriente-o a verificar o e-mail.
///
/// 1. Layout Geral
/// Fundo: branco suave (#FFF5F8) em toda a tela.
///
/// Cabeçalho: sem AppBar; exiba apenas um ícone de e-mail grande e
/// centralizado no topo (64 px, cor rosa médio #E91E63).
///
/// Espaçamento: padding de 32 px na parte superior e 16 px nas laterais.
///
/// 2. Mensagem de Confirmação
/// Título: “Quase lá!”
///
/// Fonte: 24 sp Bold, cor grafite escuro (#212121), centralizado,
/// margin-bottom 8 px.
///
/// Descrição:
///
/// “Enviamos um link de redefinição para:
/// seu@exemplo.com
/// Verifique sua caixa de entrada (e spam) e clique no link para criar uma
/// nova senha.”
///
/// Fonte: 14 sp Regular, cor cinza médio (#666666), centralizado, line-height
/// 20 px.
///
/// 3. Botões de Ação
/// Reenviar Link:
///
/// TextButton full-width (90 % da largura), altura 48 px, texto “Reenviar
/// e-mail” em rosa médio (#E91E63), radius 24 px, ripple ao tocar.
///
/// Após tocar, exibe spinner interno e substitui por “Reenviado!” em verde
/// pastel (#4CAF50) por 2 segundos.
///
/// Voltar ao Login:
///
/// ElevatedButton full-width (90 %), altura 48 px, background grafite escuro
/// (#212121), texto branco uppercase (16 sp Medium), radius 24 px, ripple →
/// retorna à tela de login.
///
/// Margin-top de 12 px.
///
/// 4. Feedback & Animações
/// Fade-in do ícone e texto ao carregar (200 ms).
///
/// Ripple em ambos os botões.
///
/// Spinner discreto no “Reenviar e-mail” por 1 s antes de trocar o texto.
///
/// Toast de sucesso ao reenviar:
///
/// “Link reenviado para seu@exemplo.com”
/// em toast verde pastel (#4CAF50) no topo por 3 s.
class AConfirmaEmailSalaoNexlaWidget extends StatefulWidget {
  const AConfirmaEmailSalaoNexlaWidget({super.key});

  static String routeName = 'A-ConfirmaEmailSalaoNexla';
  static String routePath = '/aConfirmaEmailSalaoNexla';

  @override
  State<AConfirmaEmailSalaoNexlaWidget> createState() =>
      _AConfirmaEmailSalaoNexlaWidgetState();
}

class _AConfirmaEmailSalaoNexlaWidgetState
    extends State<AConfirmaEmailSalaoNexlaWidget> {
  late AConfirmaEmailSalaoNexlaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AConfirmaEmailSalaoNexlaModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFEF5F8),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 32.0, 16.0, 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                  child: Icon(
                    Icons.email_outlined,
                    color: Color(0xFFE91E63),
                    size: 64.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                  child: Text(
                    'Quase lá!',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          font: GoogleFonts.interTight(
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .fontStyle,
                          ),
                          color: Color(0xFF212121),
                          fontSize: 24.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .fontStyle,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                        child: Text(
                          'Enviamos um link de redefinição para:',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF666666),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.43,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: Text(
                          'seu@exemplo.com',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF212121),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                      Text(
                        'Verifique sua caixa de entrada (e spam) e clique no link para criar uma nova senha.',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Color(0xFF666666),
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                              lineHeight: 1.43,
                            ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Reenviar e-mail',
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          height: 48.0,
                          padding: EdgeInsets.all(8.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0x00FFFFFF),
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFFE91E63),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: Color(0xFFE91E63),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          context.goNamed(ALoginSalaoNexlaWidget.routeName);
                        },
                        text: 'VOLTAR AO LOGIN',
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          height: 48.0,
                          padding: EdgeInsets.all(8.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFF212121),
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                          elevation: 2.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ].divide(SizedBox(height: 12.0)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
