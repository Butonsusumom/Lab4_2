program laba4;

uses
  Forms,
  unitlaba4 in 'unitlaba4.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
