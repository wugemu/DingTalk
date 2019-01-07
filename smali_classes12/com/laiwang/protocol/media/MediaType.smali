.class public final enum Lcom/laiwang/protocol/media/MediaType;
.super Ljava/lang/Enum;
.source "MediaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laiwang/protocol/media/MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/laiwang/protocol/media/MediaType;

.field public static final enum AUDIO_AMR:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum AUDIO_MP3:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum AUDIO_OGG:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum AUDIO_OPUS:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum AUDIO_WAV:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum FILE_UNKNOWN:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum IMAGE_BMP:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum IMAGE_GIF:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum IMAGE_JPG:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum IMAGE_PNG:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum IMAGE_WEBP:Lcom/laiwang/protocol/media/MediaType;

.field public static MAX_VALUE:I

.field public static final enum NORMAL_AI:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum NORMAL_FILE:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum NORMAL_PDF:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum NORMAL_PSD:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum NORMAL_RAR:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum NORMAL_TFSPRIVATE:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum NORMAL_TXT:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum NORMAL_ZIP:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum OFFICE_DOC:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum OFFICE_DOCX:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum OFFICE_PPT:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum OFFICE_PPTX:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum OFFICE_XLS:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum OFFICE_XLSX:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum VIDEO_AVI:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum VIDEO_MKV:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum VIDEO_MP4:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum VIDEO_MPG:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum VIDEO_RM:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum VIDEO_RMVB:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum VIDEO_VOB:Lcom/laiwang/protocol/media/MediaType;

