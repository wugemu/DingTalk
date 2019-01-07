.class final Lcom/ali/user/enterprise/Login$4;
.super Lcom/ali/user/enterprise/base/thread/LoginAsyncTask;
.source "Login.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/enterprise/Login;->logout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ali/user/enterprise/base/thread/LoginAsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/thread/LoginAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic excuteTask([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/ali/user/enterprise/Login$4;->excuteTask([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final varargs excuteTask([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Lcom/ali/user/enterprise/login/LoginController;->getInstance()Lcom/ali/user/enterprise/login/LoginController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/enterprise/login/LoginController;->logout()V

    .line 109
    const/4 v0, 0x0

    return-object v0
.end method
