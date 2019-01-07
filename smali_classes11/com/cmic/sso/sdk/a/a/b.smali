.class public Lcom/cmic/sso/sdk/a/a/b;
.super Lcom/cmic/sso/sdk/a/a/c;
.source "GetPhoneScripParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmic/sso/sdk/a/a/b$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/cmic/sso/sdk/a/a/b$a;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/cmic/sso/sdk/a/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 30
    :try_start_0
    const-string/jumbo v0, "interfacever"

    iget-object v2, p0, Lcom/cmic/sso/sdk/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string/jumbo v0, "ver"

    iget-object v2, p0, Lcom/cmic/sso/sdk/a/a/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string/jumbo v0, "keyid"

    iget-object v2, p0, Lcom/cmic/sso/sdk/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string/jumbo v0, "reqdata"

    iget-object v2, p0, Lcom/cmic/sso/sdk/a/a/b;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmic/sso/sdk/a/a/b;->d:Lcom/cmic/sso/sdk/a/a/b$a;

    invoke-virtual {v3}, Lcom/cmic/sso/sdk/a/a/b$a;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmic/sso/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    :goto_0
    return-object v1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    sget-object v2, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v2, :cond_0

    .line 37
    sget-object v2, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v3, "GetPhoneScripParameter"

    const-string/jumbo v4, "have exception"

    invoke-interface {v2, v3, v4, v0}, Lcom/cmic/sso/sdk/auth/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
