.class public Lcom/alibaba/android/dingtalkbase/video/DefaultVideoCompressWorker;
.super Ljava/lang/Object;
.source "DefaultVideoCompressWorker.java"

# interfaces
.implements Lcom/alibaba/laiwang/photokit/picker/VideoCompressWorker;


# static fields
.field private static final serialVersionUID:J = 0x402ad66bb23ff2a7L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compress(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;
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

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    const/4 v2, 0x1

    .line 14
    new-instance v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    invoke-direct {v0}, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;-><init>()V

    .line 15
    .local v0, "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    iput-boolean v2, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->isCompressed:Z

    .line 16
    iput-object p2, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    .line 17
    iput-object p2, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    .line 18
    iput v2, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->type:I

    .line 19
    new-instance v1, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;-><init>()V

    .line 20
    .local v1, "videoInfo":Lcom/alibaba/android/dingtalkbase/video/VideoInfo;
    iput-object p3, v1, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;->picUrl:Ljava/lang/String;

    .line 21
    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    .line 22
    if-eqz p1, :cond_0

    .line 23
    new-instance v2, Lcom/alibaba/android/dingtalkbase/video/DefaultVideoCompressWorker$1;

    invoke-direct {v2, p0, p4, v0}, Lcom/alibaba/android/dingtalkbase/video/DefaultVideoCompressWorker$1;-><init>(Lcom/alibaba/android/dingtalkbase/video/DefaultVideoCompressWorker;Lcom/alibaba/wukong/Callback;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;)V

    invoke-virtual {p1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 32
    :cond_0
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    return-void
.end method
