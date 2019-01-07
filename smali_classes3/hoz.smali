.class public final Lhoz;
.super Ljava/lang/Object;
.source "BaseParseUrlImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 18
    new-instance v0, Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;-><init>()V

    .line 19
    .local v0, "baseParseUrlResult":Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;
    iput-object p0, v0, Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;->originUrl:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;->locale:Ljava/lang/String;

    .line 22
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 23
    .local v2, "uri":Landroid/net/Uri;
    const-string/jumbo v3, "dd_version"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;->ddVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .end local v0    # "baseParseUrlResult":Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 24
    .restart local v0    # "baseParseUrlResult":Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;
    :catch_0
    move-exception v1

    .line 25
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    const-string/jumbo v3, "BaseParseUrlImpl"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "parseUrl in BaseParseUrlImpl occurs error: "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1082
    const-string/jumbo v5, "mini_task"

    invoke-static {v5, v3, v4}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 31
    .end local v0    # "baseParseUrlResult":Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
