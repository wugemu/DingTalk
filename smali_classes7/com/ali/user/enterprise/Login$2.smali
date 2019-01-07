.class final Lcom/ali/user/enterprise/Login$2;
.super Lcom/ali/user/enterprise/base/thread/LoginAsyncTask;
.source "Login.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/enterprise/Login;->dingLogin(Lcom/ali/user/enterprise/login/LoginCallback;)V
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


# instance fields
.field final synthetic val$loginCallback:Lcom/ali/user/enterprise/login/LoginCallback;


# direct methods
.method constructor <init>(Lcom/ali/user/enterprise/login/LoginCallback;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/ali/user/enterprise/Login$2;->val$loginCallback:Lcom/ali/user/enterprise/login/LoginCallback;

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
    .line 78
    invoke-virtual {p0, p1}, Lcom/ali/user/enterprise/Login$2;->excuteTask([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final varargs excuteTask([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 81
    invoke-static {}, Lcom/ali/user/enterprise/login/LoginController;->getInstance()Lcom/ali/user/enterprise/login/LoginController;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/enterprise/Login$2;->val$loginCallback:Lcom/ali/user/enterprise/login/LoginCallback;

    invoke-virtual {v0, v1}, Lcom/ali/user/enterprise/login/LoginController;->directLogin(Lcom/ali/user/enterprise/login/LoginCallback;)V

    .line 82
    const-string/jumbo v0, "login.LoginAsyncTask"

    const-string/jumbo v1, "loginWithBundle finish"

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method
