object F_produtos: TF_produtos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro e Controle de Produtos'
  ClientHeight = 471
  ClientWidth = 744
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object stb_produtos: TStatusBar
    Left = 0
    Top = 452
    Width = 744
    Height = 19
    Panels = <>
  end
  object PG_produtos: TPageControl
    Left = 0
    Top = 0
    Width = 736
    Height = 463
    ActivePage = tb_consultar
    TabOrder = 1
    object tb_consultar: TTabSheet
      Caption = 'Consultar'
      object Label1: TLabel
        Left = 98
        Top = 41
        Width = 109
        Height = 16
        Caption = 'Pesquisar Produtos'
      end
      object bt_editar_produto: TSpeedButton
        Left = 600
        Top = 45
        Width = 125
        Height = 37
        Caption = 'Editar Selecionado'
        OnClick = bt_editar_produtoClick
      end
      object DBG_produtos: TDBGrid
        Left = 0
        Top = 88
        Width = 728
        Height = 344
        Align = alBottom
        DataSource = dmdados1.ds_produtos
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'pro_id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_descricao'
            Width = 375
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_quantidade'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_valor de venda'
            Width = 64
            Visible = True
          end>
      end
      object txt_buscar: TEdit
        Left = 98
        Top = 57
        Width = 181
        Height = 24
        TabOrder = 1
      end
      object RG_buscar: TRadioGroup
        Left = -1
        Top = 48
        Width = 97
        Height = 34
        Items.Strings = (
          'descricao')
        TabOrder = 2
      end
    end
    object tb_cadastrar: TTabSheet
      Caption = 'Cadastrar / Editar'
      ImageIndex = 1
      object btn_novo: TSpeedButton
        Left = 32
        Top = 352
        Width = 100
        Height = 40
        Action = ac_novo
      end
      object btn_editar: TSpeedButton
        Left = 144
        Top = 352
        Width = 100
        Height = 40
        Action = ac_editar
      end
      object btn_ok: TSpeedButton
        Left = 258
        Top = 352
        Width = 100
        Height = 40
        Action = ac_ok
      end
      object btn_cancelar: TSpeedButton
        Left = 374
        Top = 352
        Width = 100
        Height = 40
        Action = ac_cancelar
      end
      object btn_delete: TSpeedButton
        Left = 488
        Top = 352
        Width = 100
        Height = 40
        Action = ac_delete
      end
      object Label2: TLabel
        Left = 40
        Top = 64
        Width = 39
        Height = 16
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
      end
      object Label3: TLabel
        Left = 112
        Top = 66
        Width = 55
        Height = 16
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      object Label4: TLabel
        Left = 428
        Top = 65
        Width = 65
        Height = 16
        Caption = 'Quantidade'
        FocusControl = DBEdit3
      end
      object Label5: TLabel
        Left = 40
        Top = 149
        Width = 88
        Height = 16
        Caption = 'Valor de Venda'
        FocusControl = DBEdit4
      end
      object DBEdit1: TDBEdit
        Left = 40
        Top = 80
        Width = 50
        Height = 24
        DataField = 'pro_id'
        DataSource = DS_produtos_cad
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 112
        Top = 80
        Width = 300
        Height = 24
        DataField = 'pro_descricao'
        DataSource = DS_produtos_cad
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 428
        Top = 81
        Width = 100
        Height = 24
        DataField = 'pro_quantidade'
        DataSource = DS_produtos_cad
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 40
        Top = 165
        Width = 164
        Height = 24
        DataField = 'pro_valor de venda'
        DataSource = DS_produtos_cad
        TabOrder = 3
      end
    end
  end
  object DS_produtos_cad: TDataSource
    DataSet = dmdados1.TB_produtos
    Left = 360
    Top = 240
  end
  object ACM_produtos: TActionManager
    Left = 452
    Top = 243
    StyleName = 'Platform Default'
    object ac_novo: TDataSetInsert
      Category = 'Dataset'
      Caption = 'Novo'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = DS_produtos_cad
    end
    object ac_delete: TDataSetDelete
      Category = 'Dataset'
      Caption = 'Apagar'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = DS_produtos_cad
    end
    object ac_editar: TDataSetEdit
      Category = 'Dataset'
      Caption = 'Editar'
      Hint = 'Edit'
      ImageIndex = 6
      DataSource = DS_produtos_cad
    end
    object ac_ok: TDataSetPost
      Category = 'Dataset'
      Caption = 'Gravar'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = DS_produtos_cad
    end
    object ac_cancelar: TDataSetCancel
      Category = 'Dataset'
      Caption = 'Cancelar'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = DS_produtos_cad
    end
  end
end
