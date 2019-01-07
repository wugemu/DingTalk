.class final Lfrn$3$1;
.super Ljava/lang/Object;
.source "VerifyPresenter.java"

# interfaces
.implements Lcom/ali/user/open/oauth/OauthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrn$3;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfrn$3;


# direct methods
.method constructor <init>(Lfrn$3;)V
    .locals 0
    .param p1, "this$1"    # Lfrn$3;

    .prologue
    .line 219
    iput-object p1, p0, Lfrn$3$1;->a:Lfrn$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "oauthPlatform"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 253
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "VerifyPresenter loginService oauth failed and errorCode = "

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " errorMsg = "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    iget-object v0, p0, Lfrn$3$1;->a:Lfrn$3;

    iget-object v0, v0, Lfrn$3;->b:Lfrn;

    .line 4054
    iget-object v0, v0, Lfrn;->b:Lcom/alibaba/android/user/login/verify/VerifyContract$b;

    .line 254
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/alibaba/android/user/login/verify/VerifyContract$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .param p1, "oauthPlatform"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/util/Map;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 222
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    :cond_0
    const-string/jumbo v0, "VerifyPresenter loginByUic but param got is empty"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lfrn$3$1;->a:Lfrn$3;

    iget-object v0, v0, Lfrn$3;->b:Lfrn;

    .line 1054
    iget-object v0, v0, Lfrn;->b:Lcom/alibaba/android/user/login/verify/VerifyContract$b;

    .line 224
    const-string/jumbo v1, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v4, Lezg$l;->dt_user_common_error_data_fetch_failed:I

    invoke-virtual {v2, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lfrn$3$1;->a:Lfrn$3;

    iget-object v4, v4, Lfrn$3;->a:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    invoke-interface {v0, v1, v2, v4}, Lcom/alibaba/android/user/login/verify/VerifyContract$b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V

    .line 3532
    :cond_1
    :goto_0
    return-void

    .line 228
    :cond_2
    new-instance v8, Lfrn$3$1$1;

    invoke-direct {v8, p0}, Lfrn$3$1$1;-><init>(Lfrn$3$1;)V

    .line 245
    .local v8, "listener":Lcma;, "Lcma<Lcee;>;"
    const-class v0, Lcma;

    iget-object v1, p0, Lfrn$3$1;->a:Lfrn$3;

    iget-object v1, v1, Lfrn$3;->b:Lfrn;

    .line 2054
    iget-object v1, v1, Lfrn;->a:Landroid/app/Activity;

    .line 245
    invoke-static {v8, v0, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "listener":Lcma;, "Lcma<Lcee;>;"
    check-cast v8, Lcma;

    .line 246
    .restart local v8    # "listener":Lcma;, "Lcma<Lcee;>;"
    new-instance v7, Lfwt;

    const/4 v0, 0x0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iget-object v4, p0, Lfrn$3$1;->a:Lfrn$3;

    iget-object v4, v4, Lfrn$3;->b:Lfrn;

    .line 3054
    iget-object v4, v4, Lfrn;->a:Landroid/app/Activity;

    .line 246
    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lfxj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v0, v1, v2, v4}, Lfwt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .local v7, "deviceObject":Lfwt;
    const-string/jumbo v0, "authCode"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 248
    .local v3, "authCode":Ljava/lang/String;
    invoke-static {}, Lfas;->a()Lfas;

    move-result-object v0

    invoke-virtual {v7}, Lfwt;->a()Lcfo;

    move-result-object v1

    const-string/jumbo v4, ""

    const-string/jumbo v5, "21811227"

    .line 3523
    if-eqz v1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3524
    :cond_3
    if-eqz v8, :cond_1

    .line 3525
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lfas$12;

    invoke-direct {v2, v0, v8}, Lfas$12;-><init>(Lfas;Lcma;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3535
    :cond_4
    new-instance v6, Lfas$13;

    invoke-direct {v6, v0, v8}, Lfas$13;-><init>(Lfas;Lcma;)V

    .line 3551
    iget-object v0, v0, Lfas;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;->loginByUic(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method
