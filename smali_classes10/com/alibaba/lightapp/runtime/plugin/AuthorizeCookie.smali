.class public Lcom/alibaba/lightapp/runtime/plugin/AuthorizeCookie;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "AuthorizeCookie.java"


# static fields
.field private static final REFRESH_TIME_STAMP:J = 0x1388L


# instance fields
.field private mLastRefreshTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/AuthorizeCookie;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/AuthorizeCookie;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/AuthorizeCookie;->success(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/AuthorizeCookie;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/AuthorizeCookie;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/AuthorizeCookie;->fail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/AuthorizeCookie;)Lhde$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/AuthorizeCookie;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/AuthorizeCookie;->console()Lhde$a;

    move-result-object v0

    return-object v0
.end method

.method private isValidRefresh()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 50
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/AuthorizeCookie;->mLastRefreshTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 51
    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AuthorizeCookie;->mLastRefreshTime:J

    .line 52
    const/4 v2, 0x1

    .line 54
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public refresh(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/AuthorizeCookie;->isValidRefresh()Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v3, "frequently refresh"

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    .line 45
    :goto_0
    return-object v1

    .line 27
    :cond_0
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/monitor/Utils;->urlEndsWithDingtalk(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1052
    .local v0, "url":Ljava/lang/String;
    :goto_1
    sget-object v1, Lhra$a;->a:Lhqz;

    .line 32
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/AuthorizeCookie$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/AuthorizeCookie$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/AuthorizeCookie;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-interface {v1, v0, v2}, Lhqz;->a(Ljava/lang/String;Lhqz$a;)V

    .line 45
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    goto :goto_0

    .line 30
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .restart local v0    # "url":Ljava/lang/String;
    goto :goto_1
.end method
