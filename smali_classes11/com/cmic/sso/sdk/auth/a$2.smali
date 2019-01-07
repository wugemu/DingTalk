.class Lcom/cmic/sso/sdk/auth/a$2;
.super Ljava/lang/Object;
.source "AuthnBusiness.java"

# interfaces
.implements Lcom/cmic/sso/sdk/a/b/b;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cmic/sso/sdk/auth/b;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Lcom/cmic/sso/sdk/auth/a;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/auth/a;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/b;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/cmic/sso/sdk/auth/a$2;->d:Lcom/cmic/sso/sdk/auth/a;

    iput-object p2, p0, Lcom/cmic/sso/sdk/auth/a$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/cmic/sso/sdk/auth/a$2;->b:Lcom/cmic/sso/sdk/auth/b;

    iput-object p4, p0, Lcom/cmic/sso/sdk/auth/a$2;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    const-string/jumbo v0, "103000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    const-string/jumbo v0, "resultdata"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/a$2;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/cmic/sso/sdk/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    const/4 v1, 0x0

    .line 113
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/a$2;->b:Lcom/cmic/sso/sdk/auth/b;

    iget-object v2, p0, Lcom/cmic/sso/sdk/auth/a$2;->c:Landroid/os/Bundle;

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/cmic/sso/sdk/auth/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/json/JSONObject;)V

    .line 123
    :goto_1
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    sget-object v2, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v2, :cond_0

    .line 116
    sget-object v2, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v3, "AuthnBusiness"

    const-string/jumbo v4, "have exception"

    invoke-interface {v2, v3, v4, v0}, Lcom/cmic/sso/sdk/auth/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/a$2;->b:Lcom/cmic/sso/sdk/auth/b;

    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/a$2;->c:Landroid/os/Bundle;

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/cmic/sso/sdk/auth/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/json/JSONObject;)V

    goto :goto_1
.end method
