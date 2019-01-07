.class public final Ldzo;
.super Ldzl;
.source "BannerHeaderHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
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
    .line 28
    iget-object v1, p0, Ldzo;->a:Landroid/view/View;

    sget v2, Lctk$f;->tv_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ldzo;->f:Landroid/widget/TextView;

    .line 30
    iget-object v1, p0, Ldzo;->a:Landroid/view/View;

    sget v2, Lctk$e;->session_header_yellow_bg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 32
    iget-object v1, p0, Ldzo;->a:Landroid/view/View;

    sget v2, Lctk$f;->tv_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 33
    .local v0, "iconView":Landroid/widget/TextView;
    sget v1, Lctk$i;->icon_report_fill:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 34
    iget-object v1, p0, Ldzo;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$c;->session_header_yellow_icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    iget-object v1, p0, Ldzo;->a:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v1, p0, Ldzo;->a:Landroid/view/View;

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
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 53
    instance-of v2, p1, Lblg;

    if-nez v2, :cond_0

    .line 67
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 57
    check-cast v0, Lblg;

    .line 2051
    .local v0, "object":Lblg;
    iget-object v2, v0, Lblg;->c:Ljava/lang/String;

    .line 58
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "Banner header text is empty"

    invoke-static {v2, v4, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2059
    :cond_1
    iget-object v2, v0, Lblg;->d:Ljava/lang/String;

    .line 62
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "Banner header url is empty"

    invoke-static {v2, v4, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_2
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
    iget-object v2, p0, Ldzo;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldzo;->d:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ldzo;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Ldzo;->d:Ljava/lang/Object;

    check-cast v0, Lblg;

    .line 1051
    .local v0, "object":Lblg;
    iget-object v1, v0, Lblg;->c:Ljava/lang/String;

    .line 48
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Ldzo;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final d()Lcom/alibaba/android/dingtalkim/session/header/Header;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/alibaba/android/dingtalkim/session/header/Header;->BANNER:Lcom/alibaba/android/dingtalkim/session/header/Header;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    iget-object v3, p0, Ldzo;->c:Landroid/app/Activity;

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 82
    .local v0, "id":I
    sget v3, Lctk$f;->layout_close:I

    if-ne v0, v3, :cond_3

    .line 83
    iget-object v3, p0, Ldzo;->e:Ldze;

    if-eqz v3, :cond_2

    .line 84
    iget-object v3, p0, Ldzo;->e:Ldze;

    sget-object v4, Lcom/alibaba/android/dingtalkim/session/header/Header;->BANNER:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v3, v4}, Ldze;->b(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    .line 86
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v3

    sget-object v4, Lble;->I:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    goto :goto_0

    .line 87
    :cond_3
    sget v3, Lctk$f;->container:I

    if-ne v0, v3, :cond_0

    .line 88
    iget-object v3, p0, Ldzo;->d:Ljava/lang/Object;

    instance-of v3, v3, Lblg;

    if-eqz v3, :cond_0

    .line 91
    iget-object v1, p0, Ldzo;->d:Ljava/lang/Object;

    check-cast v1, Lblg;

    .line 3059
    .local v1, "object":Lblg;
    iget-object v3, v1, Lblg;->d:Ljava/lang/String;

    .line 92
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4059
    iget-object v3, v1, Lblg;->d:Ljava/lang/String;

    .line 93
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 94
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    iget-object v4, p0, Ldzo;->c:Landroid/app/Activity;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0
.end method
