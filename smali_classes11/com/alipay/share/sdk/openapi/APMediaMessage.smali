.class public Lcom/alipay/share/sdk/openapi/APMediaMessage;
.super Ljava/lang/Object;
.source "APMediaMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/share/sdk/openapi/APMediaMessage$Builder;,
        Lcom/alipay/share/sdk/openapi/APMediaMessage$IMediaObject;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "APSDK.ZFBMediaMessage"


# instance fields
.field public description:Ljava/lang/String;

.field public mediaObject:Lcom/alipay/share/sdk/openapi/APMediaMessage$IMediaObject;

.field public sdkVer:I

.field public thumbData:[B

.field public thumbUrl:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/share/sdk/openapi/APMediaMessage;-><init>(Lcom/alipay/share/sdk/openapi/APMediaMessage$IMediaObject;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/alipay/share/sdk/openapi/APMediaMessage$IMediaObject;)V
    .locals 0
    .param p1, "iMediaObject"    # Lcom/alipay/share/sdk/openapi/APMediaMessage$IMediaObject;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alipay/share/sdk/openapi/APMediaMessage;->mediaObject:Lcom/alipay/share/sdk/openapi/APMediaMessage$IMediaObject;

    .line 29
    return-void
.end method


# virtual methods
.method final checkArgs()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 47
    iget-object v1, p0, Lcom/alipay/share/sdk/openapi/APMediaMessage;->thumbData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/share/sdk/openapi/APMediaMessage;->thumbData:[B

    array-length v1, v1

    const v2, 0x8000

    if-le v1, v2, :cond_0

    .line 48
    const-string/jumbo v1, "APSDK.ZFBMediaMessage"

    const-string/jumbo v2, "checkArgs fail, thumbData is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    return v0

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/alipay/share/sdk/openapi/APMediaMessage;->title:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/share/sdk/openapi/APMediaMessage;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x200

    if-le v1, v2, :cond_1

    .line 51
    const-string/jumbo v1, "APSDK.ZFBMediaMessage"

    const-string/jumbo v2, "checkArgs fail, title is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/alipay/share/sdk/openapi/APMediaMessage;->description:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/share/sdk/openapi/APMediaMessage;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 54
    const-string/jumbo v1, "APSDK.ZFBMediaMessage"

    const-string/jumbo v2, "checkArgs fail, description is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/alipay/share/sdk/openapi/APMediaMessage;->mediaObject:Lcom/alipay/share/sdk/openapi/APMediaMessage$IMediaObject;

    if-nez v1, :cond_3

    .line 57
    const-string/jumbo v1, "APSDK.ZFBMediaMessage"

    const-string/jumbo v2, "checkArgs fail, mediaObject is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/alipay/share/sdk/openapi/APMediaMessage;->mediaObject:Lcom/alipay/share/sdk/openapi/APMediaMessage$IMediaObject;

    invoke-interface {v0}, Lcom/alipay/share/sdk/openapi/APMediaMessage$IMediaObject;->checkArgs()Z

    move-result v0

    goto :goto_0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/share/sdk/openapi/APMediaMessage;->mediaObject:Lcom/alipay/share/sdk/openapi/APMediaMessage$IMediaObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/share/sdk/openapi/APMediaMessage;->mediaObject:Lcom/alipay/share/sdk/openapi/APMediaMessage$IMediaObject;

    invoke-interface {v0}, Lcom/alipay/share/sdk/openapi/APMediaMessage$IMediaObject;->type()I

    move-result v0

    goto :goto_0
.end method

.method public final setThumbImage(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 38
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 39
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/share/sdk/openapi/APMediaMessage;->thumbData:[B

    .line 40
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v1

    const-string/jumbo v1, "APSDK.ZFBMediaMessage"

    const-string/jumbo v2, "put thumb failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
