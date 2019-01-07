.class Lcom/alibaba/doraemon/image/utils/TiffUtil;
.super Ljava/lang/Object;
.source "TiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/image/utils/TiffUtil$TiffHeader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final TIFF_BYTE_ORDER_BIG_END:I = 0x4d4d002a

.field public static final TIFF_BYTE_ORDER_LITTLE_END:I = 0x49492a00

.field public static final TIFF_TAG_ORIENTATION:I = 0x112

.field public static final TIFF_TYPE_SHORT:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/alibaba/doraemon/image/utils/TiffUtil;

    sput-object v0, Lcom/alibaba/doraemon/image/utils/TiffUtil;->TAG:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method public static getAutoRotateAngleFromOrientation(I)I
    .locals 3
    .param p0, "orientation"    # I

    .prologue
    const/4 v0, 0x0

    .line 36
    packed-switch p0, :pswitch_data_0

    .line 46
    :pswitch_0
    sget-object v1, Lcom/alibaba/doraemon/image/utils/TiffUtil;->TAG:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Unsupported orientation"

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/DoraemonLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_0
    :pswitch_1
    return v0

    .line 40
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 42
    :pswitch_3
    const/16 v0, 0x5a

    goto :goto_0

    .line 44
    :pswitch_4
    const/16 v0, 0x10e

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static getOrientationFromTiffEntry(Ljava/io/InputStream;IZ)I
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .param p2, "isLittleEndian"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 164
    const/16 v3, 0xa

    if-ge p1, v3, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v2

    .line 168
    :cond_1
    invoke-static {p0, v4, p2}, Lcom/alibaba/doraemon/image/utils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v1

    .line 169
    .local v1, "type":I
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 173
    const/4 v3, 0x4

    invoke-static {p0, v3, p2}, Lcom/alibaba/doraemon/image/utils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v0

    .line 174
    .local v0, "count":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 177
    invoke-static {p0, v4, p2}, Lcom/alibaba/doraemon/image/utils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v2

    .line 178
    .local v2, "value":I
    invoke-static {p0, v4, p2}, Lcom/alibaba/doraemon/image/utils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    goto :goto_0
.end method

