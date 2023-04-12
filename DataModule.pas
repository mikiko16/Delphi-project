unit DataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni, UniProvider,
  MySQLUniProvider;

function loadFromDb(connection: TUniConnection; shouldShowPlayers: boolean): TUniQuery;
type
  TTeam = class
    private
      teamName: string;
      teamWebsite: string;
      teamFoundedOn: string;
    public
      constructor Create(const name: string; website: string; foundedOn: string);
      procedure saveToDb(connection: TUniConnection);
      procedure updateToDb(connection: TUniConnection; name: string);
      procedure deleteFromDb(connection: TUniConnection);
    end;
  TPlayer = class
    private
      playerFirstName: string;
      playerLastName: string;
      playerTeam: string;
      playerCountry: string;
    public
      constructor Create(firstName: string; lastName: string; team: string; country: string);
      procedure savePlayerToDb(connection: TUniConnection);
  end;
  TDataModule2 = class(TDataModule)
    UniConnection1: TUniConnection;
    MySQLUniProvider1: TMySQLUniProvider;
    UniQuery1: TUniQuery;
    function SetupConnectionToDatabase: TUniConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

constructor TTeam.Create(const name: string; website: string; foundedOn: string);
begin
  teamName:= name;
  teamWebsite:= website;
  teamFoundedOn:= foundedOn;
end;

constructor TPlayer.Create(firstName: string; lastName: string; team: string; country: string);
begin
  playerFirstName:= firstName;
  playerLastName:= lastName;
  playerTeam:= team;
  playerCountry:= country;
end;

procedure TPlayer.savePlayerToDb(connection: TUniConnection);
var
  Query: TUniQuery;
  uniConnection: TUniConnection;
  SQL: string;
begin
  try
    Query := TUniQuery.Create(nil);
    Query.Connection := connection;
    SQL:= 'insert into players (firstName, lastName, teamName, country) values (:fistName, :lastName, :team, :country)';
    Query.SQL.Text := SQL;
    Query.ParamByName('fistName').AsString := playerFirstName;
    Query.ParamByName('lastName').AsString := playerLastName;
    Query.ParamByName('team').AsString := playerTeam;
    Query.ParamByName('country').AsString := playerCountry;
    Query.Execute();
  finally
    Query.Free;
  end;
end;

procedure TTeam.saveToDb(connection: TUniConnection);
var
  Query: TUniQuery;
  uniConnection: TUniConnection;
  SQL: string;
begin
  try
    Query := TUniQuery.Create(nil);
    Query.Connection := connection;
    SQL:= 'insert into teams (name, website, foundedOn) values (:name, :website, :foundedOn)';
    Query.SQL.Text := SQL;
    Query.ParamByName('name').AsString := teamName;
    Query.ParamByName('website').AsString := teamWebsite;
    Query.ParamByName('foundedOn').AsString := teamFoundedOn;
    Query.Execute();
  finally
    Query.Free;
  end;
end;

procedure TTeam.updateToDb(connection: TUniConnection; name: string);
var
  Query: TUniQuery;
  uniConnection: TUniConnection;
  SQL: string;
begin
  try
    Query := TUniQuery.Create(nil);
    Query.Connection := connection;
    SQL:= 'update teams set website = :website, foundedOn = :foundedOn where name = :name';
    Query.SQL.Text := SQL;
    Query.ParamByName('website').AsString := teamWebsite;
    Query.ParamByName('foundedOn').AsString := teamFoundedOn;
    Query.ParamByName('name').AsString := name;
    Query.Execute();
  finally
    Query.Free;
  end;
end;

procedure TTeam.deleteFromDb(connection: TUniConnection);
var
  Query: TUniQuery;
  uniConnection: TUniConnection;
  SQL: string;
begin
  try
    Query := TUniQuery.Create(nil);
    Query.Connection := connection;
    SQL:= 'delete from teams where name = :name';
    Query.SQL.Text := SQL;
    Query.ParamByName('name').AsString := teamName;
    Query.Execute();
  finally
    Query.Free;
  end;
end;

function loadFromDb(connection: TUniConnection; shouldShowPlayers: boolean): TUniQuery;
var
  Query: TUniQuery;
  uniConnection: TUniConnection;
  SQL: string;
  selectedTable: string;
  queryText: string;
begin
  Result := TUniQuery.Create(nil);
  try
    Result.Connection := connection;
    if shouldShowPlayers then
    begin
      queryText:= 'select * from players';
    end
    else
    begin
      queryText:= 'select * from teams';
    end;

    Result.SQL.Text:= queryText;
    Result.Open();
  except
    connection.Free;
  end;
end;

function TDataModule2.SetupConnectionToDatabase: TUniConnection;
begin
  Result := TUniConnection.Create(nil);
  Result.ProviderName := 'MySQL';
  Result.Server := 'localhost';
  Result.Username := 'miro';
  Result.Password := 'MiroDran8905!';
  Result.Port := 3306;
  Result.Database := 'my_scheme';
  Result.Connect();
  Result.Open;
end;
end.
