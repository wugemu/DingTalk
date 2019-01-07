.class public final enum Lcom/laiwang/protocol/upload/MediaType;
.super Ljava/lang/Enum;
.source "MediaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laiwang/protocol/upload/MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum AUDIO_AMR:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum AUDIO_MP3:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum AUDIO_OGG:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum AUDIO_OPUS:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum AUDIO_WAV:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum IMAGE_BMP:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum IMAGE_GIF:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum IMAGE_JPG:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum IMAGE_PNG:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum IMAGE_WEBP:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum NORMAL_AI:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum NORMAL_FILE:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum NORMAL_PDF:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum NORMAL_PSD:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum NORMAL_RAR:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum NORMAL_TFSPRIVATE:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum NORMAL_TXT:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum NORMAL_ZIP:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum OFFICE_DOC:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum OFFICE_DOCX:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum OFFICE_PPT:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum OFFICE_PPTX:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum OFFICE_XLS:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum OFFICE_XLSX:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum VIDEO_AVI:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum VIDEO_MKV:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum VIDEO_MP4:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum VIDEO_MPG:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum VIDEO_RM:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum VIDEO_RMVB:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum VIDEO_VOB:Lcom/laiwang/protocol/upload/MediaType;

.field public static final enum VIDEO_WMV:Lcom/laiwang/protocol/upload/MediaType;


