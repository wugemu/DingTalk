.class public abstract Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "EMiniBaseFragmentImpl.java"


# instance fields
.field protected a:Lhlm;

.field protected b:Lhlp;

.field private c:Landroid/view/ViewGroup;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;Lhlp;)Lhlp;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;
    .param p1, "x1"    # Lhlp;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->b:Lhlp;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->a(Z)V

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 6
    .param p1, "isAsync"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 162
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[EMiniBaseFragment]try launch page, isAsync:"

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 163
    iget-boolean v1, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->d:Z

    if-eqz v1, :cond_1

    .line 164
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "[EMiniBaseFragment]try launch page, already launched"

    aput-object v2, v1, v4

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->b:Lhlp;

    if-nez v1, :cond_2

    .line 169
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "[EMiniBaseFragment]initEMiniView failed, pageInstance is null"

    aput-object v2, v1, v4

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->b:Lhlp;

    invoke-interface {v1}, Lhlp;->a()Landroid/view/View;

    move-result-object v0

    .line 174
    .local v0, "contentView":Landroid/view/View;
    if-nez v0, :cond_3

    .line 175
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "[EMiniBaseFragment]initEMiniView failed, contentView is null"

    aput-object v2, v1, v4

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_3
    iput-boolean v3, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->d:Z

    .line 180
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->c:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "[EMiniBaseFragment]launch page"

    aput-object v2, v1, v4

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->b:Lhlp;

    invoke-interface {v1}, Lhlp;->b()V

    .line 184
    if-eqz p1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->b:Lhlp;

    invoke-interface {v1}, Lhlp;->c()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "rootView":Landroid/view/View;
    sget v1, Laxp$f;->v_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->c:Landroid/view/ViewGroup;

    .line 47
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->b:Lhlp;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->b:Lhlp;

    invoke-interface {v0}, Lhlp;->g()V

    .line 91
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[EMiniBaseFragment]onDestroy"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 92
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 93
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->b:Lhlp;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->b:Lhlp;

    invoke-interface {v0}, Lhlp;->e()V

    .line 73
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[EMiniBaseFragment]onPause"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 74
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onPause()V

    .line 75
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 61
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onResume()V

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->b:Lhlp;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->b:Lhlp;

    invoke-interface {v0}, Lhlp;->d()V

    .line 65
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[EMiniBaseFragment]onResume"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 52
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onStart()V

    .line 53
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->b:Lhlp;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->b:Lhlp;

    invoke-interface {v0}, Lhlp;->c()V

    .line 56
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[EMiniBaseFragment]onStart"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->b:Lhlp;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->b:Lhlp;

    invoke-interface {v0}, Lhlp;->f()V

    .line 82
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[EMiniBaseFragment]onStop"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 83
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onStop()V

    .line 84
    return-void
.end method
