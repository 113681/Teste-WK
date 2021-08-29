object F_gerais: TF_gerais
  Left = 0
  Top = 0
  Caption = 'Pedidos Gerais'
  ClientHeight = 522
  ClientWidth = 720
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pg_gerais: TPageControl
    Left = 0
    Top = 0
    Width = 712
    Height = 514
    ActivePage = tb_gerais
    TabOrder = 0
    object tb_gerais: TTabSheet
      Caption = 'Dados Gerais'
      object DB_gerais: TDBGrid
        Left = 0
        Top = 88
        Width = 701
        Height = 395
        DataSource = dmdados1.ds_gerais
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'dg_numero de pedidos'
            Width = 118
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dg_data emissao'
            Width = 111
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dg_codigo cliente'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dg_valor total'
            Width = 118
            Visible = True
          end>
      end
    end
    object tb_pvendas: TTabSheet
      Caption = 'Pedidos Venda'
      ImageIndex = 1
      object DB_pvendas: TDBGrid
        Left = 0
        Top = 107
        Width = 701
        Height = 384
        DataSource = dmdados1.ds_pvendas
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
end
