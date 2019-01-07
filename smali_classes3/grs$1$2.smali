.class final Lgrs$1$2;
.super Lgrw$a;
.source "FaceBoxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgrs$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;

.field final synthetic d:Lgrs$1;


# direct methods
.method constructor <init>(Lgrs$1;Ljava/io/File;JLcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;)V
    .locals 1
    .param p1, "this$1"    # Lgrs$1;

    .prologue
    .line 272
    iput-object p1, p0, Lgrs$1$2;->d:Lgrs$1;

    iput-object p2, p0, Lgrs$1$2;->a:Ljava/io/File;

    iput-wide p3, p0, Lgrs$1$2;->b:J

    iput-object p5, p0, Lgrs$1$2;->c:Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;

    invoke-direct {p0}, Lgrw$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;)V
    .locals 8
    .param p1, "data"    # Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 276
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/dingtalk/facebox/model/IpcUploadResponse;

    if-eqz v2, :cond_0

    .line 277
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadResponse;

    .line 279
    .local v0, "ipcResult":Lcom/alibaba/dingtalk/facebox/model/IpcUploadResponse;
    iget-object v2, p0, Lgrs$1$2;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 280
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "[Face] update Image success, use time="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lgrs$1$2;->b:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "log":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    .line 285
    const-string/jumbo v2, "facebox"

    const-string/jumbo v3, "FaceBoxService"

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v2, p0, Lgrs$1$2;->c:Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;

    iget-object v3, v0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadResponse;->authMediaId:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->combineMediaId:Ljava/lang/String;

    .line 289
    iget-object v2, p0, Lgrs$1$2;->d:Lgrs$1;

    invoke-static {v2}, Lgrs$1;->a(Lgrs$1;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    .end local v0    # "ipcResult":Lcom/alibaba/dingtalk/facebox/model/IpcUploadResponse;
    .end local v1    # "log":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 293
    .restart local v0    # "ipcResult":Lcom/alibaba/dingtalk/facebox/model/IpcUploadResponse;
    .restart local v1    # "log":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lgrs$1$2;->d:Lgrs$1;

    iget-object v2, v2, Lgrs$1;->b:Lgru;

    if-eqz v2, :cond_2

    .line 295
    :try_start_0
    iget-object v2, p0, Lgrs$1$2;->d:Lgrs$1;

    iget-object v2, v2, Lgrs$1;->b:Lgru;

    iget-object v3, v0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadResponse;->authMediaId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lgru;->a(Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :cond_2
    :goto_1
    iget-object v2, p0, Lgrs$1$2;->d:Lgrs$1;

    iget-object v3, p0, Lgrs$1$2;->c:Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;

    invoke-static {v2, v3}, Lgrs$1;->a(Lgrs$1;Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;)V

    goto :goto_0

    .line 298
    :catch_0
    move-exception v2

    invoke-static {}, Lcja;->c()V

    goto :goto_1
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;I)V
    .locals 0
    .param p1, "data"    # Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;
    .param p2, "progress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 308
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 312
    iget-object v1, p0, Lgrs$1$2;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 314
    iget-object v1, p0, Lgrs$1$2;->d:Lgrs$1;

    invoke-static {v1}, Lgrs$1;->a(Lgrs$1;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    iget-object v2, p0, Lgrs$1$2;->d:Lgrs$1;

    invoke-static {v2}, Lgrs$1;->b(Lgrs$1;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 319
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "[Face] update Image fail, code="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "  msg="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "use time="

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lgrs$1$2;->b:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "log":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    .line 324
    const-string/jumbo v1, "facebox"

    const-string/jumbo v2, "FaceBoxService"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lgrs$1$2;->d:Lgrs$1;

    iget-object v1, v1, Lgrs$1;->b:Lgru;

    if-eqz v1, :cond_0

    .line 328
    :try_start_0
    iget-object v1, p0, Lgrs$1$2;->d:Lgrs$1;

    iget-object v1, v1, Lgrs$1;->b:Lgru;

    invoke-interface {v1, p1, p2}, Lgru;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    :catch_0
    move-exception v1

    invoke-static {}, Lcja;->c()V

    goto :goto_0
.end method
