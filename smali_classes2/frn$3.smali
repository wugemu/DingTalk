.class public final Lfrn$3;
.super Ljava/lang/Object;
.source "VerifyPresenter.java"

# interfaces
.implements Lcom/ali/user/open/core/callback/InitResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfrn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

.field final synthetic b:Lfrn;


# direct methods
.method public constructor <init>(Lfrn;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V
    .locals 0
    .param p1, "this$0"    # Lfrn;

    .prologue
    .line 214
    iput-object p1, p0, Lfrn$3;->b:Lfrn;

    iput-object p2, p0, Lfrn$3;->a:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 261
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "VerifyPresenter aliMember init failed and errorCode = "

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " errorMsg = "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    iget-object v0, p0, Lfrn$3;->b:Lfrn;

    .line 2054
    iget-object v0, v0, Lfrn;->b:Lcom/alibaba/android/user/login/verify/VerifyContract$b;

    .line 262
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfrn$3;->a:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    invoke-interface {v0, v1, p2, v2}, Lcom/alibaba/android/user/login/verify/VerifyContract$b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V

    .line 263
    return-void
.end method

.method public final onSuccess()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 217
    const-class v1, Lcom/ali/user/open/oauth/OauthService;

    invoke-static {v1}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/oauth/OauthService;

    .line 219
    .local v0, "loginService":Lcom/ali/user/open/oauth/OauthService;
    iget-object v1, p0, Lfrn$3;->b:Lfrn;

    .line 1054
    iget-object v1, v1, Lfrn;->a:Landroid/app/Activity;

    .line 219
    const-string/jumbo v2, "icbu"

    new-instance v3, Lfrn$3$1;

    invoke-direct {v3, p0}, Lfrn$3$1;-><init>(Lfrn$3;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/ali/user/open/oauth/OauthService;->oauth(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/oauth/OauthCallback;)V

    .line 257
    return-void
.end method
