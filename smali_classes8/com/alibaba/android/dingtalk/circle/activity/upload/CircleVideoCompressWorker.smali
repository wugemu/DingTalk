.class public Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker;
.super Ljava/lang/Object;
.source "CircleVideoCompressWorker.java"

# interfaces
.implements Lcom/alibaba/laiwang/photokit/picker/VideoCompressWorker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/alibaba/wukong/Callback;

    .prologue
    .line 23
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker;->compressVideo(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/alibaba/wukong/Callback;

    .prologue
    .line 23
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker;->doAfterCompress(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    return-void
.end method

.method private static compressVideo(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "photoPickResult"    # Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    .param p2, "picUrl"    # Ljava/lang/String;
    .param p3, "videoUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    new-instance v0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$2;-><init>(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v6, p3, v0, v2, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;D)V

    .line 82
    return-void
.end method

.method private static doAfterCompress(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "photoPickResult"    # Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    .param p2, "picUrl"    # Ljava/lang/String;
    .param p3, "videoUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    invoke-static {p3}, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker;->getCircleVideoExtension(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;

    move-result-object v0

    .line 86
    .local v0, "circleVideoExtension":Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;
    iput-object p2, v0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->picUrl:Ljava/lang/String;

    .line 87
    iput-object v0, p1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    .line 88
    if-eqz p0, :cond_0

    .line 89
    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$3;

    invoke-direct {v1, p4, p1}, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$3;-><init>(Lcom/alibaba/wukong/Callback;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 98
    :cond_0
    return-void
.end method

.method private static getCircleVideoExtension(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;-><init>()V

    .line 46
    .local v1, "circleVideoExtension":Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 48
    .local v3, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v3, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 49
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->duration:J

    .line 50
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, v1, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->width:I

    .line 53
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, v1, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->size:J

    .line 59
    return-object v1

    .line 55
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public compress(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "videoUrl"    # Ljava/lang/String;
    .param p3, "picUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    const/4 v0, 0x1

    .line 27
    new-instance v3, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    invoke-direct {v3}, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;-><init>()V

    .line 28
    .local v3, "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    iput-boolean v0, v3, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->isCompressed:Z

    .line 29
    iput-object p2, v3, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    .line 30
    iput-object p2, v3, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    .line 31
    iput v0, v3, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->type:I

    .line 32
    const-class v0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v7

    new-instance v0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$1;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$1;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker;Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    invoke-interface {v7, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 38
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 42
    return-void
.end method
