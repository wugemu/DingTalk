.class final Lekn$1;
.super Lcmi;
.source "MainModuleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lekn;->a(Ljava/lang/String;Lekl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lekl;

.field final synthetic b:Lekn;


# direct methods
.method constructor <init>(Lekn;Lekl;)V
    .locals 0
    .param p1, "this$0"    # Lekn;

    .prologue
    .line 33
    iput-object p1, p0, Lekn$1;->b:Lekn;

    iput-object p2, p0, Lekn$1;->a:Lekl;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    iget-object v1, p0, Lekn$1;->a:Lekl;

    if-nez v1, :cond_0

    .line 57
    :goto_0
    return-void

    .line 53
    :cond_0
    :try_start_0
    iget-object v1, p0, Lekn$1;->a:Lekl;

    invoke-interface {v1, p1, p2}, Lekl;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    check-cast p1, Ljava/lang/String;

    .line 1036
    iget-object v0, p0, Lekn$1;->a:Lekl;

    if-eqz v0, :cond_0

    .line 1039
    new-instance v0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1041
    :try_start_0
    iget-object v1, p0, Lekn$1;->a:Lekl;

    invoke-interface {v1, v0}, Lekl;->a(Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    :cond_0
    :goto_0
    return-void

    .line 1042
    :catch_0
    move-exception v0

    .line 1043
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method