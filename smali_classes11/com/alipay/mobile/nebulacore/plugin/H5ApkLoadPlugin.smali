.class public Lcom/alipay/mobile/nebulacore/plugin/H5ApkLoadPlugin;
.super Lipd;
.source "H5ApkLoadPlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ApkLoadPlugin"


# instance fields
.field private h5Page:Liop;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method private loadSecLoadPage(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    const/4 v0, 0x1

    .line 102
    .local v0, "isNeed":Z
    const-string/jumbo v3, "h5_loadSecPage"

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "needLoadSecPage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    const-string/jumbo v3, "no"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 109
    :cond_0
    if-eqz v0, :cond_1

    .line 111
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "https://ds.alipay.com/error/securityLink.htm?url="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "utf-8"

    .line 113
    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "nextUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ApkLoadPlugin;->h5Page:Liop;

    invoke-interface {v3, v2}, Liop;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v2    # "nextUrl":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v3

    const-string/jumbo v3, "H5ApkLoadPlugin"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Error: Unsupported encoding exception on "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 14
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 55
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v10, "h5PageShouldLoadUrl"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1121
    iget-object v10, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 56
    const-string/jumbo v11, "url"

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 57
    .local v9, "url":Ljava/lang/String;
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, "path":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ".apk"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 59
    :cond_0
    const/4 v10, 0x0

    .line 97
    .end local v6    # "path":Ljava/lang/String;
    .end local v9    # "url":Ljava/lang/String;
    :goto_0
    return v10

    .line 62
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v9    # "url":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v12, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ApkLoadPlugin;->h5Page:Liop;

    invoke-interface {v12}, Liop;->getLastTouch()J

    move-result-wide v12

    sub-long v2, v10, v12

    .line 63
    .local v2, "delta":J
    const-string/jumbo v10, "H5ApkLoadPlugin"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "apk file url "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    iget-object v10, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 65
    const-string/jumbo v11, "historySize"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v5

    .line 66
    .local v5, "historySize":I
    const-string/jumbo v10, "H5ApkLoadPlugin"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "historySize "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " delta "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-wide/16 v10, 0x190

    cmp-long v10, v2, v10

    if-gez v10, :cond_2

    .line 71
    const-string/jumbo v10, "H5ApkLoadPlugin"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "user trigger apk download delta "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v10, 0x0

    goto :goto_0

    .line 75
    :cond_2
    if-gtz v5, :cond_3

    .line 76
    const-string/jumbo v10, "H5ApkLoadPlugin"

    const-string/jumbo v11, "skip first apk download url"

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v10, 0x0

    goto :goto_0

    .line 80
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v4

    .line 81
    .local v4, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v4, :cond_4

    invoke-virtual {v4, v9}, Lcom/alipay/mobile/h5container/service/H5Service;->isAliDomain(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 83
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 87
    :cond_4
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->getNewDomainSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "domainSuffix":Ljava/lang/String;
    const-string/jumbo v10, "h5_302_download_apk_whiteList"

    invoke-static {v10}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, "regexArray":Ljava/lang/String;
    invoke-static {v1, v7}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->isSomeDomainInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 90
    .local v8, "result":Z
    if-eqz v8, :cond_5

    .line 91
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 94
    :cond_5
    invoke-direct {p0, v9}, Lcom/alipay/mobile/nebulacore/plugin/H5ApkLoadPlugin;->loadSecLoadPage(Ljava/lang/String;)V

    .line 95
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 97
    .end local v1    # "domainSuffix":Ljava/lang/String;
    .end local v2    # "delta":J
    .end local v4    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v5    # "historySize":I
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "regexArray":Ljava/lang/String;
    .end local v8    # "result":Z
    .end local v9    # "url":Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public onInitialize(Liob;)V
    .locals 0
    .param p1, "coreNode"    # Liob;

    .prologue
    .line 39
    check-cast p1, Liop;

    .end local p1    # "coreNode":Liob;
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ApkLoadPlugin;->h5Page:Liop;

    .line 40
    return-void
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 49
    const-string/jumbo v0, "h5PageShouldLoadUrl"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ApkLoadPlugin;->h5Page:Liop;

    .line 45
    return-void
.end method
