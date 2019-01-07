.class public final Ldzy;
.super Ldzl;
.source "MicroAppHeaderHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ldzl;-><init>()V

    return-void
.end method


# virtual methods
.method final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    iget-object v1, p0, Ldzy;->a:Landroid/view/View;

    sget v2, Lctk$f;->tv_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ldzy;->f:Landroid/widget/TextView;

    .line 33
    iget-object v1, p0, Ldzy;->a:Landroid/view/View;

    sget v2, Lctk$f;->tv_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 34
    .local v0, "iconView":Landroid/widget/TextView;
    sget v1, Lctk$i;->icon_work:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 36
    iget-object v1, p0, Ldzy;->a:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v1, p0, Ldzy;->a:Landroid/view/View;

    sget v2, Lctk$f;->layout_close:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 52
    instance-of v2, p1, Leak;

    if-nez v2, :cond_0

    .line 62
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 56
    check-cast v0, Leak;

    .line 57
    .local v0, "object":Leak;
    iget-object v2, v0, Leak;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    const-string/jumbo v2, "im"

    const/4 v3, 0x0

    const-string/jumbo v4, "Micro app header url is empty"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    iget-object v1, p0, Ldzy;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldzy;->d:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ldzy;->b(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Ldzy;->d:Ljava/lang/Object;

    check-cast v0, Leak;

    .line 47
    .local v0, "object":Leak;
    iget-object v1, p0, Ldzy;->f:Landroid/widget/TextView;

    iget-object v2, v0, Leak;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final d()Lcom/alibaba/android/dingtalkim/session/header/Header;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/alibaba/android/dingtalkim/session/header/Header;->MICRO_APP:Lcom/alibaba/android/dingtalkim/session/header/Header;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    iget-object v4, p0, Ldzy;->c:Landroid/app/Activity;

    invoke-static {v4}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 77
    .local v1, "id":I
    sget v4, Lctk$f;->layout_close:I

    if-ne v1, v4, :cond_3

    .line 78
    iget-object v4, p0, Ldzy;->e:Ldze;

    if-eqz v4, :cond_2

    .line 79
    iget-object v4, p0, Ldzy;->e:Ldze;

    sget-object v5, Lcom/alibaba/android/dingtalkim/session/header/Header;->MICRO_APP:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v4, v5}, Ldze;->b(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    .line 81
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.workapp.lightapp.microapp.top.CANCEL"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Ldzy;->c:Landroid/app/Activity;

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    invoke-virtual {v4, v2}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 83
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    sget v4, Lctk$f;->container:I

    if-ne v1, v4, :cond_0

    .line 84
    iget-object v4, p0, Ldzy;->d:Ljava/lang/Object;

    instance-of v4, v4, Leak;

    if-eqz v4, :cond_0

    .line 87
    iget-object v3, p0, Ldzy;->d:Ljava/lang/Object;

    check-cast v3, Leak;

    .line 88
    .local v3, "object":Leak;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v4

    iget-object v5, v3, Leak;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->showSticky(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 90
    const-string/jumbo v4, "title"

    iget-object v5, v3, Leak;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_4
    iget v4, v3, Leak;->c:I

    if-nez v4, :cond_5

    .line 94
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v4

    iget-object v5, p0, Ldzy;->c:Landroid/app/Activity;

    iget-object v6, v3, Leak;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    .line 96
    :cond_5
    const-string/jumbo v4, "url"

    iget-object v5, v3, Leak;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v4

    iget-object v5, p0, Ldzy;->c:Landroid/app/Activity;

    iget v6, v3, Leak;->c:I

    invoke-virtual {v4, v5, v0, v6}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_0
.end method
