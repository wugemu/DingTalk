.class public Lcom/alipay/share/sdk/openapi/APImageObject;
.super Ljava/lang/Object;
.source "APImageObject.java"

# interfaces
.implements Lcom/alipay/share/sdk/openapi/APMediaMessage$IMediaObject;


# static fields
.field private static final TAG:Ljava/lang/String; = "APSDK.ZFBImageObject"


# instance fields
.field public imageData:[B

.field public imagePath:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 30
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 31
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/share/sdk/openapi/APImageObject;->imageData:[B

    .line 32
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "imageData"    # [B

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/alipay/share/sdk/openapi/APImageObject;->imageData:[B

    .line 25
    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v7, 0xa00000

    const/16 v6, 0x2800

    const/4 v2, 0x0

    .line 58
    iget-object v3, p0, Lcom/alipay/share/sdk/openapi/APImageObject;->imageData:[B

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alipay/share/sdk/openapi/APImageObject;->imageData:[B

    array-length v3, v3

    if-nez v3, :cond_3

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/alipay/share/sdk/openapi/APImageObject;->imagePath:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alipay/share/sdk/openapi/APImageObject;->imagePath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 60
    :cond_1
    iget-object v3, p0, Lcom/alipay/share/sdk/openapi/APImageObject;->imageUrl:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/share/sdk/openapi/APImageObject;->imageUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 61
    :cond_2
    const-string/jumbo v3, "APSDK.ZFBImageObject"

    const-string/jumbo v4, "checkArgs fail, all arguments are null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    return v2

    .line 63
    :cond_3
    iget-object v3, p0, Lcom/alipay/share/sdk/openapi/APImageObject;->imageData:[B

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alipay/share/sdk/openapi/APImageObject;->imageData:[B

    array-length v3, v3

    if-le v3, v7, :cond_4

    .line 64
    const-string/jumbo v3, "APSDK.ZFBImageObject"

    const-string/jumbo v4, "checkArgs fail, content is too large"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :cond_4
    iget-object v3, p0, Lcom/alipay/share/sdk/openapi/APImageObject;->imagePath:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/alipay/share/sdk/openapi/APImageObject;->imagePath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_5

    .line 67
    const-string/jumbo v3, "APSDK.ZFBImageObject"

    const-string/jumbo v4, "checkArgs fail, path is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_5
    iget-object v3, p0, Lcom/alipay/share/sdk/openapi/APImageObject;->imagePath:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 71
    iget-object v1, p0, Lcom/alipay/share/sdk/openapi/APImageObject;->imagePath:Ljava/lang/String;

    .line 73
    .local v1, "path":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/share/sdk/openapi/APImageObject;->imagePath:Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    .line 74
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "imageFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v3, v4

    .line 75
    .end local v0    # "imageFile":Ljava/io/File;
    :goto_1
    if-le v3, v7, :cond_7

    .line 76
    const-string/jumbo v3, "APSDK.ZFBImageObject"

    const-string/jumbo v4, "checkArgs fail, image content is too large"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    move v3, v2

    .line 75
    goto :goto_1

    .line 81
    .end local v1    # "path":Ljava/lang/String;
    :cond_7
    iget-object v3, p0, Lcom/alipay/share/sdk/openapi/APImageObject;->imageUrl:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/alipay/share/sdk/openapi/APImageObject;->imageUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_8

    .line 82
    const-string/jumbo v3, "APSDK.ZFBImageObject"

    const-string/jumbo v4, "checkArgs fail, url is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_8
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_IMAGE_OBJECT_IMAGE_DATA:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/share/sdk/openapi/APImageObject;->imageData:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 43
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_IMAGE_OBJECT_IMAGE_PATH:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/share/sdk/openapi/APImageObject;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_IMAGE_OBJECT_IMAGE_URL:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/share/sdk/openapi/APImageObject;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alipay/share/sdk/openapi/APImageObject;->imagePath:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public type()I
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0xe

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 48
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_IMAGE_OBJECT_IMAGE_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/share/sdk/openapi/APImageObject;->imageData:[B

    .line 49
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_IMAGE_OBJECT_IMAGE_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/share/sdk/openapi/APImageObject;->imagePath:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_IMAGE_OBJECT_IMAGE_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/share/sdk/openapi/APImageObject;->imageUrl:Ljava/lang/String;

    .line 51
    return-void
.end method
