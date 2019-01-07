.class public final enum Lcom/alipay/ma/decode/DecodeType;
.super Ljava/lang/Enum;
.source "DecodeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/ma/decode/DecodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/ma/decode/DecodeType;

.field public static final enum ALLBARCODE:Lcom/alipay/ma/decode/DecodeType;

.field public static final enum ALLCODE:Lcom/alipay/ma/decode/DecodeType;

.field public static final enum ALLLOTTERYCODE:Lcom/alipay/ma/decode/DecodeType;

.field public static final enum ALLQRCODE:Lcom/alipay/ma/decode/DecodeType;

.field public static final enum ARCODE:Lcom/alipay/ma/decode/DecodeType;

.field public static final enum CODE128:Lcom/alipay/ma/decode/DecodeType;

.field public static final enum CODE39:Lcom/alipay/ma/decode/DecodeType;

.field public static final enum CODE93:Lcom/alipay/ma/decode/DecodeType;

.field public static final enum DEFAULTCODE:Lcom/alipay/ma/decode/DecodeType;

.field public static final enum DMCODE:Lcom/alipay/ma/decode/DecodeType;

.field public static final enum EAN13:Lcom/alipay/ma/decode/DecodeType;

.field public static final enum EAN14:Lcom/alipay/ma/decode/DecodeType;

.field public static final enum EAN8:Lcom/alipay/ma/decode/DecodeType;

.field public static final enum EXPRESS:Lcom/alipay/ma/decode/DecodeType;

.field public static final enum FASTMAIL:Lcom/alipay/ma/decode/DecodeType;

.field public static final enum ITF:Lcom/alipay/ma/decode/DecodeType;

.field public static final enum MEDICINE:Lcom/alipay/ma/decode/DecodeType;

.field public static final enum ONECODE:Lcom/alipay/ma/decode/DecodeType;

.field public static final enum PDF417:Lcom/alipay/ma/decode/DecodeType;

.field public static final enum PRODUCT:Lcom/alipay/ma/decode/DecodeType;

.field public static final enum QRCODE:Lcom/alipay/ma/decode/DecodeType;

.field public static final enum UPCA:Lcom/alipay/ma/decode/DecodeType;

.field public static final enum UPCE:Lcom/alipay/ma/decode/DecodeType;


