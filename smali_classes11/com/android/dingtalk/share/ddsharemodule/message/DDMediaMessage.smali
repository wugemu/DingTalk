.class public Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;
.super Ljava/lang/Object;
.source "DDMediaMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;,
        Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$Builder;
    }
.end annotation


# static fields
.field private static final MAX_CONTENT_LENGTH:I = 0x400

.field private static final MAX_THUMB_DATA_LENGTH:I = 0x8000

.field private static final MAX_TITLE_LENGTH:I = 0x200

.field private static final TAG:Ljava/lang/String; = "DDMediaMessage"


# instance fields
.field public mContent:Ljava/lang/String;

.field public mMediaObject:Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;

.field public mSDKVersion:I

.field public mThumbData:[B

.field public mThumbUrl:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;-><init>(Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;)V
    .locals 0
    .param p1, "iMediaObject"    # Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mMediaObject:Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;

    .line 41
    return-void
.end method


# virtual methods
.method public final checkArgs()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mThumbData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mThumbData:[B

    array-length v1, v1

    const v2, 0x8000

    if-le v1, v2, :cond_0

    .line 63
    const-string/jumbo v1, "DDMediaMessage"

    const-string/jumbo v2, "checkArgs fail, thumbData is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_0
    return v0

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x200

    if-le v1, v2, :cond_1

    .line 66
    const-string/jumbo v1, "DDMediaMessage"

    const-string/jumbo v2, "checkArgs fail, title is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mContent:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 69
    const-string/jumbo v1, "DDMediaMessage"

    const-string/jumbo v2, "checkArgs fail, content is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mMediaObject:Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;

    if-nez v1, :cond_3

    .line 72
    const-string/jumbo v1, "DDMediaMessage"

    const-string/jumbo v2, "checkArgs fail, mediaObject is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mMediaObject:Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;

    invoke-interface {v0}, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;->checkArgs()Z

    move-result v0

    goto :goto_0
.end method

.method public final getSupportVersion()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mMediaObject:Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;

    if-nez v0, :cond_0

    .line 81
    const v0, 0x7fffffff

    .line 83
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mMediaObject:Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;

    invoke-interface {v0}, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;->getSupportVersion()I

    move-result v0

    goto :goto_0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mMediaObject:Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mMediaObject:Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;

    invoke-interface {v0}, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;->type()I

    move-result v0

    goto :goto_0
.end method

.method public final setThumbImage(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 51
    .local v0, "e":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x55

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 52
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;->mThumbData:[B

    .line 53
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v0    # "e":Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
