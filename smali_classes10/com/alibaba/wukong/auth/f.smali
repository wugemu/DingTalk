.class public Lcom/alibaba/wukong/auth/f;
.super Ljava/lang/Object;
.source "AuthUtil.java"


# direct methods
.method public static a(Lcom/alibaba/wukong/auth/ALoginParam;Landroid/content/Context;)Lcom/alibaba/wukong/auth/l;
    .locals 4
    .param p0, "param"    # Lcom/alibaba/wukong/auth/ALoginParam;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    new-instance v0, Lcom/alibaba/wukong/auth/l;

    invoke-direct {v0}, Lcom/alibaba/wukong/auth/l;-><init>()V

    .line 54
    .local v0, "model":Lcom/alibaba/wukong/auth/l;
    iget-object v1, p0, Lcom/alibaba/wukong/auth/ALoginParam;->domain:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/l;->domain:Ljava/lang/String;

    .line 55
    iget-wide v2, p0, Lcom/alibaba/wukong/auth/ALoginParam;->openId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/auth/l;->openId:Ljava/lang/Long;

    .line 56
    iget-object v1, p0, Lcom/alibaba/wukong/auth/ALoginParam;->nonce:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/l;->nonce:Ljava/lang/String;

    .line 57
    iget-wide v2, p0, Lcom/alibaba/wukong/auth/ALoginParam;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/auth/l;->timestamp:Ljava/lang/Long;

    .line 58
    invoke-static {p1}, Lcom/alibaba/wukong/WKManager;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/auth/l;->appKey:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/alibaba/wukong/auth/ALoginParam;->signature:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/l;->signature:Ljava/lang/String;

    .line 60
    invoke-static {p1}, Lcom/alibaba/wukong/auth/bk;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/auth/l;->S:Ljava/lang/String;

    .line 61
    return-object v0
.end method

.method public static a(Lcom/alibaba/wukong/auth/AuthParam;Landroid/content/Context;Z)Lcom/alibaba/wukong/auth/m;
    .locals 2
    .param p0, "param"    # Lcom/alibaba/wukong/auth/AuthParam;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isReg"    # Z

    .prologue
    .line 32
    new-instance v0, Lcom/alibaba/wukong/auth/m;

    invoke-direct {v0}, Lcom/alibaba/wukong/auth/m;-><init>()V

    .line 33
    .local v0, "model":Lcom/alibaba/wukong/auth/m;
    iget-object v1, p0, Lcom/alibaba/wukong/auth/AuthParam;->org:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/m;->org:Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcom/alibaba/wukong/auth/AuthParam;->domain:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/m;->domain:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Lcom/alibaba/wukong/auth/AuthParam;->openId:Ljava/lang/Long;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/m;->openId:Ljava/lang/Long;

    .line 36
    iget-object v1, p0, Lcom/alibaba/wukong/auth/AuthParam;->openSecret:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/m;->openSecret:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/alibaba/wukong/WKManager;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/auth/m;->appKey:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/alibaba/wukong/auth/AuthParam;->appSecret:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/m;->appSecret:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Lcom/alibaba/wukong/auth/bk;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/auth/m;->S:Ljava/lang/String;

    .line 40
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/auth/m;->T:Ljava/lang/Boolean;

    .line 41
    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/alibaba/wukong/auth/p;
    .locals 2
    .param p0, "refreshToken"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    new-instance v0, Lcom/alibaba/wukong/auth/p;

    invoke-direct {v0}, Lcom/alibaba/wukong/auth/p;-><init>()V

    .line 46
    .local v0, "model":Lcom/alibaba/wukong/auth/p;
    iput-object p0, v0, Lcom/alibaba/wukong/auth/p;->refreshToken:Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lcom/alibaba/wukong/WKManager;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/auth/p;->appKey:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/alibaba/wukong/auth/bk;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/auth/p;->S:Ljava/lang/String;

    .line 49
    return-object v0
.end method

.method public static a(Lcom/alibaba/wukong/auth/LoginParam;Landroid/content/Context;)Lcom/alibaba/wukong/auth/t;
    .locals 2
    .param p0, "param"    # Lcom/alibaba/wukong/auth/LoginParam;
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lcom/alibaba/wukong/auth/t;

    invoke-direct {v0}, Lcom/alibaba/wukong/auth/t;-><init>()V

    .line 24
    .local v0, "model":Lcom/alibaba/wukong/auth/t;
    iget-object v1, p0, Lcom/alibaba/wukong/auth/LoginParam;->domain:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/t;->domain:Ljava/lang/String;

    .line 25
    invoke-static {p1}, Lcom/alibaba/wukong/WKManager;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/auth/t;->appKey:Ljava/lang/String;

    .line 26
    iget-object v1, p0, Lcom/alibaba/wukong/auth/LoginParam;->secretToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/t;->secretToken:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcom/alibaba/wukong/auth/bk;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/auth/t;->S:Ljava/lang/String;

    .line 28
    return-object v0
.end method