# instance fields
.field codeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 13
    new-instance v0, Lcom/alipay/ma/decode/DecodeType;

    const-string/jumbo v1, "EAN13"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v5}, Lcom/alipay/ma/decode/DecodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/decode/DecodeType;->EAN13:Lcom/alipay/ma/decode/DecodeType;

    .line 15
    new-instance v0, Lcom/alipay/ma/decode/DecodeType;

    const-string/jumbo v1, "EAN8"

    invoke-direct {v0, v1, v5, v6}, Lcom/alipay/ma/decode/DecodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/decode/DecodeType;->EAN8:Lcom/alipay/ma/decode/DecodeType;

    .line 17
    new-instance v0, Lcom/alipay/ma/decode/DecodeType;

    const-string/jumbo v1, "UPCA"

    invoke-direct {v0, v1, v6, v7}, Lcom/alipay/ma/decode/DecodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/decode/DecodeType;->UPCA:Lcom/alipay/ma/decode/DecodeType;

    .line 19
    new-instance v0, Lcom/alipay/ma/decode/DecodeType;

    const-string/jumbo v1, "UPCE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v8}, Lcom/alipay/ma/decode/DecodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/decode/DecodeType;->UPCE:Lcom/alipay/ma/decode/DecodeType;

    .line 21
    new-instance v0, Lcom/alipay/ma/decode/DecodeType;

    const-string/jumbo v1, "EAN14"

    const/16 v2, 0x80

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/ma/decode/DecodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/decode/DecodeType;->EAN14:Lcom/alipay/ma/decode/DecodeType;

    .line 23
    new-instance v0, Lcom/alipay/ma/decode/DecodeType;

    const-string/jumbo v1, "CODE39"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v9}, Lcom/alipay/ma/decode/DecodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/decode/DecodeType;->CODE39:Lcom/alipay/ma/decode/DecodeType;

    .line 24
    new-instance v0, Lcom/alipay/ma/decode/DecodeType;

    const-string/jumbo v1, "CODE93"

    const/4 v2, 0x6

    const/16 v3, 0x100

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/ma/decode/DecodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/decode/DecodeType;->CODE93:Lcom/alipay/ma/decode/DecodeType;

    .line 25
    new-instance v0, Lcom/alipay/ma/decode/DecodeType;

    const-string/jumbo v1, "CODE128"

    const/4 v2, 0x7

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/ma/decode/DecodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/decode/DecodeType;->CODE128:Lcom/alipay/ma/decode/DecodeType;

    .line 27
    new-instance v0, Lcom/alipay/ma/decode/DecodeType;

    const-string/jumbo v1, "ITF"

    const/16 v2, 0x40

    invoke-direct {v0, v1, v8, v2}, Lcom/alipay/ma/decode/DecodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/decode/DecodeType;->ITF:Lcom/alipay/ma/decode/DecodeType;

    .line 29
    new-instance v0, Lcom/alipay/ma/decode/DecodeType;

    const-string/jumbo v1, "QRCODE"

    const/16 v2, 0x9

    const/16 v3, 0x200

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/ma/decode/DecodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/decode/DecodeType;->QRCODE:Lcom/alipay/ma/decode/DecodeType;

    .line 31
    new-instance v0, Lcom/alipay/ma/decode/DecodeType;

    const-string/jumbo v1, "DMCODE"

    const/16 v2, 0xa

    const/16 v3, 0x400

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/ma/decode/DecodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/decode/DecodeType;->DMCODE:Lcom/alipay/ma/decode/DecodeType;

    .line 32
    new-instance v0, Lcom/alipay/ma/decode/DecodeType;

    const-string/jumbo v1, "PDF417"

    const/16 v2, 0xb

    const/16 v3, 0x800

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/ma/decode/DecodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/decode/DecodeType;->PDF417:Lcom/alipay/ma/decode/DecodeType;

    .line 34
    new-instance v0, Lcom/alipay/ma/decode/DecodeType;

    const-string/jumbo v1, "ARCODE"

    const/16 v2, 0xc

    const/high16 v3, 0x10000

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/ma/decode/DecodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/decode/DecodeType;->ARCODE:Lcom/alipay/ma/decode/DecodeType;

    .line 35
    new-instance v0, Lcom/alipay/ma/decode/DecodeType;

    const-string/jumbo v1, "ONECODE"

    const/16 v2, 0xd

    sget-object v3, Lcom/alipay/ma/decode/DecodeType;->EAN13:Lcom/alipay/ma/decode/DecodeType;

    iget v3, v3, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    sget-object v4, Lcom/alipay/ma/decode/DecodeType;->EAN8:Lcom/alipay/ma/decode/DecodeType;

    iget v4, v4, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/alipay/ma/decode/DecodeType;->UPCA:Lcom/alipay/ma/decode/DecodeType;

    iget v4, v4, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/alipay/ma/decode/DecodeType;->UPCE:Lcom/alipay/ma/decode/DecodeType;

    iget v4, v4, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/alipay/ma/decode/DecodeType;->CODE39:Lcom/alipay/ma/decode/DecodeType;

    iget v4, v4, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/alipay/ma/decode/DecodeType;->CODE128:Lcom/alipay/ma/decode/DecodeType;

    iget v4, v4, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/alipay/ma/decode/DecodeType;->ITF:Lcom/alipay/ma/decode/DecodeType;

    iget v4, v4, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/alipay/ma/decode/DecodeType;->EAN14:Lcom/alipay/ma/decode/DecodeType;

    iget v4, v4, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/alipay/ma/decode/DecodeType;->CODE93:Lcom/alipay/ma/decode/DecodeType;

    iget v4, v4, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/ma/decode/DecodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/decode/DecodeType;->ONECODE:Lcom/alipay/ma/decode/DecodeType;

    .line 38
    new-instance v0, Lcom/alipay/ma/decode/DecodeType;

    const-string/jumbo v1, "FASTMAIL"

    const/16 v2, 0xe

    sget-object v3, Lcom/alipay/ma/decode/DecodeType;->CODE39:Lcom/alipay/ma/decode/DecodeType;

    iget v3, v3, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    sget-object v4, Lcom/alipay/ma/decode/DecodeType;->CODE128:Lcom/alipay/ma/decode/DecodeType;

    iget v4, v4, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/ma/decode/DecodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/decode/DecodeType;->FASTMAIL:Lcom/alipay/ma/decode/DecodeType;

    .line 44
    new-instance v0, Lcom/alipay/ma/decode/DecodeType;

    const-string/jumbo v1, "PRODUCT"

    const/16 v2, 0xf

    sget-object v3, Lcom/alipay/ma/decode/DecodeType;->ONECODE:Lcom/alipay/ma/decode/DecodeType;

    iget v3, v3, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/ma/decode/DecodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/decode/DecodeType;->PRODUCT:Lcom/alipay/ma/decode/DecodeType;

    .line 45
    new-instance v0, Lcom/alipay/ma/decode/DecodeType;

    const-string/jumbo v1, "MEDICINE"

    sget-object v2, Lcom/alipay/ma/decode/DecodeType;->ONECODE:Lcom/alipay/ma/decode/DecodeType;

    iget v2, v2, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    invoke-direct {v0, v1, v9, v2}, Lcom/alipay/ma/decode/DecodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/decode/DecodeType;->MEDICINE:Lcom/alipay/ma/decode/DecodeType;

    .line 46
    new-instance v0, Lcom/alipay/ma/decode/DecodeType;

    const-string/jumbo v1, "EXPRESS"

    const/16 v2, 0x11

    sget-object v3, Lcom/alipay/ma/decode/DecodeType;->ONECODE:Lcom/alipay/ma/decode/DecodeType;

    iget v3, v3, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/ma/decode/DecodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/decode/DecodeType;->EXPRESS:Lcom/alipay/ma/decode/DecodeType;

    .line 48
    new-instance v0, Lcom/alipay/ma/decode/DecodeType;

    const-string/jumbo v1, "ALLQRCODE"

    const/16 v2, 0x12

    sget-object v3, Lcom/alipay/ma/decode/DecodeType;->QRCODE:Lcom/alipay/ma/decode/DecodeType;

    iget v3, v3, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/ma/decode/DecodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/decode/DecodeType;->ALLQRCODE:Lcom/alipay/ma/decode/DecodeType;

    .line 49
    new-instance v0, Lcom/alipay/ma/decode/DecodeType;

    const-string/jumbo v1, "ALLBARCODE"

    const/16 v2, 0x13

    sget-object v3, Lcom/alipay/ma/decode/DecodeType;->ONECODE:Lcom/alipay/ma/decode/DecodeType;

    iget v3, v3, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/ma/decode/DecodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/decode/DecodeType;->ALLBARCODE:Lcom/alipay/ma/decode/DecodeType;

    .line 50
    new-instance v0, Lcom/alipay/ma/decode/DecodeType;

    const-string/jumbo v1, "ALLLOTTERYCODE"

    const/16 v2, 0x14

    sget-object v3, Lcom/alipay/ma/decode/DecodeType;->DMCODE:Lcom/alipay/ma/decode/DecodeType;

    iget v3, v3, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    sget-object v4, Lcom/alipay/ma/decode/DecodeType;->PDF417:Lcom/alipay/ma/decode/DecodeType;

    iget v4, v4, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/ma/decode/DecodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/decode/DecodeType;->ALLLOTTERYCODE:Lcom/alipay/ma/decode/DecodeType;

    .line 51
    new-instance v0, Lcom/alipay/ma/decode/DecodeType;

    const-string/jumbo v1, "ALLCODE"

    const/16 v2, 0x15

    sget-object v3, Lcom/alipay/ma/decode/DecodeType;->ONECODE:Lcom/alipay/ma/decode/DecodeType;

    iget v3, v3, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    sget-object v4, Lcom/alipay/ma/decode/DecodeType;->ALLQRCODE:Lcom/alipay/ma/decode/DecodeType;

    iget v4, v4, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/alipay/ma/decode/DecodeType;->DMCODE:Lcom/alipay/ma/decode/DecodeType;

    iget v4, v4, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/alipay/ma/decode/DecodeType;->ARCODE:Lcom/alipay/ma/decode/DecodeType;

    iget v4, v4, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/alipay/ma/decode/DecodeType;->PDF417:Lcom/alipay/ma/decode/DecodeType;

    iget v4, v4, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/ma/decode/DecodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/decode/DecodeType;->ALLCODE:Lcom/alipay/ma/decode/DecodeType;

    .line 52
    new-instance v0, Lcom/alipay/ma/decode/DecodeType;

    const-string/jumbo v1, "DEFAULTCODE"

    const/16 v2, 0x16

    sget-object v3, Lcom/alipay/ma/decode/DecodeType;->ONECODE:Lcom/alipay/ma/decode/DecodeType;

    iget v3, v3, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    sget-object v4, Lcom/alipay/ma/decode/DecodeType;->ALLQRCODE:Lcom/alipay/ma/decode/DecodeType;

    iget v4, v4, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/alipay/ma/decode/DecodeType;->ARCODE:Lcom/alipay/ma/decode/DecodeType;

    iget v4, v4, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/alipay/ma/decode/DecodeType;->DMCODE:Lcom/alipay/ma/decode/DecodeType;

    iget v4, v4, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/ma/decode/DecodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/decode/DecodeType;->DEFAULTCODE:Lcom/alipay/ma/decode/DecodeType;

    .line 9
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/alipay/ma/decode/DecodeType;

    const/4 v1, 0x0

    sget-object v2, Lcom/alipay/ma/decode/DecodeType;->EAN13:Lcom/alipay/ma/decode/DecodeType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/alipay/ma/decode/DecodeType;->EAN8:Lcom/alipay/ma/decode/DecodeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/ma/decode/DecodeType;->UPCA:Lcom/alipay/ma/decode/DecodeType;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    sget-object v2, Lcom/alipay/ma/decode/DecodeType;->UPCE:Lcom/alipay/ma/decode/DecodeType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/alipay/ma/decode/DecodeType;->EAN14:Lcom/alipay/ma/decode/DecodeType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/ma/decode/DecodeType;->CODE39:Lcom/alipay/ma/decode/DecodeType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/ma/decode/DecodeType;->CODE93:Lcom/alipay/ma/decode/DecodeType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/ma/decode/DecodeType;->CODE128:Lcom/alipay/ma/decode/DecodeType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/alipay/ma/decode/DecodeType;->ITF:Lcom/alipay/ma/decode/DecodeType;

    aput-object v1, v0, v8

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/ma/decode/DecodeType;->QRCODE:Lcom/alipay/ma/decode/DecodeType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alipay/ma/decode/DecodeType;->DMCODE:Lcom/alipay/ma/decode/DecodeType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alipay/ma/decode/DecodeType;->PDF417:Lcom/alipay/ma/decode/DecodeType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alipay/ma/decode/DecodeType;->ARCODE:Lcom/alipay/ma/decode/DecodeType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alipay/ma/decode/DecodeType;->ONECODE:Lcom/alipay/ma/decode/DecodeType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alipay/ma/decode/DecodeType;->FASTMAIL:Lcom/alipay/ma/decode/DecodeType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alipay/ma/decode/DecodeType;->PRODUCT:Lcom/alipay/ma/decode/DecodeType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/alipay/ma/decode/DecodeType;->MEDICINE:Lcom/alipay/ma/decode/DecodeType;

    aput-object v1, v0, v9

    const/16 v1, 0x11

    sget-object v2, Lcom/alipay/ma/decode/DecodeType;->EXPRESS:Lcom/alipay/ma/decode/DecodeType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alipay/ma/decode/DecodeType;->ALLQRCODE:Lcom/alipay/ma/decode/DecodeType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/alipay/ma/decode/DecodeType;->ALLBARCODE:Lcom/alipay/ma/decode/DecodeType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/alipay/ma/decode/DecodeType;->ALLLOTTERYCODE:Lcom/alipay/ma/decode/DecodeType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/alipay/ma/decode/DecodeType;->ALLCODE:Lcom/alipay/ma/decode/DecodeType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/alipay/ma/decode/DecodeType;->DEFAULTCODE:Lcom/alipay/ma/decode/DecodeType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/ma/decode/DecodeType;->$VALUES:[Lcom/alipay/ma/decode/DecodeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "codeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput p3, p0, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    .line 57
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/ma/decode/DecodeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/alipay/ma/decode/DecodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/ma/decode/DecodeType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/ma/decode/DecodeType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/alipay/ma/decode/DecodeType;->$VALUES:[Lcom/alipay/ma/decode/DecodeType;

    invoke-virtual {v0}, [Lcom/alipay/ma/decode/DecodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/ma/decode/DecodeType;

    return-object v0
.end method


# virtual methods
.method public final getCodeType()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/alipay/ma/decode/DecodeType;->codeType:I

    return v0
.end method