.field public static final enum VIDEO_WMV:Lcom/laiwang/protocol/media/MediaType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x1f

    .line 8
    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "IMAGE_JPG"

    invoke-direct {v0, v1, v5, v5}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->IMAGE_JPG:Lcom/laiwang/protocol/media/MediaType;

    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "IMAGE_GIF"

    invoke-direct {v0, v1, v6, v6}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->IMAGE_GIF:Lcom/laiwang/protocol/media/MediaType;

    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "IMAGE_PNG"

    invoke-direct {v0, v1, v7, v7}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->IMAGE_PNG:Lcom/laiwang/protocol/media/MediaType;

    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "IMAGE_BMP"

    invoke-direct {v0, v1, v8, v8}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->IMAGE_BMP:Lcom/laiwang/protocol/media/MediaType;

    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "AUDIO_AMR"

    const/4 v2, 0x4

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->AUDIO_AMR:Lcom/laiwang/protocol/media/MediaType;

    .line 9
    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "AUDIO_MP3"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->AUDIO_MP3:Lcom/laiwang/protocol/media/MediaType;

    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "VIDEO_MP4"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->VIDEO_MP4:Lcom/laiwang/protocol/media/MediaType;

    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "AUDIO_WAV"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->AUDIO_WAV:Lcom/laiwang/protocol/media/MediaType;

    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "NORMAL_FILE"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->NORMAL_FILE:Lcom/laiwang/protocol/media/MediaType;

    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "OFFICE_DOC"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->OFFICE_DOC:Lcom/laiwang/protocol/media/MediaType;

    .line 10
    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "OFFICE_DOCX"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->OFFICE_DOCX:Lcom/laiwang/protocol/media/MediaType;

    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "OFFICE_XLS"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->OFFICE_XLS:Lcom/laiwang/protocol/media/MediaType;

    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "OFFICE_XLSX"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->OFFICE_XLSX:Lcom/laiwang/protocol/media/MediaType;

    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "OFFICE_PPT"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->OFFICE_PPT:Lcom/laiwang/protocol/media/MediaType;

    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "OFFICE_PPTX"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->OFFICE_PPTX:Lcom/laiwang/protocol/media/MediaType;

    .line 11
    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "NORMAL_ZIP"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->NORMAL_ZIP:Lcom/laiwang/protocol/media/MediaType;

    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "NORMAL_PDF"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->NORMAL_PDF:Lcom/laiwang/protocol/media/MediaType;

    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "NORMAL_RAR"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->NORMAL_RAR:Lcom/laiwang/protocol/media/MediaType;

    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "NORMAL_PSD"

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->NORMAL_PSD:Lcom/laiwang/protocol/media/MediaType;

    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "NORMAL_AI"

    const/16 v2, 0x13

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->NORMAL_AI:Lcom/laiwang/protocol/media/MediaType;

    .line 12
    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "NORMAL_TXT"

    const/16 v2, 0x14

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->NORMAL_TXT:Lcom/laiwang/protocol/media/MediaType;

    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "VIDEO_AVI"

    const/16 v2, 0x15

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->VIDEO_AVI:Lcom/laiwang/protocol/media/MediaType;

    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "VIDEO_RMVB"

    const/16 v2, 0x16

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->VIDEO_RMVB:Lcom/laiwang/protocol/media/MediaType;

    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "VIDEO_RM"

    const/16 v2, 0x17

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->VIDEO_RM:Lcom/laiwang/protocol/media/MediaType;

    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "VIDEO_MPG"

    const/16 v2, 0x18

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->VIDEO_MPG:Lcom/laiwang/protocol/media/MediaType;

    .line 13
    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "VIDEO_WMV"

    const/16 v2, 0x19

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->VIDEO_WMV:Lcom/laiwang/protocol/media/MediaType;

    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "VIDEO_MKV"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->VIDEO_MKV:Lcom/laiwang/protocol/media/MediaType;

    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "VIDEO_VOB"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->VIDEO_VOB:Lcom/laiwang/protocol/media/MediaType;

    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "NORMAL_TFSPRIVATE"

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->NORMAL_TFSPRIVATE:Lcom/laiwang/protocol/media/MediaType;

    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "IMAGE_WEBP"

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->IMAGE_WEBP:Lcom/laiwang/protocol/media/MediaType;

    .line 14
    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "AUDIO_OPUS"

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->AUDIO_OPUS:Lcom/laiwang/protocol/media/MediaType;

    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "AUDIO_OGG"

    invoke-direct {v0, v1, v4, v4}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->AUDIO_OGG:Lcom/laiwang/protocol/media/MediaType;

    new-instance v0, Lcom/laiwang/protocol/media/MediaType;

    const-string/jumbo v1, "FILE_UNKNOWN"

    const/16 v2, 0x20

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->FILE_UNKNOWN:Lcom/laiwang/protocol/media/MediaType;

    .line 7
    const/16 v0, 0x21

    new-array v0, v0, [Lcom/laiwang/protocol/media/MediaType;

    sget-object v1, Lcom/laiwang/protocol/media/MediaType;->IMAGE_JPG:Lcom/laiwang/protocol/media/MediaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/laiwang/protocol/media/MediaType;->IMAGE_GIF:Lcom/laiwang/protocol/media/MediaType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/laiwang/protocol/media/MediaType;->IMAGE_PNG:Lcom/laiwang/protocol/media/MediaType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/laiwang/protocol/media/MediaType;->IMAGE_BMP:Lcom/laiwang/protocol/media/MediaType;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->AUDIO_AMR:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->AUDIO_MP3:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->VIDEO_MP4:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->AUDIO_WAV:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->NORMAL_FILE:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->OFFICE_DOC:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->OFFICE_DOCX:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->OFFICE_XLS:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->OFFICE_XLSX:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->OFFICE_PPT:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->OFFICE_PPTX:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->NORMAL_ZIP:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->NORMAL_PDF:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->NORMAL_RAR:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->NORMAL_PSD:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->NORMAL_AI:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->NORMAL_TXT:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->VIDEO_AVI:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->VIDEO_RMVB:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->VIDEO_RM:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->VIDEO_MPG:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->VIDEO_WMV:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->VIDEO_MKV:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->VIDEO_VOB:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->NORMAL_TFSPRIVATE:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->IMAGE_WEBP:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->AUDIO_OPUS:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/laiwang/protocol/media/MediaType;->AUDIO_OGG:Lcom/laiwang/protocol/media/MediaType;

    aput-object v1, v0, v4

    const/16 v1, 0x20

    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->FILE_UNKNOWN:Lcom/laiwang/protocol/media/MediaType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/laiwang/protocol/media/MediaType;->$VALUES:[Lcom/laiwang/protocol/media/MediaType;

    .line 16
    sput v4, Lcom/laiwang/protocol/media/MediaType;->MAX_VALUE:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/laiwang/protocol/media/MediaType;->value:I

    .line 21
    return-void
.end method

.method public static getMediaType(I)Lcom/laiwang/protocol/media/MediaType;
    .locals 3
    .param p0, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/protocol/media/MediaIdEncodingException;
        }
    .end annotation

    .prologue
    .line 53
    packed-switch p0, :pswitch_data_0

    .line 88
    new-instance v0, Lcom/laiwang/protocol/media/MediaIdEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unsupported media type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :pswitch_0
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->IMAGE_JPG:Lcom/laiwang/protocol/media/MediaType;

    .line 86
    :goto_0
    return-object v0

    .line 55
    :pswitch_1
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->IMAGE_GIF:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 56
    :pswitch_2
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->IMAGE_PNG:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 57
    :pswitch_3
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->IMAGE_BMP:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 58
    :pswitch_4
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->AUDIO_AMR:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 59
    :pswitch_5
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->AUDIO_MP3:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 60
    :pswitch_6
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->VIDEO_MP4:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 61
    :pswitch_7
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->AUDIO_WAV:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 62
    :pswitch_8
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->NORMAL_FILE:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 63
    :pswitch_9
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->OFFICE_DOC:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 64
    :pswitch_a
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->OFFICE_DOCX:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 65
    :pswitch_b
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->OFFICE_XLS:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 66
    :pswitch_c
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->OFFICE_XLSX:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 67
    :pswitch_d
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->OFFICE_PPT:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 68
    :pswitch_e
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->OFFICE_PPTX:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 69
    :pswitch_f
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->NORMAL_ZIP:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 70
    :pswitch_10
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->NORMAL_PDF:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 71
    :pswitch_11
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->NORMAL_RAR:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 72
    :pswitch_12
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->NORMAL_PSD:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 73
    :pswitch_13
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->NORMAL_AI:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 74
    :pswitch_14
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->NORMAL_TXT:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 75
    :pswitch_15
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->VIDEO_AVI:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 76
    :pswitch_16
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->VIDEO_RMVB:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 77
    :pswitch_17
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->VIDEO_RM:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 78
    :pswitch_18
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->VIDEO_MPG:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 79
    :pswitch_19
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->VIDEO_WMV:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 80
    :pswitch_1a
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->VIDEO_MKV:Lcom/laiwang/protocol/media/MediaType;

    goto :goto_0

    .line 81
    :pswitch_1b
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->VIDEO_VOB:Lcom/laiwang/protocol/media/MediaType;

    goto/16 :goto_0

    .line 82
    :pswitch_1c
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->NORMAL_TFSPRIVATE:Lcom/laiwang/protocol/media/MediaType;

    goto/16 :goto_0

    .line 83
    :pswitch_1d
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->IMAGE_WEBP:Lcom/laiwang/protocol/media/MediaType;

    goto/16 :goto_0

    .line 84
    :pswitch_1e
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->AUDIO_OPUS:Lcom/laiwang/protocol/media/MediaType;

    goto/16 :goto_0

    .line 85
    :pswitch_1f
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->AUDIO_OGG:Lcom/laiwang/protocol/media/MediaType;

    goto/16 :goto_0

    .line 86
    :pswitch_20
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->FILE_UNKNOWN:Lcom/laiwang/protocol/media/MediaType;

    goto/16 :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_20
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch
.end method

.method public static getMediaType(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaType;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/protocol/media/MediaIdEncodingException;
        }
    .end annotation

    .prologue
    .line 28
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 29
    :cond_0
    new-instance v4, Lcom/laiwang/protocol/media/MediaIdEncodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unsupported media name: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/laiwang/protocol/media/MediaIdEncodingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 31
    :cond_1
    invoke-static {}, Lcom/laiwang/protocol/media/MediaType;->values()[Lcom/laiwang/protocol/media/MediaType;

    move-result-object v0

    .local v0, "arr$":[Lcom/laiwang/protocol/media/MediaType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 32
    .local v1, "e":Lcom/laiwang/protocol/media/MediaType;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 33
    return-object v1

    .line 31
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    .end local v1    # "e":Lcom/laiwang/protocol/media/MediaType;
    :cond_3
    new-instance v4, Lcom/laiwang/protocol/media/MediaIdEncodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unsupported media name: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/laiwang/protocol/media/MediaIdEncodingException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static isStaticImageType(Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/protocol/media/MediaIdEncodingException;
        }
    .end annotation

    .prologue
    .line 40
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    new-instance v0, Lcom/laiwang/protocol/media/MediaIdEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unsupported media name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->IMAGE_JPG:Lcom/laiwang/protocol/media/MediaType;

    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->IMAGE_PNG:Lcom/laiwang/protocol/media/MediaType;

    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->IMAGE_BMP:Lcom/laiwang/protocol/media/MediaType;

    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->IMAGE_WEBP:Lcom/laiwang/protocol/media/MediaType;

    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    :cond_2
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/laiwang/protocol/media/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/media/MediaType;

    return-object v0
.end method

.method public static values()[Lcom/laiwang/protocol/media/MediaType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/laiwang/protocol/media/MediaType;->$VALUES:[Lcom/laiwang/protocol/media/MediaType;

    invoke-virtual {v0}, [Lcom/laiwang/protocol/media/MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laiwang/protocol/media/MediaType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/laiwang/protocol/media/MediaType;->value:I

    return v0
.end method
