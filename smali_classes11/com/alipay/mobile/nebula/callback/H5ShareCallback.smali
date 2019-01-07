.class public Lcom/alipay/mobile/nebula/callback/H5ShareCallback;
.super Ljava/lang/Object;
.source "H5ShareCallback.java"

# interfaces
.implements Lioa;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/callback/H5ShareCallback$ShareResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "H5ShareCallback"

.field public static TIMEOUT:I


# instance fields
.field private h5Page:Liop;

.field private shareCallBack:Z

.field private shareResult:Lcom/alipay/mobile/nebula/callback/H5ShareCallback$ShareResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x3e8

    sput v0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Liop;Lcom/alipay/mobile/nebula/callback/H5ShareCallback$ShareResult;)V
    .locals 2
    .param p1, "h5Page"    # Liop;
    .param p2, "shareResult"    # Lcom/alipay/mobile/nebula/callback/H5ShareCallback$ShareResult;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->h5Page:Liop;

    .line 36
    iput-object p2, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->shareResult:Lcom/alipay/mobile/nebula/callback/H5ShareCallback$ShareResult;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->shareCallBack:Z

    .line 38
    sget v0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->TIMEOUT:I

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 39
    return-void
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getNebulaResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCallBack(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6
    .param p1, "result"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    iget-boolean v4, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->shareCallBack:Z

    if-eqz v4, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->shareCallBack:Z

    .line 47
    const-string/jumbo v4, "H5ShareCallback"

    const-string/jumbo v5, "getShare or getCollect from share.js"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v4, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->h5Page:Liop;

    if-eqz v4, :cond_0

    .line 51
    if-nez p1, :cond_3

    .line 52
    const-string/jumbo v4, "H5ShareCallback"

    const-string/jumbo v5, "getShare or getCollect from share.js but get nothing"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string/jumbo v1, ""

    .line 54
    .local v1, "defaultImageUrl":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->h5Page:Liop;

    invoke-interface {v4}, Liop;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "defaultDesc":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->h5Page:Liop;

    .line 56
    invoke-interface {v4}, Liop;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 57
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/nebula/R$string;->h5_shareurl:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "defaultTitle":Ljava/lang/String;
    :goto_1
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 59
    .local v2, "defaultResult":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "imgUrl"

    invoke-virtual {v2, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string/jumbo v4, "desc"

    invoke-virtual {v2, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string/jumbo v4, "title"

    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string/jumbo v4, "link"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string/jumbo v4, "fromMeta"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v4, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->shareResult:Lcom/alipay/mobile/nebula/callback/H5ShareCallback$ShareResult;

    invoke-interface {v4, v2}, Lcom/alipay/mobile/nebula/callback/H5ShareCallback$ShareResult;->shareResult(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 57
    .end local v2    # "defaultResult":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "defaultTitle":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->h5Page:Liop;

    invoke-interface {v4}, Liop;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 66
    .end local v0    # "defaultDesc":Ljava/lang/String;
    .end local v1    # "defaultImageUrl":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->shareResult:Lcom/alipay/mobile/nebula/callback/H5ShareCallback$ShareResult;

    invoke-interface {v4, p1}, Lcom/alipay/mobile/nebula/callback/H5ShareCallback$ShareResult;->shareResult(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method

.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    iget-boolean v4, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->shareCallBack:Z

    if-eqz v4, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->shareCallBack:Z

    .line 76
    const-string/jumbo v4, "H5ShareCallback"

    const-string/jumbo v5, "getShare or getCollect timeout return default"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v4, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->h5Page:Liop;

    if-eqz v4, :cond_0

    .line 80
    const-string/jumbo v1, ""

    .line 81
    .local v1, "defaultImageUrl":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->h5Page:Liop;

    invoke-interface {v4}, Liop;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "defaultDesc":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->h5Page:Liop;

    .line 83
    invoke-interface {v4}, Liop;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/nebula/R$string;->h5_shareurl:I

    .line 84
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "defaultTitle":Ljava/lang/String;
    :goto_1
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 86
    .local v2, "defaultResult":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "imgUrl"

    invoke-virtual {v2, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string/jumbo v4, "desc"

    invoke-virtual {v2, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string/jumbo v4, "title"

    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string/jumbo v4, "link"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string/jumbo v4, "fromMeta"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v4, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->shareResult:Lcom/alipay/mobile/nebula/callback/H5ShareCallback$ShareResult;

    invoke-interface {v4, v2}, Lcom/alipay/mobile/nebula/callback/H5ShareCallback$ShareResult;->shareResult(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 84
    .end local v2    # "defaultResult":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "defaultTitle":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->h5Page:Liop;

    invoke-interface {v4}, Liop;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
