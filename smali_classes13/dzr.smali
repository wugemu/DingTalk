.class public final Ldzr;
.super Ldzl;
.source "DeploymentRecordHeaderHolder.java"


# instance fields
.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
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
    iget-object v0, p0, Ldzr;->a:Landroid/view/View;

    sget v1, Lctk$f;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldzr;->f:Landroid/widget/TextView;

    .line 25
    iget-object v0, p0, Ldzr;->a:Landroid/view/View;

    sget v1, Lctk$f;->tv_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldzr;->g:Landroid/widget/TextView;

    .line 27
    iget-object v0, p0, Ldzr;->f:Landroid/widget/TextView;

    iget-object v1, p0, Ldzr;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$c;->ui_common_warming_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    iget-object v0, p0, Ldzr;->g:Landroid/widget/TextView;

    iget-object v1, p0, Ldzr;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$c;->ui_common_orange_icon_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    iget-object v0, p0, Ldzr;->a:Landroid/view/View;

    sget v1, Lctk$f;->layout_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    return-void
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 67
    instance-of v0, p1, Ljava/lang/String;

    return v0
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    iget-object v1, p0, Ldzr;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v1, p0, Ldzr;->f:Landroid/widget/TextView;

    sget v2, Lctk$i;->dt_service_deployment_recording:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 40
    iget-object v1, p0, Ldzr;->g:Landroid/widget/TextView;

    sget v2, Lctk$i;->icon_microphone:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 43
    iget-object v1, p0, Ldzr;->d:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 44
    iget-object v0, p0, Ldzr;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 48
    .local v0, "url":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 49
    iget-object v1, p0, Ldzr;->a:Landroid/view/View;

    new-instance v2, Ldzr$1;

    invoke-direct {v2, p0, v0}, Ldzr$1;-><init>(Ldzr;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 46
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, ""

    .restart local v0    # "url":Ljava/lang/String;
    goto :goto_1

    .line 56
    :cond_2
    iget-object v1, p0, Ldzr;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final d()Lcom/alibaba/android/dingtalkim/session/header/Header;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/alibaba/android/dingtalkim/session/header/Header;->RECORD:Lcom/alibaba/android/dingtalkim/session/header/Header;

    return-object v0
.end method
