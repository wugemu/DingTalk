.class public Lcom/cmic/sso/sdk/auth/a;
.super Ljava/lang/Object;
.source "AuthnBusiness.java"


# instance fields
.field private a:Lcom/cmic/sso/sdk/a/b/a;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/auth/a;->b:Landroid/content/Context;

    .line 31
    new-instance v0, Lcom/cmic/sso/sdk/a/b/a;

    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmic/sso/sdk/a/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/auth/a;->a:Lcom/cmic/sso/sdk/a/b/a;

    .line 32
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 131
    :try_start_0
    const-string/jumbo v0, "resultCode"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string/jumbo v0, "desc"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    return-object v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    sget-object v2, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v2, :cond_0

    .line 136
    sget-object v2, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v3, "AuthnBusiness"

    const-string/jumbo v4, "have exception"

    invoke-interface {v2, v3, v4, v0}, Lcom/cmic/sso/sdk/auth/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/b;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmic/sso/sdk/b/d;->b(Landroid/content/Context;)I

    move-result v0

    .line 93
    const-string/jumbo v1, "privateKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string/jumbo v2, "networktype"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    const-string/jumbo v2, "3"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 98
    :cond_0
    const-string/jumbo v0, "authtype"

    const-string/jumbo v2, "3"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string/jumbo v0, "operatortype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cmic/sso/sdk/auth/a;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/cmic/sso/sdk/b/d;->a(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/a;->a:Lcom/cmic/sso/sdk/a/b/a;

    iget-object v2, p0, Lcom/cmic/sso/sdk/auth/a;->b:Landroid/content/Context;

    new-instance v3, Lcom/cmic/sso/sdk/auth/a$2;

    invoke-direct {v3, p0, v1, p3, p1}, Lcom/cmic/sso/sdk/auth/a$2;-><init>(Lcom/cmic/sso/sdk/auth/a;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/b;Landroid/os/Bundle;)V

    invoke-virtual {v0, v2, p1, v3}, Lcom/cmic/sso/sdk/a/b/a;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/cmic/sso/sdk/a/b/b;)V

    .line 125
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string/jumbo v0, "200010"

    const-string/jumbo v1, "\u5f53\u524d\u7f51\u7edc\u73af\u5883\u4e0d\u652f\u6301\u7684\u8ba4\u8bc1\u65b9\u5f0f"

    const-string/jumbo v2, "200010"

    const-string/jumbo v3, "\u5f53\u524d\u7f51\u7edc\u73af\u5883\u4e0d\u652f\u6301\u7684\u8ba4\u8bc1\u65b9\u5f0f"

    invoke-direct {p0, v2, v3}, Lcom/cmic/sso/sdk/auth/a;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {p3, v0, v1, p1, v2}, Lcom/cmic/sso/sdk/auth/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Lcom/cmic/sso/sdk/auth/b;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmic/sso/sdk/b/c;->a(Landroid/content/Context;)Lcom/cmic/sso/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/b/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string/jumbo v0, "authtype"

    const-string/jumbo v1, "0"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v0, "200002"

    const-string/jumbo v1, "\u672a\u68c0\u6d4b\u5230sim\u5361"

    const-string/jumbo v2, "200002"

    const-string/jumbo v3, "\u672a\u68c0\u6d4b\u5230sim\u5361"

    invoke-direct {p0, v2, v3}, Lcom/cmic/sso/sdk/auth/a;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {p3, v0, v1, p2, v2}, Lcom/cmic/sso/sdk/auth/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/json/JSONObject;)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cmic/sso/sdk/auth/a;->b(Ljava/lang/String;Landroid/os/Bundle;Lcom/cmic/sso/sdk/auth/b;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Landroid/os/Bundle;Lcom/cmic/sso/sdk/auth/b;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    const-string/jumbo v0, "keyid"

    invoke-static {}, Lcom/cmic/sso/sdk/b/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string/jumbo v0, "apppackage"

    const-string/jumbo v1, ""

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string/jumbo v0, "appsign"

    const-string/jumbo v1, ""

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/a;->a:Lcom/cmic/sso/sdk/a/b/a;

    new-instance v1, Lcom/cmic/sso/sdk/auth/a$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/cmic/sso/sdk/auth/a$1;-><init>(Lcom/cmic/sso/sdk/auth/a;Landroid/os/Bundle;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/b;)V

    invoke-virtual {v0, p2, v1}, Lcom/cmic/sso/sdk/a/b/a;->a(Landroid/os/Bundle;Lcom/cmic/sso/sdk/a/b/b;)V

    .line 87
    return-void
.end method
