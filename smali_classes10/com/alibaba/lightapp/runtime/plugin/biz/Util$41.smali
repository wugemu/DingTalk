.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->compressAndUploadVideo(Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

.field final synthetic val$resps:Ljava/util/List;

.field final synthetic val$ret:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 4344
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->val$ret:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->val$resps:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 4344
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->onDataReceived(Ljava/lang/String;)V

    return-void
.end method

.method public onDataReceived(Ljava/lang/String;)V
    .locals 8
    .param p1, "outputPath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 4347
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->val$ret:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iput-object p1, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    .line 4348
    invoke-static {p1}, Lcqq;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/video/VideoInfo;

    move-result-object v7

    .line 4349
    .local v7, "videoInfo":Lcom/alibaba/android/dingtalkbase/video/VideoInfo;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 4350
    .local v3, "atomicInteger":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->val$ret:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;

    if-eqz v0, :cond_0

    .line 4351
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->val$ret:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v6, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    check-cast v6, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;

    .line 4352
    .local v6, "info":Lcom/alibaba/android/dingtalkbase/video/VideoInfo;
    iget-object v0, v6, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;->picUrl:Ljava/lang/String;

    iput-object v0, v7, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;->picUrl:Ljava/lang/String;

    .line 4353
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->val$ret:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iput-object v7, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    .line 4354
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v1, v6, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;->picUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->val$ret:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->val$resps:Ljava/util/List;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$14100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Z)V

    .line 4359
    .end local v6    # "info":Lcom/alibaba/android/dingtalkbase/video/VideoInfo;
    :goto_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->val$ret:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->val$ret:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->val$resps:Ljava/util/List;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$14100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Z)V

    .line 4360
    return-void

    .line 4356
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->val$ret:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iput-object v7, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    .line 4357
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 4368
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->val$ret:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    invoke-static {v0, v5}, Lcqq;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4369
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const-string/jumbo v1, "video file is too large"

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$13900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 4384
    :goto_0
    return-void

    .line 4372
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->val$ret:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    invoke-static {v0}, Lcqq;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/video/VideoInfo;

    move-result-object v7

    .line 4373
    .local v7, "videoInfo":Lcom/alibaba/android/dingtalkbase/video/VideoInfo;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 4374
    .local v3, "atomicInteger":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->val$ret:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;

    if-eqz v0, :cond_1

    .line 4375
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->val$ret:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v6, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    check-cast v6, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;

    .line 4376
    .local v6, "info":Lcom/alibaba/android/dingtalkbase/video/VideoInfo;
    iget-object v0, v6, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;->picUrl:Ljava/lang/String;

    iput-object v0, v7, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;->picUrl:Ljava/lang/String;

    .line 4377
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->val$ret:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iput-object v7, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    .line 4378
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v1, v6, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;->picUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->val$ret:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->val$resps:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$14100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Z)V

    .line 4383
    .end local v6    # "info":Lcom/alibaba/android/dingtalkbase/video/VideoInfo;
    :goto_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->val$ret:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->val$ret:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->val$resps:Ljava/util/List;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$14100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Z)V

    goto :goto_0

    .line 4380
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$41;->val$ret:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iput-object v7, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    .line 4381
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_1
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 4364
    return-void
.end method
