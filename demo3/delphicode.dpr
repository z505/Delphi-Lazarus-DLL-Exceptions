{ This demo DLL catches exception to see the effects if the exe calls the code
  The issue is, the exception must be caught in the dll, not the exe, to
  prevent the exception from reaching the exe and causing undesired effects }

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
