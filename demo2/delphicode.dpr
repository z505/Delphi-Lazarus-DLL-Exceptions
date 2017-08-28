{ The DLL throws an exception but the exe does not touch it, therefore, this
  DLL should work fine even if an exception is thrown in this manner
  The exe only loads the form initially, and can free it, but doesn't directly
  touch the exception in the dll }

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
