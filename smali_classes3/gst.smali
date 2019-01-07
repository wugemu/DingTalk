.class public final Lgst;
.super Ljava/lang/Object;
.source "DidoFaceRemoteRpc.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/os/Handler;Lcma;Ljava/lang/Object;)V
    .locals 1
    .param p0, "x0"    # Landroid/os/Handler;
    .param p1, "x1"    # Lcma;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 39
    .line 1061
    if-eqz p1, :cond_0

    .line 1062
    if-eqz p0, :cond_1

    .line 1063
    new-instance v0, Lgst$2;

    invoke-direct {v0, p1, p2}, Lgst$2;-><init>(Lcma;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    .line 1070
    :cond_1
    invoke-interface {p1, p2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Handler;Lcma;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "callback"    # Lcma;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 46
    if-eqz p1, :cond_0

    .line 47
    if-eqz p0, :cond_1

    .line 48
    new-instance v0, Lgst$1;

    invoke-direct {v0, p1, p2, p3}, Lgst$1;-><init>(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-interface {p1, p2, p3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 5
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p3, "callback":Lcma;, "Lcma<Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;>;"
    if-nez p3, :cond_0

    .line 379
    :goto_0
    return-void

    .line 342
    :cond_0
    const-string/jumbo v2, "faceboxrpc"

    invoke-static {v2}, Lcix;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 343
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lgrx$a;->a(Landroid/os/IBinder;)Lgrx;

    move-result-object v1

    .line 345
    .local v1, "service":Lgrx;
    if-nez v1, :cond_2

    .line 346
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 347
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "getCurrentUserFace, IFaceBoxRpcService is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 349
    :cond_1
    const-string/jumbo v2, "11"

    const-string/jumbo v3, "IFaceBoxRpcService is null"

    invoke-static {p0, p3, v2, v3}, Lgst;->a(Landroid/os/Handler;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string/jumbo v2, "FaceRecord"

    const-string/jumbo v3, "rpc"

    const-string/jumbo v4, "getCurrentUserFace, IFaceBoxRpcService is null"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_2
    :try_start_0
    new-instance v2, Lgst$8;

    invoke-direct {v2, p0, p3}, Lgst$8;-><init>(Landroid/os/Handler;Lcma;)V

    invoke-interface {v1, p1, p2, v2}, Lgrx;->b(Ljava/lang/String;Ljava/lang/String;Lgrw;)V

    .line 373
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    :catch_0
    move-exception v2

    invoke-static {}, Lcja;->c()V

    .line 376
    const-string/jumbo v2, ""

    const-string/jumbo v3, "getCurrentUserFace rpc error"

    invoke-static {p0, p3, v2, v3}, Lgst;->a(Landroid/os/Handler;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string/jumbo v2, "FaceRecord"

    const-string/jumbo v3, "rpc"

    const-string/jumbo v4, "getCurrentUserFace rpc error"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
