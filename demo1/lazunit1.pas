unit lazunit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

const
  DLL = 'delphicode.dll';

// Delphi DLL functions

procedure CallDelphiCode; stdcall; external DLL;
procedure CreateForm; stdcall; external DLL;
procedure FreeForm; stdcall; external DLL;


implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  CallDelphiCode;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  CreateForm;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  FreeForm;
end;

end.

