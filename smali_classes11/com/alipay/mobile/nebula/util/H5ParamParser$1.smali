.class final Lcom/alipay/mobile/nebula/util/H5ParamParser$1;
.super Ljava/util/HashMap;
.source "H5ParamParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/util/H5ParamParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/alipay/mobile/nebula/util/H5ParamImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/high16 v8, -0x1000000

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 25
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 27
    const-string/jumbo v0, "url"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "url"

    const-string/jumbo v3, "u"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string/jumbo v0, "defaultTitle"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "defaultTitle"

    const-string/jumbo v3, "dt"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string/jumbo v0, "titleImage"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "titleImage"

    const-string/jumbo v3, "ti"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string/jumbo v0, "showTitleBar"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "showTitleBar"

    const-string/jumbo v3, "st"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 40
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string/jumbo v0, "showFavorites"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "showFavorites"

    const-string/jumbo v3, "sf"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 44
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string/jumbo v0, "showReportBtn"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "showReportBtn"

    const-string/jumbo v3, "sr"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 48
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v0, "showToolBar"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "showToolBar"

    const-string/jumbo v3, "sb"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 52
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v0, "showLoading"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "showLoading"

    const-string/jumbo v3, "sl"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 56
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string/jumbo v0, "closeButtonText"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "closeButtonText"

    const-string/jumbo v3, "cb"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string/jumbo v0, "ssoLoginEnabled"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "ssoLoginEnabled"

    const-string/jumbo v3, "le"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 64
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string/jumbo v0, "safePayEnabled"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "safePayEnabled"

    const-string/jumbo v3, "pe"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 68
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string/jumbo v0, "safePayContext"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "safePayContext"

    const-string/jumbo v3, "sc"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v0, "readTitle"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "readTitle"

    const-string/jumbo v3, "rt"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 76
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v0, "bizScenario"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "bizScenario"

    const-string/jumbo v3, "bz"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v0, "antiPhishing"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "antiPhishing"

    const-string/jumbo v3, "ap"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 84
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string/jumbo v0, "toolbarMenu"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "toolbarMenu"

    const-string/jumbo v3, "tm"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string/jumbo v0, "backBehavior"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "backBehavior"

    const-string/jumbo v3, "bb"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, "back"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v0, "pullRefresh"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "pullRefresh"

    const-string/jumbo v3, "pr"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 96
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string/jumbo v0, "showTitleLoading"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "showTitleLoading"

    const-string/jumbo v3, "tl"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 100
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string/jumbo v0, "showProgress"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "showProgress"

    const-string/jumbo v3, "sp"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 104
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 102
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string/jumbo v0, "smartToolBar"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "smartToolBar"

    const-string/jumbo v3, "tb"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 108
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 106
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v0, "enableProxy"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "enableProxy"

    const-string/jumbo v3, "ep"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 112
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string/jumbo v0, "canPullDown"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "canPullDown"

    const-string/jumbo v3, "pd"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 116
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string/jumbo v0, "showDomain"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "showDomain"

    const-string/jumbo v3, "sd"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 120
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 118
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string/jumbo v0, "prefetchLocation"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "prefetchLocation"

    const-string/jumbo v3, "pl"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 124
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string/jumbo v0, "showOptionMenu"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "showOptionMenu"

    const-string/jumbo v3, "so"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 128
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string/jumbo v0, "backgroundColor"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "backgroundColor"

    const-string/jumbo v3, "bc"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 133
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string/jumbo v0, "interceptJump"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "interceptJump"

    const-string/jumbo v3, "ij"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 137
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 135
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string/jumbo v0, "closeAfterPayFinish"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "closeAfterPayFinish"

    const-string/jumbo v3, "cf"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 142
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 138
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string/jumbo v0, "transparent"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "transparent"

    const-string/jumbo v3, "tt"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 146
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 144
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string/jumbo v0, "fullscreen"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "fullscreen"

    const-string/jumbo v3, "fs"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 150
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string/jumbo v0, "landscape"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "landscape"

    const-string/jumbo v3, "ls"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string/jumbo v0, "enableScrollBar"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "enableScrollBar"

    const-string/jumbo v3, "es"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 158
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 156
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string/jumbo v0, "delayRender"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "delayRender"

    const-string/jumbo v3, "dr"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 162
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 160
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string/jumbo v0, "canDestroy"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "canDestroy"

    const-string/jumbo v3, "cd"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 166
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string/jumbo v0, "transparentTitle"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "transparentTitle"

    const-string/jumbo v3, "ttb"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string/jumbo v0, "titleBarColor"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "titleBarColor"

    const-string/jumbo v3, "tbc"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const v5, 0xffffff

    .line 172
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 170
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string/jumbo v0, "scrollDistance"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "scrollDistance"

    const-string/jumbo v3, "sds"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const/16 v5, 0xff

    .line 176
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 174
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string/jumbo v0, "bounceTopColor"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "bounceTopColor"

    const-string/jumbo v3, "btc"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const v5, -0xa0a07

    .line 180
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string/jumbo v0, "allowsBounceVertical"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "allowsBounceVertical"

    const-string/jumbo v3, "abv"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string/jumbo v0, "nbupdate"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "nbupdate"

    const-string/jumbo v3, "nup"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, "async"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string/jumbo v0, "nboffline"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "nboffline"

    const-string/jumbo v3, "nol"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, "async"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string/jumbo v0, "nburl"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "nburl"

    const-string/jumbo v3, "nbu"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string/jumbo v0, "obversion"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "obversion"

    const-string/jumbo v3, "opv"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string/jumbo v0, "nbversion"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "nbversion"

    const-string/jumbo v3, "nbv"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string/jumbo v0, "navSearchBar_type"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "navSearchBar_type"

    const-string/jumbo v3, "nsbt"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string/jumbo v0, "navSearchBar_placeholder"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "navSearchBar_placeholder"

    const-string/jumbo v3, "nsbp"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string/jumbo v0, "navSearchBar_value"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "navSearchBar_value"

    const-string/jumbo v3, "nsbv"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string/jumbo v0, "navSearchBar_maxLength"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "navSearchBar_maxLength"

    const-string/jumbo v3, "nsbml"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 232
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 228
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string/jumbo v0, "navSearchBar_searchPlaceholder"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "navSearchBar_searchPlaceholder"

    const-string/jumbo v3, "nsbsp"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 238
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 234
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string/jumbo v0, "backBtnImage"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "backBtnImage"

    const-string/jumbo v3, "bbi"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, "default"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string/jumbo v0, "backBtnTextColor"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "backBtnTextColor"

    const-string/jumbo v3, "bbtc"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 250
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 246
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string/jumbo v0, "titleColor"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "titleColor"

    const-string/jumbo v3, "tc"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 256
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 252
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string/jumbo v0, "transparentTitleTextAuto"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "transparentTitleTextAuto"

    const-string/jumbo v3, "ttta"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, "NO"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string/jumbo v0, "preSSOLogin"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "preSSOLogin"

    const-string/jumbo v3, "ps"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, "YES"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string/jumbo v0, "preSSOLoginBindingPage"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "preSSOLoginBindingPage"

    const-string/jumbo v3, "psb"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string/jumbo v0, "preSSOLoginUrl"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "preSSOLoginUrl"

    const-string/jumbo v3, "psu"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string/jumbo v0, "tabBarJson"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "tabBarJson"

    const-string/jumbo v3, "tabBarJson"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string/jumbo v0, "enableTabBar"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "enableTabBar"

    const-string/jumbo v3, "enableTabBar"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, "default"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string/jumbo v0, "tabItemCount"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "tabItemCount"

    const-string/jumbo v3, "tabItemCount"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 298
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 294
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string/jumbo v0, "preventAutoLoginLoop"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "preventAutoLoginLoop"

    const-string/jumbo v3, "preventAutoLoginLoop"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 304
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 300
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string/jumbo v0, "transAnimate"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "transAnimate"

    const-string/jumbo v3, "tsam"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 310
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 306
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string/jumbo v0, "nboffmode"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "nboffmode"

    const-string/jumbo v3, "nolm"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, "force"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string/jumbo v0, "openUrlMethod"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "openUrlMethod"

    const-string/jumbo v3, "openUrlMethod"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, "GET"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string/jumbo v0, "openUrlPostParams"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "openUrlPostParams"

    const-string/jumbo v3, "openUrlPostParams"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string/jumbo v0, "nbapptype"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "nbapptype"

    const-string/jumbo v3, "nat"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string/jumbo v0, "shareTokenParams"

    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    const-string/jumbo v2, "shareTokenParams"

    const-string/jumbo v3, "stp"

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    return-void
.end method
