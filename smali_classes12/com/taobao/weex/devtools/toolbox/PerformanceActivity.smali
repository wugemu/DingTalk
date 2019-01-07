.class public Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "PerformanceActivity.java"


# instance fields
.field private segmentHost:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;
    .param p1, "x1"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->switchFragment(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->segmentHost:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private addTab(Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "selected"    # Z
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 87
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 88
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 90
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 91
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 92
    if-eqz p2, :cond_0

    .line 93
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 97
    :goto_0
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 98
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v2, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity$4;

    invoke-direct {v2, p0, p3}, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity$4;-><init>(Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 116
    if-eqz p2, :cond_1

    .line 117
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    :goto_1
    iget-object v2, p0, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->segmentHost:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 122
    return-void

    .line 95
    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 119
    :cond_1
    const-string/jumbo v2, "#1E90FF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public static start(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instanceId"    # I

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "instanceId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 28
    return-void
.end method

.method private switchFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn;->e()I

    move-result v0

    .line 63
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn;->c()V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/taobao/weex/inspector/R$id;->fragment_container:I

    .line 68
    invoke-virtual {v1, v2, p1}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 70
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget v0, Lcom/taobao/weex/inspector/R$layout;->activity_performance:I

    invoke-virtual {p0, v0}, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->setContentView(I)V

    .line 34
    sget v0, Lcom/taobao/weex/inspector/R$id;->segment_control:I

    invoke-virtual {p0, v0}, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->segmentHost:Landroid/widget/LinearLayout;

    .line 35
    const-string/jumbo v0, "\u9875\u9762\u6027\u80fd"

    const/4 v1, 0x1

    new-instance v2, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity$1;

    invoke-direct {v2, p0}, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity$1;-><init>(Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->addTab(Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V

    .line 42
    const-string/jumbo v0, "JS LOG"

    new-instance v1, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity$2;

    invoke-direct {v1, p0}, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity$2;-><init>(Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;)V

    invoke-direct {p0, v0, v3, v1}, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->addTab(Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V

    .line 49
    const-string/jumbo v0, "\u73af\u5883\u53d8\u91cf"

    new-instance v1, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity$3;

    invoke-direct {v1, p0}, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity$3;-><init>(Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;)V

    invoke-direct {p0, v0, v3, v1}, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->addTab(Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const-string/jumbo v1, "Weex Monitor"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->finish()V

    .line 128
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResumeFragments()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResumeFragments()V

    .line 75
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 77
    .local v1, "fragmentManager":Lcn;
    sget v2, Lcom/taobao/weex/inspector/R$id;->fragment_container:I

    invoke-virtual {v1, v2}, Lcn;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 78
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_0

    .line 80
    invoke-virtual {v1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/taobao/weex/inspector/R$id;->fragment_container:I

    .line 81
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "instanceId"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;->getInstance(I)Lcom/taobao/weex/devtools/toolbox/EventOverviewFragment;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 84
    :cond_0
    return-void
.end method
