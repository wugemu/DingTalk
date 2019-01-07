.class Lcom/ali/user/enterprise/login/LoginController$4;
.super Ljava/lang/Object;
.source "LoginController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/enterprise/login/LoginController;->mainSuccessCallback(Lcom/ali/user/enterprise/login/LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/user/enterprise/login/LoginController;

.field final synthetic val$loginCallback:Lcom/ali/user/enterprise/login/LoginCallback;


# direct methods
.method constructor <init>(Lcom/ali/user/enterprise/login/LoginController;Lcom/ali/user/enterprise/login/LoginCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ali/user/enterprise/login/LoginController;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/ali/user/enterprise/login/LoginController$4;->this$0:Lcom/ali/user/enterprise/login/LoginController;

    iput-object p2, p0, Lcom/ali/user/enterprise/login/LoginController$4;->val$loginCallback:Lcom/ali/user/enterprise/login/LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 246
    iget-object v0, p0, Lcom/ali/user/enterprise/login/LoginController$4;->val$loginCallback:Lcom/ali/user/enterprise/login/LoginCallback;

    sget-object v1, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    invoke-interface {v0, v1}, Lcom/ali/user/enterprise/login/LoginCallback;->onSuccess(Lcom/ali/user/enterprise/base/session/ISession;)V

    .line 247
    return-void
.end method
