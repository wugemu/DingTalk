.class public Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;
.super Ljava/lang/Object;
.source "WMLAppManifest.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;,
        Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;,
        Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;,
        Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;,
        Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
    }
.end annotation


# static fields
.field public static final HOME_PAGE_NAME:Ljava/lang/String; = "homePage"


# instance fields
.field public defaultWindow:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;

.field public pageList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;",
            ">;"
        }
    .end annotation
.end field

.field public tabPageModel:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->pageList:Ljava/util/Map;

    .line 236
    return-void
.end method

.method public static pageNameFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "pageName"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 39
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "scheme":Ljava/lang/String;
    move-object v1, p0

    .line 42
    .local v1, "result":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 43
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 44
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 47
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 48
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "://"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ":/"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    :cond_1
    return-object v1
.end method

.method public static schemeFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "pageName"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 58
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "scheme":Ljava/lang/String;
    move-object v0, p0

    .line 60
    .local v0, "result":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "://"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ":/"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_0
    return-object v0
.end method


# virtual methods
.method public findPageByPageName(Ljava/lang/String;)Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
    .locals 2
    .param p1, "pageName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 27
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->pageList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;

    .line 28
    .local v0, "pageModel":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->clone()Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;

    move-result-object v1

    .line 31
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