.method private static moveToTiffEntryWithTag(Ljava/io/InputStream;IZI)I
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .param p2, "isLittleEndian"    # Z
    .param p3, "tagToFind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 135
    const/16 v4, 0xe

    if-ge p1, v4, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v3

    .line 141
    :cond_1
    invoke-static {p0, v6, p2}, Lcom/alibaba/doraemon/image/utils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v0

    .line 142
    .local v0, "numEntries":I
    add-int/lit8 p1, p1, -0x2

    move v1, v0

    .line 143
    .end local v0    # "numEntries":I
    .local v1, "numEntries":I
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "numEntries":I
    .restart local v0    # "numEntries":I
    if-lez v1, :cond_0

    const/16 v4, 0xc

    if-lt p1, v4, :cond_0

    .line 144
    invoke-static {p0, v6, p2}, Lcom/alibaba/doraemon/image/utils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v2

    .line 145
    .local v2, "tag":I
    add-int/lit8 p1, p1, -0x2

    .line 146
    if-ne v2, p3, :cond_2

    move v3, p1

    .line 147
    goto :goto_0

    .line 149
    :cond_2
    const-wide/16 v4, 0xa

    invoke-virtual {p0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    .line 150
    add-int/lit8 p1, p1, -0xa

    move v1, v0

    .line 151
    .end local v0    # "numEntries":I
    .restart local v1    # "numEntries":I
    goto :goto_1
.end method

.method public static readOrientationFromTIFF(Ljava/io/InputStream;I)I
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/alibaba/doraemon/image/utils/TiffUtil$TiffHeader;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/alibaba/doraemon/image/utils/TiffUtil$TiffHeader;-><init>(Lcom/alibaba/doraemon/image/utils/TiffUtil$1;)V

    .line 59
    .local v0, "tiffHeader":Lcom/alibaba/doraemon/image/utils/TiffUtil$TiffHeader;
    invoke-static {p0, p1, v0}, Lcom/alibaba/doraemon/image/utils/TiffUtil;->readTiffHeader(Ljava/io/InputStream;ILcom/alibaba/doraemon/image/utils/TiffUtil$TiffHeader;)I

    move-result p1

    .line 64
    iget v2, v0, Lcom/alibaba/doraemon/image/utils/TiffUtil$TiffHeader;->firstIfdOffset:I

    add-int/lit8 v1, v2, -0x8

    .line 65
    .local v1, "toSkip":I
    if-eqz p1, :cond_0

    if-le v1, p1, :cond_1

    .line 66
    :cond_0
    const/4 v2, 0x0

    .line 75
    :goto_0
    return v2

    .line 68
    :cond_1
    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 69
    sub-int/2addr p1, v1

    .line 72
    iget-boolean v2, v0, Lcom/alibaba/doraemon/image/utils/TiffUtil$TiffHeader;->isLittleEndian:Z

    const/16 v3, 0x112

    invoke-static {p0, p1, v2, v3}, Lcom/alibaba/doraemon/image/utils/TiffUtil;->moveToTiffEntryWithTag(Ljava/io/InputStream;IZI)I

    move-result p1

    .line 75
    iget-boolean v2, v0, Lcom/alibaba/doraemon/image/utils/TiffUtil$TiffHeader;->isLittleEndian:Z

    invoke-static {p0, p1, v2}, Lcom/alibaba/doraemon/image/utils/TiffUtil;->getOrientationFromTiffEntry(Ljava/io/InputStream;IZ)I

    move-result v2

    goto :goto_0
.end method

.method private static readTiffHeader(Ljava/io/InputStream;ILcom/alibaba/doraemon/image/utils/TiffUtil$TiffHeader;)I
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .param p2, "tiffHeader"    # Lcom/alibaba/doraemon/image/utils/TiffUtil$TiffHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v5, 0x49492a00    # 823968.0f

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 96
    if-gt p1, v4, :cond_0

    .line 118
    :goto_0
    return v1

    .line 101
    :cond_0
    invoke-static {p0, v3, v1}, Lcom/alibaba/doraemon/image/utils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v0

    iput v0, p2, Lcom/alibaba/doraemon/image/utils/TiffUtil$TiffHeader;->byteOrder:I

    .line 102
    add-int/lit8 p1, p1, -0x4

    .line 103
    iget v0, p2, Lcom/alibaba/doraemon/image/utils/TiffUtil$TiffHeader;->byteOrder:I

    if-eq v0, v5, :cond_1

    iget v0, p2, Lcom/alibaba/doraemon/image/utils/TiffUtil$TiffHeader;->byteOrder:I

    const v2, 0x4d4d002a    # 2.14958752E8f

    if-eq v0, v2, :cond_1

    .line 105
    sget-object v0, Lcom/alibaba/doraemon/image/utils/TiffUtil;->TAG:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Invalid TIFF header"

    invoke-static {v0, v2}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :cond_1
    iget v0, p2, Lcom/alibaba/doraemon/image/utils/TiffUtil$TiffHeader;->byteOrder:I

    if-ne v0, v5, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p2, Lcom/alibaba/doraemon/image/utils/TiffUtil$TiffHeader;->isLittleEndian:Z

    .line 111
    iget-boolean v0, p2, Lcom/alibaba/doraemon/image/utils/TiffUtil$TiffHeader;->isLittleEndian:Z

    invoke-static {p0, v3, v0}, Lcom/alibaba/doraemon/image/utils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v0

    iput v0, p2, Lcom/alibaba/doraemon/image/utils/TiffUtil$TiffHeader;->firstIfdOffset:I

    .line 112
    add-int/lit8 p1, p1, -0x4

    .line 113
    iget v0, p2, Lcom/alibaba/doraemon/image/utils/TiffUtil$TiffHeader;->firstIfdOffset:I

    if-lt v0, v4, :cond_2

    iget v0, p2, Lcom/alibaba/doraemon/image/utils/TiffUtil$TiffHeader;->firstIfdOffset:I

    add-int/lit8 v0, v0, -0x8

    if-le v0, p1, :cond_4

    .line 114
    :cond_2
    sget-object v0, Lcom/alibaba/doraemon/image/utils/TiffUtil;->TAG:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Invalid offset"

    invoke-static {v0, v2}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 108
    goto :goto_1

    :cond_4
    move v1, p1

    .line 118
    goto :goto_0
.end method
