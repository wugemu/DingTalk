.class public Lcom/taobao/weex/amap/util/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/amap/util/GifDecoder$PlainTextExtension;,
        Lcom/taobao/weex/amap/util/GifDecoder$CommentExtension;,
        Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;,
        Lcom/taobao/weex/amap/util/GifDecoder$ApplicationExtension;,
        Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;,
        Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;,
        Lcom/taobao/weex/amap/util/GifDecoder$GifFrame;
    }
.end annotation


# static fields
.field private static final APP_EXT:B = -0x1t

.field private static final CMT_EXT:B = -0x2t

.field private static final EXT_CODE:B = 0x21t

.field private static final GC_EXT:B = -0x7t

.field private static final IMG_CODE:B = 0x2ct

.field private static final MIN_DELAY:I = 0x64

.field private static final MIN_DELAY_ENFORCE_THRESHOLD:I = 0x14

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final TRR_CODE:B = 0x3bt

.field private static final TXT_EXT:B = 0x1t


# instance fields
.field protected mCurrentImage:Landroid/graphics/Bitmap;

.field protected mDelay:I

.field protected mDispose:I

.field protected mFrameCount:I

.field private mGcExt:Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;

.field protected mGifFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/weex/amap/util/GifDecoder$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mGifHeader:Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;

.field protected mHeight:I

.field private mImageBlock:Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;

.field protected mLastDispose:I

.field protected mLastImage:Landroid/graphics/Bitmap;

.field private mOffset:I

.field protected mStatus:I

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/taobao/weex/amap/util/GifDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/amap/util/GifDecoder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mDispose:I

    .line 49
    iput v0, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mLastDispose:I

    .line 50
    iput v0, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mDelay:I

    .line 54
    iput v0, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mOffset:I

    .line 566
    return-void
.end method

