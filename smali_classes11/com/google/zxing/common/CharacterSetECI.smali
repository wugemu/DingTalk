.class public final enum Lcom/google/zxing/common/CharacterSetECI;
.super Ljava/lang/Enum;
.source "CharacterSetECI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/common/CharacterSetECI;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ASCII:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Big5:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1250:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1251:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1252:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1256:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp437:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum GB18030:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

.field private static final NAME_TO_ECI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/zxing/common/CharacterSetECI;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SJIS:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum UTF8:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

.field private static final VALUE_TO_ECI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/zxing/common/CharacterSetECI;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final otherEncodingNames:[Ljava/lang/String;

.field private final values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 33
    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "Cp437"

    new-array v6, v11, [I

    fill-array-data v6, :array_0

    new-array v7, v4, [Ljava/lang/String;

    invoke-direct {v3, v5, v4, v6, v7}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->Cp437:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "ISO8859_1"

    new-array v6, v11, [I

    fill-array-data v6, :array_1

    new-array v7, v10, [Ljava/lang/String;

    const-string/jumbo v8, "ISO-8859-1"

    aput-object v8, v7, v4

    invoke-direct {v3, v5, v10, v6, v7}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "ISO8859_2"

    new-array v6, v10, [Ljava/lang/String;

    const-string/jumbo v7, "ISO-8859-2"

    aput-object v7, v6, v4

    invoke-direct {v3, v5, v11, v13, v6}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

    .line 34
    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "ISO8859_3"

    const/4 v6, 0x5

    new-array v7, v10, [Ljava/lang/String;

    const-string/jumbo v8, "ISO-8859-3"

    aput-object v8, v7, v4

    invoke-direct {v3, v5, v12, v6, v7}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "ISO8859_4"

    const/4 v6, 0x6

    new-array v7, v10, [Ljava/lang/String;

    const-string/jumbo v8, "ISO-8859-4"

    aput-object v8, v7, v4

    invoke-direct {v3, v5, v13, v6, v7}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

    .line 35
    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "ISO8859_5"

    const/4 v6, 0x5

    const/4 v7, 0x7

    new-array v8, v10, [Ljava/lang/String;

    const-string/jumbo v9, "ISO-8859-5"

    aput-object v9, v8, v4

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "ISO8859_6"

    const/4 v6, 0x6

    const/16 v7, 0x8

    new-array v8, v10, [Ljava/lang/String;

    const-string/jumbo v9, "ISO-8859-6"

    aput-object v9, v8, v4

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

    .line 36
    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "ISO8859_7"

    const/4 v6, 0x7

    const/16 v7, 0x9

    new-array v8, v10, [Ljava/lang/String;

    const-string/jumbo v9, "ISO-8859-7"

    aput-object v9, v8, v4

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "ISO8859_8"

    const/16 v6, 0x8

    const/16 v7, 0xa

    new-array v8, v10, [Ljava/lang/String;

    const-string/jumbo v9, "ISO-8859-8"

    aput-object v9, v8, v4

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

    .line 37
    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "ISO8859_9"

    const/16 v6, 0x9

    const/16 v7, 0xb

    new-array v8, v10, [Ljava/lang/String;

    const-string/jumbo v9, "ISO-8859-9"

    aput-object v9, v8, v4

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "ISO8859_10"

    const/16 v6, 0xa

    const/16 v7, 0xc

    new-array v8, v10, [Ljava/lang/String;

    const-string/jumbo v9, "ISO-8859-10"

    aput-object v9, v8, v4

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

    .line 38
    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "ISO8859_11"

    const/16 v6, 0xb

    const/16 v7, 0xd

    new-array v8, v10, [Ljava/lang/String;

    const-string/jumbo v9, "ISO-8859-11"

    aput-object v9, v8, v4

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "ISO8859_13"

    const/16 v6, 0xc

    const/16 v7, 0xf

    new-array v8, v10, [Ljava/lang/String;

    const-string/jumbo v9, "ISO-8859-13"

    aput-object v9, v8, v4

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

    .line 39
    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "ISO8859_14"

    const/16 v6, 0xd

    const/16 v7, 0x10

    new-array v8, v10, [Ljava/lang/String;

    const-string/jumbo v9, "ISO-8859-14"

    aput-object v9, v8, v4

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "ISO8859_15"

    const/16 v6, 0xe

    const/16 v7, 0x11

    new-array v8, v10, [Ljava/lang/String;

    const-string/jumbo v9, "ISO-8859-15"

    aput-object v9, v8, v4

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

    .line 40
    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "ISO8859_16"

    const/16 v6, 0xf

    const/16 v7, 0x12

    new-array v8, v10, [Ljava/lang/String;

    const-string/jumbo v9, "ISO-8859-16"

    aput-object v9, v8, v4

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "SJIS"

    const/16 v6, 0x10

    const/16 v7, 0x14

    new-array v8, v10, [Ljava/lang/String;

    const-string/jumbo v9, "Shift_JIS"

    aput-object v9, v8, v4

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->SJIS:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "Cp1250"

    const/16 v6, 0x11

    const/16 v7, 0x15

    new-array v8, v10, [Ljava/lang/String;

    const-string/jumbo v9, "windows-1250"

    aput-object v9, v8, v4

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->Cp1250:Lcom/google/zxing/common/CharacterSetECI;

    .line 41
    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "Cp1251"

    const/16 v6, 0x12

    const/16 v7, 0x16

    new-array v8, v10, [Ljava/lang/String;

    const-string/jumbo v9, "windows-1251"

    aput-object v9, v8, v4

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->Cp1251:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "Cp1252"

    const/16 v6, 0x13

    const/16 v7, 0x17

    new-array v8, v10, [Ljava/lang/String;

    const-string/jumbo v9, "windows-1252"

    aput-object v9, v8, v4

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->Cp1252:Lcom/google/zxing/common/CharacterSetECI;

    .line 42
    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "Cp1256"

    const/16 v6, 0x14

    const/16 v7, 0x18

    new-array v8, v10, [Ljava/lang/String;

    const-string/jumbo v9, "windows-1256"

    aput-object v9, v8, v4

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->Cp1256:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "UnicodeBigUnmarked"

    const/16 v6, 0x15

    const/16 v7, 0x19

    new-array v8, v11, [Ljava/lang/String;

    const-string/jumbo v9, "UTF-16BE"

    aput-object v9, v8, v4

    const-string/jumbo v9, "UnicodeBig"

    aput-object v9, v8, v10

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

    .line 43
    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "UTF8"

    const/16 v6, 0x16

    const/16 v7, 0x1a

    new-array v8, v10, [Ljava/lang/String;

    const-string/jumbo v9, "UTF-8"

    aput-object v9, v8, v4

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->UTF8:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "ASCII"

    const/16 v6, 0x17

    new-array v7, v11, [I

    fill-array-data v7, :array_2

    new-array v8, v10, [Ljava/lang/String;

    const-string/jumbo v9, "US-ASCII"

    aput-object v9, v8, v4

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->ASCII:Lcom/google/zxing/common/CharacterSetECI;

    .line 44
    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "Big5"

    const/16 v6, 0x18

    const/16 v7, 0x1c

    invoke-direct {v3, v5, v6, v7}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->Big5:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "GB18030"

    const/16 v6, 0x19

    const/16 v7, 0x1d

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "GB2312"

    aput-object v9, v8, v4

    const-string/jumbo v9, "EUC_CN"

    aput-object v9, v8, v10

    const-string/jumbo v9, "GBK"

    aput-object v9, v8, v11

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->GB18030:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v5, "EUC_KR"

    const/16 v6, 0x1a

    const/16 v7, 0x1e

    new-array v8, v10, [Ljava/lang/String;

    const-string/jumbo v9, "EUC-KR"

    aput-object v9, v8, v4

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

    .line 30
    const/16 v3, 0x1b

    new-array v3, v3, [Lcom/google/zxing/common/CharacterSetECI;

    sget-object v5, Lcom/google/zxing/common/CharacterSetECI;->Cp437:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v5, v3, v4

    sget-object v5, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v5, v3, v10

    sget-object v5, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v5, v3, v11

    sget-object v5, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v5, v3, v12

    sget-object v5, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v5, v3, v13

    const/4 v5, 0x5

    sget-object v6, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v6, v3, v5

    const/4 v5, 0x6

    sget-object v6, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v6, v3, v5

    const/4 v5, 0x7

    sget-object v6, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v6, v3, v5

    const/16 v5, 0x8

    sget-object v6, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v6, v3, v5

    const/16 v5, 0x9

    sget-object v6, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v6, v3, v5

    const/16 v5, 0xa

    sget-object v6, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v6, v3, v5

    const/16 v5, 0xb

    sget-object v6, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v6, v3, v5

    const/16 v5, 0xc

    sget-object v6, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v6, v3, v5

    const/16 v5, 0xd

    sget-object v6, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v6, v3, v5

    const/16 v5, 0xe

    sget-object v6, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v6, v3, v5

    const/16 v5, 0xf

    sget-object v6, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v6, v3, v5

    const/16 v5, 0x10

    sget-object v6, Lcom/google/zxing/common/CharacterSetECI;->SJIS:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v6, v3, v5

    const/16 v5, 0x11

    sget-object v6, Lcom/google/zxing/common/CharacterSetECI;->Cp1250:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v6, v3, v5

    const/16 v5, 0x12

    sget-object v6, Lcom/google/zxing/common/CharacterSetECI;->Cp1251:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v6, v3, v5

    const/16 v5, 0x13

    sget-object v6, Lcom/google/zxing/common/CharacterSetECI;->Cp1252:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v6, v3, v5

    const/16 v5, 0x14

    sget-object v6, Lcom/google/zxing/common/CharacterSetECI;->Cp1256:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v6, v3, v5

    const/16 v5, 0x15

    sget-object v6, Lcom/google/zxing/common/CharacterSetECI;->UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v6, v3, v5

    const/16 v5, 0x16

    sget-object v6, Lcom/google/zxing/common/CharacterSetECI;->UTF8:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v6, v3, v5

    const/16 v5, 0x17

    sget-object v6, Lcom/google/zxing/common/CharacterSetECI;->ASCII:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v6, v3, v5

    const/16 v5, 0x18

    sget-object v6, Lcom/google/zxing/common/CharacterSetECI;->Big5:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v6, v3, v5

    const/16 v5, 0x19

    sget-object v6, Lcom/google/zxing/common/CharacterSetECI;->GB18030:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v6, v3, v5

    const/16 v5, 0x1a

    sget-object v6, Lcom/google/zxing/common/CharacterSetECI;->EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v6, v3, v5

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->$VALUES:[Lcom/google/zxing/common/CharacterSetECI;

    .line 47
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    .line 48
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    .line 50
    invoke-static {}, Lcom/google/zxing/common/CharacterSetECI;->values()[Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    .local v0, "eci":Lcom/google/zxing/common/CharacterSetECI;
    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v0, v6, v5

    .line 51
    iget-object v8, v0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    array-length v9, v8

    move v3, v4

    :goto_1
    if-ge v3, v9, :cond_0

    aget v2, v8, v3

    .line 52
    .local v2, "value":I
    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 54
    .end local v2    # "value":I
    :cond_0
    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v8, v0, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    array-length v9, v8

    move v3, v4

    :goto_2
    if-ge v3, v9, :cond_1

    aget-object v1, v8, v3

    .line 56
    .local v1, "name":Ljava/lang/String;
    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 50
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 59
    :cond_2
    return-void

    .line 33
    .line 43
    nop

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x1b
        0xaa
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p3, v0, v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 2
    .param p3, "value"    # I
    .param p4, "otherEncodingNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    iput-object v0, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    .line 70
    iput-object p4, p0, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    .line 71
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[I[Ljava/lang/String;)V
    .locals 0
    .param p3, "values"    # [I
    .param p4, "otherEncodingNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-object p3, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    .line 75
    iput-object p4, p0, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    .line 76
    return-void
.end method

.method public static getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 105
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/common/CharacterSetECI;

    return-object v0
.end method

.method public static getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;
    .locals 2
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 92
    if-ltz p0, :cond_0

    const/16 v0, 0x384

    if-lt p0, v0, :cond_1

    .line 93
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 95
    :cond_1
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/common/CharacterSetECI;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/google/zxing/common/CharacterSetECI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/common/CharacterSetECI;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->$VALUES:[Lcom/google/zxing/common/CharacterSetECI;

    invoke-virtual {v0}, [Lcom/google/zxing/common/CharacterSetECI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/common/CharacterSetECI;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method
