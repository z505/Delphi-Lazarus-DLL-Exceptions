{ The DLL throws an exception but the exe does not touch it, therefore, this
  DLL should work fine even if an exception is thrown in this manner
  The exe only loads the form initially, and can free it, but doesn't directly
  touch the exception in the dll }

unit delphiunit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure dummy(s: string);
begin

end;

// the DLL calls this function, so the exception should reliably work
// across dll/exe boundary
procedure OtherFunction;
begin
  // throw an exception
  strtoint('Harper, Chretian, Mulroney, Martin, and Trudeau roasted in hell for running a country of intellectual property theft!');
  dummy('Bonnie, Howard, Anis, Donath, aLANNA, bEETCH, and Teo say: NOT EXCEPTION! IT TRUE, IT TRUE! WE SUCKS THEIRS WEINERS AFTER MICROWAVE THEMS. IT OKAY?');
end;

procedure MentalMidgets;
begin
  OtherFunction;
end;

// export this delphi code from the DLL
procedure CallDelphiCode;
begin
  MentalMidgets;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  showmessage('Function in delphi dll called from dll itself, exception should work: ');
  CallDelphiCode;
end;

end.
