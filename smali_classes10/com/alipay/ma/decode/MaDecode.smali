.class public Lcom/alipay/ma/decode/MaDecode;
.super Ljava/lang/Object;
.source "MaDecode.java"


# static fields
.field public static final SO_NAME:Ljava/lang/String; = "decoded98ee3"

.field public static final TAG:Ljava/lang/String; = "MaDecode"

.field public static final USE_OLD_ENCODE:Ljava/lang/String; = "USE_OLD_ENCODE"

.field private static a:Z

.field public static useOldEncodeGuess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-boolean v0, Lcom/alipay/ma/decode/MaDecode;->useOldEncodeGuess:Z

    .line 32
    invoke-static {}, Lcom/alipay/ma/decode/MaDecode;->init()V

    .line 65
    sput-boolean v0, Lcom/alipay/ma/decode/MaDecode;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static a(Lcom/alipay/ma/decode/DecodeResult;)Lcom/alipay/ma/decode/DecodeResult;
    .locals 4
    .param p0, "result"    # Lcom/alipay/ma/decode/DecodeResult;

    .prologue
    .line 105
    if-eqz p0, :cond_2

    iget-object v1, p0, Lcom/alipay/ma/decode/DecodeResult;->bytes:[B

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/ma/decode/DecodeResult;->bytes:[B

    array-length v1, v1

    if-lez v1, :cond_2

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/alipay/ma/decode/DecodeResult;->bytes:[B

    sget-boolean v2, Lcom/alipay/ma/decode/MaDecode;->useOldEncodeGuess:Z

    invoke-static {v1, v2}, Lcom/alipay/ma/util/b;->a([BZ)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "encode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/ma/decode/DecodeResult;->bytes:[B

    const-string/jumbo v3, "utf-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/ma/decode/DecodeResult;->strCode:Ljava/lang/String;

    .line 113
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/ma/decode/DecodeResult;->bytes:[B

    .line 114
    iget-object v1, p0, Lcom/alipay/ma/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const/4 p0, 0x0

    .line 126
    .end local v0    # "encode":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p0

    .line 111
    .restart local v0    # "encode":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/ma/decode/DecodeResult;->bytes:[B

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/ma/decode/DecodeResult;->strCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 121
    .end local v0    # "encode":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 124
    :cond_2
    :goto_2
    const/4 p0, 0x0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private static declared-synchronized a([BIIILandroid/graphics/Rect;ILjava/lang/String;[Ljava/lang/String;)[Lcom/alipay/ma/decode/DecodeResult;
    .locals 8
    .param p0, "data"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "strides"    # I
    .param p4, "rect"    # Landroid/graphics/Rect;
    .param p5, "scanMode"    # I
    .param p6, "str4GLocalAddr"    # Ljava/lang/String;
    .param p7, "whitelist"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 74
    const-class v5, Lcom/alipay/ma/decode/MaDecode;

    monitor-enter v5

    :try_start_0
    sget-boolean v6, Lcom/alipay/ma/decode/MaDecode;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    move-object v3, v4

    .line 100
    :cond_0
    :goto_0
    monitor-exit v5

    return-object v3

    .line 77
    :cond_1
    const/4 v6, 0x1

    :try_start_1
    sput-boolean v6, Lcom/alipay/ma/decode/MaDecode;->a:Z

    .line 78
    if-nez p0, :cond_2

    .line 79
    const-string/jumbo v6, "MaDecode"

    const-string/jumbo v6, "codeDecode data is null"

    .line 2041
    sget-object v6, Liir;->a:Liir$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v4

    .line 80
    goto :goto_0

    .line 82
    :cond_2
    const/4 v3, 0x0

    .line 84
    .local v3, "result":[Lcom/alipay/ma/decode/DecodeResult;
    :try_start_2
    invoke-static/range {p0 .. p7}, Lcom/alipay/ma/decode/MaDecode;->yuvcodeDecode([BIIILandroid/graphics/Rect;ILjava/lang/String;[Ljava/lang/String;)[Lcom/alipay/ma/decode/DecodeResult;
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 92
    :goto_1
    const/4 v6, 0x0

    :try_start_3
    sput-boolean v6, Lcom/alipay/ma/decode/MaDecode;->a:Z

    .line 94
    if-eqz v3, :cond_3

    array-length v6, v3

    if-nez v6, :cond_4

    :cond_3
    move-object v3, v4

    .line 95
    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "error":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v6, "MaDecode"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Failed to load decoded98ee3, "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2047
    sget-object v6, Liir;->a:Liir$a;

    .line 88
    invoke-static {}, Lcom/alipay/ma/decode/MaDecode;->init()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 74
    .end local v1    # "error":Ljava/lang/UnsatisfiedLinkError;
    .end local v3    # "result":[Lcom/alipay/ma/decode/DecodeResult;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 89
    .restart local v3    # "result":[Lcom/alipay/ma/decode/DecodeResult;
    :catch_1
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v6, "MaDecode"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 3047
    sget-object v6, Liir;->a:Liir$a;

    goto :goto_1

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 98
    aget-object v4, v3, v2

    invoke-static {v4}, Lcom/alipay/ma/decode/MaDecode;->a(Lcom/alipay/ma/decode/DecodeResult;)Lcom/alipay/ma/decode/DecodeResult;

    move-result-object v4

    aput-object v4, v3, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static declared-synchronized codeDecodeBinarizedData([BIIILandroid/graphics/Rect;IILjava/lang/String;[Ljava/lang/String;)[Lcom/alipay/ma/decode/DecodeResult;
    .locals 7
    .param p0, "bitMatrix"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "strides"    # I
    .param p4, "rect"    # Landroid/graphics/Rect;
    .param p5, "scanMode"    # I
    .param p6, "binarizeMethod"    # I
    .param p7, "str4GLocalAddr"    # Ljava/lang/String;
    .param p8, "whitelist"    # [Ljava/lang/String;

    .prologue
    .line 183
    const-class v5, Lcom/alipay/ma/decode/MaDecode;

    monitor-enter v5

    :try_start_0
    sget-boolean v4, Lcom/alipay/ma/decode/MaDecode;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 184
    const/4 v3, 0x0

    .line 212
    :cond_0
    :goto_0
    monitor-exit v5

    return-object v3

    .line 187
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    sput-boolean v4, Lcom/alipay/ma/decode/MaDecode;->a:Z

    .line 189
    if-nez p0, :cond_2

    .line 190
    const-string/jumbo v4, "MaDecode"

    const-string/jumbo v4, "codeDecode data is null"

    .line 7041
    sget-object v4, Liir;->a:Liir$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    const/4 v3, 0x0

    goto :goto_0

    .line 193
    :cond_2
    const/4 v3, 0x0

    .line 195
    .local v3, "result":[Lcom/alipay/ma/decode/DecodeResult;
    :try_start_2
    invoke-static/range {p0 .. p8}, Lcom/alipay/ma/decode/MaDecode;->codeDecodeWithBinary([BIIILandroid/graphics/Rect;IILjava/lang/String;[Ljava/lang/String;)[Lcom/alipay/ma/decode/DecodeResult;
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 203
    :goto_1
    const/4 v4, 0x0

    :try_start_3
    sput-boolean v4, Lcom/alipay/ma/decode/MaDecode;->a:Z

    .line 205
    const-string/jumbo v4, "MaDecode"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "result is null:"

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v3, :cond_4

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9029
    sget-object v4, Liir;->a:Liir$a;

    .line 206
    if-eqz v3, :cond_3

    array-length v4, v3

    if-nez v4, :cond_5

    .line 207
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "error":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v4, "MaDecode"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Failed to load decoded98ee3, "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 7047
    sget-object v4, Liir;->a:Liir$a;

    .line 199
    invoke-static {}, Lcom/alipay/ma/decode/MaDecode;->init()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 183
    .end local v1    # "error":Ljava/lang/UnsatisfiedLinkError;
    .end local v3    # "result":[Lcom/alipay/ma/decode/DecodeResult;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 200
    .restart local v3    # "result":[Lcom/alipay/ma/decode/DecodeResult;
    :catch_1
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v4, "MaDecode"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 8047
    sget-object v4, Liir;->a:Liir$a;

    goto :goto_1

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 209
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 210
    aget-object v4, v3, v2

    invoke-static {v4}, Lcom/alipay/ma/decode/MaDecode;->a(Lcom/alipay/ma/decode/DecodeResult;)Lcom/alipay/ma/decode/DecodeResult;

    move-result-object v4

    aput-object v4, v3, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public static declared-synchronized codeDecodePictureWithQr(Landroid/graphics/Bitmap;I)Lcom/alipay/ma/decode/DecodeResult;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scanMode"    # I

    .prologue
    .line 153
    const-class v7, Lcom/alipay/ma/decode/MaDecode;

    monitor-enter v7

    move-object v0, p0

    .line 154
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 156
    .local v5, "result":Lcom/alipay/ma/decode/DecodeResult;
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v6, v8, :cond_0

    .line 157
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x1

    invoke-virtual {v0, v6, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 158
    .local v1, "bb":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 159
    move-object v0, v1

    .line 161
    .end local v1    # "bb":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v8

    mul-int/2addr v6, v8

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 162
    .local v2, "buf":Ljava/nio/ByteBuffer;
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 163
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :try_start_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v10

    invoke-static {v6, v8, v9, v10, p1}, Lcom/alipay/ma/decode/MaDecode;->codeDecodeWithQr([BIIII)Lcom/alipay/ma/decode/DecodeResult;
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 173
    :goto_0
    :try_start_2
    invoke-static {v5}, Lcom/alipay/ma/decode/MaDecode;->a(Lcom/alipay/ma/decode/DecodeResult;)Lcom/alipay/ma/decode/DecodeResult;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 177
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    :goto_1
    monitor-exit v7

    return-object v5

    .line 166
    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v4

    .line 167
    .local v4, "error":Ljava/lang/UnsatisfiedLinkError;
    :try_start_3
    const-string/jumbo v6, "MaDecode"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Failed to load decoded98ee3,"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4047
    sget-object v6, Liir;->a:Liir$a;

    .line 169
    invoke-static {}, Lcom/alipay/ma/decode/MaDecode;->init()V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 174
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v4    # "error":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v3

    .line 175
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    :try_start_4
    const-string/jumbo v6, "MaDecode"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "codeDecodePictureWithQr error : "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 6047
    sget-object v6, Liir;->a:Liir$a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 170
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    :catch_2
    move-exception v3

    .line 171
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v6, "MaDecode"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 5047
    sget-object v6, Liir;->a:Liir$a;
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 153
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public static declared-synchronized codeDecodePictureWithQr(Ljava/lang/String;I)Lcom/alipay/ma/decode/DecodeResult;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "scanMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 131
    const-class v4, Lcom/alipay/ma/decode/MaDecode;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    :cond_0
    :goto_0
    monitor-exit v4

    return-object v1

    .line 134
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v2, "srcImageFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3132
    const/16 v3, 0x400

    const/16 v5, 0x400

    const/4 v6, 0x0

    invoke-static {v2, v3, v5, v6}, Lcom/alipay/ma/util/a;->a(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 139
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/alipay/ma/decode/MaDecode;->codeDecodePictureWithQr(Landroid/graphics/Bitmap;I)Lcom/alipay/ma/decode/DecodeResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 140
    .local v1, "decodeResult":Lcom/alipay/ma/decode/DecodeResult;
    goto :goto_0

    .line 131
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "decodeResult":Lcom/alipay/ma/decode/DecodeResult;
    .end local v2    # "srcImageFile":Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 142
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static native codeDecodeWithBinary([BIIILandroid/graphics/Rect;IILjava/lang/String;[Ljava/lang/String;)[Lcom/alipay/ma/decode/DecodeResult;
.end method

.method private static native codeDecodeWithQr([BIIII)Lcom/alipay/ma/decode/DecodeResult;
.end method

.method public static getLastFrameAverageGray()I
    .locals 5

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 218
    .local v0, "avgValue":I
    :try_start_0
    invoke-static {}, Lcom/alipay/ma/decode/MaDecode;->getLastFrameAvgGray()I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 226
    :goto_0
    return v0

    .line 219
    :catch_0
    move-exception v2

    .line 220
    .local v2, "error":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v3, "MaDecode"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to load decoded98ee3, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9047
    sget-object v3, Liir;->a:Liir$a;

    .line 222
    invoke-static {}, Lcom/alipay/ma/decode/MaDecode;->init()V

    goto :goto_0

    .line 223
    .end local v2    # "error":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MaDecode"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 10047
    sget-object v3, Liir;->a:Liir$a;

    goto :goto_0
.end method

.method public static native getLastFrameAvgGray()I
.end method

.method public static native getMaProportion()F
.end method

.method public static native getReaderParams()Ljava/lang/String;
.end method

.method public static init()V
    .locals 3

    .prologue
    .line 37
    :try_start_0
    const-string/jumbo v1, "decoded98ee3"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    const-string/jumbo v1, "MaDecode"

    const-string/jumbo v1, "Succeed to load decoded98ee3"

    .line 1029
    sget-object v1, Liir;->a:Liir$a;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 39
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 40
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v1, "MaDecode"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failed to load decoded98ee3, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1047
    sget-object v1, Liir;->a:Liir$a;

    goto :goto_0
.end method

.method public static recordScanDecodeTrack([B)V
    .locals 0
    .param p0, "bytes"    # [B

    .prologue
    .line 45
    invoke-static {p0}, Liiq;->a([B)V

    .line 46
    return-void
.end method

.method public static native setReaderParams(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static yuvcodeDecode(Landroid/graphics/YuvImage;Landroid/graphics/Rect;ILjava/lang/String;[Ljava/lang/String;)[Lcom/alipay/ma/decode/DecodeResult;
    .locals 9
    .param p0, "yuvImage"    # Landroid/graphics/YuvImage;
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "scanMode"    # I
    .param p3, "str4GLocalAddr"    # Ljava/lang/String;
    .param p4, "whitelist"    # [Ljava/lang/String;

    .prologue
    .line 57
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v2

    .line 58
    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getStrides()[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 57
    invoke-static/range {v0 .. v7}, Lcom/alipay/ma/decode/MaDecode;->a([BIIILandroid/graphics/Rect;ILjava/lang/String;[Ljava/lang/String;)[Lcom/alipay/ma/decode/DecodeResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 62
    .local v8, "results":[Lcom/alipay/ma/decode/DecodeResult;
    :goto_0
    return-object v8

    .line 60
    .end local v8    # "results":[Lcom/alipay/ma/decode/DecodeResult;
    :catch_0
    move-exception v0

    const/4 v8, 0x0

    .restart local v8    # "results":[Lcom/alipay/ma/decode/DecodeResult;
    goto :goto_0
.end method

.method private static native yuvcodeDecode([BIIILandroid/graphics/Rect;ILjava/lang/String;[Ljava/lang/String;)[Lcom/alipay/ma/decode/DecodeResult;
.end method
