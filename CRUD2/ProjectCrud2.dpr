program ProjectCrud2;

uses
  Vcl.Forms,
  UCrud2 in 'UCrud2.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
