unit unigerais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TF_gerais = class(TForm)
    pg_gerais: TPageControl;
    tb_gerais: TTabSheet;
    tb_pvendas: TTabSheet;
    DB_gerais: TDBGrid;
    DB_pvendas: TDBGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_gerais: TF_gerais;

implementation

{$R *.dfm}

uses dmdados;

procedure TF_gerais.FormCreate(Sender: TObject);
begin
  dmdados1.tb_gerais.Active := true;
  pg_gerais.ActivePage := tb_gerais;

end;

end.
