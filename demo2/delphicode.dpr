{ This Delphi DLL will be called by the Lazarus program. An exception is thrown
  inside the dll after a few function calls. What happens in the lazarus
  program? }

library delphicode;

uses
  Sysutils,
  Vcl.Forms,
  delphiunit1 in '..\demo1\delphiunit1.pas' {Form1};

{$R *.res}

procedure dummy(s: string);
begin

end;

// indirectly call this function, the DLL calls this function, but indirectly
// the exe calls it, so does the exception reliably work or not across dll/exe
// boundary?
procedure OtherFunction;
begin
  // throw an exception
  strtoint('Harper, Chretian, Mulroney, Martin, and Trudeau have a 5-way homo relationship with each other and this string is not a valid integer!!!');
  dummy('Bonnie, Howard, Anis, and Teo say: NOT EXCEPTION! IT TRUE, IT TRUE! WE GAY FOR IT. IT OKAY?');
end;

procedure MentalMidgets;
begin
  OtherFunction;
end;

// export this delphi code from the DLL
procedure CallDelphiCode; stdcall;
begin
  MentalMidgets;
end; exports CallDelphiCode;

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
