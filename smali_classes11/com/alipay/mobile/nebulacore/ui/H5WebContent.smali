.class public Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
.super Lipd;
.source "H5WebContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;,
        Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;,
        Lcom/alipay/mobile/nebulacore/ui/H5WebContent$PullFreshCallback;
    }
.end annotation


# static fields
.field private static final PULL_FRESH_TIMEOUT:I = 0x4e20

.field private static final SET_PULL_DOWN_TEXT:Ljava/lang/String; = "setPullDownText"

.field public static final TAG:Ljava/lang/String; = "H5WebContent"

.field private static sDisablePullDownPatterns:[Ljava/util/regex/Pattern;


# instance fields
.field private canPullDown:Z

.field private canRefresh:Z

.field private closeHandler:Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;

.field private dataReturn:Z

.field private disablePullDownByConfig:Z

.field private disclaimerView:Landroid/widget/RelativeLayout;

.field private disclaimerViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private disclaimerViewMode:I

.field private disclaimerViewRunnable:Ljava/lang/Runnable;

.field private h5Bridge:Linx;

.field private h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field private h5Progress:Lcom/alipay/mobile/nebula/view/H5Progress;

.field private h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

.field private hDivider:Landroid/view/View;

.field private isCustomBackground:Z

.field private pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

.field private pullContainer:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

.field private pullDownText:Ljava/lang/String;

.field private pullFreshTimeOut:Z

.field private showDomain:Z

.field private showProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->sDisablePullDownPatterns:[Ljava/util/regex/Pattern;

    .line 100
    invoke-static {}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->initConfig()V

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 8
    .param p1, "h5Page"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 198
    invoke-direct {p0}, Lipd;-><init>()V

    .line 59
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disablePullDownByConfig:Z

    .line 120
    new-instance v4, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    .line 199
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 200
    iput-boolean v7, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->canPullDown:Z

    .line 201
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->showProgress:Z

    .line 202
    iput-boolean v7, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->pullFreshTimeOut:Z

    .line 203
    iput-boolean v7, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->dataReturn:Z

    .line 204
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->isCustomBackground:Z

    .line 205
    new-instance v4, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->closeHandler:Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;

    .line 206
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getBridge()Linx;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Bridge:Linx;

    .line 209
    sget-object v4, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->sDisablePullDownPatterns:[Ljava/util/regex/Pattern;

    if-eqz v4, :cond_0

    .line 210
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "url"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "url":Ljava/lang/String;
    sget-object v4, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->sDisablePullDownPatterns:[Ljava/util/regex/Pattern;

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .line 212
    .local v0, "disablePullDownPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 213
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 214
    iput-boolean v7, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disablePullDownByConfig:Z

    .line 215
    const-string/jumbo v3, "H5WebContent"

    const-string/jumbo v4, "disable pullDown by config"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .end local v0    # "disablePullDownPattern":Ljava/util/regex/Pattern;
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->initComponent()V

    .line 221
    return-void

    .line 211
    .restart local v0    # "disablePullDownPattern":Ljava/util/regex/Pattern;
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    .restart local v2    # "url":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->canRefresh:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->pullFreshTimeOut:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->pullFreshTimeOut:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebula/view/H5Progress;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Progress:Lcom/alipay/mobile/nebula/view/H5Progress;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->performClose()V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disablePullDownByConfig:Z

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->canPullDown:Z

    return v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebula/refresh/H5PullContainer;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->pullContainer:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/alipay/mobile/nebula/view/H5PullHeaderView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->generatePullHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/alipay/mobile/nebula/view/H5PullHeaderView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->getPullRefreshStyle()I

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->dataReturn:Z

    return p1
.end method

.method static synthetic access$800(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->onPageFinished()V

    return-void
.end method

.method private firePullToRefresh(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 562
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$PullFreshCallback;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$PullFreshCallback;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    .line 563
    .local v0, "pullFreshCallback":Lcom/alipay/mobile/nebulacore/ui/H5WebContent$PullFreshCallback;
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->dataReturn:Z

    if-eqz v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getBridge()Linx;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v0}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 565
    const-string/jumbo v1, "H5WebContent"

    const-string/jumbo v2, "sendToWeb FIRE_PULL_TO_REFRESH"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->dataReturn:Z

    .line 570
    :goto_0
    return-void

    .line 568
    :cond_0
    const-string/jumbo v1, "H5WebContent"

    const-string/jumbo v2, "date not return,not sendToWeb FIRE_PULL_TO_REFRESH"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private generatePullHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/alipay/mobile/nebula/view/H5PullHeaderView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 224
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5PullHeaderViewProvider;

    .line 225
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5PullHeaderViewProvider;

    .line 226
    .local v0, "headerViewProvider":Lcom/alipay/mobile/nebula/provider/H5PullHeaderViewProvider;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5PullHeaderViewProvider;->enableUsePullHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/provider/H5PullHeaderViewProvider;->createPullHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/alipay/mobile/nebula/view/H5PullHeaderView;

    move-result-object v1

    .line 229
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lioy;

    invoke-direct {v1, p1, p2}, Lioy;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method private getPullRefreshStyle()I
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 234
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v8

    if-nez v8, :cond_1

    .line 235
    :cond_0
    const/4 v8, 0x0

    .line 260
    :goto_0
    return v8

    .line 237
    :cond_1
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "pullRefreshStyle"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 238
    .local v6, "paramStyle":Ljava/lang/String;
    const-string/jumbo v8, "default"

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 239
    const/4 v8, 0x0

    goto :goto_0

    .line 240
    :cond_2
    const-string/jumbo v8, "transparent"

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 241
    const/4 v8, 0x1

    goto :goto_0

    .line 244
    :cond_3
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v8}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->getContentView()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 245
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v8}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->getContentView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 246
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v8, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v8, :cond_5

    .line 247
    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    .line 248
    .local v1, "color":I
    const/high16 v8, 0xff0000

    and-int/2addr v8, v1

    shr-int/lit8 v7, v8, 0x10

    .line 249
    .local v7, "red":I
    const v8, 0xff00

    and-int/2addr v8, v1

    shr-int/lit8 v3, v8, 0x8

    .line 250
    .local v3, "green":I
    and-int/lit16 v0, v1, 0xff

    .line 251
    .local v0, "blue":I
    int-to-double v8, v7

    const-wide v10, 0x3fd322d0e5604189L    # 0.299

    mul-double/2addr v8, v10

    int-to-double v10, v3

    const-wide v12, 0x3fe2c8b439581062L    # 0.587

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    int-to-double v10, v0

    const-wide v12, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double/2addr v10, v12

    add-double v4, v8, v10

    .line 253
    .local v4, "gray":D
    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    cmpl-double v8, v4, v8

    if-lez v8, :cond_4

    .line 254
    const/4 v8, 0x0

    goto :goto_0

    .line 256
    :cond_4
    const/4 v8, 0x1

    goto :goto_0

    .line 260
    .end local v0    # "blue":I
    .end local v1    # "color":I
    .end local v3    # "green":I
    .end local v4    # "gray":D
    .end local v7    # "red":I
    :cond_5
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private handleCloseEvent()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 669
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 670
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "isTinyApp"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 671
    .local v0, "isTinyApp":Z
    if-eqz v0, :cond_0

    .line 672
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v2, "exitSession"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 676
    :goto_0
    return-void

    .line 674
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->pageClose()V

    goto :goto_0
.end method

.method private initComponent()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 294
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 297
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ViewProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ViewProvider;

    .line 299
    .local v1, "h5ViewProvider":Lcom/alipay/mobile/nebula/provider/H5ViewProvider;
    if-eqz v1, :cond_0

    .line 300
    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/provider/H5ViewProvider;->createWebContentView(Landroid/content/Context;)Lcom/alipay/mobile/nebula/view/H5WebContentView;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    .line 303
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    if-nez v2, :cond_2

    .line 304
    :cond_1
    new-instance v2, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;

    invoke-direct {v2, v0}, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    .line 307
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->getHdivider()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->hDivider:Landroid/view/View;

    .line 309
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->isCustomBackground()Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->isCustomBackground:Z

    .line 310
    const-string/jumbo v2, "H5WebContent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isCustomBackground "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->isCustomBackground:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->getProgress()Lcom/alipay/mobile/nebula/view/H5Progress;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Progress:Lcom/alipay/mobile/nebula/view/H5Progress;

    .line 312
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->getPullContainer()Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->pullContainer:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    .line 313
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->pullContainer:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->setContentView(Landroid/view/View;)V

    .line 314
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->pullContainer:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->setPullableView(Lcom/alipay/mobile/nebula/refresh/H5PullableView;)V

    .line 315
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->pullContainer:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->setPullAdapter(Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;)V

    .line 316
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->refreshView()V

    .line 317
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v2, :cond_4

    .line 318
    new-instance v2, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils;->getDisclaimerView(Landroid/content/Context;Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerClickListener;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    .line 329
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils;->getDisclaimerViewLayoutParams(Landroid/content/Context;Landroid/os/Bundle;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 330
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils;->needShowDisclaimer(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerViewMode:I

    .line 331
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->getContentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 333
    iget v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerViewMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerViewMode:I

    if-ne v2, v5, :cond_4

    .line 334
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 335
    const-string/jumbo v2, "exposure"

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils;->spmMonitor(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerViewMode:I

    if-ne v2, v5, :cond_4

    .line 337
    new-instance v2, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$3;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$3;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerViewRunnable:Ljava/lang/Runnable;

    .line 345
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 349
    :cond_4
    return-void
.end method

.method private static initConfig()V
    .locals 7

    .prologue
    .line 104
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 105
    .local v3, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v3, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isUCM57()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    const-string/jumbo v5, "h5_disablePullDownPatterns"

    invoke-interface {v3, v5}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "configArrayStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 108
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 109
    .local v0, "configArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    .line 111
    .local v4, "size":I
    new-array v5, v4, [Ljava/util/regex/Pattern;

    sput-object v5, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->sDisablePullDownPatterns:[Ljava/util/regex/Pattern;

    .line 112
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 113
    sget-object v5, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->sDisablePullDownPatterns:[Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    aput-object v6, v5, v2

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "configArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v1    # "configArrayStr":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "size":I
    :cond_0
    return-void
.end method

.method private onPageFinished()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    const v9, -0xa0a07

    const/4 v3, 0x1

    .line 573
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-nez v5, :cond_1

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Progress:Lcom/alipay/mobile/nebula/view/H5Progress;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebula/view/H5Progress;->setVisibility(I)V

    .line 577
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->pullContainer:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->fitContent()V

    .line 579
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, "host":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->showDomain:Z

    if-eqz v5, :cond_5

    .line 582
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->pullDownText:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 583
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->pullDownText:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->setProviderText(Ljava/lang/String;)V

    .line 584
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v5}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->getH5ProviderDomain()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 585
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v5}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->getH5ProviderDomain()Landroid/widget/TextView;

    move-result-object v5

    const-string/jumbo v6, "END"

    .line 586
    invoke-static {v6}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 587
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v5, v7}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->setProviderLogo(Landroid/graphics/drawable/Drawable;)V

    .line 588
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v5, v7}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->setProviderUc(Ljava/lang/String;)V

    .line 604
    :goto_1
    iget-boolean v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->canPullDown:Z

    if-eqz v5, :cond_0

    .line 605
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 606
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "bounceTopColor"

    invoke-static {v5, v6, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v0

    .line 608
    .local v0, "bounceTopColor":I
    if-eq v0, v9, :cond_0

    .line 609
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    .line 610
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/alipay/mobile/nebula/R$drawable;->h5_uclogo_white:I

    .line 611
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 612
    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 613
    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v7

    sget-object v8, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v7, v8, :cond_4

    .line 609
    :goto_2
    invoke-interface {v5, v0, v6, v3}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->switchCustomContentBg(ILandroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_0

    .line 591
    .end local v0    # "bounceTopColor":I
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alipay/mobile/nebula/R$string;->h5_provider:I

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v1, v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 593
    .local v2, "provider":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 594
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v5, v6, :cond_3

    .line 595
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    .line 596
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/alipay/mobile/nebula/R$drawable;->h5_uclogo:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 595
    invoke-interface {v5, v6}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->setProviderLogo(Landroid/graphics/drawable/Drawable;)V

    .line 597
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "  "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/alipay/mobile/nebula/R$string;->h5_browser_provider:I

    .line 598
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 597
    invoke-interface {v5, v6}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->setProviderUc(Ljava/lang/String;)V

    .line 601
    :cond_3
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v5, v2}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->setProviderText(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v2    # "provider":Ljava/lang/String;
    .restart local v0    # "bounceTopColor":I
    :cond_4
    move v3, v4

    .line 613
    goto :goto_2

    .line 617
    .end local v0    # "bounceTopColor":I
    :cond_5
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    const-string/jumbo v4, ""

    invoke-interface {v3, v4}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->setProviderText(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private pageClose()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 679
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 680
    .local v2, "time":J
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->closeHandler:Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;

    iget-wide v4, v4, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;->lastClose:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    move v0, v1

    .line 682
    .local v0, "ignoreBridge":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 683
    const-string/jumbo v1, "H5WebContent"

    const-string/jumbo v4, "ignore bridge, perform close!"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->performClose()V

    .line 693
    :cond_0
    :goto_1
    return-void

    .line 680
    .end local v0    # "ignoreBridge":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 686
    .restart local v0    # "ignoreBridge":Z
    :cond_2
    const-string/jumbo v4, "H5WebContent"

    const-string/jumbo v5, "send close event to bridge!"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->closeHandler:Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;

    iput-boolean v1, v4, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;->waiting:Z

    .line 688
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->closeHandler:Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;

    iput-wide v2, v1, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;->lastClose:J

    .line 689
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Bridge:Linx;

    if-eqz v1, :cond_0

    .line 690
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Bridge:Linx;

    const-string/jumbo v4, "closeWindow"

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->closeHandler:Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;

    invoke-interface {v1, v4, v5, v6}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    goto :goto_1
.end method

.method private performClose()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 696
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v1, "h5PageClose"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 697
    return-void
.end method

.method private restorePullToRefresh()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 550
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->pullContainer:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->isBackToTop()Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->pullFreshTimeOut:Z

    .line 552
    const-string/jumbo v0, "H5WebContent"

    const-string/jumbo v1, "invoke restorePullToRefresh,not backToTop"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Progress:Lcom/alipay/mobile/nebula/view/H5Progress;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/view/H5Progress;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->pullContainer:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->fitContent()V

    .line 558
    :goto_0
    return-void

    .line 556
    :cond_0
    const-string/jumbo v0, "H5WebContent"

    const-string/jumbo v1, "invoke restorePullToRefresh,already backToTop"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateProvider()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 367
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "isH5app"

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 368
    .local v0, "isH5app":Z
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->canRefresh:Z

    if-eqz v1, :cond_1

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v1, v3}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->showProviderVisibility(Z)V

    .line 373
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->pullContainer:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->notifyViewChanged()V

    .line 374
    return-void

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->showProviderVisibility(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getH5LoadingView()Lcom/alipay/mobile/nebula/view/H5LoadingView;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->getH5LoadingView()Lcom/alipay/mobile/nebula/view/H5LoadingView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHdivider()Landroid/view/View;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->hDivider:Landroid/view/View;

    return-object v0
.end method

.method public getPage()Liop;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    return-object v0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 12
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 440
    .line 2065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 2121
    .local v0, "action":Ljava/lang/String;
    iget-object v6, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 442
    .local v6, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "titleClick"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "subtitleClick"

    .line 443
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 444
    :cond_0
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 445
    .local v2, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "data"

    invoke-virtual {v2, v8, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getBridge()Linx;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 447
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getBridge()Linx;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v0, v2, v9}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 546
    .end local v2    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    :goto_0
    const/4 v8, 0x1

    :goto_1
    return v8

    .line 449
    :cond_2
    const-string/jumbo v8, "pullRefresh"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 450
    const-string/jumbo v8, "pullRefresh"

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->canRefresh:Z

    .line 452
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->updateProvider()V

    goto :goto_0

    .line 453
    :cond_3
    const-string/jumbo v8, "canPullDown"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 454
    const-string/jumbo v8, "canPullDown"

    const/4 v9, 0x1

    invoke-static {v6, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->canPullDown:Z

    goto :goto_0

    .line 456
    :cond_4
    const-string/jumbo v8, "showDomain"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 457
    const-string/jumbo v8, "showDomain"

    const/4 v9, 0x1

    invoke-static {v6, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->showDomain:Z

    goto :goto_0

    .line 459
    :cond_5
    const-string/jumbo v8, "closeWebview"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 460
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v9, "h5PageClose"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 461
    :cond_6
    const-string/jumbo v8, "h5PagePhysicalBack"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string/jumbo v8, "h5ToolbarBack"

    .line 462
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 463
    :cond_7
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v9, "h5PageBack"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 464
    :cond_8
    const-string/jumbo v8, "h5ToolbarClose"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 465
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->handleCloseEvent()V

    goto/16 :goto_0

    .line 466
    :cond_9
    const-string/jumbo v8, "h5ToolbarReload"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 467
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v9, "h5PageReload"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 468
    :cond_a
    const-string/jumbo v8, "showProgressBar"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 469
    const-string/jumbo v8, "showProgress"

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->showProgress:Z

    .line 470
    iget-boolean v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->showProgress:Z

    if-nez v8, :cond_1

    .line 471
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Progress:Lcom/alipay/mobile/nebula/view/H5Progress;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/nebula/view/H5Progress;->setVisibility(I)V

    goto/16 :goto_0

    .line 473
    :cond_b
    const-string/jumbo v8, "showProgressBar_fallback"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 474
    const-string/jumbo v8, "H5WebContent"

    const-string/jumbo v9, "showProgressBar_fallback"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Progress:Lcom/alipay/mobile/nebula/view/H5Progress;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/nebula/view/H5Progress;->setVisibility(I)V

    goto/16 :goto_0

    .line 476
    :cond_c
    const-string/jumbo v8, "firePullToRefresh"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 477
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->firePullToRefresh(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 478
    :cond_d
    const-string/jumbo v8, "restorePullToRefresh"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 479
    const-string/jumbo v8, "H5WebContent"

    const-string/jumbo v9, "handleEvent restorePullToRefresh"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->dataReturn:Z

    .line 481
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->restorePullToRefresh()V

    goto/16 :goto_0

    .line 482
    :cond_e
    const-string/jumbo v8, "setPullDownText"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 483
    const-string/jumbo v8, "pullDownText"

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->pullDownText:Ljava/lang/String;

    .line 484
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->pullDownText:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 485
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->pullDownText:Ljava/lang/String;

    invoke-interface {v8, v9}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->setProviderText(Ljava/lang/String;)V

    .line 486
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v8}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->getH5ProviderDomain()Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 487
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v8}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->getH5ProviderDomain()Landroid/widget/TextView;

    move-result-object v8

    const-string/jumbo v9, "END"

    .line 488
    invoke-static {v9}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 489
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->setProviderLogo(Landroid/graphics/drawable/Drawable;)V

    .line 490
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->setProviderUc(Ljava/lang/String;)V

    .line 492
    :cond_f
    invoke-interface {p2}, Liny;->sendSuccess()V

    goto/16 :goto_0

    .line 493
    :cond_10
    const-string/jumbo v8, "bounceTopColor"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 494
    const/4 v4, 0x0

    .line 495
    .local v4, "isException":Z
    const/4 v1, 0x0

    .line 497
    .local v1, "bounceTopColor":I
    :try_start_0
    const-string/jumbo v8, "value"

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 502
    :goto_2
    if-nez v4, :cond_1

    .line 503
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    .line 504
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v10, Lcom/alipay/mobile/nebula/R$drawable;->h5_uclogo_white:I

    .line 505
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 506
    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 507
    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v8

    sget-object v11, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v8, v11, :cond_11

    const/4 v8, 0x1

    .line 503
    :goto_3
    invoke-interface {v9, v1, v10, v8}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->switchCustomContentBg(ILandroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_0

    .line 498
    :catch_0
    move-exception v3

    .line 499
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "H5WebContent"

    invoke-static {v8, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 500
    const/4 v4, 0x1

    goto :goto_2

    .line 507
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_11
    const/4 v8, 0x0

    goto :goto_3

    .line 509
    .end local v1    # "bounceTopColor":I
    .end local v4    # "isException":Z
    :cond_12
    const-string/jumbo v8, "disClaimerClick"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 511
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_13

    .line 512
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 513
    const-string/jumbo v8, "exposure"

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils;->spmMonitor(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_13
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerViewMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 516
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 517
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x1388

    invoke-virtual {v8, v9, v10, v11}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 519
    :cond_14
    const-string/jumbo v8, "showDisClaimer"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 521
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_17

    .line 522
    const-string/jumbo v8, "mode"

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v5

    .line 523
    .local v5, "mode":I
    const/4 v8, 0x1

    if-eq v5, v8, :cond_15

    const/4 v8, 0x2

    if-ne v5, v8, :cond_18

    :cond_15
    const/4 v7, 0x1

    .line 524
    .local v7, "show":Z
    :goto_4
    if-eqz v7, :cond_19

    .line 525
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_16

    .line 526
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 527
    const-string/jumbo v8, "exposure"

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils;->spmMonitor(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    :cond_16
    const/4 v8, 0x2

    if-ne v5, v8, :cond_17

    .line 530
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 531
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x1388

    invoke-virtual {v8, v9, v10, v11}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 542
    .end local v5    # "mode":I
    .end local v7    # "show":Z
    :cond_17
    :goto_5
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 523
    .restart local v5    # "mode":I
    :cond_18
    const/4 v7, 0x0

    goto :goto_4

    .line 534
    .restart local v7    # "show":Z
    :cond_19
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_1a

    .line 535
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 537
    :cond_1a
    const/4 v8, 0x2

    if-ne v5, v8, :cond_17

    .line 538
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 544
    .end local v5    # "mode":I
    .end local v7    # "show":Z
    :cond_1b
    const/4 v8, 0x0

    goto/16 :goto_1
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 7
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 406
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 1121
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 408
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "h5PageStarted"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "h5ToolbarReload"

    .line 409
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 410
    :cond_0
    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->showProgress:Z

    if-eqz v3, :cond_1

    .line 411
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Progress:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-virtual {v3, v6}, Lcom/alipay/mobile/nebula/view/H5Progress;->setProgress(I)V

    .line 412
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Progress:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-virtual {v3, v6}, Lcom/alipay/mobile/nebula/view/H5Progress;->setVisibility(I)V

    .line 435
    :cond_1
    :goto_0
    return v6

    .line 414
    :cond_2
    const-string/jumbo v3, "h5PageFinished"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 415
    new-instance v3, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$4;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$4;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    const-wide/16 v4, 0x12c

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 421
    :cond_3
    const-string/jumbo v3, "h5PageProgress"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 422
    const-string/jumbo v3, "progress"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 423
    .local v2, "progress":I
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Progress:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/nebula/view/H5Progress;->updateProgress(I)V

    goto :goto_0

    .line 424
    .end local v2    # "progress":I
    :cond_4
    const-string/jumbo v3, "h5PageBackground"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 429
    const-string/jumbo v3, "h5PageError"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 430
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->hideLoadingView()V

    .line 431
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_1

    .line 432
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 378
    const-string/jumbo v0, "h5PageStarted"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 379
    const-string/jumbo v0, "h5PageProgress"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 380
    const-string/jumbo v0, "h5PageFinished"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 381
    const-string/jumbo v0, "h5PageBackground"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 382
    const-string/jumbo v0, "h5PagePhysicalBack"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 383
    const-string/jumbo v0, "h5ToolbarBack"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 384
    const-string/jumbo v0, "h5ToolbarClose"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 385
    const-string/jumbo v0, "h5ToolbarReload"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 386
    const-string/jumbo v0, "titleClick"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 387
    const-string/jumbo v0, "subtitleClick"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 388
    const-string/jumbo v0, "closeWebview"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 389
    const-string/jumbo v0, "pullRefresh"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 390
    const-string/jumbo v0, "canPullDown"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 391
    const-string/jumbo v0, "showDomain"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 392
    const-string/jumbo v0, "showProgressBar"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 393
    const-string/jumbo v0, "firePullToRefresh"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 394
    const-string/jumbo v0, "restorePullToRefresh"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 395
    const-string/jumbo v0, "setPullDownText"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 396
    const-string/jumbo v0, "H5_RPC_FAILED"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 397
    const-string/jumbo v0, "h5PageError"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 398
    const-string/jumbo v0, "showProgressBar_fallback"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 399
    const-string/jumbo v0, "bounceTopColor"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 400
    const-string/jumbo v0, "disClaimerClick"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 401
    const-string/jumbo v0, "showDisClaimer"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public onRelease()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 277
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->closeHandler:Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;

    .line 278
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Bridge:Linx;

    .line 279
    iget v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerViewMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->disclaimerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 282
    :cond_0
    return-void
.end method

.method public refreshView()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 352
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "showProgress"

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 354
    .local v0, "visible":Z
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Progress:Lcom/alipay/mobile/nebula/view/H5Progress;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/alipay/mobile/nebula/view/H5Progress;->setVisibility(I)V

    .line 355
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->showProgress:Z

    .line 356
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "showDomain"

    invoke-static {v1, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->showDomain:Z

    .line 358
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "pullRefresh"

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->canRefresh:Z

    .line 360
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "canPullDown"

    invoke-static {v1, v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->canPullDown:Z

    .line 363
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->updateProvider()V

    .line 364
    return-void

    .line 354
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public setUrlProviderMargin(I)V
    .locals 2
    .param p1, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 266
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 270
    .local v0, "mLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 271
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h5WebContentView:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->getProviderLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    return-void
.end method
