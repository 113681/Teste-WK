program cvendas;

uses
  Vcl.Forms,
  uniprincipal in 'uniprincipal.pas' {Frmprincipal},
  dmdados in 'dmdados.pas' {dmdados1: TDataModule},
  Uniclientes in 'Uniclientes.pas' {F_clientes},
  Uniprodutos in 'Uniprodutos.pas' {F_produtos},
  unipedidos in 'unipedidos.pas' {uni_pedidos},
  unigerais in 'unigerais.pas' {F_gerais};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmprincipal, Frmprincipal);
  Application.CreateForm(Tdmdados1, dmdados1);
  Application.CreateForm(Tuni_pedidos, uni_pedidos);
  Application.CreateForm(TF_gerais, F_gerais);
  Application.Run;
end.
