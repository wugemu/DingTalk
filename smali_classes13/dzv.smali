.class public final Ldzv;
.super Ldzl;
.source "GuideHeaderHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ldzl;-><init>()V

    return-void
.end method


# virtual methods
.method final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 27
    iget-object v0, p0, Ldzv;->a:Landroid/view/View;

    sget v1, Lctk$f;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldzv;->f:Landroid/widget/TextView;

    .line 29
    iget-object v0, p0, Ldzv;->a:Landroid/view/View;

    sget v1, Lctk$e;->session_header_blue_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 30
    iget-object v0, p0, Ldzv;->a:Landroid/view/View;

    sget v1, Lctk$f;->tv_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Ldzv;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Ldzv;->a:Landroid/view/View;

    sget v1, Lctk$f;->layout_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    iget-object v2, p0, Ldzv;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string/jumbo v2, "pref.key.new.user.lifestyle.guide.json"

    invoke-static {v2}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "jsonStr":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "content":Ljava/lang/String;
    iget-object v2, p0, Ldzv;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final d()Lcom/alibaba/android/dingtalkim/session/header/Header;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/alibaba/android/dingtalkim/session/header/Header;->GUIDE:Lcom/alibaba/android/dingtalkim/session/header/Header;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 54
    iget-object v2, p0, Ldzv;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 59
    .local v0, "id":I
    sget v2, Lctk$f;->layout_close:I

    if-ne v0, v2, :cond_3

    .line 60
    iget-object v2, p0, Ldzv;->e:Ldze;

    if-eqz v2, :cond_2

    .line 61
    iget-object v2, p0, Ldzv;->e:Ldze;

    sget-object v3, Lcom/alibaba/android/dingtalkim/session/header/Header;->GUIDE:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v2, v3}, Ldze;->b(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    .line 63
    :cond_2
    const-string/jumbo v2, "pref.key.new.user.lifestyle.guide.is.show"

    invoke-static {v2, v4}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 64
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "SessionFragment"

    const-string/jumbo v4, "guide_bluebanner_close_click"

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 65
    :cond_3
    sget v2, Lctk$f;->container:I

    if-ne v0, v2, :cond_0

    .line 66
    iget-object v2, p0, Ldzv;->e:Ldze;

    if-eqz v2, :cond_4

    .line 67
    iget-object v2, p0, Ldzv;->e:Ldze;

    sget-object v3, Lcom/alibaba/android/dingtalkim/session/header/Header;->GUIDE:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v2, v3}, Ldze;->b(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    .line 69
    :cond_4
    const-string/jumbo v2, "pref.key.new.user.lifestyle.guide.is.show"

    invoke-static {v2, v4}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 70
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "SessionFragment"

    const-string/jumbo v4, "guide_bluebanner_open_click"

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 72
    const-string/jumbo v2, "pref.key.new.user.lifestyle.guide.url"

    invoke-static {v2}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    iget-object v3, p0, Ldzv;->c:Landroid/app/Activity;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/content/Intent;)I

    goto :goto_0
.end method
