.class final Lzq$1$1$1;
.super Ljava/lang/Object;
.source "VideoHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzq$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzq$1$1;


# direct methods
.method constructor <init>(Lzq$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lzq$1$1;

    .prologue
    .line 83
    iput-object p1, p0, Lzq$1$1$1;->a:Lzq$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 85
    iget-object v3, p0, Lzq$1$1$1;->a:Lzq$1$1;

    iget-object v3, v3, Lzq$1$1;->a:Lzq$1;

    iget-object v3, v3, Lzq$1;->a:Lzq;

    .line 1152
    new-instance v4, Lzq$2;

    invoke-direct {v4, v3}, Lzq$2;-><init>(Lzq;)V

    invoke-static {v4}, Lcom/taobao/media/MediaEncoder;->registerNativeListener(Lcom/taobao/media/MediaEncoder$OnReEncodeFinishListener;)V

    .line 86
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lzq$1$1$1;->a:Lzq$1$1;

    iget-object v3, v3, Lzq$1$1;->a:Lzq$1;

    iget-object v3, v3, Lzq$1;->a:Lzq;

    .line 2022
    iget-object v3, v3, Lzq;->a:Ljava/lang/String;

    .line 86
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    iget-object v3, p0, Lzq$1$1$1;->a:Lzq$1$1;

    iget-object v3, v3, Lzq$1$1;->a:Lzq$1;

    iget-object v3, v3, Lzq$1;->a:Lzq;

    .line 3022
    iget-object v3, v3, Lzq;->f:Lcma;

    .line 88
    if-eqz v3, :cond_0

    .line 89
    iget-object v3, p0, Lzq$1$1$1;->a:Lzq$1$1;

    iget-object v3, v3, Lzq$1$1;->a:Lzq$1;

    iget-object v3, v3, Lzq$1;->a:Lzq;

    .line 4022
    iget-object v3, v3, Lzq;->f:Lcma;

    .line 89
    const-string/jumbo v4, "1"

    const-string/jumbo v5, "file not found"

    invoke-interface {v3, v4, v5}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v3, p0, Lzq$1$1$1;->a:Lzq$1$1;

    iget-object v3, v3, Lzq$1$1;->a:Lzq$1;

    iget-object v6, v3, Lzq$1;->a:Lzq;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 4265
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4266
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4267
    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 4268
    if-eq v5, v10, :cond_2

    .line 4269
    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 4273
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4274
    const-string/jumbo v3, "encode_temp_video.mp4"

    .line 4292
    :cond_3
    const-string/jumbo v7, "video"

    .line 4301
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 4302
    invoke-static {v4}, Lhcs;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    .line 4303
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 4304
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 4307
    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4279
    :cond_5
    :goto_1
    const-string/jumbo v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 4280
    if-eq v5, v10, :cond_6

    .line 4281
    invoke-virtual {v3, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 4284
    :cond_6
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v8

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v4, v5, v9

    const/4 v4, 0x2

    aput-object v3, v5, v4

    const/4 v3, 0x3

    const-string/jumbo v4, ".mp4"

    aput-object v4, v5, v3

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5022
    iput-object v3, v6, Lzq;->g:Ljava/lang/String;

    .line 94
    iget-object v3, p0, Lzq$1$1$1;->a:Lzq$1$1;

    iget-object v3, v3, Lzq$1$1;->a:Lzq$1;

    iget-object v3, v3, Lzq$1;->a:Lzq;

    .line 6022
    iget-object v3, v3, Lzq;->a:Ljava/lang/String;

    .line 94
    iget-object v4, p0, Lzq$1$1$1;->a:Lzq$1$1;

    iget-object v4, v4, Lzq$1$1;->a:Lzq$1;

    iget-object v4, v4, Lzq$1;->a:Lzq;

    .line 7022
    iget-object v4, v4, Lzq;->g:Ljava/lang/String;

    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 95
    iget-object v3, p0, Lzq$1$1$1;->a:Lzq$1$1;

    iget-object v3, v3, Lzq$1$1;->a:Lzq$1;

    iget-object v3, v3, Lzq$1;->a:Lzq;

    .line 8022
    iget-object v3, v3, Lzq;->f:Lcma;

    .line 95
    if-eqz v3, :cond_0

    .line 96
    iget-object v3, p0, Lzq$1$1$1;->a:Lzq$1$1;

    iget-object v3, v3, Lzq$1$1;->a:Lzq$1;

    iget-object v3, v3, Lzq$1;->a:Lzq;

    .line 9022
    iget-object v3, v3, Lzq;->f:Lcma;

    .line 96
    iget-object v4, p0, Lzq$1$1$1;->a:Lzq$1$1;

    iget-object v4, v4, Lzq$1$1;->a:Lzq$1;

    iget-object v4, v4, Lzq$1;->a:Lzq;

    .line 10022
    iget-object v4, v4, Lzq;->g:Ljava/lang/String;

    .line 96
    invoke-interface {v3, v4}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4310
    :cond_7
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4311
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_8
    move-object v4, v5

    goto :goto_1

    .line 100
    :cond_9
    new-array v1, v9, [Ljava/lang/String;

    iget-object v3, p0, Lzq$1$1$1;->a:Lzq$1$1;

    iget-object v3, v3, Lzq$1$1;->a:Lzq$1;

    iget-object v3, v3, Lzq$1;->a:Lzq;

    .line 11022
    iget-object v3, v3, Lzq;->a:Ljava/lang/String;

    .line 100
    aput-object v3, v1, v8

    .line 101
    .local v1, "inputEncodeUrl":[Ljava/lang/String;
    new-array v2, v9, [Ljava/lang/String;

    iget-object v3, p0, Lzq$1$1$1;->a:Lzq$1$1;

    iget-object v3, v3, Lzq$1$1;->a:Lzq$1;

    iget-object v3, v3, Lzq$1;->a:Lzq;

    .line 12022
    iget-object v3, v3, Lzq;->g:Ljava/lang/String;

    .line 101
    aput-object v3, v2, v8

    .line 102
    .local v2, "outputEncodePath":[Ljava/lang/String;
    iget-object v3, p0, Lzq$1$1$1;->a:Lzq$1$1;

    iget-object v3, v3, Lzq$1$1;->a:Lzq$1;

    iget-object v3, v3, Lzq$1;->a:Lzq;

    .line 13022
    iget-object v3, v3, Lzq;->g:Ljava/lang/String;

    .line 13320
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 13324
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13325
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 13326
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 103
    :cond_a
    iget-object v3, p0, Lzq$1$1$1;->a:Lzq$1$1;

    iget-object v3, v3, Lzq$1$1;->a:Lzq$1;

    iget-object v3, v3, Lzq$1;->a:Lzq;

    iget-object v4, p0, Lzq$1$1$1;->a:Lzq$1$1;

    iget-object v4, v4, Lzq$1$1;->a:Lzq$1;

    iget-object v4, v4, Lzq$1;->a:Lzq;

    .line 14022
    iget-wide v4, v4, Lzq;->b:D

    .line 103
    iget-object v6, p0, Lzq$1$1$1;->a:Lzq$1$1;

    iget-object v6, v6, Lzq$1$1;->a:Lzq$1;

    iget-object v6, v6, Lzq$1;->a:Lzq;

    .line 15022
    iget v6, v6, Lzq;->c:I

    .line 103
    invoke-static {v1, v2, v4, v5, v6}, Lcom/taobao/media/MediaEncoderMgr;->reEncodeMp4Files_createHandle([Ljava/lang/String;[Ljava/lang/String;DI)J

    move-result-wide v4

    .line 16022
    iput-wide v4, v3, Lzq;->e:J

    .line 104
    iget-object v3, p0, Lzq$1$1$1;->a:Lzq$1$1;

    iget-object v3, v3, Lzq$1$1;->a:Lzq$1;

    iget-object v3, v3, Lzq$1;->a:Lzq;

    .line 17022
    iget-wide v4, v3, Lzq;->e:J

    .line 104
    invoke-static {v4, v5}, Lcom/taobao/media/MediaEncoderMgr;->reEncodeMp4Files_start(J)I

    .line 105
    const-string/jumbo v3, "VideoHelper"

    const-string/jumbo v4, "video encode start"

    invoke-static {v3, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
