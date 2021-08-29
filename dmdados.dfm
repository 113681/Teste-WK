object dmdados1: Tdmdados1
  OldCreateOrder = False
  Height = 287
  Width = 717
  object conexao: TFDConnection
    Params.Strings = (
      'Database=cvendas'
      'User_Name=root'
      'Password=113681'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 24
  end
  object Mysqllink: TFDPhysMySQLDriverLink
    DriverID = 'MySQL'
    Left = 128
    Top = 24
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 200
    Top = 24
  end
  object SQL_Produtos: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from produtos')
    Left = 120
    Top = 96
    object SQL_Produtospro_id: TIntegerField
      FieldName = 'pro_id'
      Origin = 'pro_id'
      Required = True
    end
    object SQL_Produtospro_descricao: TStringField
      FieldName = 'pro_descricao'
      Origin = 'pro_descricao'
      Required = True
      Size = 80
    end
    object SQL_Produtospro_quantidade: TIntegerField
      FieldName = 'pro_quantidade'
      Origin = 'pro_quantidade'
      Required = True
    end
    object SQL_Produtospro_valordevenda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_valor de venda'
      Origin = '`pro_valor de venda`'
    end
  end
  object ds_produtos: TDataSource
    DataSet = SQL_Produtos
    Left = 48
    Top = 96
  end
  object TB_produtos: TFDTable
    Connection = conexao
    TableName = 'cvendas.produtos'
    Left = 192
    Top = 96
    object TB_produtospro_id: TIntegerField
      FieldName = 'pro_id'
      Origin = 'pro_id'
      Required = True
    end
    object TB_produtospro_descricao: TStringField
      FieldName = 'pro_descricao'
      Origin = 'pro_descricao'
      Required = True
      Size = 80
    end
    object TB_produtospro_quantidade: TIntegerField
      FieldName = 'pro_quantidade'
      Origin = 'pro_quantidade'
      Required = True
    end
    object TB_produtospro_valordevenda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_valor de venda'
      Origin = '`pro_valor de venda`'
    end
  end
  object SQL_clientes: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from clientes')
    Left = 48
    Top = 184
    object SQL_clientescli_id: TIntegerField
      FieldName = 'cli_id'
      Origin = 'cli_id'
      Required = True
    end
    object SQL_clientescli_nome: TStringField
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      Required = True
      Size = 50
    end
    object SQL_clientescli_cidade: TStringField
      FieldName = 'cli_cidade'
      Origin = 'cli_cidade'
      Required = True
    end
    object SQL_clientescli_uf: TStringField
      FieldName = 'cli_uf'
      Origin = 'cli_uf'
      Required = True
      Size = 2
    end
  end
  object tb_clientes: TFDTable
    Connection = conexao
    TableName = 'cvendas.clientes'
    Left = 120
    Top = 184
    object tb_clientescli_id: TIntegerField
      FieldName = 'cli_id'
      Origin = 'cli_id'
      Required = True
    end
    object tb_clientescli_nome: TStringField
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      Required = True
      Size = 50
    end
    object tb_clientescli_cidade: TStringField
      FieldName = 'cli_cidade'
      Origin = 'cli_cidade'
      Required = True
    end
    object tb_clientescli_uf: TStringField
      FieldName = 'cli_uf'
      Origin = 'cli_uf'
      Required = True
      Size = 2
    end
  end
  object ds_clientes: TDataSource
    DataSet = SQL_clientes
    Left = 192
    Top = 184
  end
  object SQL_gerais: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from dadosgerais')
    Left = 360
    Top = 24
    object SQL_geraisdg_numerodepedidos: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'dg_numero de pedidos'
      Origin = '`dg_numero de pedidos`'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 100
    end
    object SQL_geraisdg_dataemissao: TDateField
      FieldName = 'dg_data emissao'
      Origin = '`dg_data emissao`'
      Required = True
    end
    object SQL_geraisdg_codigocliente: TIntegerField
      FieldName = 'dg_codigo cliente'
      Origin = '`dg_codigo cliente`'
      Required = True
    end
    object SQL_geraisdg_valortotal: TFloatField
      FieldName = 'dg_valor total'
      Origin = '`dg_valor total`'
      Required = True
    end
  end
  object tb_gerais: TFDTable
    IndexFieldNames = 'dg_numero de pedidos'
    Connection = conexao
    TableName = 'cvendas.dadosgerais'
    Left = 432
    Top = 24
    object tb_geraisdg_numerodepedidos: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'dg_numero de pedidos'
      Origin = '`dg_numero de pedidos`'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 100
    end
    object tb_geraisdg_dataemissao: TDateField
      FieldName = 'dg_data emissao'
      Origin = '`dg_data emissao`'
      Required = True
    end
    object tb_geraisdg_codigocliente: TIntegerField
      FieldName = 'dg_codigo cliente'
      Origin = '`dg_codigo cliente`'
      Required = True
    end
    object tb_geraisdg_valortotal: TFloatField
      FieldName = 'dg_valor total'
      Origin = '`dg_valor total`'
      Required = True
    end
  end
  object ds_gerais: TDataSource
    DataSet = SQL_gerais
    Left = 512
    Top = 24
  end
  object SQL_pvendas: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from pedv')
    Left = 365
    Top = 120
  end
  object tb_pvendas: TFDTable
    IndexFieldNames = 'ped_numero pedido'
    Connection = conexao
    TableName = 'cvendas.pedv'
    Left = 432
    Top = 120
    object tb_pvendasped_numeropedido: TFDAutoIncField
      FieldName = 'ped_numero pedido'
      Origin = '`ped_numero pedido`'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tb_pvendasped_codigodoproduto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_codigo do produto'
      Origin = '`ped_codigo do produto`'
      Size = 100
    end
    object tb_pvendasped_quantidade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_quantidade'
      Origin = 'ped_quantidade'
    end
    object tb_pvendasped_valorunitario: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ped_valor unitario'
      Origin = '`ped_valor unitario`'
    end
    object tb_pvendasped_valortotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ped_valor total'
      Origin = '`ped_valor total`'
    end
  end
  object ds_pvendas: TDataSource
    DataSet = SQL_pvendas
    Left = 512
    Top = 120
  end
end
