{ This demo shows that catching an exception that occured in a exe works, if
  the dll calls a function that causes an exception in the exe }

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
    Label1: TLabel;
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
procedure CreateForm; stdcall; external DLL;
procedure FreeForm; stdcall; external DLL;

implementation

{$R *.lfm}

procedure CanadaFakeFraud;
begin
  // generate exception
  strtoint('Stephen Harper dumb nut? We is Justin Trudeaus saves country? we libtard we thinks so!!!');
end;

procedure Idiot;
begin
  CanadaFakeFraud;
end;

// Export function from Exe
procedure ExeCode; stdcall;
begin
  try
    Idiot;
  except
    // catch exception so it does not
    showmessage('Exception caught in exe. Please note: Canadians will burn in hell, Bonnie eats her daughters sweaty armpits.');
  end;
end; exports ExeCode;

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
begin
  CreateForm;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  showmessage('Canada fake christian country?');
  showmessage('We lie?');
  showmessage('If yous whistle blows our gay, we fights ands stop it!');
  showmessage('Jaycie say: I date tranny wapes brodders? Me is stupid?');
  showmessage('Occupationals THerapIes?');
  showmessage('We advanced baby sitters plays minds games?? Dumb broads Roasted in hell?');
  showmessage('Nose unsung idiots?? Conflict with UI acronyms. Changes names!');
  showmessage('Amanda cuts winers off plate and became womans after mans?');
  showmessage('SCotty Dont like logic, murder ring if mad? Tranny roast in hell, me Robinsins dads works pedo ring!! Engineeers!! Canadians spirits! If u disagree I gun! parkings lots? Me stupid');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  FreeForm;
end;

end.