.method private extractImage()Landroid/graphics/Bitmap;
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 236
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 238
    .local v5, "outputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mGifHeader:Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;

    iget-object v7, v7, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->bytes:[B

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 239
    iget-object v7, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mGcExt:Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;

    if-eqz v7, :cond_2

    .line 240
    iget v7, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mWidth:I

    iget-object v8, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mImageBlock:Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;

    invoke-virtual {v8}, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->getImageWidth()I

    move-result v8

    if-ne v7, v8, :cond_0

    iget v7, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mHeight:I

    iget-object v8, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mImageBlock:Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;

    invoke-virtual {v8}, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->getImageHeight()I

    move-result v8

    if-eq v7, v8, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mGcExt:Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;

    invoke-virtual {v7}, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;->getTransparentColorFlag()I

    move-result v7

    if-nez v7, :cond_1

    .line 242
    iget-object v7, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mGcExt:Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;

    invoke-virtual {v7}, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;->setTransparentColorFlagTrue()V

    .line 244
    :cond_1
    iget-object v7, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mGcExt:Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;

    iget-object v7, v7, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;->bytes:[B

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 246
    :cond_2
    iget-object v7, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mImageBlock:Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;

    iget-object v7, v7, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->bytes:[B

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 247
    const/16 v7, 0x3b

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 248
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 250
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 251
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 252
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 253
    new-instance v7, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 254
    .local v3, "newBitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_4

    .line 255
    iget-object v7, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mLastImage:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_3

    .line 273
    :try_start_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 279
    .end local v3    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v3

    .line 274
    .restart local v3    # "newBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    .line 275
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 258
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_2
    iget v7, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mWidth:I

    iget v8, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mHeight:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 259
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 260
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v7, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mLastImage:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 261
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v3, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    move-object v3, v0

    .line 276
    goto :goto_0

    .line 274
    :catch_1
    move-exception v2

    .line 275
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 265
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_4
    iget-object v7, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mLastImage:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_5

    .line 266
    iget-object v3, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mLastImage:Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 273
    .end local v3    # "newBitmap":Landroid/graphics/Bitmap;
    :try_start_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 274
    :catch_2
    move-exception v2

    .line 275
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 273
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_5
    :try_start_6
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .end local v3    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_2
    move-object v3, v6

    .line 279
    goto :goto_0

    .line 274
    .restart local v3    # "newBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v2

    .line 275
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 269
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v2

    .line 270
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 273
    :try_start_8
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_2

    .line 274
    :catch_5
    move-exception v2

    .line 275
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 272
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 273
    :try_start_9
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 276
    :goto_3
    throw v6

    .line 274
    :catch_6
    move-exception v2

    .line 275
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static streamToBytes(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 75
    const/16 v4, 0x400

    new-array v1, v4, [B

    .line 77
    .local v1, "buff":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 78
    .local v0, "bao":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "read":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 79
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 82
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 83
    :catch_0
    move-exception v2

    .line 84
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static toHex(II)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # I
    .param p1, "length"    # I

    .prologue
    .line 61
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "hex":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 65
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/amap/util/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDelay(I)I
    .locals 2
    .param p1, "n"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mDelay:I

    .line 97
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mFrameCount:I

    if-ge p1, v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mGifFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/amap/util/GifDecoder$GifFrame;

    iget v0, v0, Lcom/taobao/weex/amap/util/GifDecoder$GifFrame;->delay:I

    iput v0, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mDelay:I

    .line 99
    iget v0, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mDelay:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 100
    const/16 v0, 0x64

    iput v0, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mDelay:I

    .line 103
    :cond_0
    iget v0, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mDelay:I

    return v0
.end method

.method public getFrame(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 130
    iget v0, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mFrameCount:I

    if-gtz v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    .line 132
    :cond_0
    iget v0, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mFrameCount:I

    rem-int/2addr p1, v0

    .line 133
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mGifFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/amap/util/GifDecoder$GifFrame;

    iget-object v0, v0, Lcom/taobao/weex/amap/util/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mFrameCount:I

    return v0
.end method

.method protected init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 215
    iput v0, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mStatus:I

    .line 216
    iput v0, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mFrameCount:I

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mGifFrames:Ljava/util/ArrayList;

    .line 218
    return-void
.end method

.method public read(Ljava/io/InputStream;)I
    .locals 10
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 144
    invoke-virtual {p0}, Lcom/taobao/weex/amap/util/GifDecoder;->init()V

    .line 145
    if-eqz p1, :cond_a

    .line 146
    invoke-static {p1}, Lcom/taobao/weex/amap/util/GifDecoder;->streamToBytes(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 147
    .local v1, "buffer":[B
    new-instance v6, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;

    iget v7, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mOffset:I

    invoke-direct {v6, p0, v1, v7}, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;-><init>(Lcom/taobao/weex/amap/util/GifDecoder;[BI)V

    iput-object v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mGifHeader:Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;

    .line 148
    iget v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mOffset:I

    iget-object v7, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mGifHeader:Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;

    iget v7, v7, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->size:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mOffset:I

    .line 149
    iget-object v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mGifHeader:Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;

    invoke-virtual {v6}, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mWidth:I

    .line 150
    iget-object v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mGifHeader:Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;

    invoke-virtual {v6}, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mHeight:I

    .line 151
    iget-object v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mGifHeader:Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;

    invoke-virtual {v6}, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->getSignature()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "GIF"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 208
    .end local v1    # "buffer":[B
    :goto_0
    return v5

    .line 154
    .restart local v1    # "buffer":[B
    :cond_0
    :goto_1
    iget v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mOffset:I

    aget-byte v6, v1, v6

    const/16 v7, 0x3b

    if-eq v6, v7, :cond_b

    .line 155
    iget v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mOffset:I

    aget-byte v6, v1, v6

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_3

    .line 157
    new-instance v6, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;

    iget v7, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mOffset:I

    invoke-direct {v6, p0, v1, v7}, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;-><init>(Lcom/taobao/weex/amap/util/GifDecoder;[BI)V

    iput-object v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mImageBlock:Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;

    .line 158
    iget v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mOffset:I

    iget-object v7, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mImageBlock:Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;

    iget v7, v7, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->size:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mOffset:I

    .line 160
    iget v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mFrameCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mFrameCount:I

    .line 162
    invoke-direct {p0}, Lcom/taobao/weex/amap/util/GifDecoder;->extractImage()Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mCurrentImage:Landroid/graphics/Bitmap;

    .line 163
    iget v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mLastDispose:I

    if-lez v6, :cond_1

    .line 164
    iget v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mLastDispose:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 166
    iget v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mFrameCount:I

    add-int/lit8 v3, v6, -0x2

    .line 167
    .local v3, "n":I
    if-lez v3, :cond_2

    .line 168
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Lcom/taobao/weex/amap/util/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mLastImage:Landroid/graphics/Bitmap;

    .line 174
    .end local v3    # "n":I
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mGifFrames:Ljava/util/ArrayList;

    new-instance v7, Lcom/taobao/weex/amap/util/GifDecoder$GifFrame;

    iget-object v8, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mCurrentImage:Landroid/graphics/Bitmap;

    iget v9, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mDelay:I

    invoke-direct {v7, v8, v9}, Lcom/taobao/weex/amap/util/GifDecoder$GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-virtual {p0}, Lcom/taobao/weex/amap/util/GifDecoder;->resetFrame()V

    goto :goto_1

    .line 170
    .restart local v3    # "n":I
    :cond_2
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mLastImage:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 176
    .end local v3    # "n":I
    :cond_3
    iget v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mOffset:I

    aget-byte v6, v1, v6

    const/16 v7, 0x21

    if-ne v6, v7, :cond_9

    .line 177
    iget v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mOffset:I

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, v1, v6

    const/4 v7, -0x7

    if-ne v6, v7, :cond_5

    .line 179
    new-instance v6, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;

    iget v7, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mOffset:I

    invoke-direct {v6, p0, v1, v7}, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;-><init>(Lcom/taobao/weex/amap/util/GifDecoder;[BI)V

    iput-object v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mGcExt:Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;

    .line 180
    iget v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mOffset:I

    iget-object v7, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mGcExt:Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;

    iget v7, v7, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;->size:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mOffset:I

    .line 181
    iget-object v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mGcExt:Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;

    invoke-virtual {v6}, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;->getDisposalMothod()I

    move-result v6

    iput v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mDispose:I

    .line 182
    iget v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mDispose:I

    if-nez v6, :cond_4

    .line 183
    iput v5, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mDispose:I

    .line 185
    :cond_4
    iget-object v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mGcExt:Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;

    invoke-virtual {v6}, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;->getDelayTime()I

    move-result v6

    mul-int/lit8 v6, v6, 0xa

    iput v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mDelay:I

    goto/16 :goto_1

    .line 186
    :cond_5
    iget v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mOffset:I

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, v1, v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    .line 188
    new-instance v0, Lcom/taobao/weex/amap/util/GifDecoder$ApplicationExtension;

    iget v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mOffset:I

    invoke-direct {v0, p0, v1, v6}, Lcom/taobao/weex/amap/util/GifDecoder$ApplicationExtension;-><init>(Lcom/taobao/weex/amap/util/GifDecoder;[BI)V

    .line 189
    .local v0, "appExt":Lcom/taobao/weex/amap/util/GifDecoder$ApplicationExtension;
    iget v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mOffset:I

    iget v7, v0, Lcom/taobao/weex/amap/util/GifDecoder$ApplicationExtension;->size:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mOffset:I

    goto/16 :goto_1

    .line 190
    .end local v0    # "appExt":Lcom/taobao/weex/amap/util/GifDecoder$ApplicationExtension;
    :cond_6
    iget v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mOffset:I

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, v1, v6

    const/4 v7, -0x2

    if-ne v6, v7, :cond_7

    .line 192
    new-instance v2, Lcom/taobao/weex/amap/util/GifDecoder$CommentExtension;

    iget v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mOffset:I

    invoke-direct {v2, p0, v1, v6}, Lcom/taobao/weex/amap/util/GifDecoder$CommentExtension;-><init>(Lcom/taobao/weex/amap/util/GifDecoder;[BI)V

    .line 193
    .local v2, "cmtExt":Lcom/taobao/weex/amap/util/GifDecoder$CommentExtension;
    iget v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mOffset:I

    iget v7, v2, Lcom/taobao/weex/amap/util/GifDecoder$CommentExtension;->size:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mOffset:I

    goto/16 :goto_1

    .line 194
    .end local v2    # "cmtExt":Lcom/taobao/weex/amap/util/GifDecoder$CommentExtension;
    :cond_7
    iget v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mOffset:I

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, v1, v6

    if-ne v6, v5, :cond_8

    .line 196
    new-instance v4, Lcom/taobao/weex/amap/util/GifDecoder$PlainTextExtension;

    iget v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mOffset:I

    invoke-direct {v4, p0, v1, v6}, Lcom/taobao/weex/amap/util/GifDecoder$PlainTextExtension;-><init>(Lcom/taobao/weex/amap/util/GifDecoder;[BI)V

    .line 197
    .local v4, "txtExt":Lcom/taobao/weex/amap/util/GifDecoder$PlainTextExtension;
    iget v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mOffset:I

    iget v7, v4, Lcom/taobao/weex/amap/util/GifDecoder$PlainTextExtension;->size:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mOffset:I

    goto/16 :goto_1

    .line 199
    .end local v4    # "txtExt":Lcom/taobao/weex/amap/util/GifDecoder$PlainTextExtension;
    :cond_8
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 202
    :cond_9
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 206
    .end local v1    # "buffer":[B
    :cond_a
    const/4 v5, 0x2

    iput v5, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mStatus:I

    .line 208
    :cond_b
    iget v5, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mStatus:I

    goto/16 :goto_0
.end method

.method protected resetFrame()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 224
    iget v0, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mDispose:I

    iput v0, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mLastDispose:I

    .line 225
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mCurrentImage:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mLastImage:Landroid/graphics/Bitmap;

    .line 226
    iput v1, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mDispose:I

    .line 227
    iput v1, p0, Lcom/taobao/weex/amap/util/GifDecoder;->mDelay:I

    .line 228
    return-void
.end method
