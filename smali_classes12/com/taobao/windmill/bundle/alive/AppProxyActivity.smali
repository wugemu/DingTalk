.class public Lcom/taobao/windmill/bundle/alive/AppProxyActivity;
.super Landroid/app/Activity;
.source "AppProxyActivity.java"


# instance fields
.field private a:Z

.field private b:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/taobao/windmill/bundle/alive/AppProxyActivity;)Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/alive/AppProxyActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/taobao/windmill/bundle/alive/AppProxyActivity;->b:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    return-object v0
.end method

.method static synthetic b(Lcom/taobao/windmill/bundle/alive/AppProxyActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/alive/AppProxyActivity;

    .prologue
    .line 19
    iget v0, p0, Lcom/taobao/windmill/bundle/alive/AppProxyActivity;->c:I

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 72
    invoke-static {}, Ljqb;->a()Ljqb;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windmill/bundle/alive/AppProxyActivity;->b:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    iget v2, p0, Lcom/taobao/windmill/bundle/alive/AppProxyActivity;->c:I

    invoke-virtual {v0, p0, v1, v2}, Ljqb;->a(Landroid/app/Activity;Lcom/taobao/windmill/bundle/container/core/AppCodeModel;I)V

    .line 73
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/alive/AppProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 32
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-static {}, Ljpo;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34
    invoke-static {p0}, Ljre;->a(Landroid/app/Activity;)V

    .line 36
    invoke-static {v0}, Ljqg;->a(Landroid/content/Intent;)Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/windmill/bundle/alive/AppProxyActivity;->b:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    .line 38
    const/4 v1, 0x0

    .line 39
    .local v1, "isBack":Z
    if-eqz p1, :cond_0

    .line 40
    const/4 v1, 0x1

    .line 43
    :cond_0
    invoke-static {}, Ljqb;->a()Ljqb;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/windmill/bundle/alive/AppProxyActivity;->b:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v3, p0, v4, v1}, Ljqb;->a(Landroid/app/Activity;Lcom/taobao/windmill/bundle/container/core/AppCodeModel;Z)I

    move-result v3

    iput v3, p0, Lcom/taobao/windmill/bundle/alive/AppProxyActivity;->c:I

    .line 45
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/taobao/windmill/bundle/alive/AppProxyActivity;->a:Z

    .line 47
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    .local v2, "rootView":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/taobao/windmill/bundle/alive/AppProxyActivity;->setContentView(Landroid/view/View;)V

    .line 49
    new-instance v3, Lcom/taobao/windmill/bundle/alive/AppProxyActivity$1;

    invoke-direct {v3, p0}, Lcom/taobao/windmill/bundle/alive/AppProxyActivity$1;-><init>(Lcom/taobao/windmill/bundle/alive/AppProxyActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 66
    .end local v1    # "isBack":Z
    .end local v2    # "rootView":Landroid/view/View;
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-static {}, Ljqy;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    const-string/jumbo v3, "\u542f\u52a8\u5f02\u5e38\uff0c\u672a\u521d\u59cb\u5316\u6216\u53c2\u6570\u4e0d\u6b63\u786e"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/alive/AppProxyActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 89
    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 78
    iget-boolean v0, p0, Lcom/taobao/windmill/bundle/alive/AppProxyActivity;->a:Z

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Ljqb;->a()Ljqb;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windmill/bundle/alive/AppProxyActivity;->b:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljqb;->a(Landroid/app/Activity;Lcom/taobao/windmill/bundle/container/core/AppCodeModel;Z)I

    .line 84
    :goto_0
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/windmill/bundle/alive/AppProxyActivity;->a:Z

    goto :goto_0
.end method
