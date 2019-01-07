.class public final Ldzm;
.super Ldzl;
.source "AtMeHeaderHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
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
    .line 24
    iget-object v0, p0, Ldzm;->a:Landroid/view/View;

    sget v1, Lctk$f;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldzm;->f:Landroid/widget/TextView;

    .line 25
    iget-object v0, p0, Ldzm;->f:Landroid/widget/TextView;

    iget-object v1, p0, Ldzm;->c:Landroid/app/Activity;

    sget v2, Lctk$i;->dt_im_at_me_all:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Ldzm;->a:Landroid/view/View;

    sget v1, Lctk$f;->tv_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldzm;->g:Landroid/widget/TextView;

    .line 27
    iget-object v0, p0, Ldzm;->g:Landroid/widget/TextView;

    sget v1, Lctk$i;->icon_at:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 28
    iget-object v0, p0, Ldzm;->a:Landroid/view/View;

    sget v1, Lctk$f;->layout_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Ldzm;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    iget-object v1, p0, Ldzm;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldzm;->d:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v1, p0, Ldzm;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 40
    .local v0, "hasAtMe":Z
    iget-object v2, p0, Ldzm;->f:Landroid/widget/TextView;

    iget-object v3, p0, Ldzm;->c:Landroid/app/Activity;

    if-eqz v0, :cond_2

    sget v1, Lctk$i;->dt_im_at_me_new:I

    :goto_1
    invoke-virtual {v3, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v2, p0, Ldzm;->f:Landroid/widget/TextView;

    iget-object v1, p0, Ldzm;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v0, :cond_3

    sget v1, Lctk$c;->ui_common_warming_text_color:I

    :goto_2
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    iget-object v2, p0, Ldzm;->g:Landroid/widget/TextView;

    iget-object v1, p0, Ldzm;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v0, :cond_4

    sget v1, Lctk$c;->ui_common_orange_icon_bg_color:I

    :goto_3
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 40
    :cond_2
    sget v1, Lctk$i;->dt_im_at_me_all:I

    goto :goto_1

    .line 41
    :cond_3
    sget v1, Lctk$c;->ui_common_level2_text_color:I

    goto :goto_2

    .line 42
    :cond_4
    sget v1, Lctk$c;->ui_common_level1_icon_bg_color:I

    goto :goto_3
.end method

.method public final d()Lcom/alibaba/android/dingtalkim/session/header/Header;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/alibaba/android/dingtalkim/session/header/Header;->AT_ME:Lcom/alibaba/android/dingtalkim/session/header/Header;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    iget-object v1, p0, Ldzm;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 57
    .local v0, "id":I
    sget v1, Lctk$f;->container:I

    if-ne v0, v1, :cond_0

    .line 58
    invoke-static {}, Ldbu;->a()Ldbu;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ldbu;->a(Z)V

    .line 59
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v2, p0, Ldzm;->c:Landroid/app/Activity;

    .line 60
    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/at_me.html"

    .line 61
    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0
.end method
