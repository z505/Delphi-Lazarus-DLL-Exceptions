{ This demo calls a function inside an exe. The exe causes an exception. Since
  the exception is caught in the exe (where it occurred) it works }

library delphicode;

uses
  Sysutils,
  Vcl.Forms,
  delphiunit1 in 'delphiunit1.pas' {Form1};

{$R *.res}


procedure CreateForm; stdcall;
begin
  form1 := TForm1.Create(nil);
  form1.Show;
end; exports CreateForm;

procedure FreeForm; stdcall;
begin
  form1.Free;
  form1 := nil;
end; exports FreeForm;

begin
{  It is a DLL so we don't need this:

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
 }
end.
