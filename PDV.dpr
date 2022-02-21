program PDV;

uses
  Vcl.Forms,
  login in 'login.pas' {FrmLogin},
  Menu in 'Menu.pas' {FrmMenu},
  usuarios in 'usuarios.pas' {Frmusuario},
  funcionarios in 'funcionarios.pas' {Frmfuncionarios},
  cargos in 'cargos.pas' {FrmCargos},
  modulo in 'modulo.pas' {dm: TDataModule},
  vendas in 'vendas.pas' {FrmVendas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFrmMenu, FrmMenu);
  Application.CreateForm(TFrmusuario, Frmusuario);
  Application.CreateForm(TFrmfuncionarios, Frmfuncionarios);
  Application.CreateForm(TFrmCargos, FrmCargos);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TFrmVendas, FrmVendas);
  Application.Run;

end.
