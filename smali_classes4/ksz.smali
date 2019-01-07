.class public final Lksz;
.super Ljava/lang/Object;
.source "CharsetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lksz$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:Ljava/nio/charset/Charset;

.field public static final c:Ljava/nio/charset/Charset;

.field public static final d:Ljava/nio/charset/Charset;

.field private static e:[Lksz$a;

.field private static f:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lksz$a;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 803
    const/16 v2, 0x93

    new-array v2, v2, [Lksz$a;

    new-instance v4, Lksz$a;

    const-string/jumbo v5, "ISO8859_1"

    const-string/jumbo v6, "ISO-8859-1"

    const/16 v7, 0xd

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "ISO_8859-1:1987"

    aput-object v8, v7, v3

    const-string/jumbo v8, "iso-ir-100"

    aput-object v8, v7, v11

    const-string/jumbo v8, "ISO_8859-1"

    aput-object v8, v7, v12

    const-string/jumbo v8, "latin1"

    aput-object v8, v7, v14

    const/4 v8, 0x4

    const-string/jumbo v9, "l1"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string/jumbo v9, "IBM819"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string/jumbo v9, "CP819"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const-string/jumbo v9, "csISOLatin1"

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const-string/jumbo v9, "8859_1"

    aput-object v9, v7, v8

    const/16 v8, 0x9

    const-string/jumbo v9, "819"

    aput-object v9, v7, v8

    const/16 v8, 0xa

    const-string/jumbo v9, "IBM-819"

    aput-object v9, v7, v8

    const/16 v8, 0xb

    const-string/jumbo v9, "ISO8859-1"

    aput-object v9, v7, v8

    const/16 v8, 0xc

    const-string/jumbo v9, "ISO_8859_1"

    aput-object v9, v7, v8

    invoke-direct {v4, v5, v6, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v4, v2, v3

    new-instance v4, Lksz$a;

    const-string/jumbo v5, "ISO8859_2"

    const-string/jumbo v6, "ISO-8859-2"

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "ISO_8859-2:1987"

    aput-object v8, v7, v3

    const-string/jumbo v8, "iso-ir-101"

    aput-object v8, v7, v11

    const-string/jumbo v8, "ISO_8859-2"

    aput-object v8, v7, v12

    const-string/jumbo v8, "latin2"

    aput-object v8, v7, v14

    const/4 v8, 0x4

    const-string/jumbo v9, "l2"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string/jumbo v9, "csISOLatin2"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string/jumbo v9, "8859_2"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const-string/jumbo v9, "iso8859_2"

    aput-object v9, v7, v8

    invoke-direct {v4, v5, v6, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v4, v2, v11

    new-instance v4, Lksz$a;

    const-string/jumbo v5, "ISO8859_3"

    const-string/jumbo v6, "ISO-8859-3"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "ISO_8859-3:1988"

    aput-object v8, v7, v3

    const-string/jumbo v8, "iso-ir-109"

    aput-object v8, v7, v11

    const-string/jumbo v8, "ISO_8859-3"

    aput-object v8, v7, v12

    const-string/jumbo v8, "latin3"

    aput-object v8, v7, v14

    const/4 v8, 0x4

    const-string/jumbo v9, "l3"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string/jumbo v9, "csISOLatin3"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string/jumbo v9, "8859_3"

    aput-object v9, v7, v8

    invoke-direct {v4, v5, v6, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v4, v2, v12

    new-instance v4, Lksz$a;

    const-string/jumbo v5, "ISO8859_4"

    const-string/jumbo v6, "ISO-8859-4"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "ISO_8859-4:1988"

    aput-object v8, v7, v3

    const-string/jumbo v8, "iso-ir-110"

    aput-object v8, v7, v11

    const-string/jumbo v8, "ISO_8859-4"

    aput-object v8, v7, v12

    const-string/jumbo v8, "latin4"

    aput-object v8, v7, v14

    const/4 v8, 0x4

    const-string/jumbo v9, "l4"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string/jumbo v9, "csISOLatin4"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string/jumbo v9, "8859_4"

    aput-object v9, v7, v8

    invoke-direct {v4, v5, v6, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v4, v2, v14

    const/4 v4, 0x4

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "ISO8859_5"

    const-string/jumbo v7, "ISO-8859-5"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "ISO_8859-5:1988"

    aput-object v9, v8, v3

    const-string/jumbo v9, "iso-ir-144"

    aput-object v9, v8, v11

    const-string/jumbo v9, "ISO_8859-5"

    aput-object v9, v8, v12

    const-string/jumbo v9, "cyrillic"

    aput-object v9, v8, v14

    const/4 v9, 0x4

    const-string/jumbo v10, "csISOLatinCyrillic"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-string/jumbo v10, "8859_5"

    aput-object v10, v8, v9

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/4 v4, 0x5

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "ISO8859_6"

    const-string/jumbo v7, "ISO-8859-6"

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "ISO_8859-6:1987"

    aput-object v9, v8, v3

    const-string/jumbo v9, "iso-ir-127"

    aput-object v9, v8, v11

    const-string/jumbo v9, "ISO_8859-6"

    aput-object v9, v8, v12

    const-string/jumbo v9, "ECMA-114"

    aput-object v9, v8, v14

    const/4 v9, 0x4

    const-string/jumbo v10, "ASMO-708"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-string/jumbo v10, "arabic"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string/jumbo v10, "csISOLatinArabic"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const-string/jumbo v10, "8859_6"

    aput-object v10, v8, v9

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/4 v4, 0x6

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "ISO8859_7"

    const-string/jumbo v7, "ISO-8859-7"

    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "ISO_8859-7:1987"

    aput-object v9, v8, v3

    const-string/jumbo v9, "iso-ir-126"

    aput-object v9, v8, v11

    const-string/jumbo v9, "ISO_8859-7"

    aput-object v9, v8, v12

    const-string/jumbo v9, "ELOT_928"

    aput-object v9, v8, v14

    const/4 v9, 0x4

    const-string/jumbo v10, "ECMA-118"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-string/jumbo v10, "greek"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string/jumbo v10, "greek8"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const-string/jumbo v10, "csISOLatinGreek"

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string/jumbo v10, "8859_7"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    const-string/jumbo v10, "sun_eu_greek"

    aput-object v10, v8, v9

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/4 v4, 0x7

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "ISO8859_8"

    const-string/jumbo v7, "ISO-8859-8"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "ISO_8859-8:1988"

    aput-object v9, v8, v3

    const-string/jumbo v9, "iso-ir-138"

    aput-object v9, v8, v11

    const-string/jumbo v9, "ISO_8859-8"

    aput-object v9, v8, v12

    const-string/jumbo v9, "hebrew"

    aput-object v9, v8, v14

    const/4 v9, 0x4

    const-string/jumbo v10, "csISOLatinHebrew"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-string/jumbo v10, "8859_8"

    aput-object v10, v8, v9

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x8

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "ISO8859_9"

    const-string/jumbo v7, "ISO-8859-9"

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "ISO_8859-9:1989"

    aput-object v9, v8, v3

    const-string/jumbo v9, "iso-ir-148"

    aput-object v9, v8, v11

    const-string/jumbo v9, "ISO_8859-9"

    aput-object v9, v8, v12

    const-string/jumbo v9, "latin5"

    aput-object v9, v8, v14

    const/4 v9, 0x4

    const-string/jumbo v10, "l5"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-string/jumbo v10, "csISOLatin5"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string/jumbo v10, "8859_9"

    aput-object v10, v8, v9

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x9

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "ISO8859_13"

    const-string/jumbo v7, "ISO-8859-13"

    new-array v8, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0xa

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "ISO8859_15"

    const-string/jumbo v7, "ISO-8859-15"

    const/16 v8, 0xe

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "ISO_8859-15"

    aput-object v9, v8, v3

    const-string/jumbo v9, "Latin-9"

    aput-object v9, v8, v11

    const-string/jumbo v9, "8859_15"

    aput-object v9, v8, v12

    const-string/jumbo v9, "csISOlatin9"

    aput-object v9, v8, v14

    const/4 v9, 0x4

    const-string/jumbo v10, "IBM923"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-string/jumbo v10, "cp923"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string/jumbo v10, "923"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const-string/jumbo v10, "L9"

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string/jumbo v10, "IBM-923"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    const-string/jumbo v10, "ISO8859-15"

    aput-object v10, v8, v9

    const/16 v9, 0xa

    const-string/jumbo v10, "LATIN9"

    aput-object v10, v8, v9

    const/16 v9, 0xb

    const-string/jumbo v10, "LATIN0"

    aput-object v10, v8, v9

    const/16 v9, 0xc

    const-string/jumbo v10, "csISOlatin0"

    aput-object v10, v8, v9

    const/16 v9, 0xd

    const-string/jumbo v10, "ISO8859_15_FDIS"

    aput-object v10, v8, v9

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0xb

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "KOI8_R"

    const-string/jumbo v7, "KOI8-R"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "csKOI8R"

    aput-object v9, v8, v3

    const-string/jumbo v9, "koi8"

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0xc

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "ASCII"

    const-string/jumbo v7, "US-ASCII"

    const/16 v8, 0xc

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "ANSI_X3.4-1968"

    aput-object v9, v8, v3

    const-string/jumbo v9, "iso-ir-6"

    aput-object v9, v8, v11

    const-string/jumbo v9, "ANSI_X3.4-1986"

    aput-object v9, v8, v12

    const-string/jumbo v9, "ISO_646.irv:1991"

    aput-object v9, v8, v14

    const/4 v9, 0x4

    const-string/jumbo v10, "ISO646-US"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-string/jumbo v10, "us"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string/jumbo v10, "IBM367"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const-string/jumbo v10, "cp367"

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string/jumbo v10, "csASCII"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    const-string/jumbo v10, "ascii7"

    aput-object v10, v8, v9

    const/16 v9, 0xa

    const-string/jumbo v10, "646"

    aput-object v10, v8, v9

    const/16 v9, 0xb

    const-string/jumbo v10, "iso_646.irv:1983"

    aput-object v10, v8, v9

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0xd

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "UTF8"

    const-string/jumbo v7, "UTF-8"

    new-array v8, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0xe

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "UTF-16"

    const-string/jumbo v7, "UTF-16"

    new-array v8, v11, [Ljava/lang/String;

    const-string/jumbo v9, "UTF_16"

    aput-object v9, v8, v3

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0xf

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "UnicodeBigUnmarked"

    const-string/jumbo v7, "UTF-16BE"

    new-array v8, v14, [Ljava/lang/String;

    const-string/jumbo v9, "X-UTF-16BE"

    aput-object v9, v8, v3

    const-string/jumbo v9, "UTF_16BE"

    aput-object v9, v8, v11

    const-string/jumbo v9, "ISO-10646-UCS-2"

    aput-object v9, v8, v12

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x10

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "UnicodeLittleUnmarked"

    const-string/jumbo v7, "UTF-16LE"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "UTF_16LE"

    aput-object v9, v8, v3

    const-string/jumbo v9, "X-UTF-16LE"

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x11

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Big5"

    const-string/jumbo v7, "Big5"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "csBig5"

    aput-object v9, v8, v3

    const-string/jumbo v9, "CN-Big5"

    aput-object v9, v8, v11

    const-string/jumbo v9, "BIG-FIVE"

    aput-object v9, v8, v12

    const-string/jumbo v9, "BIGFIVE"

    aput-object v9, v8, v14

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x12

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Big5_HKSCS"

    const-string/jumbo v7, "Big5-HKSCS"

    new-array v8, v11, [Ljava/lang/String;

    const-string/jumbo v9, "big5hkscs"

    aput-object v9, v8, v3

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x13

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "EUC_JP"

    const-string/jumbo v7, "EUC-JP"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "csEUCPkdFmtJapanese"

    aput-object v9, v8, v3

    const-string/jumbo v9, "Extended_UNIX_Code_Packed_Format_for_Japanese"

    aput-object v9, v8, v11

    const-string/jumbo v9, "eucjis"

    aput-object v9, v8, v12

    const-string/jumbo v9, "x-eucjp"

    aput-object v9, v8, v14

    const/4 v9, 0x4

    const-string/jumbo v10, "eucjp"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-string/jumbo v10, "x-euc-jp"

    aput-object v10, v8, v9

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x14

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "EUC_KR"

    const-string/jumbo v7, "EUC-KR"

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "csEUCKR"

    aput-object v9, v8, v3

    const-string/jumbo v9, "ksc5601"

    aput-object v9, v8, v11

    const-string/jumbo v9, "5601"

    aput-object v9, v8, v12

    const-string/jumbo v9, "ksc5601_1987"

    aput-object v9, v8, v14

    const/4 v9, 0x4

    const-string/jumbo v10, "ksc_5601"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-string/jumbo v10, "ksc5601-1987"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string/jumbo v10, "ks_c_5601-1987"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const-string/jumbo v10, "euckr"

    aput-object v10, v8, v9

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x15

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "GB18030"

    const-string/jumbo v7, "GB18030"

    new-array v8, v11, [Ljava/lang/String;

    const-string/jumbo v9, "gb18030-2000"

    aput-object v9, v8, v3

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x16

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "EUC_CN"

    const-string/jumbo v7, "GB2312"

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "x-EUC-CN"

    aput-object v9, v8, v3

    const-string/jumbo v9, "csGB2312"

    aput-object v9, v8, v11

    const-string/jumbo v9, "euccn"

    aput-object v9, v8, v12

    const-string/jumbo v9, "euc-cn"

    aput-object v9, v8, v14

    const/4 v9, 0x4

    const-string/jumbo v10, "gb2312-80"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-string/jumbo v10, "gb2312-1980"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string/jumbo v10, "CN-GB"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const-string/jumbo v10, "CN-GB-ISOIR165"

    aput-object v10, v8, v9

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x17

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "GBK"

    const-string/jumbo v7, "windows-936"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "CP936"

    aput-object v9, v8, v3

    const-string/jumbo v9, "MS936"

    aput-object v9, v8, v11

    const-string/jumbo v9, "ms_936"

    aput-object v9, v8, v12

    const-string/jumbo v9, "x-mswin-936"

    aput-object v9, v8, v14

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x18

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp037"

    const-string/jumbo v7, "IBM037"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "ebcdic-cp-us"

    aput-object v9, v8, v3

    const-string/jumbo v9, "ebcdic-cp-ca"

    aput-object v9, v8, v11

    const-string/jumbo v9, "ebcdic-cp-wt"

    aput-object v9, v8, v12

    const-string/jumbo v9, "ebcdic-cp-nl"

    aput-object v9, v8, v14

    const/4 v9, 0x4

    const-string/jumbo v10, "csIBM037"

    aput-object v10, v8, v9

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x19

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp273"

    const-string/jumbo v7, "IBM273"

    new-array v8, v11, [Ljava/lang/String;

    const-string/jumbo v9, "csIBM273"

    aput-object v9, v8, v3

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x1a

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp277"

    const-string/jumbo v7, "IBM277"

    new-array v8, v14, [Ljava/lang/String;

    const-string/jumbo v9, "EBCDIC-CP-DK"

    aput-object v9, v8, v3

    const-string/jumbo v9, "EBCDIC-CP-NO"

    aput-object v9, v8, v11

    const-string/jumbo v9, "csIBM277"

    aput-object v9, v8, v12

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x1b

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp278"

    const-string/jumbo v7, "IBM278"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "CP278"

    aput-object v9, v8, v3

    const-string/jumbo v9, "ebcdic-cp-fi"

    aput-object v9, v8, v11

    const-string/jumbo v9, "ebcdic-cp-se"

    aput-object v9, v8, v12

    const-string/jumbo v9, "csIBM278"

    aput-object v9, v8, v14

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x1c

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp280"

    const-string/jumbo v7, "IBM280"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "ebcdic-cp-it"

    aput-object v9, v8, v3

    const-string/jumbo v9, "csIBM280"

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x1d

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp284"

    const-string/jumbo v7, "IBM284"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "ebcdic-cp-es"

    aput-object v9, v8, v3

    const-string/jumbo v9, "csIBM284"

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x1e

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp285"

    const-string/jumbo v7, "IBM285"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "ebcdic-cp-gb"

    aput-object v9, v8, v3

    const-string/jumbo v9, "csIBM285"

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x1f

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp297"

    const-string/jumbo v7, "IBM297"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "ebcdic-cp-fr"

    aput-object v9, v8, v3

    const-string/jumbo v9, "csIBM297"

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x20

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp420"

    const-string/jumbo v7, "IBM420"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "ebcdic-cp-ar1"

    aput-object v9, v8, v3

    const-string/jumbo v9, "csIBM420"

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x21

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp424"

    const-string/jumbo v7, "IBM424"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "ebcdic-cp-he"

    aput-object v9, v8, v3

    const-string/jumbo v9, "csIBM424"

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x22

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp437"

    const-string/jumbo v7, "IBM437"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "437"

    aput-object v9, v8, v3

    const-string/jumbo v9, "csPC8CodePage437"

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x23

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp500"

    const-string/jumbo v7, "IBM500"

    new-array v8, v14, [Ljava/lang/String;

    const-string/jumbo v9, "ebcdic-cp-be"

    aput-object v9, v8, v3

    const-string/jumbo v9, "ebcdic-cp-ch"

    aput-object v9, v8, v11

    const-string/jumbo v9, "csIBM500"

    aput-object v9, v8, v12

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x24

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp775"

    const-string/jumbo v7, "IBM775"

    new-array v8, v11, [Ljava/lang/String;

    const-string/jumbo v9, "csPC775Baltic"

    aput-object v9, v8, v3

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x25

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp838"

    const-string/jumbo v7, "IBM-Thai"

    new-array v8, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x26

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp850"

    const-string/jumbo v7, "IBM850"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "850"

    aput-object v9, v8, v3

    const-string/jumbo v9, "csPC850Multilingual"

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x27

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp852"

    const-string/jumbo v7, "IBM852"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "852"

    aput-object v9, v8, v3

    const-string/jumbo v9, "csPCp852"

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x28

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp855"

    const-string/jumbo v7, "IBM855"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "855"

    aput-object v9, v8, v3

    const-string/jumbo v9, "csIBM855"

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x29

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp857"

    const-string/jumbo v7, "IBM857"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "857"

    aput-object v9, v8, v3

    const-string/jumbo v9, "csIBM857"

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x2a

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp858"

    const-string/jumbo v7, "IBM00858"

    new-array v8, v14, [Ljava/lang/String;

    const-string/jumbo v9, "CCSID00858"

    aput-object v9, v8, v3

    const-string/jumbo v9, "CP00858"

    aput-object v9, v8, v11

    const-string/jumbo v9, "PC-Multilingual-850+euro"

    aput-object v9, v8, v12

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x2b

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp860"

    const-string/jumbo v7, "IBM860"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "860"

    aput-object v9, v8, v3

    const-string/jumbo v9, "csIBM860"

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x2c

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp861"

    const-string/jumbo v7, "IBM861"

    new-array v8, v14, [Ljava/lang/String;

    const-string/jumbo v9, "861"

    aput-object v9, v8, v3

    const-string/jumbo v9, "cp-is"

    aput-object v9, v8, v11

    const-string/jumbo v9, "csIBM861"

    aput-object v9, v8, v12

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x2d

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp862"

    const-string/jumbo v7, "IBM862"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "862"

    aput-object v9, v8, v3

    const-string/jumbo v9, "csPC862LatinHebrew"

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x2e

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp863"

    const-string/jumbo v7, "IBM863"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "863"

    aput-object v9, v8, v3

    const-string/jumbo v9, "csIBM863"

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x2f

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp864"

    const-string/jumbo v7, "IBM864"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "cp864"

    aput-object v9, v8, v3

    const-string/jumbo v9, "csIBM864"

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x30

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp865"

    const-string/jumbo v7, "IBM865"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "865"

    aput-object v9, v8, v3

    const-string/jumbo v9, "csIBM865"

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x31

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp866"

    const-string/jumbo v7, "IBM866"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "866"

    aput-object v9, v8, v3

    const-string/jumbo v9, "csIBM866"

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x32

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp868"

    const-string/jumbo v7, "IBM868"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "cp-ar"

    aput-object v9, v8, v3

    const-string/jumbo v9, "csIBM868"

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x33

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp869"

    const-string/jumbo v7, "IBM869"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "cp-gr"

    aput-object v9, v8, v3

    const-string/jumbo v9, "csIBM869"

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x34

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp870"

    const-string/jumbo v7, "IBM870"

    new-array v8, v14, [Ljava/lang/String;

    const-string/jumbo v9, "ebcdic-cp-roece"

    aput-object v9, v8, v3

    const-string/jumbo v9, "ebcdic-cp-yu"

    aput-object v9, v8, v11

    const-string/jumbo v9, "csIBM870"

    aput-object v9, v8, v12

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x35

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp871"

    const-string/jumbo v7, "IBM871"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "ebcdic-cp-is"

    aput-object v9, v8, v3

    const-string/jumbo v9, "csIBM871"

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x36

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp918"

    const-string/jumbo v7, "IBM918"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "ebcdic-cp-ar2"

    aput-object v9, v8, v3

    const-string/jumbo v9, "csIBM918"

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x37

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1026"

    const-string/jumbo v7, "IBM1026"

    new-array v8, v11, [Ljava/lang/String;

    const-string/jumbo v9, "csIBM1026"

    aput-object v9, v8, v3

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x38

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1047"

    const-string/jumbo v7, "IBM1047"

    new-array v8, v11, [Ljava/lang/String;

    const-string/jumbo v9, "IBM-1047"

    aput-object v9, v8, v3

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x39

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1140"

    const-string/jumbo v7, "IBM01140"

    new-array v8, v14, [Ljava/lang/String;

    const-string/jumbo v9, "CCSID01140"

    aput-object v9, v8, v3

    const-string/jumbo v9, "CP01140"

    aput-object v9, v8, v11

    const-string/jumbo v9, "ebcdic-us-37+euro"

    aput-object v9, v8, v12

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x3a

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1141"

    const-string/jumbo v7, "IBM01141"

    new-array v8, v14, [Ljava/lang/String;

    const-string/jumbo v9, "CCSID01141"

    aput-object v9, v8, v3

    const-string/jumbo v9, "CP01141"

    aput-object v9, v8, v11

    const-string/jumbo v9, "ebcdic-de-273+euro"

    aput-object v9, v8, v12

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x3b

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1142"

    const-string/jumbo v7, "IBM01142"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "CCSID01142"

    aput-object v9, v8, v3

    const-string/jumbo v9, "CP01142"

    aput-object v9, v8, v11

    const-string/jumbo v9, "ebcdic-dk-277+euro"

    aput-object v9, v8, v12

    const-string/jumbo v9, "ebcdic-no-277+euro"

    aput-object v9, v8, v14

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x3c

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1143"

    const-string/jumbo v7, "IBM01143"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "CCSID01143"

    aput-object v9, v8, v3

    const-string/jumbo v9, "CP01143"

    aput-object v9, v8, v11

    const-string/jumbo v9, "ebcdic-fi-278+euro"

    aput-object v9, v8, v12

    const-string/jumbo v9, "ebcdic-se-278+euro"

    aput-object v9, v8, v14

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x3d

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1144"

    const-string/jumbo v7, "IBM01144"

    new-array v8, v14, [Ljava/lang/String;

    const-string/jumbo v9, "CCSID01144"

    aput-object v9, v8, v3

    const-string/jumbo v9, "CP01144"

    aput-object v9, v8, v11

    const-string/jumbo v9, "ebcdic-it-280+euro"

    aput-object v9, v8, v12

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x3e

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1145"

    const-string/jumbo v7, "IBM01145"

    new-array v8, v14, [Ljava/lang/String;

    const-string/jumbo v9, "CCSID01145"

    aput-object v9, v8, v3

    const-string/jumbo v9, "CP01145"

    aput-object v9, v8, v11

    const-string/jumbo v9, "ebcdic-es-284+euro"

    aput-object v9, v8, v12

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x3f

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1146"

    const-string/jumbo v7, "IBM01146"

    new-array v8, v14, [Ljava/lang/String;

    const-string/jumbo v9, "CCSID01146"

    aput-object v9, v8, v3

    const-string/jumbo v9, "CP01146"

    aput-object v9, v8, v11

    const-string/jumbo v9, "ebcdic-gb-285+euro"

    aput-object v9, v8, v12

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x40

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1147"

    const-string/jumbo v7, "IBM01147"

    new-array v8, v14, [Ljava/lang/String;

    const-string/jumbo v9, "CCSID01147"

    aput-object v9, v8, v3

    const-string/jumbo v9, "CP01147"

    aput-object v9, v8, v11

    const-string/jumbo v9, "ebcdic-fr-297+euro"

    aput-object v9, v8, v12

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x41

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1148"

    const-string/jumbo v7, "IBM01148"

    new-array v8, v14, [Ljava/lang/String;

    const-string/jumbo v9, "CCSID01148"

    aput-object v9, v8, v3

    const-string/jumbo v9, "CP01148"

    aput-object v9, v8, v11

    const-string/jumbo v9, "ebcdic-international-500+euro"

    aput-object v9, v8, v12

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x42

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1149"

    const-string/jumbo v7, "IBM01149"

    new-array v8, v14, [Ljava/lang/String;

    const-string/jumbo v9, "CCSID01149"

    aput-object v9, v8, v3

    const-string/jumbo v9, "CP01149"

    aput-object v9, v8, v11

    const-string/jumbo v9, "ebcdic-is-871+euro"

    aput-object v9, v8, v12

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x43

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1250"

    const-string/jumbo v7, "windows-1250"

    new-array v8, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x44

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1251"

    const-string/jumbo v7, "windows-1251"

    new-array v8, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x45

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1252"

    const-string/jumbo v7, "windows-1252"

    new-array v8, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x46

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1253"

    const-string/jumbo v7, "windows-1253"

    new-array v8, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x47

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1254"

    const-string/jumbo v7, "windows-1254"

    new-array v8, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x48

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1255"

    const-string/jumbo v7, "windows-1255"

    new-array v8, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x49

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1256"

    const-string/jumbo v7, "windows-1256"

    new-array v8, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x4a

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1257"

    const-string/jumbo v7, "windows-1257"

    new-array v8, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x4b

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1258"

    const-string/jumbo v7, "windows-1258"

    new-array v8, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x4c

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "ISO2022CN"

    const-string/jumbo v7, "ISO-2022-CN"

    new-array v8, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x4d

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "ISO2022JP"

    const-string/jumbo v7, "ISO-2022-JP"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "csISO2022JP"

    aput-object v9, v8, v3

    const-string/jumbo v9, "JIS"

    aput-object v9, v8, v11

    const-string/jumbo v9, "jis_encoding"

    aput-object v9, v8, v12

    const-string/jumbo v9, "csjisencoding"

    aput-object v9, v8, v14

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x4e

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "ISO2022KR"

    const-string/jumbo v7, "ISO-2022-KR"

    new-array v8, v11, [Ljava/lang/String;

    const-string/jumbo v9, "csISO2022KR"

    aput-object v9, v8, v3

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x4f

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "JIS_X0201"

    const-string/jumbo v7, "JIS_X0201"

    new-array v8, v14, [Ljava/lang/String;

    const-string/jumbo v9, "X0201"

    aput-object v9, v8, v3

    const-string/jumbo v9, "JIS0201"

    aput-object v9, v8, v11

    const-string/jumbo v9, "csHalfWidthKatakana"

    aput-object v9, v8, v12

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x50

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "JIS_X0212-1990"

    const-string/jumbo v7, "JIS_X0212-1990"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "iso-ir-159"

    aput-object v9, v8, v3

    const-string/jumbo v9, "x0212"

    aput-object v9, v8, v11

    const-string/jumbo v9, "JIS0212"

    aput-object v9, v8, v12

    const-string/jumbo v9, "csISO159JISX02121990"

    aput-object v9, v8, v14

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x51

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "JIS_C6626-1983"

    const-string/jumbo v7, "JIS_C6626-1983"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "x-JIS0208"

    aput-object v9, v8, v3

    const-string/jumbo v9, "JIS0208"

    aput-object v9, v8, v11

    const-string/jumbo v9, "csISO87JISX0208"

    aput-object v9, v8, v12

    const-string/jumbo v9, "x0208"

    aput-object v9, v8, v14

    const/4 v9, 0x4

    const-string/jumbo v10, "JIS_X0208-1983"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-string/jumbo v10, "iso-ir-87"

    aput-object v10, v8, v9

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x52

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "SJIS"

    const-string/jumbo v7, "Shift_JIS"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "MS_Kanji"

    aput-object v9, v8, v3

    const-string/jumbo v9, "csShiftJIS"

    aput-object v9, v8, v11

    const-string/jumbo v9, "shift-jis"

    aput-object v9, v8, v12

    const-string/jumbo v9, "x-sjis"

    aput-object v9, v8, v14

    const/4 v9, 0x4

    const-string/jumbo v10, "pck"

    aput-object v10, v8, v9

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x53

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "TIS620"

    const-string/jumbo v7, "TIS-620"

    new-array v8, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x54

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "MS932"

    const-string/jumbo v7, "Windows-31J"

    new-array v8, v14, [Ljava/lang/String;

    const-string/jumbo v9, "windows-932"

    aput-object v9, v8, v3

    const-string/jumbo v9, "csWindows31J"

    aput-object v9, v8, v11

    const-string/jumbo v9, "x-ms-cp932"

    aput-object v9, v8, v12

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x55

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "EUC_TW"

    const-string/jumbo v7, "EUC-TW"

    new-array v8, v14, [Ljava/lang/String;

    const-string/jumbo v9, "x-EUC-TW"

    aput-object v9, v8, v3

    const-string/jumbo v9, "cns11643"

    aput-object v9, v8, v11

    const-string/jumbo v9, "euctw"

    aput-object v9, v8, v12

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x56

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "x-Johab"

    const-string/jumbo v7, "johab"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "johab"

    aput-object v9, v8, v3

    const-string/jumbo v9, "cp1361"

    aput-object v9, v8, v11

    const-string/jumbo v9, "ms1361"

    aput-object v9, v8, v12

    const-string/jumbo v9, "ksc5601-1992"

    aput-object v9, v8, v14

    const/4 v9, 0x4

    const-string/jumbo v10, "ksc5601_1992"

    aput-object v10, v8, v9

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x57

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "MS950_HKSCS"

    const-string/jumbo v7, ""

    new-array v8, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x58

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "MS874"

    const-string/jumbo v7, "windows-874"

    new-array v8, v11, [Ljava/lang/String;

    const-string/jumbo v9, "cp874"

    aput-object v9, v8, v3

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x59

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "MS949"

    const-string/jumbo v7, "windows-949"

    new-array v8, v14, [Ljava/lang/String;

    const-string/jumbo v9, "windows949"

    aput-object v9, v8, v3

    const-string/jumbo v9, "ms_949"

    aput-object v9, v8, v11

    const-string/jumbo v9, "x-windows-949"

    aput-object v9, v8, v12

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x5a

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "MS950"

    const-string/jumbo v7, "windows-950"

    new-array v8, v11, [Ljava/lang/String;

    const-string/jumbo v9, "x-windows-950"

    aput-object v9, v8, v3

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x5b

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp737"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x5c

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp856"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x5d

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp875"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x5e

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp921"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x5f

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp922"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x60

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp930"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x61

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp933"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x62

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp935"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x63

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp937"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x64

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp939"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x65

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp942"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x66

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp942C"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x67

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp943"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x68

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp943C"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x69

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp948"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x6a

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp949"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x6b

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp949C"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x6c

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp950"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x6d

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp964"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x6e

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp970"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x6f

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1006"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x70

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1025"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x71

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1046"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x72

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1097"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x73

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1098"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x74

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1112"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x75

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1122"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x76

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1123"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x77

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1124"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x78

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1381"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x79

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp1383"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x7a

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Cp33722"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x7b

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "Big5_Solaris"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x7c

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "EUC_JP_LINUX"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x7d

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "EUC_JP_Solaris"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x7e

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "ISCII91"

    new-array v7, v12, [Ljava/lang/String;

    const-string/jumbo v8, "x-ISCII91"

    aput-object v8, v7, v3

    const-string/jumbo v8, "iscii"

    aput-object v8, v7, v11

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x7f

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "ISO2022_CN_CNS"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x80

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "ISO2022_CN_GB"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x81

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "x-iso-8859-11"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x82

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "JISAutoDetect"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x83

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "MacArabic"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x84

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "MacCentralEurope"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x85

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "MacCroatian"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x86

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "MacCyrillic"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x87

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "MacDingbat"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x88

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "MacGreek"

    const-string/jumbo v7, "MacGreek"

    new-array v8, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x89

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "MacHebrew"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x8a

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "MacIceland"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x8b

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "MacRoman"

    const-string/jumbo v7, "MacRoman"

    new-array v8, v14, [Ljava/lang/String;

    const-string/jumbo v9, "Macintosh"

    aput-object v9, v8, v3

    const-string/jumbo v9, "MAC"

    aput-object v9, v8, v11

    const-string/jumbo v9, "csMacintosh"

    aput-object v9, v8, v12

    invoke-direct {v5, v6, v7, v8, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x8c

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "MacRomania"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x8d

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "MacSymbol"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x8e

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "MacThai"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x8f

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "MacTurkish"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x90

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "MacUkraine"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x91

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "UnicodeBig"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    const/16 v4, 0x92

    new-instance v5, Lksz$a;

    const-string/jumbo v6, "UnicodeLittle"

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v5, v6, v13, v7, v3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V

    aput-object v5, v2, v4

    sput-object v2, Lksz;->e:[Lksz$a;

    .line 996
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    sput-object v2, Lksz;->f:Ljava/util/SortedSet;

    .line 1002
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    sput-object v2, Lksz;->g:Ljava/util/SortedSet;

    .line 1008
    sput-object v13, Lksz;->h:Ljava/util/Map;

    .line 1014
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lksz;->i:Ljava/util/Map;

    .line 1018
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lksz;->h:Ljava/util/Map;

    .line 1019
    sget-object v5, Lksz;->e:[Lksz$a;

    array-length v6, v5

    move v4, v3

    .local v0, "c":Lksz$a;
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v0, v5, v4

    .line 1020
    sget-object v2, Lksz;->h:Ljava/util/Map;

    invoke-static {v0}, Lksz$a;->a(Lksz$a;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    invoke-static {v0}, Lksz$a;->b(Lksz$a;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1022
    sget-object v2, Lksz;->h:Ljava/util/Map;

    invoke-static {v0}, Lksz$a;->b(Lksz$a;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    :cond_0
    invoke-static {v0}, Lksz$a;->c(Lksz$a;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1025
    invoke-static {v0}, Lksz$a;->c(Lksz$a;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v2, v3

    :goto_1
    if-ge v2, v8, :cond_1

    aget-object v1, v7, v2

    .line 1026
    .local v1, "str":Ljava/lang/String;
    sget-object v9, Lksz;->h:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1019
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 1047
    :cond_2
    const-string/jumbo v2, "US-ASCII"

    .line 1048
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    sput-object v2, Lksz;->a:Ljava/nio/charset/Charset;

    .line 1050
    const-string/jumbo v2, "ISO-8859-1"

    .line 1051
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    sput-object v2, Lksz;->b:Ljava/nio/charset/Charset;

    .line 1053
    const-string/jumbo v2, "UTF-8"

    .line 1054
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    sput-object v2, Lksz;->c:Ljava/nio/charset/Charset;

    .line 1056
    sget-object v2, Lksz;->a:Ljava/nio/charset/Charset;

    sput-object v2, Lksz;->d:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 1103
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1116
    if-nez p0, :cond_0

    .line 1117
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "String may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1119
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1120
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1121
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lksz;->a(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1122
    const/4 v2, 0x0

    .line 1125
    :goto_1
    return v2

    .line 1120
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1125
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 6
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1158
    sget-object v0, Lksz;->i:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1159
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2172
    const/4 v0, 0x5

    new-array v2, v0, [B

    fill-array-data v2, :array_0

    .line 2173
    sget-object v0, Lksz;->h:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lksz$a;

    .line 2174
    if-nez v0, :cond_1

    .line 2175
    sget-object v0, Lksz;->i:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    :cond_0
    :goto_0
    sget-object v0, Lksz;->f:Ljava/util/SortedSet;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2180
    :cond_1
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-static {v0}, Lksz$a;->a(Lksz$a;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2181
    sget-object v2, Lksz;->f:Ljava/util/SortedSet;

    invoke-static {v0}, Lksz$a;->a(Lksz$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2187
    :goto_1
    :try_start_1
    const-string/jumbo v2, "dummy"

    invoke-static {v0}, Lksz$a;->a(Lksz$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 2188
    sget-object v2, Lksz;->g:Ljava/util/SortedSet;

    invoke-static {v0}, Lksz$a;->a(Lksz$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2193
    :goto_2
    sget-object v0, Lksz;->i:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    .line 2191
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_1

    .line 2184
    :catch_3
    move-exception v2

    goto :goto_1

    .line 2172
    :array_0
    .array-data 1
        0x64t
        0x75t
        0x6dt
        0x6dt
        0x79t
    .end array-data
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 1206
    sget-object v1, Lksz;->h:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lksz$a;

    .line 1207
    .local v0, "c":Lksz$a;
    if-eqz v0, :cond_0

    .line 1208
    invoke-static {v0}, Lksz$a;->b(Lksz$a;)Ljava/lang/String;

    move-result-object v1

    .line 1210
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 1225
    sget-object v1, Lksz;->h:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lksz$a;

    .line 1226
    .local v0, "c":Lksz$a;
    if-eqz v0, :cond_0

    .line 1227
    invoke-static {v0}, Lksz$a;->a(Lksz$a;)Ljava/lang/String;

    move-result-object v1

    .line 1229
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
