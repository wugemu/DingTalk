.class public Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
.super Ljava/lang/Object;
.source "WMLPageModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/windmill/bundle/container/router/WMLPageModel$a;
    }
.end annotation


# instance fields
.field private enterAnim:I

.field private exitAnim:I

.field public isHomePage:Z

.field private mOrgUrl:Ljava/lang/String;

.field private mPageModel:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;

.field private mPageName:Ljava/lang/String;

.field private mParameter:Lcom/alibaba/fastjson/JSONObject;

.field private mPathWithQuery:Ljava/lang/String;

.field private mQuery:Ljava/lang/String;

.field private mScheme:Ljava/lang/String;

.field private popEnterAnim:I

.field private popExitAnim:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "enterUrl"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->mOrgUrl:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 47
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->mQuery:Ljava/lang/String;

    .line 48
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->mScheme:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->mPageName:Ljava/lang/String;

    .line 52
    iget-object v4, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->mScheme:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 53
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "://"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ":/"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->mPageName:Ljava/lang/String;

    .line 57
    :cond_0
    iget-object v4, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->mPageName:Ljava/lang/String;

    iput-object v4, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->mPathWithQuery:Ljava/lang/String;

    .line 61
    iget-object v4, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->mQuery:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 62
    iget-object v4, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->mPageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->mPageName:Ljava/lang/String;

    .line 66
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->mParameter:Lcom/alibaba/fastjson/JSONObject;

    .line 67
    invoke-virtual {v2}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    .line 69
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->mParameter:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 75
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/taobao/windmill/bundle/container/router/WMLPageModel$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/taobao/windmill/bundle/container/router/WMLPageModel$1;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/windmill/bundle/container/router/WMLPageModel;Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
    .param p1, "x1"    # Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->setPageModel(Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;)V

    return-void
.end method

.method static synthetic access$200(Lcom/taobao/windmill/bundle/container/router/WMLPageModel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->mOrgUrl:Ljava/lang/String;

    return-object v0
.end method

.method private setPageModel(Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;)V
    .locals 0
    .param p1, "mPageModel"    # Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->mPageModel:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;

    .line 111
    return-void
.end method


# virtual methods
.method public getDowngradeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->mPageModel:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->h5Url:Ljava/lang/String;

    return-object v0
.end method

.method public getEnterAnim()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->enterAnim:I

    return v0
.end method

.method public getEnterPageUrl()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 146
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->mQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 148
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->mQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getEnterUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->mPathWithQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getExitAnim()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->exitAnim:I

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->mPageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageType()Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->mPageModel:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->type:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    return-object v0
.end method

.method public getPageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->mPageModel:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getPopEnterAnim()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->popEnterAnim:I

    return v0
.end method

.method public getPopExitAnim()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->popExitAnim:I

    return v0
.end method

.method public getWindow()Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->mPageModel:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->window:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;

    return-object v0
.end method

.method public setCustomAnimations(IIII)V
    .locals 0
    .param p1, "enter"    # I
    .param p2, "exit"    # I
    .param p3, "popEnter"    # I
    .param p4, "popExit"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->enterAnim:I

    .line 79
    iput p2, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->exitAnim:I

    .line 80
    iput p3, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->popEnterAnim:I

    .line 81
    iput p4, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->popExitAnim:I

    .line 82
    return-void
.end method

.method public toJsonObj()Lcom/alibaba/fastjson/JSONObject;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 102
    .local v0, "obj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "url"

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->mParameter:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_0

    .line 104
    const-string/jumbo v1, "param"

    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->mParameter:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_0
    return-object v0
.end method
