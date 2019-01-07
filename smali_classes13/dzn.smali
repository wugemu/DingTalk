.class public final Ldzn;
.super Ldzl;
.source "BackgroundAudioHeaderHolder.java"

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
    .line 27
    iget-object v1, p0, Ldzn;->a:Landroid/view/View;

    sget v2, Lctk$f;->tv_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ldzn;->f:Landroid/widget/TextView;

    .line 28
    iget-object v1, p0, Ldzn;->a:Landroid/view/View;

    sget v2, Lctk$f;->tv_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 29
    .local v0, "iconView":Landroid/widget/TextView;
    sget v1, Lctk$i;->icon_music:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 30
    iget-object v1, p0, Ldzn;->a:Landroid/view/View;

    sget v2, Lctk$f;->layout_close:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object v1, p0, Ldzn;->a:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method

.method public final c()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    iget-object v3, p0, Ldzn;->c:Landroid/app/Activity;

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v3, p0, Ldzn;->d:Ljava/lang/Object;

    instance-of v3, v3, Leai;

    if-eqz v3, :cond_0

    .line 40
    iget-object v1, p0, Ldzn;->d:Ljava/lang/Object;

    check-cast v1, Leai;

    .line 41
    .local v1, "object":Leai;
    iget-object v0, v1, Leai;->a:Landroid/os/Bundle;

    .line 42
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 43
    const-string/jumbo v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "title":Ljava/lang/String;
    if-nez v2, :cond_2

    const-string/jumbo v2, ""

    .line 45
    :cond_2
    iget-object v3, p0, Ldzn;->f:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ldzn;->c:Landroid/app/Activity;

    sget v6, Lctk$i;->dt_background_audio_is_playing:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final d()Lcom/alibaba/android/dingtalkim/session/header/Header;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/alibaba/android/dingtalkim/session/header/Header;->BACKGROUND_AUDIO:Lcom/alibaba/android/dingtalkim/session/header/Header;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    iget-object v3, p0, Ldzn;->c:Landroid/app/Activity;

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 62
    .local v1, "id":I
    sget v3, Lctk$f;->container:I

    if-ne v1, v3, :cond_0

    .line 63
    iget-object v3, p0, Ldzn;->d:Ljava/lang/Object;

    instance-of v3, v3, Leai;

    if-eqz v3, :cond_0

    .line 64
    iget-object v2, p0, Ldzn;->d:Ljava/lang/Object;

    check-cast v2, Leai;

    .line 65
    .local v2, "o":Leai;
    iget-object v0, v2, Leai;->a:Landroid/os/Bundle;

    .line 66
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    iget-object v4, p0, Ldzn;->c:Landroid/app/Activity;

    invoke-virtual {v3, v4, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->c(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method
