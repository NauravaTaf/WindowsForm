//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit4.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
 Graphics::TBitmap *pBitmap1;
byte arrayY[800][600];
byte arrayX[800][600];
TForm1 *Form1;
static inline byte CLAMP(short x)
{ return ((x > 255) ? 255 : ((x < 0) ? 0 : x)); } 

//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FormCreate(TObject *Sender)
{
 pBitmap1 = new Graphics::TBitmap();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button3Click(TObject *Sender)
{
if(OpenDialog1->Execute())
 {
 Memo1->Lines->Add(OpenDialog1->FileName);
pBitmap1->LoadFromFile(OpenDialog1->FileName);
Image1->Left=0;
Image1->Top=0;
Image1->Width=200;
Image1->Height=400;
Image1->Width=pBitmap1->Width ;
Image1->Height= pBitmap1-> Height;
Image1->Picture->Assign(pBitmap1);
 }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)

{
 randomize();
 for(int i=0; i<3;i++)
   {
        for(int j=0; j<3;j++)
        {
        StringGrid1->Cells[i][j] = IntToStr(random(10)-4);
        }
   }

}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)

{
 if(pBitmap1->PixelFormat == pf8bit)
 {
int x,y,k,l;
 Byte *ptr;
   for(y=0; y < pBitmap1->Height; y++)
  {
    ptr=(Byte*)pBitmap1->ScanLine[y];
    for(x=0; x < pBitmap1->Width; x++)
        {
        arrayY[x][y] = *(ptr + x);
        }
  }
  for (k=0; k<y-1; k++)
        {

     for (l=0; l<x-1; l++)
     { arrayX[l][k] =StrToInt(StringGrid1->Cells[0][0])*arrayY[l-1][k-1]+StrToInt(StringGrid1->Cells[0][1])*arrayY[l-1][k]+StrToInt(StringGrid1->Cells[0][2])*arrayY[l-1][k+1]+StrToInt(StringGrid1->Cells[1][0])*arrayY[l][k-1]+StrToInt(StringGrid1->Cells[1][1])*arrayY[l][k]+StrToInt(StringGrid1->Cells[1][2])*arrayY[l][k+1]+StrToInt(StringGrid1->Cells[2][0])*arrayY[l+1][k-1]+StrToInt(StringGrid1->Cells[2][1])*arrayY[l+1][k]+StrToInt(StringGrid1->Cells[2][2])*arrayY[l+1][k+1];
     }
        }
arrayX[l][k]=CLAMP(arrayX[l][k]);
  for(y=0; y < pBitmap1->Height; y++)
  {
    ptr=(Byte*)pBitmap1->ScanLine[y];
    for(x=0; x < pBitmap1->Width; x++)
        {
        *(ptr + x) = arrayX[x][y];
        }
  }
 Image1->Picture->Assign(pBitmap1);
} }
//---------------------------------------------------------------------------

//---------------------------------------------------------------------------
