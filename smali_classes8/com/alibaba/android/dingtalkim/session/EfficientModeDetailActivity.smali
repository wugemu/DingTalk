.class public Lcom/alibaba/android/dingtalkim/session/EfficientModeDetailActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "EfficientModeDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lctk$f;->tv_close:I

    if-ne v0, v1, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/EfficientModeDetailActivity;->finish()V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lctk$f;->tv_exit_efficient_mode:I

    if-ne v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/EfficientModeDetailActivity;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1059
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_efficient_exit"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1060
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 47
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/session/EfficientModeDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/session/EfficientModeDetailActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/session/EfficientModeDetailActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget v0, Lctk$g;->layout_efficient_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/session/EfficientModeDetailActivity;->setContentView(I)V

    .line 33
    sget v0, Lctk$f;->tv_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/session/EfficientModeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/EfficientModeDetailActivity;->a:Landroid/widget/TextView;

    .line 34
    sget v0, Lctk$f;->tv_exit_efficient_mode:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/session/EfficientModeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/EfficientModeDetailActivity;->b:Landroid/widget/TextView;

    .line 36
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/EfficientModeDetailActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/EfficientModeDetailActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method
