.class public Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl;
.super Ljava/lang/Object;
.source "VideoCompressWorkImpl.java"

# interfaces
.implements Lcom/alibaba/laiwang/photokit/picker/VideoCompressWorker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compress(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;
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

    .line 19
    new-instance v4, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    invoke-direct {v4}, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;-><init>()V

    .line 20
    .local v4, "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    iput-boolean v0, v4, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->isCompressed:Z

    .line 21
    iput-object p2, v4, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    .line 22
    iput-object p2, v4, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    .line 23
    iput v0, v4, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->type:I

    .line 25
    const-class v0, Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v7

    new-instance v0, Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl$1;-><init>(Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V

    invoke-interface {v7, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 52
    return-void
.end method