# instance fields
.field private ext:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8
    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "IMAGE_JPG"

    const-string/jumbo v2, "jpg"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->IMAGE_JPG:Lcom/laiwang/protocol/upload/MediaType;

    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "IMAGE_GIF"

    const-string/jumbo v2, "gif"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->IMAGE_GIF:Lcom/laiwang/protocol/upload/MediaType;

    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "IMAGE_PNG"

    const-string/jumbo v2, "png"

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->IMAGE_PNG:Lcom/laiwang/protocol/upload/MediaType;

    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "IMAGE_BMP"

    const-string/jumbo v2, "bmp"

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->IMAGE_BMP:Lcom/laiwang/protocol/upload/MediaType;

    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "AUDIO_AMR"

    const-string/jumbo v2, "amr"

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->AUDIO_AMR:Lcom/laiwang/protocol/upload/MediaType;

    .line 9
    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "AUDIO_MP3"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-string/jumbo v4, "mp3"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->AUDIO_MP3:Lcom/laiwang/protocol/upload/MediaType;

    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "VIDEO_MP4"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const-string/jumbo v4, "mp4"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->VIDEO_MP4:Lcom/laiwang/protocol/upload/MediaType;

    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "AUDIO_WAV"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const-string/jumbo v4, "wav"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->AUDIO_WAV:Lcom/laiwang/protocol/upload/MediaType;

    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "NORMAL_FILE"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const-string/jumbo v4, "file"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->NORMAL_FILE:Lcom/laiwang/protocol/upload/MediaType;

    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "OFFICE_DOC"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const-string/jumbo v4, "doc"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->OFFICE_DOC:Lcom/laiwang/protocol/upload/MediaType;

    .line 10
    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "OFFICE_DOCX"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const-string/jumbo v4, "docx"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->OFFICE_DOCX:Lcom/laiwang/protocol/upload/MediaType;

    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "OFFICE_XLS"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const-string/jumbo v4, "xls"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->OFFICE_XLS:Lcom/laiwang/protocol/upload/MediaType;

    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "OFFICE_XLSX"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const-string/jumbo v4, "xlsx"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->OFFICE_XLSX:Lcom/laiwang/protocol/upload/MediaType;

    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "OFFICE_PPT"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const-string/jumbo v4, "ppt"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->OFFICE_PPT:Lcom/laiwang/protocol/upload/MediaType;

    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "OFFICE_PPTX"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const-string/jumbo v4, "pptx"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->OFFICE_PPTX:Lcom/laiwang/protocol/upload/MediaType;

    .line 11
    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "NORMAL_ZIP"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const-string/jumbo v4, "zip"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->NORMAL_ZIP:Lcom/laiwang/protocol/upload/MediaType;

    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "NORMAL_PDF"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const-string/jumbo v4, "pdf"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->NORMAL_PDF:Lcom/laiwang/protocol/upload/MediaType;

    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "NORMAL_RAR"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const-string/jumbo v4, "rar"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->NORMAL_RAR:Lcom/laiwang/protocol/upload/MediaType;

    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "NORMAL_PSD"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const-string/jumbo v4, "psd"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->NORMAL_PSD:Lcom/laiwang/protocol/upload/MediaType;

    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "NORMAL_AI"

    const/16 v2, 0x13

    const/16 v3, 0x13

    const-string/jumbo v4, "ai"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->NORMAL_AI:Lcom/laiwang/protocol/upload/MediaType;

    .line 12
    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "NORMAL_TXT"

    const/16 v2, 0x14

    const/16 v3, 0x14

    const-string/jumbo v4, "txt"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->NORMAL_TXT:Lcom/laiwang/protocol/upload/MediaType;

    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "VIDEO_AVI"

    const/16 v2, 0x15

    const/16 v3, 0x15

    const-string/jumbo v4, "avi"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->VIDEO_AVI:Lcom/laiwang/protocol/upload/MediaType;

    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "VIDEO_RMVB"

    const/16 v2, 0x16

    const/16 v3, 0x16

    const-string/jumbo v4, "rmvb"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->VIDEO_RMVB:Lcom/laiwang/protocol/upload/MediaType;

    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "VIDEO_RM"

    const/16 v2, 0x17

    const/16 v3, 0x17

    const-string/jumbo v4, "rm"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->VIDEO_RM:Lcom/laiwang/protocol/upload/MediaType;

    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "VIDEO_MPG"

    const/16 v2, 0x18

    const/16 v3, 0x18

    const-string/jumbo v4, "mpg"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->VIDEO_MPG:Lcom/laiwang/protocol/upload/MediaType;

    .line 13
    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "VIDEO_WMV"

    const/16 v2, 0x19

    const/16 v3, 0x19

    const-string/jumbo v4, "wmv"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->VIDEO_WMV:Lcom/laiwang/protocol/upload/MediaType;

    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "VIDEO_MKV"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    const-string/jumbo v4, "mkv"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->VIDEO_MKV:Lcom/laiwang/protocol/upload/MediaType;

    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "VIDEO_VOB"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    const-string/jumbo v4, "vob"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->VIDEO_VOB:Lcom/laiwang/protocol/upload/MediaType;

    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "NORMAL_TFSPRIVATE"

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    const-string/jumbo v4, "tfsprivate"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->NORMAL_TFSPRIVATE:Lcom/laiwang/protocol/upload/MediaType;

    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "IMAGE_WEBP"

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    const-string/jumbo v4, "webp"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->IMAGE_WEBP:Lcom/laiwang/protocol/upload/MediaType;

    .line 14
    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "AUDIO_OPUS"

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    const-string/jumbo v4, "opus"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->AUDIO_OPUS:Lcom/laiwang/protocol/upload/MediaType;

    new-instance v0, Lcom/laiwang/protocol/upload/MediaType;

    const-string/jumbo v1, "AUDIO_OGG"

    const/16 v2, 0x1f

    const/16 v3, 0x1f

    const-string/jumbo v4, "ogg"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/laiwang/protocol/upload/MediaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->AUDIO_OGG:Lcom/laiwang/protocol/upload/MediaType;

    .line 7
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/laiwang/protocol/upload/MediaType;

    sget-object v1, Lcom/laiwang/protocol/upload/MediaType;->IMAGE_JPG:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/laiwang/protocol/upload/MediaType;->IMAGE_GIF:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/laiwang/protocol/upload/MediaType;->IMAGE_PNG:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/laiwang/protocol/upload/MediaType;->IMAGE_BMP:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/laiwang/protocol/upload/MediaType;->AUDIO_AMR:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->AUDIO_MP3:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->VIDEO_MP4:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->AUDIO_WAV:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->NORMAL_FILE:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->OFFICE_DOC:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->OFFICE_DOCX:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->OFFICE_XLS:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->OFFICE_XLSX:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->OFFICE_PPT:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->OFFICE_PPTX:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->NORMAL_ZIP:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->NORMAL_PDF:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->NORMAL_RAR:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->NORMAL_PSD:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->NORMAL_AI:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->NORMAL_TXT:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->VIDEO_AVI:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->VIDEO_RMVB:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->VIDEO_RM:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->VIDEO_MPG:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->VIDEO_WMV:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->VIDEO_MKV:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->VIDEO_VOB:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->NORMAL_TFSPRIVATE:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->IMAGE_WEBP:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->AUDIO_OPUS:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/laiwang/protocol/upload/MediaType;->AUDIO_OGG:Lcom/laiwang/protocol/upload/MediaType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/laiwang/protocol/upload/MediaType;->$VALUES:[Lcom/laiwang/protocol/upload/MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "type"    # I
    .param p4, "ext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/laiwang/protocol/upload/MediaType;->value:I

    .line 21
    iput-object p4, p0, Lcom/laiwang/protocol/upload/MediaType;->ext:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laiwang/protocol/upload/MediaType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/laiwang/protocol/upload/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/upload/MediaType;

    return-object v0
.end method

.method public static values()[Lcom/laiwang/protocol/upload/MediaType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/laiwang/protocol/upload/MediaType;->$VALUES:[Lcom/laiwang/protocol/upload/MediaType;

    invoke-virtual {v0}, [Lcom/laiwang/protocol/upload/MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laiwang/protocol/upload/MediaType;

    return-object v0
.end method


# virtual methods
.method public final getExt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/laiwang/protocol/upload/MediaType;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/laiwang/protocol/upload/MediaType;->value:I

    return v0
.end method
