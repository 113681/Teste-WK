object F_clientes: TF_clientes
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro e Consulta de Clientes'
  ClientHeight = 510
  ClientWidth = 717
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClick = FormClick
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object SpeedButton1: TSpeedButton
    Left = 168
    Top = 8
    Width = 23
    Height = 22
  end
  object pg_clientes: TPageControl
    Left = 0
    Top = 0
    Width = 717
    Height = 510
    ActivePage = tb_consultar
    Align = alClient
    TabOrder = 0
    TabWidth = 200
    object tb_consultar: TTabSheet
      Caption = 'Consultar'
      object bt_editar_selecionar: TSpeedButton
        Left = 586
        Top = 40
        Width = 120
        Height = 22
        Caption = 'Editar Selecionado'
        OnClick = bt_editar_selecionarClick
      end
      object Label5: TLabel
        Left = 119
        Top = 24
        Width = 104
        Height = 16
        Caption = 'Pesquisar Clientes'
      end
      object DBG_clientes: TDBGrid
        Left = 0
        Top = 68
        Width = 709
        Height = 411
        Align = alBottom
        DataSource = dmdados1.ds_clientes
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
            FieldName = 'cli_nome'
            Width = 289
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cli_cidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cli_uf'
            Visible = True
          end>
      end
      object txt_buscar: TEdit
        Left = 119
        Top = 40
        Width = 121
        Height = 22
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnKeyPress = txt_buscarKeyPress
      end
      object RG_buscar: TRadioGroup
        Left = 3
        Top = 29
        Width = 94
        Height = 33
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'Por Nome')
        ParentFont = False
        TabOrder = 2
      end
    end
    object tab_cadastrar: TTabSheet
      Caption = 'Cadastrar / Editar'
      ImageIndex = 1
      object Label1: TLabel
        Left = 48
        Top = 72
        Width = 39
        Height = 16
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 239
        Top = 72
        Width = 94
        Height = 16
        Caption = 'Nome do Cliente'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 48
        Top = 144
        Width = 39
        Height = 16
        Caption = 'Cidade'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 404
        Top = 146
        Width = 15
        Height = 16
        Caption = 'UF'
        FocusControl = DBEdit4
      end
      object btn_novo: TSpeedButton
        Left = 7
        Top = 408
        Width = 80
        Height = 40
        Action = DatasetInsert1
      end
      object btn_editar: TSpeedButton
        Left = 93
        Top = 408
        Width = 80
        Height = 40
        Action = DatasetEdit1
      end
      object btn_gravar: TSpeedButton
        Left = 179
        Top = 408
        Width = 80
        Height = 40
        Action = DatasetPost1
      end
      object btn_cancelar: TSpeedButton
        Left = 265
        Top = 408
        Width = 80
        Height = 40
        Action = DatasetCancel1
      end
      object btn_apagar: TSpeedButton
        Left = 351
        Top = 408
        Width = 80
        Height = 40
        Action = DatasetDelete1
      end
      object DBEdit1: TDBEdit
        Left = 48
        Top = 88
        Width = 50
        Height = 24
        DataField = 'cli_id'
        DataSource = DS_clientes_cad
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 239
        Top = 88
        Width = 300
        Height = 24
        DataField = 'cli_nome'
        DataSource = DS_clientes_cad
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 48
        Top = 160
        Width = 200
        Height = 24
        DataField = 'cli_cidade'
        DataSource = DS_clientes_cad
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 404
        Top = 162
        Width = 36
        Height = 24
        DataField = 'cli_uf'
        DataSource = DS_clientes_cad
        TabOrder = 3
      end
    end
  end
  object DS_clientes_cad: TDataSource
    AutoEdit = False
    DataSet = dmdados1.tb_clientes
    Left = 648
    Top = 280
  end
  object acm_clientes: TActionManager
    Left = 652
    Top = 345
    StyleName = 'Platform Default'
    object DatasetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'Novo'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = DS_clientes_cad
    end
    object DatasetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'Apagar'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = DS_clientes_cad
    end
    object DatasetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = 'Editar'
      Hint = 'Edit'
      ImageIndex = 6
      DataSource = DS_clientes_cad
    end
    object DatasetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'Gravar'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = DS_clientes_cad
    end
    object DatasetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'Cancelar'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = DS_clientes_cad
    end
  end
end
