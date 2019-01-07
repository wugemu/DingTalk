.class public Lcom/alibaba/android/user/alphaDevice/AlphaDeviceListActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "AlphaDeviceListActivity.java"

# interfaces
.implements Lezk$b;


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Landroid/view/View;

.field private c:Lezj;

.field private d:Lezk$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 101
    .line 3130
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 101
    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/alphaDevice/AlphaDeviceListActivity;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 121
    .line 5130
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 121
    if-nez v0, :cond_0

    .line 126
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfrr;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 82
    .line 1130
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Lfrr;>;"
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 82
    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/alphaDevice/AlphaDeviceListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/alphaDevice/AlphaDeviceListActivity;->c:Lezj;

    .line 2054
    iget-object v1, v0, Lezj;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2056
    if-eqz p1, :cond_1

    .line 2057
    iget-object v1, v0, Lezj;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2060
    :cond_1
    invoke-virtual {v0}, Lezj;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 110
    .line 4130
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 110
    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/alphaDevice/AlphaDeviceListActivity;->a()V

    .line 115
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 92
    .line 2130
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 92
    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/alphaDevice/AlphaDeviceListActivity;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 130
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/android/user/alphaDevice/AlphaDeviceListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/android/user/alphaDevice/AlphaDeviceListActivity;->finish()V

    .line 63
    :goto_0
    return-void

    .line 53
    :cond_0
    sget v3, Lezg$j;->activity_alpah_devices_layout:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/alphaDevice/AlphaDeviceListActivity;->setContentView(I)V

    .line 1066
    sget v3, Lezg$h;->recycler_view:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/alphaDevice/AlphaDeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/alibaba/android/user/alphaDevice/AlphaDeviceListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 1067
    iget-object v3, p0, Lcom/alibaba/android/user/alphaDevice/AlphaDeviceListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v4, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1069
    sget v3, Lezg$h;->ll_progress:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/alphaDevice/AlphaDeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/alphaDevice/AlphaDeviceListActivity;->b:Landroid/view/View;

    .line 1071
    new-instance v3, Lezj;

    invoke-direct {v3, p0}, Lezj;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/alibaba/android/user/alphaDevice/AlphaDeviceListActivity;->c:Lezj;

    .line 1072
    iget-object v3, p0, Lcom/alibaba/android/user/alphaDevice/AlphaDeviceListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/alibaba/android/user/alphaDevice/AlphaDeviceListActivity;->c:Lezj;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/android/user/alphaDevice/AlphaDeviceListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "org_id"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 57
    .local v0, "orgId":J
    invoke-virtual {p0}, Lcom/alibaba/android/user/alphaDevice/AlphaDeviceListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "org_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "orgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/user/alphaDevice/AlphaDeviceListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v3, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    new-instance v3, Lezl;

    invoke-direct {v3, p0, v0, v1, p0}, Lezl;-><init>(Landroid/app/Activity;JLezk$b;)V

    .line 62
    iget-object v3, p0, Lcom/alibaba/android/user/alphaDevice/AlphaDeviceListActivity;->d:Lezk$a;

    invoke-interface {v3}, Lezk$a;->a()V

    goto :goto_0
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lezk$a;

    .line 6077
    iput-object p1, p0, Lcom/alibaba/android/user/alphaDevice/AlphaDeviceListActivity;->d:Lezk$a;

    .line 37
    return-void
.end method
