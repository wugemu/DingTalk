.class final Lgrs$1$3;
.super Ljava/lang/Object;
.source "FaceBoxService.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgrs$1;
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
        "Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lgrs$1;


# direct methods
.method constructor <init>(Lgrs$1;J)V
    .locals 0
    .param p1, "this$1"    # Lgrs$1;

    .prologue
    .line 346
    iput-object p1, p0, Lgrs$1$3;->b:Lgrs$1;

    iput-wide p2, p0, Lgrs$1$3;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 346
    check-cast p1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeResult;

    .line 1350
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1351
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "[Face] recognizeFace success, result="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " recognizeTime="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p0, Lgrs$1$3;->a:J

    sub-long v4, v0, v4

    .line 1352
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, " totalTime="

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lgrs$1$3;->b:Lgrs$1;

    iget-wide v4, v4, Lgrs$1;->f:J

    sub-long/2addr v0, v4

    .line 1353
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    .line 1351
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1355
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    .line 1358
    const-string/jumbo v1, "facebox"

    const-string/jumbo v2, "FaceBoxService"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    iget-object v0, p0, Lgrs$1$3;->b:Lgrs$1;

    invoke-static {v0}, Lgrs$1;->a(Lgrs$1;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1363
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lgrs$1$3;->b:Lgrs$1;

    invoke-static {v1}, Lgrs$1;->b(Lgrs$1;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1365
    iget-object v0, p0, Lgrs$1$3;->b:Lgrs$1;

    iget-object v0, v0, Lgrs$1;->b:Lgru;

    if-eqz v0, :cond_0

    .line 1366
    new-instance v0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;

    const-class v1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeResult;

    invoke-direct {v0, p1, v1}, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1368
    :try_start_0
    iget-object v1, p0, Lgrs$1$3;->b:Lgrs$1;

    iget-object v1, v1, Lgrs$1;->b:Lgru;

    invoke-interface {v1, v0}, Lgru;->a(Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;)V

    .line 1369
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1372
    :cond_0
    :goto_0
    return-void

    .line 1371
    :catch_0
    move-exception v0

    invoke-static {}, Lcja;->c()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 381
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 383
    .local v2, "now":J
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "[Face] recognizeFace fail, code="

    aput-object v5, v1, v4

    const/4 v4, 0x1

    aput-object p1, v1, v4

    const/4 v4, 0x2

    const-string/jumbo v5, " msg="

    aput-object v5, v1, v4

    const/4 v4, 0x3

    aput-object p2, v1, v4

    const/4 v4, 0x4

    const-string/jumbo v5, " recognizeTime="

    aput-object v5, v1, v4

    const/4 v4, 0x5

    iget-wide v6, p0, Lgrs$1$3;->a:J

    sub-long v6, v2, v6

    .line 384
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string/jumbo v5, " totalTime="

    aput-object v5, v1, v4

    const/4 v4, 0x7

    iget-object v5, p0, Lgrs$1$3;->b:Lgrs$1;

    iget-wide v6, v5, Lgrs$1;->f:J

    sub-long v6, v2, v6

    .line 385
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4

    .line 383
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "log":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    const-string/jumbo v1, "FaceBoxService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    const-string/jumbo v1, "facebox"

    const-string/jumbo v4, "FaceBoxService"

    invoke-static {v1, v4, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lgrs$1$3;->b:Lgrs$1;

    invoke-static {v1}, Lgrs$1;->a(Lgrs$1;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 405
    :cond_1
    :goto_0
    return-void

    .line 395
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    iget-object v4, p0, Lgrs$1$3;->b:Lgrs$1;

    invoke-static {v4}, Lgrs$1;->b(Lgrs$1;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 397
    iget-object v1, p0, Lgrs$1$3;->b:Lgrs$1;

    iget-object v1, v1, Lgrs$1;->b:Lgru;

    if-eqz v1, :cond_1

    .line 399
    :try_start_0
    iget-object v1, p0, Lgrs$1$3;->b:Lgrs$1;

    iget-object v1, v1, Lgrs$1;->b:Lgru;

    invoke-interface {v1, p1, p2}, Lgru;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v1

    invoke-static {}, Lcja;->c()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 377
    return-void
.end method
