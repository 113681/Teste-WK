unit dmdados;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.VCLUI.Wait, FireDAC.Phys.MySQLDef, FireDAC.Phys.MySQL,
  FireDAC.Comp.UI, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  Tdmdados1 = class(TDataModule)
    conexao: TFDConnection;
    Mysqllink: TFDPhysMySQLDriverLink;
    WaitCursor: TFDGUIxWaitCursor;
    SQL_Produtos: TFDQuery;
    SQL_Produtospro_id: TIntegerField;
    SQL_Produtospro_descricao: TStringField;
    SQL_Produtospro_quantidade: TIntegerField;
    SQL_Produtospro_valordevenda: TFloatField;
    ds_produtos: TDataSource;
    TB_produtos: TFDTable;
    TB_produtospro_id: TIntegerField;
    TB_produtospro_descricao: TStringField;
    TB_produtospro_quantidade: TIntegerField;
    TB_produtospro_valordevenda: TFloatField;
    SQL_clientes: TFDQuery;
    SQL_clientescli_id: TIntegerField;
    SQL_clientescli_nome: TStringField;
    SQL_clientescli_cidade: TStringField;
    SQL_clientescli_uf: TStringField;
    tb_clientes: TFDTable;
    tb_clientescli_id: TIntegerField;
    tb_clientescli_nome: TStringField;
    tb_clientescli_cidade: TStringField;
    tb_clientescli_uf: TStringField;
    ds_clientes: TDataSource;
    SQL_gerais: TFDQuery;
    tb_gerais: TFDTable;
    ds_gerais: TDataSource;
    SQL_geraisdg_numerodepedidos: TStringField;
    SQL_geraisdg_dataemissao: TDateField;
    SQL_geraisdg_codigocliente: TIntegerField;
    SQL_geraisdg_valortotal: TFloatField;
    tb_geraisdg_numerodepedidos: TStringField;
    tb_geraisdg_dataemissao: TDateField;
    tb_geraisdg_codigocliente: TIntegerField;
    tb_geraisdg_valortotal: TFloatField;
    SQL_pvendas: TFDQuery;
    tb_pvendas: TFDTable;
    tb_pvendasped_numeropedido: TFDAutoIncField;
    tb_pvendasped_codigodoproduto: TStringField;
    tb_pvendasped_quantidade: TIntegerField;
    tb_pvendasped_valorunitario: TFloatField;
    tb_pvendasped_valortotal: TFloatField;
    ds_pvendas: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmdados1: Tdmdados1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
