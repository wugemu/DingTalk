.class public Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;
.super Lipd;
.source "H5TransProgressContent.java"


# static fields
.field public static final DEFAULT_SHOW_CLOSE_DELAY:I = 0x7d0

.field public static final KEY_SHOW_CLOSE_DELAY:Ljava/lang/String; = "h5_showCloseDelay"

.field public static final TAG:Ljava/lang/String; = "H5TransProgressContent"


# instance fields
.field private closeTextView:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field private handler:Landroid/os/Handler;

.field private progressBar:Landroid/widget/ProgressBar;

.field showCloseRunnable:Ljava/lang/Runnable;

.field showProgressRunnable:Ljava/lang/Runnable;

.field private transProgressLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 1
    .param p1, "h5Page"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    .line 44
    invoke-direct {p0}, Lipd;-><init>()V

    .line 130
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$2;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->showCloseRunnable:Ljava/lang/Runnable;

    .line 137
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$3;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->showProgressRunnable:Ljava/lang/Runnable;

    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 46
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->initViews()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->closeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private getH5ShowCloseDelay()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0x7d0

    .line 120
    const-string/jumbo v3, "h5_showCloseDelay"

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "delayStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    :goto_0
    return v2

    .line 123
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "globalException":Ljava/lang/Exception;
    const-string/jumbo v3, "H5TransProgressContent"

    const-string/jumbo v4, "exception detail."

    invoke-static {v3, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private initViews()V
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->context:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$layout;->h5_trans_progress_content:I

    const/4 v2, 0x0

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->transProgressLayout:Landroid/widget/RelativeLayout;

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->transProgressLayout:Landroid/widget/RelativeLayout;

    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_progress_pb:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->progressBar:Landroid/widget/ProgressBar;

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->transProgressLayout:Landroid/widget/RelativeLayout;

    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_close_tv:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->closeTextView:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "backgroundColor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->transProgressLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 59
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "backgroundColor"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->closeTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->handler:Landroid/os/Handler;

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->showProgressRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->showCloseRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->getH5ShowCloseDelay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    return-void
.end method

.method private showWebView()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 104
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->showProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->showCloseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 106
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->transProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 107
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 109
    .local v0, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->transProgressLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    return-void
.end method


# virtual methods
.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->transProgressLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 1121
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 91
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "h5PageFinished"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "h5PageError"

    .line 92
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->showWebView()V

    .line 100
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lipd;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v3

    return v3

    .line 94
    :cond_2
    const-string/jumbo v3, "h5PageProgress"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    const-string/jumbo v3, "progress"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 96
    .local v2, "progress":I
    const/16 v3, 0x64

    if-ne v2, v3, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->showWebView()V

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 82
    const-string/jumbo v0, "h5PageFinished"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v0, "h5PageError"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v0, "h5PageProgress"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public onRelease()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    invoke-super {p0}, Lipd;->onRelease()V

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->showCloseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->showProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method
