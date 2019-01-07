.class public final Ldzq;
.super Ldzl;
.source "ContactMatchGuideHeaderHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 27
    iget-object v3, p0, Ldzq;->c:Landroid/app/Activity;

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 54
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v3, p0, Ldzq;->a:Landroid/view/View;

    sget v4, Lctk$f;->tv_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 32
    .local v1, "iconView":Landroid/widget/TextView;
    sget v3, Lctk$i;->icon_contact:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 33
    iget-object v3, p0, Ldzq;->c:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lctk$c;->ui_common_theme_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    iget-object v3, p0, Ldzq;->a:Landroid/view/View;

    sget v4, Lctk$f;->tv_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 36
    .local v2, "tvTitle":Landroid/widget/TextView;
    sget v3, Lctk$i;->dt_contact_match_guide_content:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 37
    iget-object v3, p0, Ldzq;->c:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lctk$c;->ui_common_theme_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    iget-object v3, p0, Ldzq;->a:Landroid/view/View;

    sget v4, Lctk$f;->layout_close:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "closeView":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 42
    new-instance v3, Ldzq$1;

    invoke-direct {v3, p0}, Ldzq$1;-><init>(Ldzq;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v3, p0, Ldzq;->a:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public final d()Lcom/alibaba/android/dingtalkim/session/header/Header;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/alibaba/android/dingtalkim/session/header/Header;->CONTACT_MATCH_GUIDE:Lcom/alibaba/android/dingtalkim/session/header/Header;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    iget-object v1, p0, Ldzq;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "intent_key_page_source"

    const-string/jumbo v2, "CONTACT_MATCH_GUIDE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Ldzq;->c:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 77
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "action_hide_contact_match_guide"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method
