.class public final Lion;
.super Ljava/lang/Object;
.source "H5LoadingView.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lion;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lion;

    .prologue
    .line 25
    iget-object v0, p0, Lion;->c:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic b(Lion;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lion;

    .prologue
    .line 25
    iget-object v0, p0, Lion;->b:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final getContentView(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "startParam"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 37
    iget-object v1, p0, Lion;->a:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lion;->a:Landroid/view/View;

    .line 78
    :goto_0
    return-object v1

    .line 40
    :cond_0
    if-eqz p1, :cond_1

    .line 41
    const-string/jumbo v1, "H5LoadingView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getContentView: activity.getResouces()="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_1
    sget v1, Lcom/alipay/mobile/nebula/R$layout;->h5_loading_fragment:I

    invoke-static {v1}, Lipg;->a(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lion;->a:Landroid/view/View;

    .line 45
    iget-object v1, p0, Lion;->a:Landroid/view/View;

    if-nez v1, :cond_2

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$layout;->h5_loading_fragment:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lion;->a:Landroid/view/View;

    .line 48
    :cond_2
    iget-object v1, p0, Lion;->a:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_lv_nav_back_loading:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lion;->b:Landroid/widget/TextView;

    .line 49
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;->getInstance()Lcom/alipay/mobile/nebula/util/H5TypefaceCache;

    const-string/jumbo v1, "h5iconfont"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "h5iconfont"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "h5titlebar.ttf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;->getTypeface(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 50
    .local v0, "iconfont":Landroid/graphics/Typeface;
    iget-object v1, p0, Lion;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 51
    iget-object v1, p0, Lion;->b:Landroid/widget/TextView;

    const v2, -0xef7117

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 52
    iget-object v1, p0, Lion;->a:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_nav_loading_loading:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lion;->c:Landroid/widget/ProgressBar;

    .line 53
    iget-object v1, p0, Lion;->b:Landroid/widget/TextView;

    new-instance v2, Lion$1;

    invoke-direct {v2, p0, p1}, Lion$1;-><init>(Lion;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v1, p0, Lion;->c:Landroid/widget/ProgressBar;

    new-instance v2, Lion$2;

    invoke-direct {v2, p0}, Lion$2;-><init>(Lion;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    iget-object v1, p0, Lion;->a:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public final setIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 121
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 109
    iget-object v1, p0, Lion;->a:Landroid/view/View;

    if-nez v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v1, p0, Lion;->a:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_ll_lv_nav_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    .local v0, "titleView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final stopLoading(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 84
    iget-object v1, p0, Lion;->c:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 86
    :try_start_0
    iget-object v1, p0, Lion;->c:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    :goto_0
    iget-object v1, p0, Lion;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lion;->b:Landroid/widget/TextView;

    new-instance v2, Lion$3;

    invoke-direct {v2, p0, p1}, Lion$3;-><init>(Lion;Landroid/app/Activity;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    :cond_1
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "H5LoadingView"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
