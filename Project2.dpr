program Project2;

uses
  Vcl.Forms,
  Megalan in 'Megalan.pas' {Form2},
  DataModule in 'DataModule.pas' {DataModule2: TDataModule},
  CreateEdtiForm in 'CreateEdtiForm.pas' {Form3},
  CreatePlayerForm in 'CreatePlayerForm.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
