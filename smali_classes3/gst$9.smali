.class public final Lgst$9;
.super Ljava/lang/Object;
.source "DidoFaceRemoteRpc.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcma;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcma;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lgst$9;->a:Landroid/os/Handler;

    iput-object p2, p0, Lgst$9;->b:Lcma;

    iput-object p3, p0, Lgst$9;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 392
    const-string/jumbo v3, "faceboxrpc"

    invoke-static {v3}, Lcix;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 393
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lgrx$a;->a(Landroid/os/IBinder;)Lgrx;

    move-result-object v2

    .line 394
    .local v2, "service":Lgrx;
    if-nez v2, :cond_1

    .line 395
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 396
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "fetchCurrentUserFace, IFaceBoxRpcService is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 398
    :cond_0
    iget-object v3, p0, Lgst$9;->a:Landroid/os/Handler;

    iget-object v4, p0, Lgst$9;->b:Lcma;

    const-string/jumbo v5, "11"

    const-string/jumbo v6, "IFaceBoxRpcService is null"

    .line 1039
    invoke-static {v3, v4, v5, v6}, Lgst;->a(Landroid/os/Handler;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string/jumbo v3, "FaceRecord"

    const-string/jumbo v4, "rpc"

    const-string/jumbo v5, "fetchCurrentUserFace, IFaceBoxRpcService is null"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :goto_0
    return-void

    .line 404
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 405
    .local v1, "cacheKey":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v3, "face-"

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    .line 406
    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgst$9;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lamv;->b([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 408
    iget-object v3, p0, Lgst$9;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lgst$9$1;

    invoke-direct {v5, p0}, Lgst$9$1;-><init>(Lgst$9;)V

    invoke-interface {v2, v3, v4, v5}, Lgrx;->a(Ljava/lang/String;Ljava/lang/String;Lgrw;)V

    .line 428
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 430
    .end local v1    # "cacheKey":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :catch_0
    move-exception v3

    iget-object v3, p0, Lgst$9;->a:Landroid/os/Handler;

    iget-object v4, p0, Lgst$9;->b:Lcma;

    const-string/jumbo v5, "11"

    const-string/jumbo v6, "fetchCurrentUserFace rpc remote err"

    .line 2039
    invoke-static {v3, v4, v5, v6}, Lgst;->a(Landroid/os/Handler;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-static {}, Lcja;->c()V

    .line 432
    const-string/jumbo v3, "FaceRecord"

    const-string/jumbo v4, "rpc"

    const-string/jumbo v5, "fetchCurrentUserFace rpc error"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
