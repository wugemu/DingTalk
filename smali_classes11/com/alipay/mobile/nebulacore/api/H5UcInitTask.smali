.class public Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;
.super Ljava/lang/Object;
.source "H5UcInitTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5UcInitTask"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private taskInit:J

.field private urgent:Z


# direct methods
.method public constructor <init>(ZLandroid/os/Bundle;)V
    .locals 2
    .param p1, "urgent"    # Z
    .param p2, "startParam"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;->urgent:Z

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;->taskInit:J

    .line 28
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;->bundle:Landroid/os/Bundle;

    .line 29
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 33
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;->bundle:Landroid/os/Bundle;

    invoke-static {v9}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->notNeedInitUc(Landroid/os/Bundle;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 34
    const-string/jumbo v8, "H5UcInitTask"

    const-string/jumbo v9, "not need init uc"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 38
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;->taskInit:J

    sub-long v2, v10, v12

    .line 39
    .local v2, "phase0":J
    const-string/jumbo v9, "H5UcInitTask"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "init uc task wait phase0 "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " urgent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;->urgent:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getUcService()Lcom/alipay/mobile/h5container/service/UcService;

    move-result-object v1

    .line 41
    .local v1, "ucService":Lcom/alipay/mobile/h5container/service/UcService;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;->taskInit:J

    sub-long/2addr v10, v12

    sub-long v4, v10, v2

    .line 42
    .local v4, "phase1":J
    if-eqz v1, :cond_3

    .line 43
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->disableHWACByUCStyle()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 44
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;->bundle:Landroid/os/Bundle;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->disableHardwareAccelerate(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v8, 0x1

    :cond_1
    invoke-virtual {v1, v8}, Lcom/alipay/mobile/h5container/service/UcService;->init(Z)Z

    .line 52
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;->taskInit:J

    sub-long/2addr v8, v10

    sub-long/2addr v8, v2

    sub-long v6, v8, v4

    .line 53
    .local v6, "phase2":J
    const-string/jumbo v8, "H5UcInitTask"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "init uc task phase1 "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " phase2 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    .end local v1    # "ucService":Lcom/alipay/mobile/h5container/service/UcService;
    .end local v2    # "phase0":J
    .end local v4    # "phase1":J
    .end local v6    # "phase2":J
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "H5UcInitTask"

    const-string/jumbo v9, "catch exception "

    invoke-static {v8, v9, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "ucService":Lcom/alipay/mobile/h5container/service/UcService;
    .restart local v2    # "phase0":J
    .restart local v4    # "phase1":J
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->isAbove14Level()Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/alipay/mobile/h5container/service/UcService;->init(Z)Z

    goto :goto_1

    .line 49
    :cond_3
    const-string/jumbo v8, "H5UcInitTask"

    const-string/jumbo v9, "ucService == null"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->sendUcReceiver(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
