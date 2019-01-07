.class public Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;
.super Lipd;
.source "H5TransWebContent.java"


# static fields
.field private static final HIDE_TRANS_BACK:Ljava/lang/String; = "hideTransBack"

.field public static final TAG:Ljava/lang/String; = "H5TransWebContent"


# instance fields
.field private disclaimerView:Landroid/widget/RelativeLayout;

.field private disclaimerViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private disclaimerViewMode:I

.field private disclaimerViewRunnable:Ljava/lang/Runnable;

.field private h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field private layout:Landroid/view/View;

.field private transBackImg:Landroid/widget/ImageView;

.field private transLayout:Landroid/widget/LinearLayout;

.field private webContent:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 0
    .param p1, "h5Page"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    .line 49
    invoke-direct {p0}, Lipd;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 51
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->initViews()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private initViews()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 55
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/nebula/R$layout;->h5_trans_web_content:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->layout:Landroid/view/View;

    .line 58
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->layout:Landroid/view/View;

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_trans_web_content:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->webContent:Landroid/widget/RelativeLayout;

    .line 60
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->layout:Landroid/view/View;

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_tf_nav_ly:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->transLayout:Landroid/widget/LinearLayout;

    .line 61
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->layout:Landroid/view/View;

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_tf_nav_back:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->transBackImg:Landroid/widget/ImageView;

    .line 63
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v3, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "transAnimate"

    invoke-static {v4, v5, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 67
    new-instance v2, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-direct {v2, v4}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    .line 68
    .local v2, "h5ProgressContainer":Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Liow;

    move-result-object v4

    invoke-interface {v4, v2}, Liow;->register(Liov;)Z

    .line 69
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->webContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->getContent()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    .end local v2    # "h5ProgressContainer":Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;
    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->transBackImg:Landroid/widget/ImageView;

    new-instance v5, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent$1;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v4, :cond_2

    .line 84
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "fullscreen"

    invoke-static {v4, v5, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    .line 85
    .local v1, "fullScreen":Z
    if-nez v1, :cond_0

    .line 87
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->transLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    :cond_0
    new-instance v4, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent$2;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent$2;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;)V

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils;->getDisclaimerView(Landroid/content/Context;Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerClickListener;)Landroid/widget/RelativeLayout;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    .line 100
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils;->getDisclaimerViewLayoutParams(Landroid/content/Context;Landroid/os/Bundle;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 101
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils;->needShowDisclaimer(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerViewMode:I

    .line 102
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->webContent:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 104
    iget v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerViewMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    iget v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerViewMode:I

    if-ne v4, v9, :cond_2

    .line 105
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 106
    const-string/jumbo v4, "exposure"

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "url"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils;->spmMonitor(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerViewMode:I

    if-ne v4, v9, :cond_2

    .line 108
    new-instance v4, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent$3;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent$3;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;)V

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerViewRunnable:Ljava/lang/Runnable;

    .line 116
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    .end local v1    # "fullScreen":Z
    :cond_2
    return-void

    .line 71
    :cond_3
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->webContent:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->layout:Landroid/view/View;

    return-object v0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 10
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v5, 0x1

    const/4 v7, 0x2

    const/4 v4, 0x0

    .line 149
    .line 2065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 2121
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 151
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "closeWebview"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 152
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v6, "h5PageClose"

    invoke-virtual {v4, v6, v9}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    :cond_0
    :goto_0
    move v4, v5

    .line 196
    :cond_1
    :goto_1
    return v4

    .line 153
    :cond_2
    const-string/jumbo v6, "h5PagePhysicalBack"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "h5ToolbarBack"

    .line 154
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 155
    :cond_3
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v6, "h5PageBack"

    invoke-virtual {v4, v6, v9}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 156
    :cond_4
    const-string/jumbo v6, "hideTransBack"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 157
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->transLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    invoke-interface {p2}, Liny;->sendSuccess()V

    goto :goto_0

    .line 159
    :cond_5
    const-string/jumbo v6, "disClaimerClick"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 161
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_6

    .line 162
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 163
    const-string/jumbo v4, "exposure"

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils;->spmMonitor(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_6
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerViewMode:I

    if-ne v4, v7, :cond_0

    .line 166
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 167
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1388

    invoke-virtual {v4, v6, v8, v9}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 169
    :cond_7
    const-string/jumbo v6, "showDisClaimer"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 171
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_1

    .line 172
    const-string/jumbo v6, "mode"

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v1

    .line 173
    .local v1, "mode":I
    if-eq v1, v5, :cond_8

    if-ne v1, v7, :cond_a

    :cond_8
    move v3, v5

    .line 174
    .local v3, "show":Z
    :goto_2
    if-eqz v3, :cond_b

    .line 175
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_9

    .line 176
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 177
    const-string/jumbo v5, "exposure"

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils;->spmMonitor(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_9
    if-ne v1, v7, :cond_1

    .line 180
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 181
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1388

    invoke-virtual {v5, v6, v8, v9}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .end local v3    # "show":Z
    :cond_a
    move v3, v4

    .line 173
    goto :goto_2

    .line 184
    .restart local v3    # "show":Z
    :cond_b
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v5

    if-eq v5, v8, :cond_c

    .line 185
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 187
    :cond_c
    if-ne v1, v7, :cond_1

    .line 188
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 139
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "h5PageError"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 144
    :cond_0
    invoke-super {p0, p1, p2}, Lipd;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v1

    return v1
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 128
    const-string/jumbo v0, "closeWebview"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 129
    const-string/jumbo v0, "h5PagePhysicalBack"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 130
    const-string/jumbo v0, "hideTransBack"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 131
    const-string/jumbo v0, "disClaimerClick"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 132
    const-string/jumbo v0, "showDisClaimer"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 133
    const-string/jumbo v0, "h5PageError"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public onRelease()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 201
    invoke-super {p0}, Lipd;->onRelease()V

    .line 202
    iget v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerViewMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->disclaimerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 205
    :cond_0
    return-void
.end method
