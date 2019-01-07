.class Lcom/cmic/sso/sdk/a/b/a$1;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Lcom/cmic/sso/sdk/b/b$b;


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/a/b/b;

.field final synthetic b:Lcom/cmic/sso/sdk/a/b/a;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/a/b/a;Lcom/cmic/sso/sdk/a/b/b;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/cmic/sso/sdk/a/b/a$1;->b:Lcom/cmic/sso/sdk/a/b/a;

    iput-object p2, p0, Lcom/cmic/sso/sdk/a/b/a$1;->a:Lcom/cmic/sso/sdk/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 154
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/cmic/sso/sdk/a/b/a$1;->a:Lcom/cmic/sso/sdk/a/b/b;

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/cmic/sso/sdk/a/b/a$1;->a:Lcom/cmic/sso/sdk/a/b/b;

    const-string/jumbo v2, "resultCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "desc"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/cmic/sso/sdk/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    sget-object v0, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v1, "BaseRequest"

    const-string/jumbo v2, "callback is null"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/cmic/sso/sdk/auth/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    sget-object v1, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v1, :cond_2

    .line 164
    sget-object v1, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v2, "BaseRequest"

    const-string/jumbo v3, "have exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/cmic/sso/sdk/auth/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    :cond_2
    const-string/jumbo v0, "102506"

    const-string/jumbo v1, "\u8bf7\u6c42\u51fa\u9519\u4e86"

    invoke-virtual {p0, v0, v1}, Lcom/cmic/sso/sdk/a/b/a$1;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 175
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 177
    :try_start_0
    const-string/jumbo v0, "resultCode"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string/jumbo v0, "desc"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cmic/sso/sdk/a/b/a$1;->a:Lcom/cmic/sso/sdk/a/b/b;

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/cmic/sso/sdk/a/b/a$1;->a:Lcom/cmic/sso/sdk/a/b/b;

    invoke-interface {v0, p1, p2, v1}, Lcom/cmic/sso/sdk/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 192
    :cond_1
    :goto_1
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    sget-object v2, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v2, :cond_0

    .line 181
    sget-object v2, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v3, "BaseRequest"

    const-string/jumbo v4, "have exception"

    invoke-interface {v2, v3, v4, v0}, Lcom/cmic/sso/sdk/auth/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 188
    :cond_2
    sget-object v0, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v0, :cond_1

    .line 189
    sget-object v0, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v1, "BaseRequest"

    const-string/jumbo v2, "callback is null"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/cmic/sso/sdk/auth/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
