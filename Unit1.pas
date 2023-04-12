unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni, UITypes,
  Vcl.StdCtrls, UniProvider, MySQLUniProvider;

type
  TForm1 = class(TForm)
    Button1: TButton;
    UniConnection1: TUniConnection;
    MySQLUniProvider1: TMySQLUniProvider;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    // procedure ConnectToDatabase(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  MessageDlg('Miro is the best !!!!', mtError, [mbOk], 0)
end;

end.

