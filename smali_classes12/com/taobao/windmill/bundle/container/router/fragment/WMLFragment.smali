.class public Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;
.super Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;
.source "WMLFragment.java"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public c:Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;

.field private e:Landroid/widget/FrameLayout;

.field private f:Ljql;

.field private g:Ljqk;

.field private h:Landroid/view/View;

.field private i:Ljrz;

.field private j:Ljava/lang/String;

.field private k:Ljpm;

.field private l:Z

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic A(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    return-object v0
.end method

.method static synthetic B(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Ljqd;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->a:Ljqd;

    return-object v0
.end method

.method static synthetic C(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    return-object v0
.end method

.method static synthetic a(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->h:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    return-object v0
.end method

.method static synthetic a(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    .line 7175
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7177
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageType()Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    move-result-object v0

    sget-object v1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;->WEB:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    if-ne v0, v1, :cond_3

    .line 7178
    const-string/jumbo v0, "windmill.web.render.html"

    .line 7179
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 7178
    invoke-static {v0, v1}, Ljra;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 7205
    .end local p1    # "x1":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->k:Ljpm;

    const-string/jumbo v1, "pageFileLoaded"

    invoke-virtual {v0, v1}, Ljpm;->a(Ljava/lang/String;)V

    .line 7206
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->k:Ljpm;

    const-string/jumbo v1, "createPageStart"

    invoke-virtual {v0, v1}, Ljpm;->a(Ljava/lang/String;)V

    .line 7208
    new-instance v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$2;-><init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;Ljava/lang/String;)V

    .line 7214
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    .line 7215
    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getEnterUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljqd;->buildBundleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/windmill/rt/runtime/WMLPageObject;->d:Ljava/lang/String;

    .line 7216
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/windmill/rt/runtime/WMLPageObject;->e:Ljava/lang/String;

    .line 7217
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getEnterUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/windmill/rt/runtime/WMLPageObject;->f:Ljava/lang/String;

    .line 7219
    sget-object v1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;->WEB:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageType()Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7220
    sget-object v1, Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;->WEB:Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;

    iput-object v1, v0, Lcom/taobao/windmill/rt/runtime/WMLPageObject;->c:Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;

    .line 7224
    :goto_0
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->k:Ljpm;

    iput-object v1, v0, Lcom/taobao/windmill/rt/runtime/WMLPageObject;->g:Ljpm;

    .line 7226
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v1

    .line 9161
    iget-object v1, v1, Ljpo;->c:Ljpo$a;

    iget-object v1, v1, Ljpo$a;->k:Ljpq;

    .line 7227
    if-eqz v1, :cond_1

    .line 7228
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v2

    .line 7229
    invoke-interface {v2}, Ljqd;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->zCacheKey:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljpq;->commitVisit(Ljava/lang/String;Ljava/lang/String;)V

    .line 7232
    :cond_1
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->i:Ljrz;

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;

    invoke-direct {v3, p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;-><init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)V

    invoke-interface {v1, v2, v0, v3}, Ljrz;->a(Landroid/content/Context;Lcom/taobao/windmill/rt/runtime/WMLPageObject;Ljry$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->j:Ljava/lang/String;

    .line 7373
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->i:Ljrz;

    invoke-interface {v0}, Ljrz;->e()Ljrz$b;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    .line 7374
    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->toJsonObj()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 7373
    invoke-interface {v0, v1, v2}, Ljrz$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7198
    :cond_2
    :goto_1
    return-void

    .line 7181
    .restart local p1    # "x1":Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->PAGE_NOT_FOUND:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->PAGE_NOT_FOUND:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    .line 7182
    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7181
    invoke-direct {p0, v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b(Ljava/lang/String;)V

    .line 7184
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->a(Z)V

    .line 7187
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v0

    .line 8161
    iget-object v0, v0, Ljpo;->c:Ljpo$a;

    iget-object v0, v0, Ljpo$a;->k:Ljpq;

    .line 7188
    if-eqz v0, :cond_2

    .line 7189
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v1

    .line 7190
    invoke-interface {v1}, Ljqd;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->zCacheKey:Ljava/lang/String;

    sget-object v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->PAGE_NOT_FOUND:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v3, v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    invoke-interface {v0, v2, v1, v3}, Ljpq;->setDamage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7222
    .end local p1    # "x1":Ljava/lang/String;
    :cond_4
    sget-object v1, Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;->WEEX:Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;

    iput-object v1, v0, Lcom/taobao/windmill/rt/runtime/WMLPageObject;->c:Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 539
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->f:Ljql;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->f:Ljql;

    invoke-interface {v0, p1}, Ljql;->show(Z)V

    .line 542
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 98
    const-string/jumbo v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "https://"

    .line 99
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 409
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->g:Ljqk;

    if-nez v1, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Ljqm;->a(Landroid/app/Activity;)Ljqk;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->g:Ljqk;

    .line 411
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->g:Ljqk;

    invoke-interface {v1}, Ljqk;->getView()Landroid/view/View;

    move-result-object v0

    .line 412
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 413
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->e:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->g:Ljqk;

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Ljrg$d;->wml_default_error_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u4e00\u5b9a\u662f\u54ea\u91cc\u51fa\u4e86\u95ee\u9898\uff0c\u518d\u8bd5\u8bd5"

    const-string/jumbo v4, ""

    invoke-interface {v1, v2, v3, p1, v4}, Ljqk;->showError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method static synthetic c(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    return-object v0
.end method

.method static synthetic d(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    return-object v0
.end method

.method private e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    new-instance v0, Ljpm;

    invoke-direct {v0}, Ljpm;-><init>()V

    iput-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->k:Ljpm;

    .line 128
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->k:Ljpm;

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v1

    invoke-interface {v1}, Ljqd;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 1137
    iput-object v1, v0, Ljpm;->b:Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v0

    invoke-interface {v0}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v0

    invoke-interface {v0}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->k:Ljpm;

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v1

    invoke-interface {v1}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->templateAppId:Ljava/lang/String;

    .line 1141
    iput-object v1, v0, Ljpm;->c:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->k:Ljpm;

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v1

    invoke-interface {v1}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->version:Ljava/lang/String;

    .line 1145
    iput-object v1, v0, Ljpm;->d:Ljava/lang/String;

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v0

    invoke-interface {v0}, Ljqd;->getAppCode()Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->k:Ljpm;

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v1

    invoke-interface {v1}, Ljqd;->getAppCode()Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getStatus()Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1153
    iput-object v1, v0, Ljpm;->f:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->k:Ljpm;

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v1

    invoke-interface {v1}, Ljqd;->getAppCode()Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->orgUrl:Ljava/lang/String;

    .line 2149
    iput-object v1, v0, Ljpm;->e:Ljava/lang/String;

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v0

    invoke-interface {v0}, Ljqd;->getRuntimeInstance()Ljrz;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->i:Ljrz;

    .line 142
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->a(Z)V

    .line 144
    new-instance v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$1;

    invoke-direct {v0, p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$1;-><init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 170
    invoke-virtual {v0, v1}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 171
    return-void
.end method

.method static synthetic f(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Ljrz;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->i:Ljrz;

    return-object v0
.end method

.method static synthetic g(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    return-object v0
.end method

.method static synthetic h(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Ljpm;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->k:Ljpm;

    return-object v0
.end method

.method static synthetic i(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->c:Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;

    return-object v0
.end method

.method static synthetic j(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->e:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic k(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Ljqd;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->a:Ljqd;

    return-object v0
.end method

.method static synthetic l(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    return-object v0
.end method

.method static synthetic m(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Ljqd;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->a:Ljqd;

    return-object v0
.end method

.method static synthetic n(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    return-object v0
.end method

.method static synthetic o(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    return-object v0
.end method

.method static synthetic p(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    return-object v0
.end method

.method static synthetic q(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Ljqd;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->a:Ljqd;

    return-object v0
.end method

.method static synthetic r(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    return-object v0
.end method

.method static synthetic s(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Ljqd;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->a:Ljqd;

    return-object v0
.end method

.method static synthetic t(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    return-object v0
.end method

.method static synthetic u(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Ljqd;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->a:Ljqd;

    return-object v0
.end method

.method static synthetic v(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    return-object v0
.end method

.method static synthetic w(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    return-object v0
.end method

.method static synthetic x(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    return-object v0
.end method

.method static synthetic y(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    return-object v0
.end method

.method static synthetic z(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Ljqd;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->a:Ljqd;

    return-object v0
.end method


# virtual methods
.method public a()Ljqe;
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    invoke-super {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->b()V

    .line 115
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->g:Ljqk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->g:Ljqk;

    invoke-interface {v0}, Ljqk;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->g:Ljqk;

    invoke-interface {v0}, Ljqk;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->g:Ljqk;

    .line 117
    invoke-interface {v1}, Ljqk;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->h:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->e()V

    .line 123
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 108
    invoke-direct {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->e()V

    .line 109
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 535
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 536
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onAttach(Landroid/content/Context;)V

    .line 94
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    new-instance v0, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->c:Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;

    .line 77
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->c:Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;

    .line 1058
    iget-object v1, v0, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1062
    :try_start_0
    iget-object v1, v0, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "onCreate"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1063
    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    iget-boolean v0, v0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->isHomePage:Z

    iput-boolean v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->l:Z

    .line 81
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->m:Ljava/lang/String;

    .line 83
    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, -0x1

    .line 383
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 384
    .local v0, "frame":Landroid/widget/FrameLayout;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 3034
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v5

    .line 3149
    iget-object v5, v5, Ljpo;->c:Ljpo$a;

    iget-object v5, v5, Ljpo$a;->h:Ljpz;

    .line 3034
    if-eqz v5, :cond_1

    .line 3035
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v5

    .line 4149
    iget-object v5, v5, Ljpo;->c:Ljpo$a;

    iget-object v5, v5, Ljpo$a;->h:Ljpz;

    .line 3035
    invoke-interface {v5, v4}, Ljpz;->getPageLoadingPrompt(Landroid/app/Activity;)Ljql;

    move-result-object v4

    .line 3036
    if-eqz v4, :cond_1

    .line 387
    :goto_0
    iput-object v4, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->f:Ljql;

    .line 388
    const/16 v4, 0x64

    invoke-static {v4}, Ljqy;->a(I)I

    move-result v3

    .line 389
    .local v3, "width":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 390
    .local v1, "pbLp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 391
    iget-object v4, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->f:Ljql;

    invoke-interface {v4}, Ljql;->getView()Landroid/view/View;

    move-result-object v2

    .line 392
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 393
    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    :cond_0
    iput-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->e:Landroid/widget/FrameLayout;

    .line 398
    return-object v0

    .line 3040
    .end local v1    # "pbLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "width":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 506
    invoke-super {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onDestroy()V

    .line 508
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->i:Ljrz;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->i:Ljrz;

    invoke-interface {v0}, Ljrz;->e()Ljrz$b;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->toJsonObj()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljrz$b;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 512
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->i:Ljrz;

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljrz;->c(Ljava/lang/String;)V

    .line 515
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->k:Ljpm;

    .line 517
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->c:Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->c:Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;

    .line 7115
    iget-object v1, v0, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 7119
    :try_start_0
    iget-object v1, v0, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "onDestroy"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 7120
    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7122
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onHiddenChanged(Z)V
    .locals 4
    .param p1, "hidden"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 483
    invoke-super {p0, p1}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onHiddenChanged(Z)V

    .line 488
    if-eqz p1, :cond_1

    .line 489
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->i:Ljrz;

    invoke-interface {v0}, Ljrz;->e()Ljrz$b;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    .line 490
    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->toJsonObj()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 489
    invoke-interface {v0, v1, v2}, Ljrz$b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 496
    :goto_0
    if-nez p1, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->a:Ljqd;

    invoke-static {p0, v0}, Ljre;->a(Landroid/support/v4/app/Fragment;Ljqd;)V

    .line 499
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->a:Ljqd;

    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->m:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->l:Z

    invoke-static {v0, v1, v2, v3}, Ljre;->a(Landroid/app/Activity;Ljqd;Ljava/lang/String;Z)V

    .line 502
    :cond_0
    return-void

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->i:Ljrz;

    invoke-interface {v0}, Ljrz;->e()Ljrz$b;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    .line 493
    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->toJsonObj()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 492
    invoke-interface {v0, v1, v2}, Ljrz$b;->c(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 443
    invoke-super {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onPause()V

    .line 444
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->c:Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;

    if-eqz v1, :cond_1

    .line 445
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->c:Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;

    .line 6093
    iget-object v2, v1, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 6097
    :try_start_0
    iget-object v2, v1, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "onPause"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 6098
    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 446
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->k:Ljpm;

    invoke-virtual {v1}, Ljpm;->a()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "trackerData":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 448
    sget-object v1, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Ljrc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->c:Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;

    .line 6179
    iget-object v2, v1, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6186
    .end local v0    # "trackerData":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 6183
    .restart local v0    # "trackerData":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v2, v1, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "onReceiveWindmillPerformanceLog"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 6184
    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    .end local v0    # "trackerData":Ljava/lang/String;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 457
    invoke-super {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onResume()V

    .line 459
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->a:Ljqd;

    invoke-static {p0, v0}, Ljre;->a(Landroid/support/v4/app/Fragment;Ljqd;)V

    .line 461
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->a:Ljqd;

    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->m:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->l:Z

    invoke-static {v0, v1, v2, v3}, Ljre;->a(Landroid/app/Activity;Ljqd;Ljava/lang/String;Z)V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->c:Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;

    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->c:Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;

    .line 7081
    iget-object v1, v0, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 7085
    :try_start_0
    iget-object v1, v0, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "onResume"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 7086
    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7088
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 423
    invoke-super {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onStart()V

    .line 424
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->c:Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->c:Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;

    .line 5070
    iget-object v1, v0, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 5074
    :try_start_0
    iget-object v1, v0, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "onStart"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 5075
    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->i:Ljrz;

    invoke-interface {v0}, Ljrz;->e()Ljrz$b;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    .line 428
    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->toJsonObj()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 427
    invoke-interface {v0, v1, v2}, Ljrz$b;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 429
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStop()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 433
    invoke-super {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onStop()V

    .line 434
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->c:Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->c:Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;

    .line 5104
    iget-object v1, v0, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 5108
    :try_start_0
    iget-object v1, v0, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "onStop"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 5109
    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->i:Ljrz;

    invoke-interface {v0}, Ljrz;->e()Ljrz$b;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    .line 438
    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->toJsonObj()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 437
    invoke-interface {v0, v1, v2}, Ljrz$b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 439
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    return-void
.end method
