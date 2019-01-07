.class public Lcom/alipay/mobile/nebulacore/wallet/H5TaskScheduleProviderImpl;
.super Ljava/lang/Object;
.source "H5TaskScheduleProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5TaskScheduleProvider;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5TaskScheduleProviderImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addIdleTask(Ljava/lang/Runnable;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "taskWeight"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 17
    const-class v1, Lins;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lins;

    .line 19
    .local v0, "taskService":Lins;
    if-nez v0, :cond_0

    .line 20
    const-string/jumbo v1, "H5TaskScheduleProviderImpl"

    const-string/jumbo v2, "taskService==null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const/4 v1, 0x0

    .line 24
    :goto_0
    return v1

    .line 23
    :cond_0
    const-string/jumbo v1, "H5TaskScheduleProviderImpl"

    const-string/jumbo v2, "get taskService add addIdleTask"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {p1}, Lins;->a(Ljava/lang/Runnable;)Z

    move-result v1

    goto :goto_0
.end method
