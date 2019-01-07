.class final Lgrr$8;
.super Ljava/lang/Object;
.source "FaceBoxRpcService.java"

# interfaces
.implements Lifv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgrr;->a(Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;Lgrw;)V
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
.field final synthetic a:J

.field final synthetic b:Lgrw;

.field final synthetic c:Lgrr;


# direct methods
.method constructor <init>(Lgrr;JLgrw;)V
    .locals 0
    .param p1, "this$0"    # Lgrr;

    .prologue
    .line 379
    iput-object p1, p0, Lgrr$8;->c:Lgrr;

    iput-wide p2, p0, Lgrr$8;->a:J

    iput-object p4, p0, Lgrr$8;->b:Lgrw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(ILjava/lang/String;)V
    .locals 8
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 415
    const-string/jumbo v1, "facebox"

    invoke-static {}, Lgrr;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "[Face] upload fail: code="

    aput-object v4, v3, v5

    .line 416
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string/jumbo v4, " msg="

    aput-object v4, v3, v7

    const/4 v4, 0x3

    aput-object p2, v3, v4

    .line 415
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    invoke-static {}, Lgrr;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "upload fail: code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_0
    :try_start_0
    iget-object v1, p0, Lgrr$8;->b:Lgrw;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lgrw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcja;->c()V

    .line 427
    const-string/jumbo v1, "FaceRecord"

    invoke-static {}, Lgrr;->a()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "uploadImage exception callback error,"

    aput-object v4, v3, v5

    .line 428
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 427
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(JJI)V
    .locals 0
    .param p1, "l"    # J
    .param p3, "l1"    # J
    .param p5, "i"    # I

    .prologue
    .line 382
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 379
    check-cast p1, Lifx;

    .line 1386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1388
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v2, v3, :cond_0

    .line 1389
    invoke-static {}, Lgrr;->a()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "oss upload use time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lgrr$8;->a:J

    sub-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1392
    :cond_0
    const-string/jumbo v2, "facebox"

    invoke-static {}, Lgrr;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "[Face] upload face success"

    aput-object v5, v4, v8

    const-string/jumbo v5, ", use time : "

    aput-object v5, v4, v9

    iget-wide v6, p0, Lgrr$8;->a:J

    sub-long/2addr v0, v6

    .line 1393
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 1392
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    if-eqz p1, :cond_1

    .line 1399
    new-instance v0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadResponse;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/facebox/model/IpcUploadResponse;-><init>()V

    .line 2026
    iget-object v1, p1, Lifx;->a:Ljava/lang/String;

    .line 1400
    iput-object v1, v0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadResponse;->mediaId:Ljava/lang/String;

    .line 2034
    iget-object v1, p1, Lifx;->b:Ljava/lang/String;

    .line 1401
    iput-object v1, v0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadResponse;->authMediaId:Ljava/lang/String;

    .line 1402
    new-instance v1, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;

    const-class v2, Lcom/alibaba/dingtalk/facebox/model/IpcUploadResponse;

    invoke-direct {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1404
    :try_start_0
    iget-object v0, p0, Lgrr$8;->b:Lgrw;

    invoke-interface {v0, v1}, Lgrw;->a(Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;)V

    .line 1405
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1410
    :cond_1
    :goto_0
    return-void

    .line 1406
    :catch_0
    move-exception v0

    .line 1407
    invoke-static {}, Lcja;->c()V

    .line 1408
    const-string/jumbo v1, "FaceRecord"

    invoke-static {}, Lgrr;->a()Ljava/lang/String;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/Object;

    const-string/jumbo v4, "uploadImage success callback error,"

    aput-object v4, v3, v8

    .line 1409
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    .line 1408
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
