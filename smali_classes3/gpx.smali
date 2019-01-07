.class public final Lgpx;
.super Ljava/lang/Object;
.source "MimeUtils.java"


# static fields
.field private static final A:[Ljava/lang/String;

.field private static final B:[Ljava/lang/String;

.field private static final C:[Ljava/lang/String;

.field private static final D:[Ljava/lang/String;

.field private static final E:[Ljava/lang/String;

.field private static final F:[Ljava/lang/String;

.field private static final G:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static H:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static I:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static J:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static K:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final L:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field public static final g:[Ljava/lang/String;

.field public static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;

.field private static final j:[Ljava/lang/String;

.field private static final k:[Ljava/lang/String;

.field private static final l:[Ljava/lang/String;

.field private static final m:[Ljava/lang/String;

.field private static final n:[Ljava/lang/String;

.field private static final o:[Ljava/lang/String;

.field private static final p:[Ljava/lang/String;

.field private static final q:[Ljava/lang/String;

.field private static final r:[Ljava/lang/String;

.field private static final s:[Ljava/lang/String;

.field private static final t:[Ljava/lang/String;

.field private static final u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final v:[Ljava/lang/String;

.field private static final w:[Ljava/lang/String;

.field private static final x:[Ljava/lang/String;

.field private static final y:[Ljava/lang/String;

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 35
    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v4, "adoc"

    aput-object v4, v2, v3

    const-string/jumbo v4, "axls"

    aput-object v4, v2, v7

    sput-object v2, Lgpx;->i:[Ljava/lang/String;

    .line 45
    const/16 v2, 0x12

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "mov"

    aput-object v4, v2, v3

    const-string/jumbo v4, "3gp"

    aput-object v4, v2, v7

    const-string/jumbo v4, "asf"

    aput-object v4, v2, v8

    const-string/jumbo v4, "asx"

    aput-object v4, v2, v9

    const-string/jumbo v4, "avi"

    aput-object v4, v2, v10

    const/4 v4, 0x5

    const-string/jumbo v5, "flv"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "mpg"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "mpeg"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "mpe"

    aput-object v5, v2, v4

    const/16 v4, 0x9

    const-string/jumbo v5, "mov"

    aput-object v5, v2, v4

    const/16 v4, 0xa

    const-string/jumbo v5, "mp4"

    aput-object v5, v2, v4

    const/16 v4, 0xb

    const-string/jumbo v5, "m4v"

    aput-object v5, v2, v4

    const/16 v4, 0xc

    const-string/jumbo v5, "mkv"

    aput-object v5, v2, v4

    const/16 v4, 0xd

    const-string/jumbo v5, "rm"

    aput-object v5, v2, v4

    const/16 v4, 0xe

    const-string/jumbo v5, "rmvb"

    aput-object v5, v2, v4

    const/16 v4, 0xf

    const-string/jumbo v5, "vob"

    aput-object v5, v2, v4

    const/16 v4, 0x10

    const-string/jumbo v5, "wmv"

    aput-object v5, v2, v4

    const/16 v4, 0x11

    const-string/jumbo v5, "swf"

    aput-object v5, v2, v4

    sput-object v2, Lgpx;->j:[Ljava/lang/String;

    .line 50
    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v4, "txt"

    aput-object v4, v2, v3

    const-string/jumbo v4, "text"

    aput-object v4, v2, v7

    sput-object v2, Lgpx;->k:[Ljava/lang/String;

    .line 53
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "doc"

    aput-object v4, v2, v3

    const-string/jumbo v4, "docx"

    aput-object v4, v2, v7

    const-string/jumbo v4, "docm"

    aput-object v4, v2, v8

    const-string/jumbo v4, "dotx"

    aput-object v4, v2, v9

    const-string/jumbo v4, "dotm"

    aput-object v4, v2, v10

    sput-object v2, Lgpx;->l:[Ljava/lang/String;

    .line 56
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "xls"

    aput-object v4, v2, v3

    const-string/jumbo v4, "xlsx"

    aput-object v4, v2, v7

    const-string/jumbo v4, "csv"

    aput-object v4, v2, v8

    const-string/jumbo v4, "xlsm"

    aput-object v4, v2, v9

    const-string/jumbo v4, "xltx"

    aput-object v4, v2, v10

    const/4 v4, 0x5

    const-string/jumbo v5, "xltm"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "xlsb"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "xlam"

    aput-object v5, v2, v4

    sput-object v2, Lgpx;->m:[Ljava/lang/String;

    .line 59
    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "ppt"

    aput-object v4, v2, v3

    const-string/jumbo v4, "pptx"

    aput-object v4, v2, v7

    const-string/jumbo v4, "pps"

    aput-object v4, v2, v8

    const-string/jumbo v4, "ppsx"

    aput-object v4, v2, v9

    const-string/jumbo v4, "pptm"

    aput-object v4, v2, v10

    const/4 v4, 0x5

    const-string/jumbo v5, "ppsm"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "potx"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "potm"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "ppam"

    aput-object v5, v2, v4

    const/16 v4, 0x9

    const-string/jumbo v5, "sldx"

    aput-object v5, v2, v4

    const/16 v4, 0xa

    const-string/jumbo v5, "sldm"

    aput-object v5, v2, v4

    sput-object v2, Lgpx;->n:[Ljava/lang/String;

    .line 62
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "bmp"

    aput-object v4, v2, v3

    const-string/jumbo v4, "png"

    aput-object v4, v2, v7

    const-string/jumbo v4, "jpg"

    aput-object v4, v2, v8

    const-string/jumbo v4, "jpeg"

    aput-object v4, v2, v9

    const-string/jumbo v4, "gif"

    aput-object v4, v2, v10

    const/4 v4, 0x5

    const-string/jumbo v5, "webp"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "ico"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "tiff"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "tif"

    aput-object v5, v2, v4

    const/16 v4, 0x9

    const-string/jumbo v5, "tga"

    aput-object v5, v2, v4

    sput-object v2, Lgpx;->a:[Ljava/lang/String;

    .line 65
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "bmp"

    aput-object v4, v2, v3

    const-string/jumbo v4, "png"

    aput-object v4, v2, v7

    const-string/jumbo v4, "jpg"

    aput-object v4, v2, v8

    const-string/jumbo v4, "jpeg"

    aput-object v4, v2, v9

    const-string/jumbo v4, "webp"

    aput-object v4, v2, v10

    const/4 v4, 0x5

    const-string/jumbo v5, "ico"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "tiff"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "tif"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "tga"

    aput-object v5, v2, v4

    sput-object v2, Lgpx;->b:[Ljava/lang/String;

    .line 70
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "bmp"

    aput-object v4, v2, v3

    const-string/jumbo v4, "png"

    aput-object v4, v2, v7

    const-string/jumbo v4, "jpg"

    aput-object v4, v2, v8

    const-string/jumbo v4, "jpeg"

    aput-object v4, v2, v9

    const-string/jumbo v4, "webp"

    aput-object v4, v2, v10

    sput-object v2, Lgpx;->c:[Ljava/lang/String;

    .line 75
    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v4, "png"

    aput-object v4, v2, v3

    const-string/jumbo v4, "jpg"

    aput-object v4, v2, v7

    const-string/jumbo v4, "gif"

    aput-object v4, v2, v8

    const-string/jumbo v4, "jpeg"

    aput-object v4, v2, v9

    sput-object v2, Lgpx;->d:[Ljava/lang/String;

    .line 77
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v4, "tga"

    aput-object v4, v2, v3

    sput-object v2, Lgpx;->e:[Ljava/lang/String;

    .line 80
    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "zip"

    aput-object v4, v2, v3

    const-string/jumbo v4, "gz"

    aput-object v4, v2, v7

    const-string/jumbo v4, "z"

    aput-object v4, v2, v8

    const-string/jumbo v4, "tgz"

    aput-object v4, v2, v9

    const-string/jumbo v4, "rar"

    aput-object v4, v2, v10

    const/4 v4, 0x5

    const-string/jumbo v5, "7z"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "cab"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "jar"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "rar"

    aput-object v5, v2, v4

    const/16 v4, 0x9

    const-string/jumbo v5, "tar"

    aput-object v5, v2, v4

    const/16 v4, 0xa

    const-string/jumbo v5, "iso"

    aput-object v5, v2, v4

    sput-object v2, Lgpx;->o:[Ljava/lang/String;

    .line 83
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "exe"

    aput-object v4, v2, v3

    const-string/jumbo v4, "msi"

    aput-object v4, v2, v7

    const-string/jumbo v4, "ipa"

    aput-object v4, v2, v8

    const-string/jumbo v4, "apk"

    aput-object v4, v2, v9

    const-string/jumbo v4, "dmg"

    aput-object v4, v2, v10

    sput-object v2, Lgpx;->p:[Ljava/lang/String;

    .line 86
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v4, "key"

    aput-object v4, v2, v3

    sput-object v2, Lgpx;->q:[Ljava/lang/String;

    .line 89
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v4, "numbers"

    aput-object v4, v2, v3

    sput-object v2, Lgpx;->r:[Ljava/lang/String;

    .line 92
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v4, "pages"

    aput-object v4, v2, v3

    sput-object v2, Lgpx;->s:[Ljava/lang/String;

    .line 95
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v4, "sketch"

    aput-object v4, v2, v3

    sput-object v2, Lgpx;->t:[Ljava/lang/String;

    .line 98
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v4, "video/*"

    aput-object v4, v2, v3

    sput-object v2, Lgpx;->f:[Ljava/lang/String;

    .line 102
    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "aac"

    aput-object v4, v2, v3

    const-string/jumbo v4, "ape"

    aput-object v4, v2, v7

    const-string/jumbo v4, "mp3"

    aput-object v4, v2, v8

    const-string/jumbo v4, "mid"

    aput-object v4, v2, v9

    const-string/jumbo v4, "voc"

    aput-object v4, v2, v10

    const/4 v4, 0x5

    const-string/jumbo v5, "wav"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "wma"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "asf"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "flac"

    aput-object v5, v2, v4

    const/16 v4, 0x9

    const-string/jumbo v5, "ogg"

    aput-object v5, v2, v4

    const/16 v4, 0xa

    const-string/jumbo v5, "vqf"

    aput-object v5, v2, v4

    const/16 v4, 0xb

    const-string/jumbo v5, "amr"

    aput-object v5, v2, v4

    sput-object v2, Lgpx;->g:[Ljava/lang/String;

    .line 103
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v4, "audio/*"

    aput-object v4, v2, v3

    sput-object v2, Lgpx;->h:[Ljava/lang/String;

    .line 108
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lgpx;->u:Ljava/util/HashMap;

    .line 110
    const/16 v2, 0x4a

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "pdf"

    aput-object v2, v1, v3

    const-string/jumbo v2, "doc"

    aput-object v2, v1, v7

    const-string/jumbo v2, "docx"

    aput-object v2, v1, v8

    const-string/jumbo v2, "ppt"

    aput-object v2, v1, v9

    const-string/jumbo v2, "pptx"

    aput-object v2, v1, v10

    const/4 v2, 0x5

    const-string/jumbo v4, "xls"

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v4, "xlsx"

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v4, "txt"

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v4, "ini"

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v4, "java"

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v4, "xml"

    aput-object v4, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v4, "html"

    aput-object v4, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v4, "htm"

    aput-object v4, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v4, "jsp"

    aput-object v4, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v4, "js"

    aput-object v4, v1, v2

    const/16 v2, 0xf

    const-string/jumbo v4, "cpp"

    aput-object v4, v1, v2

    const/16 v2, 0x10

    const-string/jumbo v4, "h"

    aput-object v4, v1, v2

    const/16 v2, 0x11

    const-string/jumbo v4, "c"

    aput-object v4, v1, v2

    const/16 v2, 0x12

    const-string/jumbo v4, "php"

    aput-object v4, v1, v2

    const/16 v2, 0x13

    const-string/jumbo v4, "pl"

    aput-object v4, v1, v2

    const/16 v2, 0x14

    const-string/jumbo v4, "pm"

    aput-object v4, v1, v2

    const/16 v2, 0x15

    const-string/jumbo v4, "pv"

    aput-object v4, v1, v2

    const/16 v2, 0x16

    const-string/jumbo v4, "perl"

    aput-object v4, v1, v2

    const/16 v2, 0x17

    const-string/jumbo v4, "json"

    aput-object v4, v1, v2

    const/16 v2, 0x18

    const-string/jumbo v4, "sql"

    aput-object v4, v1, v2

    const/16 v2, 0x19

    const-string/jumbo v4, "css"

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    const-string/jumbo v4, "py"

    aput-object v4, v1, v2

    const/16 v2, 0x1b

    const-string/jumbo v4, "sh"

    aput-object v4, v1, v2

    const/16 v2, 0x1c

    const-string/jumbo v4, "jpeg"

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    const-string/jumbo v4, "gif"

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    const-string/jumbo v4, "bmp"

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    const-string/jumbo v4, "png"

    aput-object v4, v1, v2

    const/16 v2, 0x20

    const-string/jumbo v4, "jpg"

    aput-object v4, v1, v2

    const/16 v2, 0x21

    const-string/jumbo v4, "ico"

    aput-object v4, v1, v2

    const/16 v2, 0x22

    const-string/jumbo v4, "tiff"

    aput-object v4, v1, v2

    const/16 v2, 0x23

    const-string/jumbo v4, "tif"

    aput-object v4, v1, v2

    const/16 v2, 0x24

    const-string/jumbo v4, "tga"

    aput-object v4, v1, v2

    const/16 v2, 0x25

    const-string/jumbo v4, "webp"

    aput-object v4, v1, v2

    const/16 v2, 0x26

    const-string/jumbo v4, "zip"

    aput-object v4, v1, v2

    const/16 v2, 0x27

    const-string/jumbo v4, "jar"

    aput-object v4, v1, v2

    const/16 v2, 0x28

    const-string/jumbo v4, "pdf"

    aput-object v4, v1, v2

    const/16 v2, 0x29

    const-string/jumbo v4, "pptx"

    aput-object v4, v1, v2

    const/16 v2, 0x2a

    const-string/jumbo v4, "ppt"

    aput-object v4, v1, v2

    const/16 v2, 0x2b

    const-string/jumbo v4, "pot"

    aput-object v4, v1, v2

    const/16 v2, 0x2c

    const-string/jumbo v4, "potx"

    aput-object v4, v1, v2

    const/16 v2, 0x2d

    const-string/jumbo v4, "pps"

    aput-object v4, v1, v2

    const/16 v2, 0x2e

    const-string/jumbo v4, "ppsx"

    aput-object v4, v1, v2

    const/16 v2, 0x2f

    const-string/jumbo v4, "dps"

    aput-object v4, v1, v2

    const/16 v2, 0x30

    const-string/jumbo v4, "dpt"

    aput-object v4, v1, v2

    const/16 v2, 0x31

    const-string/jumbo v4, "pptm"

    aput-object v4, v1, v2

    const/16 v2, 0x32

    const-string/jumbo v4, "potm"

    aput-object v4, v1, v2

    const/16 v2, 0x33

    const-string/jumbo v4, "ppsm"

    aput-object v4, v1, v2

    const/16 v2, 0x34

    const-string/jumbo v4, "dpss"

    aput-object v4, v1, v2

    const/16 v2, 0x35

    const-string/jumbo v4, "xls"

    aput-object v4, v1, v2

    const/16 v2, 0x36

    const-string/jumbo v4, "xlt"

    aput-object v4, v1, v2

    const/16 v2, 0x37

    const-string/jumbo v4, "et"

    aput-object v4, v1, v2

    const/16 v2, 0x38

    const-string/jumbo v4, "ett"

    aput-object v4, v1, v2

    const/16 v2, 0x39

    const-string/jumbo v4, "xlsx"

    aput-object v4, v1, v2

    const/16 v2, 0x3a

    const-string/jumbo v4, "xltx"

    aput-object v4, v1, v2

    const/16 v2, 0x3b

    const-string/jumbo v4, "xlsb"

    aput-object v4, v1, v2

    const/16 v2, 0x3c

    const-string/jumbo v4, "xlsm"

    aput-object v4, v1, v2

    const/16 v2, 0x3d

    const-string/jumbo v4, "xltm"

    aput-object v4, v1, v2

    const/16 v2, 0x3e

    const-string/jumbo v4, "ets"

    aput-object v4, v1, v2

    const/16 v2, 0x3f

    const-string/jumbo v4, "csv"

    aput-object v4, v1, v2

    const/16 v2, 0x40

    const-string/jumbo v4, "doc"

    aput-object v4, v1, v2

    const/16 v2, 0x41

    const-string/jumbo v4, "dot"

    aput-object v4, v1, v2

    const/16 v2, 0x42

    const-string/jumbo v4, "wps"

    aput-object v4, v1, v2

    const/16 v2, 0x43

    const-string/jumbo v4, "wpt"

    aput-object v4, v1, v2

    const/16 v2, 0x44

    const-string/jumbo v4, "docx"

    aput-object v4, v1, v2

    const/16 v2, 0x45

    const-string/jumbo v4, "dotx"

    aput-object v4, v1, v2

    const/16 v2, 0x46

    const-string/jumbo v4, "docm"

    aput-object v4, v1, v2

    const/16 v2, 0x47

    const-string/jumbo v4, "dotm"

    aput-object v4, v1, v2

    const/16 v2, 0x48

    const-string/jumbo v4, "wpss"

    aput-object v4, v1, v2

    const/16 v2, 0x49

    const-string/jumbo v4, "txt"

    aput-object v4, v1, v2

    .local v1, "types":[Ljava/lang/String;
    move v2, v3

    .line 126
    :goto_0
    const/16 v4, 0x4a

    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 127
    .local v0, "type":Ljava/lang/String;
    sget-object v4, Lgpx;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "type":Ljava/lang/String;
    :cond_0
    const/16 v2, 0x12

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "doc"

    aput-object v4, v2, v3

    const-string/jumbo v4, "docx"

    aput-object v4, v2, v7

    const-string/jumbo v4, "pdf"

    aput-object v4, v2, v8

    const-string/jumbo v4, "txt"

    aput-object v4, v2, v9

    const-string/jumbo v4, "log"

    aput-object v4, v2, v10

    const/4 v4, 0x5

    const-string/jumbo v5, "dot"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "dotx"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "ppt"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "pptx"

    aput-object v5, v2, v4

    const/16 v4, 0x9

    const-string/jumbo v5, "pps"

    aput-object v5, v2, v4

    const/16 v4, 0xa

    const-string/jumbo v5, "ppsx"

    aput-object v5, v2, v4

    const/16 v4, 0xb

    const-string/jumbo v5, "pot"

    aput-object v5, v2, v4

    const/16 v4, 0xc

    const-string/jumbo v5, "potx"

    aput-object v5, v2, v4

    const/16 v4, 0xd

    const-string/jumbo v5, "xls"

    aput-object v5, v2, v4

    const/16 v4, 0xe

    const-string/jumbo v5, "xlsx"

    aput-object v5, v2, v4

    const/16 v4, 0xf

    const-string/jumbo v5, "csv"

    aput-object v5, v2, v4

    const/16 v4, 0x10

    const-string/jumbo v5, "xlt"

    aput-object v5, v2, v4

    const/16 v4, 0x11

    const-string/jumbo v5, "xltx"

    aput-object v5, v2, v4

    sput-object v2, Lgpx;->v:[Ljava/lang/String;

    .line 134
    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v4, "doc"

    aput-object v4, v2, v3

    const-string/jumbo v4, "docx"

    aput-object v4, v2, v7

    const-string/jumbo v4, "wps"

    aput-object v4, v2, v8

    sput-object v2, Lgpx;->w:[Ljava/lang/String;

    .line 137
    const/16 v2, 0x1a

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "3gp"

    aput-object v4, v2, v3

    const-string/jumbo v4, "asf"

    aput-object v4, v2, v7

    const-string/jumbo v4, "avi"

    aput-object v4, v2, v8

    const-string/jumbo v4, "dv"

    aput-object v4, v2, v9

    const-string/jumbo v4, "flv"

    aput-object v4, v2, v10

    const/4 v4, 0x5

    const-string/jumbo v5, "f4v"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "gif"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "m2t"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "m3u8"

    aput-object v5, v2, v4

    const/16 v4, 0x9

    const-string/jumbo v5, "m4v"

    aput-object v5, v2, v4

    const/16 v4, 0xa

    const-string/jumbo v5, "mj2"

    aput-object v5, v2, v4

    const/16 v4, 0xb

    const-string/jumbo v5, "mjpeg"

    aput-object v5, v2, v4

    const/16 v4, 0xc

    const-string/jumbo v5, "mkv"

    aput-object v5, v2, v4

    const/16 v4, 0xd

    const-string/jumbo v5, "mov"

    aput-object v5, v2, v4

    const/16 v4, 0xe

    const-string/jumbo v5, "mp4"

    aput-object v5, v2, v4

    const/16 v4, 0xf

    const-string/jumbo v5, "mpe"

    aput-object v5, v2, v4

    const/16 v4, 0x10

    const-string/jumbo v5, "mpg"

    aput-object v5, v2, v4

    const/16 v4, 0x11

    const-string/jumbo v5, "mpeg"

    aput-object v5, v2, v4

    const/16 v4, 0x12

    const-string/jumbo v5, "mts"

    aput-object v5, v2, v4

    const/16 v4, 0x13

    const-string/jumbo v5, "qt"

    aput-object v5, v2, v4

    const/16 v4, 0x14

    const-string/jumbo v5, "rm"

    aput-object v5, v2, v4

    const/16 v4, 0x15

    const-string/jumbo v5, "rmvb"

    aput-object v5, v2, v4

    const/16 v4, 0x16

    const-string/jumbo v5, "ts"

    aput-object v5, v2, v4

    const/16 v4, 0x17

    const-string/jumbo v5, "vob"

    aput-object v5, v2, v4

    const/16 v4, 0x18

    const-string/jumbo v5, "wmv"

    aput-object v5, v2, v4

    const/16 v4, 0x19

    const-string/jumbo v5, "webm"

    aput-object v5, v2, v4

    sput-object v2, Lgpx;->x:[Ljava/lang/String;

    .line 139
    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "aac"

    aput-object v4, v2, v3

    const-string/jumbo v4, "ac3"

    aput-object v4, v2, v7

    const-string/jumbo v4, "acm"

    aput-object v4, v2, v8

    const-string/jumbo v4, "amr"

    aput-object v4, v2, v9

    const-string/jumbo v4, "ape"

    aput-object v4, v2, v10

    const/4 v4, 0x5

    const-string/jumbo v5, "caf"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "flac"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "m4a"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "mp3"

    aput-object v5, v2, v4

    const/16 v4, 0x9

    const-string/jumbo v5, "ra"

    aput-object v5, v2, v4

    const/16 v4, 0xa

    const-string/jumbo v5, "wav"

    aput-object v5, v2, v4

    const/16 v4, 0xb

    const-string/jumbo v5, "wma"

    aput-object v5, v2, v4

    const/16 v4, 0xc

    const-string/jumbo v5, "aiff"

    aput-object v5, v2, v4

    const/16 v4, 0xd

    const-string/jumbo v5, "ogg"

    aput-object v5, v2, v4

    sput-object v2, Lgpx;->y:[Ljava/lang/String;

    .line 141
    const/16 v2, 0x19

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "3gp"

    aput-object v4, v2, v3

    const-string/jumbo v4, "asf"

    aput-object v4, v2, v7

    const-string/jumbo v4, "avi"

    aput-object v4, v2, v8

    const-string/jumbo v4, "dv"

    aput-object v4, v2, v9

    const-string/jumbo v4, "flv"

    aput-object v4, v2, v10

    const/4 v4, 0x5

    const-string/jumbo v5, "f4v"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "m2t"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "m3u8"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "m4v"

    aput-object v5, v2, v4

    const/16 v4, 0x9

    const-string/jumbo v5, "mj2"

    aput-object v5, v2, v4

    const/16 v4, 0xa

    const-string/jumbo v5, "mjpeg"

    aput-object v5, v2, v4

    const/16 v4, 0xb

    const-string/jumbo v5, "mkv"

    aput-object v5, v2, v4

    const/16 v4, 0xc

    const-string/jumbo v5, "mov"

    aput-object v5, v2, v4

    const/16 v4, 0xd

    const-string/jumbo v5, "mp4"

    aput-object v5, v2, v4

    const/16 v4, 0xe

    const-string/jumbo v5, "mpe"

    aput-object v5, v2, v4

    const/16 v4, 0xf

    const-string/jumbo v5, "mpg"

    aput-object v5, v2, v4

    const/16 v4, 0x10

    const-string/jumbo v5, "mpeg"

    aput-object v5, v2, v4

    const/16 v4, 0x11

    const-string/jumbo v5, "mts"

    aput-object v5, v2, v4

    const/16 v4, 0x12

    const-string/jumbo v5, "qt"

    aput-object v5, v2, v4

    const/16 v4, 0x13

    const-string/jumbo v5, "rm"

    aput-object v5, v2, v4

    const/16 v4, 0x14

    const-string/jumbo v5, "rmvb"

    aput-object v5, v2, v4

    const/16 v4, 0x15

    const-string/jumbo v5, "ts"

    aput-object v5, v2, v4

    const/16 v4, 0x16

    const-string/jumbo v5, "vob"

    aput-object v5, v2, v4

    const/16 v4, 0x17

    const-string/jumbo v5, "wmv"

    aput-object v5, v2, v4

    const/16 v4, 0x18

    const-string/jumbo v5, "webm"

    aput-object v5, v2, v4

    sput-object v2, Lgpx;->z:[Ljava/lang/String;

    .line 143
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "doc"

    aput-object v4, v2, v3

    const-string/jumbo v4, "docx"

    aput-object v4, v2, v7

    const-string/jumbo v4, "xls"

    aput-object v4, v2, v8

    const-string/jumbo v4, "xlsx"

    aput-object v4, v2, v9

    const-string/jumbo v4, "ppt"

    aput-object v4, v2, v10

    const/4 v4, 0x5

    const-string/jumbo v5, "pptx"

    aput-object v5, v2, v4

    sput-object v2, Lgpx;->A:[Ljava/lang/String;

    .line 144
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "doc"

    aput-object v4, v2, v3

    const-string/jumbo v4, "docx"

    aput-object v4, v2, v7

    const-string/jumbo v4, "xls"

    aput-object v4, v2, v8

    const-string/jumbo v4, "xlsx"

    aput-object v4, v2, v9

    const-string/jumbo v4, "ppt"

    aput-object v4, v2, v10

    const/4 v4, 0x5

    const-string/jumbo v5, "pptx"

    aput-object v5, v2, v4

    sput-object v2, Lgpx;->B:[Ljava/lang/String;

    .line 145
    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v4, "doc"

    aput-object v4, v2, v3

    const-string/jumbo v4, "docx"

    aput-object v4, v2, v7

    const-string/jumbo v4, "wps"

    aput-object v4, v2, v8

    const-string/jumbo v4, "txt"

    aput-object v4, v2, v9

    sput-object v2, Lgpx;->C:[Ljava/lang/String;

    .line 146
    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v4, "xls"

    aput-object v4, v2, v3

    const-string/jumbo v4, "xlsx"

    aput-object v4, v2, v7

    const-string/jumbo v4, "et"

    aput-object v4, v2, v8

    const-string/jumbo v4, "csv"

    aput-object v4, v2, v9

    sput-object v2, Lgpx;->D:[Ljava/lang/String;

    .line 147
    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v4, "ppt"

    aput-object v4, v2, v3

    const-string/jumbo v4, "pptx"

    aput-object v4, v2, v7

    sput-object v2, Lgpx;->E:[Ljava/lang/String;

    .line 150
    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "pdf"

    aput-object v4, v2, v3

    const-string/jumbo v3, "doc"

    aput-object v3, v2, v7

    const-string/jumbo v3, "docx"

    aput-object v3, v2, v8

    const-string/jumbo v3, "wps"

    aput-object v3, v2, v9

    const-string/jumbo v3, "xls"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string/jumbo v4, "xlsx"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "et"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "ppt"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "pptx"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "dps"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "txt"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "png"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "gif"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "jpg"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "jpeg"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "bmp"

    aput-object v4, v2, v3

    sput-object v2, Lgpx;->F:[Ljava/lang/String;

    .line 492
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lgpx;->G:Ljava/util/HashMap;

    .line 573
    const/4 v2, 0x0

    sput-object v2, Lgpx;->H:Ljava/util/HashMap;

    .line 652
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lgpx;->I:Ljava/util/HashMap;

    .line 794
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lgpx;->J:Ljava/util/HashMap;

    .line 897
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lgpx;->K:Ljava/util/HashMap;

    .line 996
    new-instance v2, Lgpx$1;

    invoke-direct {v2}, Lgpx$1;-><init>()V

    sput-object v2, Lgpx;->L:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "fileType"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 697
    const-string/jumbo v4, "folder"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 698
    sget v1, Lfzs$e;->cspace_folder_icon:I

    .line 791
    :goto_0
    return v1

    .line 701
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 702
    invoke-static {p0}, Lgpx;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 706
    :cond_1
    if-nez p1, :cond_2

    .line 707
    const/4 v0, 0x0

    .line 713
    .local v0, "fileExtension":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 714
    sget v1, Lfzs$e;->file_unkonwn:I

    goto :goto_0

    .line 709
    .end local v0    # "fileExtension":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fileExtension":Ljava/lang/String;
    goto :goto_1

    .line 718
    :cond_3
    sget-object v4, Lgpx;->I:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 719
    .local v2, "iid":Ljava/lang/Integer;
    if-eqz v2, :cond_4

    .line 720
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 723
    :cond_4
    const/4 v1, -0x1

    .line 724
    .local v1, "id":I
    sget-object v4, Lgpx;->l:[Ljava/lang/String;

    invoke-static {v0, v4}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 725
    sget v1, Lfzs$e;->file_doc:I

    .line 770
    :cond_5
    :goto_2
    if-gez v1, :cond_6

    .line 771
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    .line 772
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 773
    .local v3, "resultType":Ljava/lang/String;
    sget-object v4, Lgpx;->f:[Ljava/lang/String;

    invoke-static {v3, v4}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 774
    sget v1, Lfzs$e;->file_video:I

    .line 778
    .end local v3    # "resultType":Ljava/lang/String;
    :cond_6
    if-gez v1, :cond_7

    .line 779
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    .line 780
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 781
    .restart local v3    # "resultType":Ljava/lang/String;
    sget-object v4, Lgpx;->h:[Ljava/lang/String;

    invoke-static {v3, v4}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 782
    sget v1, Lfzs$e;->file_audio:I

    .line 786
    .end local v3    # "resultType":Ljava/lang/String;
    :cond_7
    if-gez v1, :cond_8

    .line 787
    sget v1, Lfzs$e;->file_unkonwn:I

    .line 790
    :cond_8
    sget-object v4, Lgpx;->I:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 726
    :cond_9
    const-string/jumbo v4, "html"

    invoke-static {v0, v4}, Lgpx;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 727
    sget v1, Lfzs$e;->file_web:I

    goto :goto_2

    .line 728
    :cond_a
    const-string/jumbo v4, "jpeg"

    invoke-static {v0, v4}, Lgpx;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 729
    sget v1, Lfzs$e;->file_pic:I

    goto :goto_2

    .line 730
    :cond_b
    const-string/jumbo v4, "jpg"

    invoke-static {v0, v4}, Lgpx;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 731
    sget v1, Lfzs$e;->file_pic:I

    goto :goto_2

    .line 732
    :cond_c
    const-string/jumbo v4, "pdf"

    invoke-static {v0, v4}, Lgpx;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 733
    sget v1, Lfzs$e;->file_pdf:I

    goto :goto_2

    .line 734
    :cond_d
    const-string/jumbo v4, "png"

    invoke-static {v0, v4}, Lgpx;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 735
    sget v1, Lfzs$e;->file_pic:I

    goto/16 :goto_2

    .line 736
    :cond_e
    const-string/jumbo v4, "psd"

    invoke-static {v0, v4}, Lgpx;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 737
    sget v1, Lfzs$e;->file_psd:I

    goto/16 :goto_2

    .line 738
    :cond_f
    sget-object v4, Lgpx;->k:[Ljava/lang/String;

    invoke-static {v0, v4}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 739
    sget v1, Lfzs$e;->file_txt:I

    goto/16 :goto_2

    .line 740
    :cond_10
    sget-object v4, Lgpx;->n:[Ljava/lang/String;

    invoke-static {v0, v4}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 741
    sget v1, Lfzs$e;->file_ppt:I

    goto/16 :goto_2

    .line 742
    :cond_11
    sget-object v4, Lgpx;->m:[Ljava/lang/String;

    invoke-static {v0, v4}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 743
    sget v1, Lfzs$e;->file_xls:I

    goto/16 :goto_2

    .line 744
    :cond_12
    sget-object v4, Lgpx;->o:[Ljava/lang/String;

    invoke-static {v0, v4}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 745
    sget v1, Lfzs$e;->file_zip:I

    goto/16 :goto_2

    .line 746
    :cond_13
    sget-object v4, Lgpx;->j:[Ljava/lang/String;

    invoke-static {v0, v4}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 747
    sget v1, Lfzs$e;->file_video:I

    goto/16 :goto_2

    .line 748
    :cond_14
    const-string/jumbo v4, "ai"

    invoke-static {v0, v4}, Lgpx;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 749
    sget v1, Lfzs$e;->file_ai:I

    goto/16 :goto_2

    .line 750
    :cond_15
    sget-object v4, Lgpx;->a:[Ljava/lang/String;

    invoke-static {v0, v4}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 751
    sget v1, Lfzs$e;->file_pic:I

    goto/16 :goto_2

    .line 752
    :cond_16
    sget-object v4, Lgpx;->g:[Ljava/lang/String;

    invoke-static {v0, v4}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 753
    sget v1, Lfzs$e;->file_audio:I

    goto/16 :goto_2

    .line 754
    :cond_17
    sget-object v4, Lgpx;->p:[Ljava/lang/String;

    invoke-static {v0, v4}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 755
    sget v1, Lfzs$e;->file_app:I

    goto/16 :goto_2

    .line 756
    :cond_18
    sget-object v4, Lgpx;->q:[Ljava/lang/String;

    invoke-static {v0, v4}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 757
    sget v1, Lfzs$e;->file_keynot:I

    goto/16 :goto_2

    .line 758
    :cond_19
    sget-object v4, Lgpx;->r:[Ljava/lang/String;

    invoke-static {v0, v4}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 759
    sget v1, Lfzs$e;->file_number:I

    goto/16 :goto_2

    .line 760
    :cond_1a
    sget-object v4, Lgpx;->s:[Ljava/lang/String;

    invoke-static {v0, v4}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 761
    sget v1, Lfzs$e;->file_pages:I

    goto/16 :goto_2

    .line 762
    :cond_1b
    sget-object v4, Lgpx;->t:[Ljava/lang/String;

    invoke-static {v0, v4}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 763
    sget v1, Lfzs$e;->file_sketch:I

    goto/16 :goto_2

    .line 764
    :cond_1c
    const-string/jumbo v4, "adoc"

    invoke-static {v0, v4}, Lgpx;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 765
    sget v1, Lfzs$e;->file_adoc:I

    goto/16 :goto_2

    .line 766
    :cond_1d
    const-string/jumbo v4, "axls"

    invoke-static {v0, v4}, Lgpx;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 767
    sget v1, Lfzs$e;->file_axls:I

    goto/16 :goto_2
.end method

.method public static a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 2
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 225
    invoke-static {p0}, Lgpv;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgpx;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z
    .locals 4
    .param p0, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 229
    .line 1361
    if-eqz p0, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->type:Ljava/lang/String;

    const-string/jumbo v3, "file"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 229
    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->contentType:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-static {v2, v3}, Lgpx;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 1361
    goto :goto_0

    :cond_1
    move v0, v1

    .line 229
    goto :goto_1
.end method

.method public static final a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 159
    if-eqz p0, :cond_0

    .line 161
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 162
    sget-object v0, Lgpx;->u:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "contentType"    # Ljava/lang/String;
    .param p1, "fileExtension"    # Ljava/lang/String;

    .prologue
    .line 233
    const-string/jumbo v0, "alidoc"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lgpx;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "matchAgainst"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 437
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 438
    .local v0, "matchType":Ljava/lang/String;
    invoke-static {p0, v0}, Lgpx;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 439
    const/4 v1, 0x1

    .line 442
    .end local v0    # "matchType":Ljava/lang/String;
    :cond_0
    return v1

    .line 437
    .restart local v0    # "matchType":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/alimei/cspace/model/DentryModel;)I
    .locals 8
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 655
    if-nez p0, :cond_0

    .line 656
    sget v5, Lfzs$e;->file_unkonwn:I

    .line 684
    :goto_0
    return v5

    .line 659
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isSoft()Z

    move-result v1

    .line 661
    .local v1, "isLink":Z
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTargetSpaceType()Ljava/lang/String;

    move-result-object v4

    .line 662
    .local v4, "spaceTypeString":Ljava/lang/String;
    :goto_1
    invoke-static {v4}, Lgqu;->a(Ljava/lang/String;)I

    move-result v3

    .line 664
    .local v3, "spaceType":I
    const/4 v2, 0x0

    .line 665
    .local v2, "isRootFolder":Z
    invoke-static {p0}, Lgpv;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 666
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTargetDentryId()Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, "dentryId":Ljava/lang/String;
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "0"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_1
    const/4 v2, 0x1

    .line 670
    .end local v0    # "dentryId":Ljava/lang/String;
    :cond_2
    :goto_3
    if-eqz v2, :cond_8

    if-nez v1, :cond_8

    .line 671
    invoke-static {v3}, Lgqu;->h(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 672
    sget v5, Lfzs$e;->cspace_share_icon:I

    goto :goto_0

    .line 661
    .end local v2    # "isRootFolder":Z
    .end local v3    # "spaceType":I
    .end local v4    # "spaceTypeString":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 666
    .restart local v2    # "isRootFolder":Z
    .restart local v3    # "spaceType":I
    .restart local v4    # "spaceTypeString":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 667
    .restart local v0    # "dentryId":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 673
    .end local v0    # "dentryId":Ljava/lang/String;
    :cond_6
    invoke-static {v3}, Lgqu;->g(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 674
    sget v5, Lfzs$e;->cspace_group_icon:I

    goto :goto_0

    .line 675
    :cond_7
    invoke-static {v3}, Lgqu;->d(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 676
    sget v5, Lfzs$e;->cspace_icon_cooperation_folder:I

    goto :goto_0

    .line 679
    :cond_8
    invoke-static {v3}, Lgqu;->d(I)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {p0}, Lgpv;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 680
    sget v5, Lfzs$e;->cspace_icon_cooperation_folder:I

    goto :goto_0

    .line 685
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v7

    .line 684
    invoke-static {v5, v6, v7}, Lgpx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "fileExtension"    # Ljava/lang/String;

    .prologue
    .line 483
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 484
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 485
    .local v0, "index":I
    if-lez v0, :cond_0

    .line 486
    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 489
    .end local v0    # "index":I
    .end local p0    # "fileName":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "fileExtension"    # Ljava/lang/String;
    .param p2, "fileType"    # Ljava/lang/String;

    .prologue
    .line 1022
    const-string/jumbo v2, "folder"

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1023
    const-string/jumbo v1, "https://gw.alicdn.com/tfs/TB15ZS4DH5YBuNjSspoXXbeNFXa-64-64.png"

    .line 1030
    :cond_0
    :goto_0
    return-object v1

    .line 1025
    :cond_1
    invoke-static {p0, p1}, Lgpx;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1026
    .local v0, "fileTypeResId":I
    sget-object v2, Lgpx;->L:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1027
    .local v1, "thumbUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1028
    const-string/jumbo v1, "https://img.alicdn.com/tfs/TB1w4SEDL9TBuNjy0FcXXbeiFXa-64-64"

    goto :goto_0
.end method

.method public static final b(Ljava/lang/String;)Z
    .locals 2
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 173
    if-nez p0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 175
    const-string/jumbo v1, "eml"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 540
    const/4 v3, 0x0

    .line 541
    .local v3, "resultType":Ljava/lang/String;
    invoke-static {p0}, Lgpx;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "fileExtension":Ljava/lang/String;
    const-string/jumbo v4, "text/plain"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 544
    .local v2, "isTextPlain":Z
    const-string/jumbo v4, "eml"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 545
    const-string/jumbo v3, "message/rfc822"

    .line 567
    :cond_0
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 568
    if-eqz v2, :cond_26

    const-string/jumbo v3, "text/plain"

    .line 570
    :cond_1
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 547
    :cond_2
    if-nez v2, :cond_3

    const-string/jumbo v4, "application/octet-stream"

    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    const/4 v1, 0x1

    .line 550
    .local v1, "isGenericType":Z
    :goto_2
    if-nez v1, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 551
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 553
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 554
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1581
    if-nez v0, :cond_6

    move-object v3, v5

    .line 556
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 557
    if-eqz v2, :cond_24

    move-object v3, v5

    :goto_4
    goto :goto_0

    .line 548
    .end local v1    # "isGenericType":Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 1584
    .restart local v1    # "isGenericType":Z
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 1587
    sget-object v4, Lgpx;->H:Ljava/util/HashMap;

    if-eqz v4, :cond_27

    .line 1588
    sget-object v4, Lgpx;->H:Ljava/util/HashMap;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1591
    :goto_5
    if-nez v4, :cond_a

    .line 1594
    const-string/jumbo v7, "doc"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string/jumbo v7, "dot"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1595
    :cond_7
    const-string/jumbo v4, "application/msword"

    .line 1642
    :cond_8
    :goto_6
    sget-object v7, Lgpx;->H:Ljava/util/HashMap;

    if-nez v7, :cond_9

    .line 1643
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lgpx;->H:Ljava/util/HashMap;

    .line 1646
    :cond_9
    if-eqz v4, :cond_a

    .line 1647
    sget-object v7, Lgpx;->H:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    move-object v3, v4

    .line 1649
    goto :goto_3

    .line 1596
    :cond_b
    const-string/jumbo v7, "docx"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1597
    const-string/jumbo v4, "application/msword"

    goto :goto_6

    .line 1598
    :cond_c
    const-string/jumbo v7, "dotx"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1599
    const-string/jumbo v4, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    goto :goto_6

    .line 1600
    :cond_d
    const-string/jumbo v7, "docm"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1601
    const-string/jumbo v4, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    goto :goto_6

    .line 1602
    :cond_e
    const-string/jumbo v7, "dotm"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1603
    const-string/jumbo v4, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    goto :goto_6

    .line 1604
    :cond_f
    const-string/jumbo v7, "xls"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    const-string/jumbo v7, "xlt"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    const-string/jumbo v7, "xla"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    const-string/jumbo v7, "xlw"

    .line 1605
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    const-string/jumbo v7, "xlc"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    const-string/jumbo v7, "xlm"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1606
    :cond_10
    const-string/jumbo v4, "application/vnd.ms-excel"

    goto/16 :goto_6

    .line 1607
    :cond_11
    const-string/jumbo v7, "xlsx"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1608
    const-string/jumbo v4, "application/vnd.ms-excel"

    goto/16 :goto_6

    .line 1609
    :cond_12
    const-string/jumbo v7, "xltx"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1610
    const-string/jumbo v4, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    goto/16 :goto_6

    .line 1611
    :cond_13
    const-string/jumbo v7, "xlsm"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1612
    const-string/jumbo v4, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    goto/16 :goto_6

    .line 1613
    :cond_14
    const-string/jumbo v7, "xltm"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1614
    const-string/jumbo v4, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    goto/16 :goto_6

    .line 1615
    :cond_15
    const-string/jumbo v7, "xlam"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1616
    const-string/jumbo v4, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    goto/16 :goto_6

    .line 1617
    :cond_16
    const-string/jumbo v7, "xlsb"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 1618
    const-string/jumbo v4, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    goto/16 :goto_6

    .line 1619
    :cond_17
    const-string/jumbo v7, "pot"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    const-string/jumbo v7, "pps"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    const-string/jumbo v7, "ppt"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    const-string/jumbo v7, "ppa"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 1620
    :cond_18
    const-string/jumbo v4, "application/vnd.ms-powerpoint"

    goto/16 :goto_6

    .line 1621
    :cond_19
    const-string/jumbo v7, "pptx"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1622
    const-string/jumbo v4, "application/vnd.ms-powerpoint"

    goto/16 :goto_6

    .line 1623
    :cond_1a
    const-string/jumbo v7, "potx"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 1624
    const-string/jumbo v4, "application/vnd.openxmlformats-officedocument.presentationml.template"

    goto/16 :goto_6

    .line 1625
    :cond_1b
    const-string/jumbo v7, "ppsx"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 1626
    const-string/jumbo v4, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    goto/16 :goto_6

    .line 1627
    :cond_1c
    const-string/jumbo v7, "ppam"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 1628
    const-string/jumbo v4, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    goto/16 :goto_6

    .line 1629
    :cond_1d
    const-string/jumbo v7, "pptm"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 1630
    const-string/jumbo v4, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    goto/16 :goto_6

    .line 1631
    :cond_1e
    const-string/jumbo v7, "potm"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 1632
    const-string/jumbo v4, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    goto/16 :goto_6

    .line 1633
    :cond_1f
    const-string/jumbo v7, "ppsm"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 1634
    const-string/jumbo v4, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    goto/16 :goto_6

    .line 1635
    :cond_20
    const-string/jumbo v7, "onetoc"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    const-string/jumbo v7, "onetoc2"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    const-string/jumbo v7, "onetmp"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    const-string/jumbo v7, "onepkg"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 1636
    :cond_21
    const-string/jumbo v4, "application/onenote"

    goto/16 :goto_6

    .line 1637
    :cond_22
    const-string/jumbo v7, "sldx"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 1638
    const-string/jumbo v4, "application/vnd.openxmlformats-officedocument.presentationml.slide"

    goto/16 :goto_6

    .line 1639
    :cond_23
    const-string/jumbo v7, "sldm"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1640
    const-string/jumbo v4, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    goto/16 :goto_6

    .line 557
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "application/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 562
    :cond_25
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 568
    .end local v1    # "isGenericType":Z
    :cond_26
    const-string/jumbo v3, "application/octet-stream"

    goto/16 :goto_1

    .restart local v1    # "isGenericType":Z
    :cond_27
    move-object v4, v5

    goto/16 :goto_5
.end method

.method public static final c(Ljava/lang/String;)Z
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 185
    if-nez p0, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    .line 189
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 191
    sget-object v0, Lgpx;->g:[Ljava/lang/String;

    invoke-static {p0, v0}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "fileType"    # Ljava/lang/String;

    .prologue
    .line 689
    const-string/jumbo v0, "file"

    invoke-static {p0, p1, v0}, Lgpx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 195
    if-nez p0, :cond_0

    .line 196
    const/4 v0, 0x0

    .line 201
    :goto_0
    return v0

    .line 199
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 201
    sget-object v0, Lgpx;->j:[Ljava/lang/String;

    invoke-static {p0, v0}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "fileType"    # Ljava/lang/String;

    .prologue
    .line 797
    const-string/jumbo v0, "file"

    .line 1801
    const-string/jumbo v1, "folder"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1802
    sget v0, Lfzs$e;->cspace_folder_icon:I

    .line 1823
    .end local p1    # "fileType":Ljava/lang/String;
    :goto_0
    return v0

    .line 1805
    .restart local p1    # "fileType":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1806
    invoke-static {p0}, Lgpx;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1810
    .end local p1    # "fileType":Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_2

    .line 1811
    const/4 v0, 0x0

    move-object v1, v0

    .line 1817
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1818
    sget v0, Lfzs$e;->file_unknown_36:I

    goto :goto_0

    .line 1813
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 1821
    :cond_3
    sget-object v0, Lgpx;->J:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1822
    if-eqz v0, :cond_4

    .line 1823
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 1826
    :cond_4
    const/4 v0, -0x1

    .line 1827
    sget-object v2, Lgpx;->l:[Ljava/lang/String;

    invoke-static {v1, v2}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1828
    sget v0, Lfzs$e;->file_doc_36:I

    .line 1873
    :cond_5
    :goto_2
    if-gez v0, :cond_6

    .line 1874
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    .line 1875
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1876
    sget-object v3, Lgpx;->f:[Ljava/lang/String;

    invoke-static {v2, v3}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1877
    sget v0, Lfzs$e;->file_video_36:I

    .line 1881
    :cond_6
    if-gez v0, :cond_7

    .line 1882
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    .line 1883
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1884
    sget-object v3, Lgpx;->h:[Ljava/lang/String;

    invoke-static {v2, v3}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1885
    sget v0, Lfzs$e;->file_audio_36:I

    .line 1889
    :cond_7
    if-gez v0, :cond_8

    .line 1890
    sget v0, Lfzs$e;->file_unknown_36:I

    .line 1893
    :cond_8
    sget-object v2, Lgpx;->J:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1829
    :cond_9
    const-string/jumbo v2, "html"

    invoke-static {v1, v2}, Lgpx;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1830
    sget v0, Lfzs$e;->file_link_36:I

    goto :goto_2

    .line 1831
    :cond_a
    const-string/jumbo v2, "jpeg"

    invoke-static {v1, v2}, Lgpx;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1832
    sget v0, Lfzs$e;->file_pic_36:I

    goto :goto_2

    .line 1833
    :cond_b
    const-string/jumbo v2, "jpg"

    invoke-static {v1, v2}, Lgpx;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1834
    sget v0, Lfzs$e;->file_pic_36:I

    goto :goto_2

    .line 1835
    :cond_c
    const-string/jumbo v2, "pdf"

    invoke-static {v1, v2}, Lgpx;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1836
    sget v0, Lfzs$e;->file_pdf_36:I

    goto :goto_2

    .line 1837
    :cond_d
    const-string/jumbo v2, "png"

    invoke-static {v1, v2}, Lgpx;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1838
    sget v0, Lfzs$e;->file_pic_36:I

    goto/16 :goto_2

    .line 1839
    :cond_e
    const-string/jumbo v2, "psd"

    invoke-static {v1, v2}, Lgpx;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1840
    sget v0, Lfzs$e;->file_psd_36:I

    goto/16 :goto_2

    .line 1841
    :cond_f
    sget-object v2, Lgpx;->k:[Ljava/lang/String;

    invoke-static {v1, v2}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1842
    sget v0, Lfzs$e;->file_txt_36:I

    goto/16 :goto_2

    .line 1843
    :cond_10
    sget-object v2, Lgpx;->n:[Ljava/lang/String;

    invoke-static {v1, v2}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1844
    sget v0, Lfzs$e;->file_ppt_36:I

    goto/16 :goto_2

    .line 1845
    :cond_11
    sget-object v2, Lgpx;->m:[Ljava/lang/String;

    invoke-static {v1, v2}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1846
    sget v0, Lfzs$e;->file_excel_36:I

    goto/16 :goto_2

    .line 1847
    :cond_12
    sget-object v2, Lgpx;->o:[Ljava/lang/String;

    invoke-static {v1, v2}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1848
    sget v0, Lfzs$e;->file_zip_36:I

    goto/16 :goto_2

    .line 1849
    :cond_13
    sget-object v2, Lgpx;->j:[Ljava/lang/String;

    invoke-static {v1, v2}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1850
    sget v0, Lfzs$e;->file_video_36:I

    goto/16 :goto_2

    .line 1851
    :cond_14
    const-string/jumbo v2, "ai"

    invoke-static {v1, v2}, Lgpx;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1852
    sget v0, Lfzs$e;->file_ai_36:I

    goto/16 :goto_2

    .line 1853
    :cond_15
    sget-object v2, Lgpx;->a:[Ljava/lang/String;

    invoke-static {v1, v2}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1854
    sget v0, Lfzs$e;->file_pic_36:I

    goto/16 :goto_2

    .line 1855
    :cond_16
    sget-object v2, Lgpx;->g:[Ljava/lang/String;

    invoke-static {p1, v2}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1856
    sget v0, Lfzs$e;->file_audio_36:I

    goto/16 :goto_2

    .line 1857
    :cond_17
    sget-object v2, Lgpx;->p:[Ljava/lang/String;

    invoke-static {p1, v2}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1858
    sget v0, Lfzs$e;->file_app_36:I

    goto/16 :goto_2

    .line 1859
    :cond_18
    sget-object v2, Lgpx;->q:[Ljava/lang/String;

    invoke-static {v1, v2}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1860
    sget v0, Lfzs$e;->file_keynot_36:I

    goto/16 :goto_2

    .line 1861
    :cond_19
    sget-object v2, Lgpx;->r:[Ljava/lang/String;

    invoke-static {v1, v2}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1862
    sget v0, Lfzs$e;->file_number_36:I

    goto/16 :goto_2

    .line 1863
    :cond_1a
    sget-object v2, Lgpx;->s:[Ljava/lang/String;

    invoke-static {v1, v2}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1864
    sget v0, Lfzs$e;->file_pages_36:I

    goto/16 :goto_2

    .line 1865
    :cond_1b
    sget-object v2, Lgpx;->t:[Ljava/lang/String;

    invoke-static {v1, v2}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1866
    sget v0, Lfzs$e;->file_sketch_36:I

    goto/16 :goto_2

    .line 1867
    :cond_1c
    const-string/jumbo v2, "adoc"

    invoke-static {v1, v2}, Lgpx;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1868
    sget v0, Lfzs$e;->file_adoc_36:I

    goto/16 :goto_2

    .line 1869
    :cond_1d
    const-string/jumbo v2, "axls"

    invoke-static {v1, v2}, Lgpx;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1870
    sget v0, Lfzs$e;->file_axls_36:I

    goto/16 :goto_2
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 205
    if-nez p0, :cond_0

    .line 206
    const/4 v0, 0x0

    .line 211
    :goto_0
    return v0

    .line 209
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 211
    sget-object v0, Lgpx;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 954
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    invoke-static {p0}, Lgpx;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 957
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 958
    sget-object v0, Lgpx;->c:[Ljava/lang/String;

    invoke-static {p1, v0}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 959
    const-string/jumbo p1, "webp"

    .line 966
    .end local p1    # "extension":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p1

    .line 960
    .restart local p1    # "extension":Ljava/lang/String;
    :cond_2
    sget-object v0, Lgpx;->e:[Ljava/lang/String;

    invoke-static {p1, v0}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 961
    const-string/jumbo p1, "jpg"

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 2
    .param p0, "extension"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 241
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lgpx;->i:[Ljava/lang/String;

    invoke-static {v0, v1}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 973
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    invoke-static {p0}, Lgpx;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 977
    :cond_0
    return-object p1
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 2
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "adoc"

    invoke-static {v0, v1}, Lgpx;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 987
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    invoke-static {p0}, Lgpx;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 990
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lgpx;->d:[Ljava/lang/String;

    invoke-static {p1, v0}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 991
    const/4 v0, 0x1

    .line 993
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 2
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "axls"

    invoke-static {v0, v1}, Lgpx;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 3
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 253
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "space_bubble_image_enable"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 262
    :cond_0
    :goto_0
    return v0

    .line 258
    :cond_1
    if-eqz p0, :cond_0

    .line 261
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 262
    sget-object v0, Lgpx;->b:[Ljava/lang/String;

    invoke-static {p0, v0}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static i(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "extentsion"    # Ljava/lang/String;
    .param p1, "matchAgainst"    # Ljava/lang/String;

    .prologue
    .line 453
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    const/4 v1, 0x0

    .line 459
    :goto_0
    return v1

    .line 456
    :cond_0
    const-string/jumbo v1, "\\*"

    const-string/jumbo v2, "\\.\\*"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 458
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 459
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 3
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 266
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "cspace_video_preview_online_enable"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "space_bubble_video_enable"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v0

    .line 272
    :cond_1
    if-eqz p0, :cond_0

    .line 275
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 276
    sget-object v0, Lgpx;->z:[Ljava/lang/String;

    invoke-static {p0, v0}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static k(Ljava/lang/String;)Z
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 293
    if-nez p0, :cond_0

    .line 294
    const/4 v0, 0x0

    .line 299
    :goto_0
    return v0

    .line 297
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 299
    sget-object v0, Lgpx;->w:[Ljava/lang/String;

    invoke-static {p0, v0}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static l(Ljava/lang/String;)Z
    .locals 3
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 306
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "cspace_video_preview_online_enable"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 317
    :cond_0
    :goto_0
    return v0

    .line 311
    :cond_1
    if-eqz p0, :cond_0

    .line 315
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 317
    sget-object v0, Lgpx;->x:[Ljava/lang/String;

    invoke-static {p0, v0}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static m(Ljava/lang/String;)Z
    .locals 3
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 324
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "cspace_video_preview_online_enable"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return v0

    .line 329
    :cond_1
    if-eqz p0, :cond_0

    .line 333
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 335
    sget-object v0, Lgpx;->y:[Ljava/lang/String;

    invoke-static {p0, v0}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static n(Ljava/lang/String;)Z
    .locals 6
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 342
    invoke-static {}, Lglr;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 343
    const-string/jumbo v3, "isSupportOnlineEdit=false,reason=overseas"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lgpp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 379
    :goto_0
    return v1

    .line 347
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const-string/jumbo v4, "cspace_hybrid_edit_enable_v4"

    invoke-virtual {v3, v4, v2, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 348
    const-string/jumbo v3, "isSupportOnlineEdit=false,reason=hybrid_edit is false"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lgpp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 349
    goto :goto_0

    .line 352
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 353
    const-string/jumbo v3, "isSupportOnlineEdit=false,reason=extension is empty"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lgpp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 354
    goto :goto_0

    .line 357
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "finalExtension":Ljava/lang/String;
    sget-object v3, Lgpx;->C:[Ljava/lang/String;

    invoke-static {v0, v3}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 361
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const-string/jumbo v4, "cspace_online_edit_word_enable_v4"

    invoke-virtual {v3, v4, v2, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v1

    .line 362
    .local v1, "result":Z
    const-string/jumbo v3, "isSupportOnlineEdit=%b,reason=doc_edit"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lgpp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 366
    .end local v1    # "result":Z
    :cond_3
    sget-object v3, Lgpx;->D:[Ljava/lang/String;

    invoke-static {v0, v3}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 367
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const-string/jumbo v4, "cspace_online_edit_excel_enable_v4"

    invoke-virtual {v3, v4, v2, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v1

    .line 368
    .restart local v1    # "result":Z
    const-string/jumbo v3, "isSupportOnlineEdit=%b,reason=xls_edit"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lgpp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 372
    .end local v1    # "result":Z
    :cond_4
    sget-object v3, Lgpx;->E:[Ljava/lang/String;

    invoke-static {v0, v3}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 373
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const-string/jumbo v4, "cspace_online_edit_ppt_enable_v4"

    invoke-virtual {v3, v4, v2, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v1

    .line 374
    .restart local v1    # "result":Z
    const-string/jumbo v3, "isSupportOnlineEdit=%b,reason=ppt_edit"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lgpp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 378
    .end local v1    # "result":Z
    :cond_5
    const-string/jumbo v3, "isSupportOnlineEdit=false"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lgpp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 379
    goto/16 :goto_0
.end method

.method public static o(Ljava/lang/String;)Z
    .locals 6
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 386
    invoke-static {}, Lglr;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    const-string/jumbo v3, "isSupportLocalEdit=false,reason=overseas"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lgpp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 411
    :goto_0
    return v1

    .line 391
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const-string/jumbo v4, "cspace_hybrid_edit_enable_v4"

    invoke-virtual {v3, v4, v2, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 392
    const-string/jumbo v3, "isSupportLocalEdit=false,reason=hybrid_edit is false"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lgpp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 393
    goto :goto_0

    .line 396
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const-string/jumbo v4, "cspace_local_edit_enable_v4"

    invoke-virtual {v3, v4, v2, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v3

    if-nez v3, :cond_2

    .line 397
    const-string/jumbo v3, "isSupportLocalEdit=false,reason=local_edit is false"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lgpp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 398
    goto :goto_0

    .line 401
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 402
    const-string/jumbo v3, "isSupportLocalEdit=false,reason=extension is empty"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lgpp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 403
    goto :goto_0

    .line 406
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "finalExtension":Ljava/lang/String;
    sget-object v3, Lgpx;->B:[Ljava/lang/String;

    invoke-static {v0, v3}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    .line 409
    .local v1, "result":Z
    const-string/jumbo v3, "isSupportLocalEdit=%b,reason=extendsionMatches"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lgpp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static p(Ljava/lang/String;)Z
    .locals 2
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 418
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    const/4 v1, 0x0

    .line 424
    :goto_0
    return v1

    .line 422
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "finalExtension":Ljava/lang/String;
    sget-object v1, Lgpx;->F:[Ljava/lang/String;

    invoke-static {v0, v1}, Lgpx;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static q(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, "extension":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 470
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 471
    .local v1, "lastDot":I
    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 472
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 475
    .end local v1    # "lastDot":I
    :cond_0
    return-object v0
.end method

.method public static r(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 479
    invoke-static {p0}, Lgpx;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lgpx;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s(Ljava/lang/String;)Z
    .locals 2
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 1034
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
