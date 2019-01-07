.class public Lcom/alibaba/doraemon/image/utils/JfifUtil;
.super Ljava/lang/Object;
.source "JfifUtil.java"


# static fields
.field public static final APP1_EXIF_MAGIC:I = 0x45786966

.field public static final MARKER_APP1:I = 0xe1

.field public static final MARKER_EOI:I = 0xd9

.field public static final MARKER_ESCAPE_BYTE:I = 0x0

.field public static final MARKER_FIRST_BYTE:I = 0xff

.field public static final MARKER_RST0:I = 0xd0

.field public static final MARKER_RST7:I = 0xd7

.field public static final MARKER_SOFn:I = 0xc0

.field public static final MARKER_SOI:I = 0xd8

.field public static final MARKER_SOS:I = 0xda

.field public static final MARKER_TEM:I = 0x1

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/alibaba/doraemon/image/utils/JfifUtil;

    sput-object v0, Lcom/alibaba/doraemon/image/utils/JfifUtil;->TAG:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static getAutoRotateAngleFromOrientation(I)I
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 53
    invoke-static {p0}, Lcom/alibaba/doraemon/image/utils/TiffUtil;->getAutoRotateAngleFromOrientation(I)I

    move-result v0

    return v0
.end method

.method public static getDimensions(Ljava/io/InputStream;)Landroid/graphics/Rect;
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 100
    const/16 v4, 0xc0

    :try_start_0
    invoke-static {p0, v4}, Lcom/alibaba/doraemon/image/utils/JfifUtil;->moveToMarker(Ljava/io/InputStream;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/alibaba/doraemon/image/utils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v4

    add-int/lit8 v2, v4, -0x2

    .line 104
    .local v2, "length":I
    const/4 v4, 0x6

    if-le v2, v4, :cond_0

    .line 106
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/alibaba/doraemon/image/utils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    .line 107
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/alibaba/doraemon/image/utils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v0

    .line 108
    .local v0, "height":I
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/alibaba/doraemon/image/utils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v3

    .line 109
    .local v3, "width":I
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v0    # "height":I
    .end local v2    # "length":I
    .end local v3    # "width":I
    :goto_0
    return-object v4

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v4, Lcom/alibaba/doraemon/image/utils/JfifUtil;->TAG:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  %x: getDimensions"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getDimensions([B)Landroid/graphics/Rect;
    .locals 1
    .param p0, "jpeg"    # [B

    .prologue
    .line 90
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/alibaba/doraemon/image/utils/JfifUtil;->getDimensions(Ljava/io/InputStream;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getOrientation(Ljava/io/InputStream;)I
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 73
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/doraemon/image/utils/JfifUtil;->moveToAPP1EXIF(Ljava/io/InputStream;)I

    move-result v0

    .line 74
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 79
    .end local v0    # "length":I
    :goto_0
    return v1

    .line 77
    .restart local v0    # "length":I
    :cond_0
    invoke-static {p0, v0}, Lcom/alibaba/doraemon/image/utils/TiffUtil;->readOrientationFromTIFF(Ljava/io/InputStream;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 79
    .end local v0    # "length":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getOrientation([B)I
    .locals 1
    .param p0, "jpeg"    # [B

    .prologue
    .line 63
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/alibaba/doraemon/image/utils/JfifUtil;->getOrientation(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method private static isSOFn(I)Z
    .locals 1
    .param p0, "marker"    # I

    .prologue
    .line 164
    packed-switch p0, :pswitch_data_0

    .line 180
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 178
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static moveToAPP1EXIF(Ljava/io/InputStream;)I
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 190
    const/16 v4, 0xe1

    invoke-static {p0, v4}, Lcom/alibaba/doraemon/image/utils/JfifUtil;->moveToMarker(Ljava/io/InputStream;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 193
    invoke-static {p0, v5, v3}, Lcom/alibaba/doraemon/image/utils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v4

    add-int/lit8 v0, v4, -0x2

    .line 194
    .local v0, "length":I
    const/4 v4, 0x6

    if-le v0, v4, :cond_0

    .line 195
    const/4 v4, 0x4

    invoke-static {p0, v4, v3}, Lcom/alibaba/doraemon/image/utils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v1

    .line 196
    .local v1, "magic":I
    add-int/lit8 v0, v0, -0x4

    .line 197
    invoke-static {p0, v5, v3}, Lcom/alibaba/doraemon/image/utils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v2

    .line 198
    .local v2, "zero":I
    add-int/lit8 v0, v0, -0x2

    .line 199
    const v4, 0x45786966

    if-ne v1, v4, :cond_0

    if-nez v2, :cond_0

    .line 205
    .end local v0    # "length":I
    .end local v1    # "magic":I
    .end local v2    # "zero":I
    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method public static moveToMarker(Ljava/io/InputStream;I)Z
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "markerToFind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xff

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 127
    invoke-static {p0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_0
    :goto_0
    invoke-static {p0, v2, v3}, Lcom/alibaba/doraemon/image/utils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v4

    if-ne v4, v6, :cond_6

    .line 130
    const/16 v1, 0xff

    .line 131
    .local v1, "marker":I
    :goto_1
    if-ne v1, v6, :cond_1

    .line 132
    invoke-static {p0, v2, v3}, Lcom/alibaba/doraemon/image/utils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v1

    goto :goto_1

    .line 135
    :cond_1
    const/16 v4, 0xc0

    if-ne p1, v4, :cond_3

    invoke-static {v1}, Lcom/alibaba/doraemon/image/utils/JfifUtil;->isSOFn(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 159
    .end local v1    # "marker":I
    :cond_2
    :goto_2
    return v2

    .line 138
    .restart local v1    # "marker":I
    :cond_3
    if-eq v1, p1, :cond_2

    .line 143
    const/16 v4, 0xd8

    if-eq v1, v4, :cond_0

    if-eq v1, v2, :cond_0

    .line 149
    const/16 v4, 0xd9

    if-eq v1, v4, :cond_4

    const/16 v4, 0xda

    if-ne v1, v4, :cond_5

    :cond_4
    move v2, v3

    .line 150
    goto :goto_2

    .line 155
    :cond_5
    const/4 v4, 0x2

    invoke-static {p0, v4, v3}, Lcom/alibaba/doraemon/image/utils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v4

    add-int/lit8 v0, v4, -0x2

    .line 157
    .local v0, "length":I
    int-to-long v4, v0

    invoke-virtual {p0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    goto :goto_0

    .end local v0    # "length":I
    .end local v1    # "marker":I
    :cond_6
    move v2, v3

    .line 159
    goto :goto_2
.end method
