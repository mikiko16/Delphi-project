unit CreatePlayerForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DataModule, Uni;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    constructor Create(AOwner: TComponent; connection: TUniConnection);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  uniConnection: TUniConnection;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
var
  firstName: string;
  lastName: string;
  playerTeam: string;
  playerCountry: string;
  Player: TPlayer;
begin
  firstName:= Edit1.Text;
  lastName:= Edit2.Text;
  playerTeam:= Edit3.Text;
  playerCountry:= Edit4.Text;

  Player:= TPlayer.Create(firstName, lastName, playerTeam, playerCountry);
  Player.savePlayerToDb(uniConnection);
  Close();
end;

constructor TForm5.Create(AOwner: TComponent; connection: TUniConnection);
begin
  inherited Create(AOwner);
  uniConnection:= connection;
end;

end.
