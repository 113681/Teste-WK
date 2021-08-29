object Frmprincipal: TFrmprincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Sistema de Vendas'
  ClientHeight = 325
  ClientWidth = 710
  Color = clGrayText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object FlowPanel1: TFlowPanel
    Left = 0
    Top = 0
    Width = 713
    Height = 49
    TabOrder = 0
    object product1: TSpeedButton
      Left = 1
      Top = 1
      Width = 96
      Height = 48
      Caption = 'Produtos'
      Layout = blGlyphBottom
      OnClick = product1Click
    end
    object clientes1: TSpeedButton
      Left = 97
      Top = 1
      Width = 96
      Height = 48
      Align = alCustom
      Caption = 'Clientes'
      Layout = blGlyphBottom
      Spacing = 40
      OnClick = clientes1Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 672
    Top = 288
    object Sistema1: TMenuItem
      Caption = 'Sistema'
      object Ajustes1: TMenuItem
        Caption = 'Ajustes'
      end
      object Ajustes2: TMenuItem
        Caption = 'Sair'
      end
    end
    object Cdastro1: TMenuItem
      Caption = 'Cadastro/Consulta'
      object mclientes: TMenuItem
        Caption = 'Clientes'
        OnClick = mclientesClick
      end
      object mprodutos: TMenuItem
        Caption = 'Produtos'
        OnClick = mprodutosClick
      end
    end
    object PedidosVendas1: TMenuItem
      Caption = 'Vendas'
      object DadosGerais1: TMenuItem
        Caption = 'Dados Gerais'
      end
      object PedidosdeVendas1: TMenuItem
        Caption = 'Pedidos de Vendas'
      end
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      OnClick = Fechar1Click
    end
  end
end
