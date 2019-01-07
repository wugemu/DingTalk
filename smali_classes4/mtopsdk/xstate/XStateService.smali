.class public Lmtopsdk/xstate/XStateService;
.super Landroid/app/Service;
.source "XStateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/xstate/XStateService$a;
    }
.end annotation


# instance fields
.field a:Lkko$a;

.field b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lmtopsdk/xstate/XStateService;->a:Lkko$a;

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmtopsdk/xstate/XStateService;->b:Ljava/lang/Object;

    .line 52
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 18
    iget-object v2, p0, Lmtopsdk/xstate/XStateService;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 19
    :try_start_0
    iget-object v1, p0, Lmtopsdk/xstate/XStateService;->a:Lkko$a;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lmtopsdk/xstate/XStateService$a;

    invoke-direct {v1, p0}, Lmtopsdk/xstate/XStateService$a;-><init>(Lmtopsdk/xstate/XStateService;)V

    iput-object v1, p0, Lmtopsdk/xstate/XStateService;->a:Lkko$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    iget-object v1, p0, Lmtopsdk/xstate/XStateService;->a:Lkko$a;

    invoke-virtual {v1}, Lkko$a;->a()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    const-string/jumbo v1, "mtopsdk.XStateService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[onBind] XStateService  stub= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmtopsdk/xstate/XStateService;->a:Lkko$a;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_1
    iget-object v1, p0, Lmtopsdk/xstate/XStateService;->a:Lkko$a;

    return-object v1

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v1, "mtopsdk.XStateService"

    const-string/jumbo v3, "[onBind]init() exception"

    invoke-static {v1, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 29
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 25
    :catch_1
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_4
    const-string/jumbo v1, "mtopsdk.XStateService"

    const-string/jumbo v3, "[onBind]init() error"

    invoke-static {v1, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 39
    iget-object v2, p0, Lmtopsdk/xstate/XStateService;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 40
    :try_start_0
    iget-object v1, p0, Lmtopsdk/xstate/XStateService;->a:Lkko$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 42
    :try_start_1
    iget-object v1, p0, Lmtopsdk/xstate/XStateService;->a:Lkko$a;

    invoke-virtual {v1}, Lkko$a;->b()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "mtopsdk.XStateService"

    const-string/jumbo v3, "[onDestroy]unInit() exception"

    invoke-static {v1, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 49
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 45
    :catch_1
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v1, "mtopsdk.XStateService"

    const-string/jumbo v3, "[onDestroy]unInit() error"

    invoke-static {v1, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 85
    const/4 v0, 0x2

    return v0
.end method
