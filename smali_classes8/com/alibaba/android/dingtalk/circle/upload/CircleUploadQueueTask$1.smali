.class final Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$1;
.super Ljava/lang/Object;
.source "CircleUploadQueueTask.java"

# interfaces
.implements Lifv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lifv",
        "<",
        "Lifx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

.field final synthetic b:Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$1;->b:Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$1;->a:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(ILjava/lang/String;)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 268
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "uploadFile error, index = "

    aput-object v2, v0, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, " exception = "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbqh;->a(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$1;->b:Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;->a(Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 270
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$1;->b:Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;->e(Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$1;->b:Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;

    invoke-static {v0, p2}, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;->a(Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$1;->b:Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;->d(Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;)V

    .line 276
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$1;->b:Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;->e(Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$1;->b:Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;->a(Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public final onProgress(JJI)V
    .locals 0
    .param p1, "l"    # J
    .param p3, "l1"    # J
    .param p5, "i"    # I

    .prologue
    .line 255
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 251
    check-cast p1, Lifx;

    .line 1259
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$1;->b:Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;->a(Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 1260
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$1;->b:Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$1;->a:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;->a(Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;)V

    .line 1261
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$1;->b:Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;->b(Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1262
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$1;->b:Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;->c(Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$1;->a:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1263
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$1;->b:Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;->d(Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;)V

    .line 251
    return-void
.end method
