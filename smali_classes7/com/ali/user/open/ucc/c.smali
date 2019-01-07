.class public Lcom/ali/user/open/ucc/c;
.super Ljava/lang/Object;
.source "UccH5Presenter.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 2

    .prologue
    .line 89
    if-nez p0, :cond_0

    .line 90
    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 92
    :cond_0
    sget v0, Lcom/ali/user/open/ucc/util/b;->a:I

    invoke-static {v0, p2}, Lcom/ali/user/open/core/callback/CallbackManager;->registerCallback(ILjava/lang/Object;)V

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 95
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 96
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ali/user/open/ucc/UccCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    const-string/jumbo v3, "0"

    .line 28
    const-string/jumbo v4, "0"

    .line 29
    if-eqz p3, :cond_0

    .line 30
    const-string/jumbo v0, "needSession"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "0"

    move-object v1, v0

    .line 31
    :goto_0
    const-string/jumbo v0, "needToast"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "0"

    :goto_1
    move-object v4, v0

    move-object v3, v1

    .line 35
    :cond_0
    if-eqz p3, :cond_3

    const-string/jumbo v0, "bindUrl"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 36
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 37
    const-string/jumbo v2, "url"

    const-string/jumbo v0, "bindUrl"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string/jumbo v0, "targetSite"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string/jumbo v0, "userToken"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string/jumbo v0, "needSession"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string/jumbo v0, "needToast"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {p0, v1, p4}, Lcom/ali/user/open/ucc/c;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/open/ucc/UccCallback;)V

    .line 86
    :goto_2
    return-void

    .line 30
    :cond_1
    const-string/jumbo v0, "needSession"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    .line 31
    :cond_2
    const-string/jumbo v0, "needToast"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 45
    :cond_3
    new-instance v7, Lcom/ali/user/open/ucc/model/BindParams;

    invoke-direct {v7}, Lcom/ali/user/open/ucc/model/BindParams;-><init>()V

    .line 46
    invoke-static {}, Lcom/ali/user/open/core/AliMemberSDK;->getMasterSite()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/ali/user/open/ucc/model/BindParams;->site:Ljava/lang/String;

    .line 47
    iput-object p1, v7, Lcom/ali/user/open/ucc/model/BindParams;->bindSite:Ljava/lang/String;

    .line 48
    iput-object p2, v7, Lcom/ali/user/open/ucc/model/BindParams;->userToken:Ljava/lang/String;

    .line 49
    if-eqz p3, :cond_4

    const-string/jumbo v0, "scene"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 50
    const-string/jumbo v0, "scene"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v7, Lcom/ali/user/open/ucc/model/BindParams;->scene:Ljava/lang/String;

    .line 52
    :cond_4
    const-string/jumbo v0, "1"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, v7, Lcom/ali/user/open/ucc/model/BindParams;->createBindSiteSession:Z

    .line 53
    new-instance v0, Lcom/ali/user/open/ucc/c$1;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p0

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ali/user/open/ucc/c$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/ali/user/open/ucc/UccCallback;)V

    invoke-static {v7, v0}, Lcom/ali/user/open/ucc/data/a;->a(Lcom/ali/user/open/ucc/model/BindParams;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    goto :goto_2

    .line 52
    :cond_5
    const/4 v0, 0x0

    goto :goto_3
.end method
