.class public Lcom/cmic/sso/sdk/a/b/a;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/cmic/sso/sdk/a/b/a;->a:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Bundle;Lcom/cmic/sso/sdk/a/b/b;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    const-string/jumbo v0, "privateKey"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "networktype"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 53
    const-string/jumbo v1, "authtype"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    new-instance v2, Lcom/cmic/sso/sdk/a/a/b;

    invoke-direct {v2}, Lcom/cmic/sso/sdk/a/a/b;-><init>()V

    .line 55
    new-instance v1, Lcom/cmic/sso/sdk/a/a/b$a;

    invoke-direct {v1}, Lcom/cmic/sso/sdk/a/a/b$a;-><init>()V

    .line 57
    const-string/jumbo v5, "1.0"

    iput-object v5, v1, Lcom/cmic/sso/sdk/a/a/b$a;->a:Ljava/lang/String;

    .line 58
    const-string/jumbo v5, "mobile_auth_android_6.6.5.180717"

    iput-object v5, v1, Lcom/cmic/sso/sdk/a/a/b$a;->b:Ljava/lang/String;

    .line 59
    const-string/jumbo v5, "appid"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/cmic/sso/sdk/a/a/b$a;->c:Ljava/lang/String;

    .line 70
    const-string/jumbo v5, "0"

    iput-object v5, v1, Lcom/cmic/sso/sdk/a/a/b$a;->j:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/cmic/sso/sdk/b/e;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/cmic/sso/sdk/a/a/b$a;->k:Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/cmic/sso/sdk/b/e;->b()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/cmic/sso/sdk/a/a/b$a;->n:Ljava/lang/String;

    .line 73
    const-string/jumbo v5, "capaid"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/cmic/sso/sdk/a/a/b$a;->l:Ljava/lang/String;

    .line 74
    const-string/jumbo v5, "capaidTime"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/cmic/sso/sdk/a/a/b$a;->m:Ljava/lang/String;

    .line 75
    const-string/jumbo v5, "scene"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/cmic/sso/sdk/a/a/b$a;->o:Ljava/lang/String;

    .line 76
    const-string/jumbo v5, "appkey"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cmic/sso/sdk/a/a/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/cmic/sso/sdk/a/a/b$a;->p:Ljava/lang/String;

    .line 77
    iput-object v0, v2, Lcom/cmic/sso/sdk/a/a/b;->e:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, "1.0"

    iput-object v0, v2, Lcom/cmic/sso/sdk/a/a/b;->b:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "1.0"

    iput-object v0, v2, Lcom/cmic/sso/sdk/a/a/b;->c:Ljava/lang/String;

    .line 80
    const-string/jumbo v0, "keyid"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/cmic/sso/sdk/a/a/b;->a:Ljava/lang/String;

    .line 81
    iput-object v1, v2, Lcom/cmic/sso/sdk/a/a/b;->d:Lcom/cmic/sso/sdk/a/a/b$a;

    .line 82
    const-string/jumbo v1, "http://www.cmpassport.com/unisdk/alipay/getpsAndToken"

    .line 83
    const/4 v0, 0x3

    if-ne v3, v0, :cond_0

    const-string/jumbo v0, "3"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v3, 0x1

    const-string/jumbo v0, "traceId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/cmic/sso/sdk/a/b/a;->a(Ljava/lang/String;Lcom/cmic/sso/sdk/a/a/c;ZLjava/lang/String;Lcom/cmic/sso/sdk/a/b/b;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    const/4 v3, 0x0

    const-string/jumbo v0, "traceId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/cmic/sso/sdk/a/b/a;->a(Ljava/lang/String;Lcom/cmic/sso/sdk/a/a/c;ZLjava/lang/String;Lcom/cmic/sso/sdk/a/b/b;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;Lcom/cmic/sso/sdk/a/b/b;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    new-instance v2, Lcom/cmic/sso/sdk/a/a/a;

    invoke-direct {v2}, Lcom/cmic/sso/sdk/a/a/a;-><init>()V

    .line 104
    const-string/jumbo v0, "1.0"

    iput-object v0, v2, Lcom/cmic/sso/sdk/a/a/a;->a:Ljava/lang/String;

    .line 105
    const-string/jumbo v0, "2.0"

    iput-object v0, v2, Lcom/cmic/sso/sdk/a/a/a;->b:Ljava/lang/String;

    .line 106
    const-string/jumbo v0, "mobile_auth_android_6.6.5.180717"

    iput-object v0, v2, Lcom/cmic/sso/sdk/a/a/a;->c:Ljava/lang/String;

    .line 107
    const-string/jumbo v0, "appid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/cmic/sso/sdk/a/a/a;->d:Ljava/lang/String;

    .line 108
    invoke-static {}, Lcom/cmic/sso/sdk/b/e;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/cmic/sso/sdk/a/a/a;->e:Ljava/lang/String;

    .line 109
    invoke-static {}, Lcom/cmic/sso/sdk/b/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/cmic/sso/sdk/a/a/a;->f:Ljava/lang/String;

    .line 110
    const-string/jumbo v0, "keyid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/cmic/sso/sdk/a/a/a;->g:Ljava/lang/String;

    .line 111
    const-string/jumbo v0, "apppackage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/cmic/sso/sdk/a/a/a;->i:Ljava/lang/String;

    .line 112
    const-string/jumbo v0, "appsign"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/cmic/sso/sdk/a/a/a;->j:Ljava/lang/String;

    .line 113
    const-string/jumbo v0, "appkey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/cmic/sso/sdk/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/cmic/sso/sdk/a/a/a;->h:Ljava/lang/String;

    .line 116
    const-string/jumbo v1, "https://www.cmpassport.com/unisdk/rs/ckRequest"

    const/4 v3, 0x0

    const-string/jumbo v0, "traceId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/cmic/sso/sdk/a/b/a;->a(Ljava/lang/String;Lcom/cmic/sso/sdk/a/a/c;ZLjava/lang/String;Lcom/cmic/sso/sdk/a/b/b;)V

    .line 117
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/cmic/sso/sdk/a/a/c;ZLjava/lang/String;Lcom/cmic/sso/sdk/a/b/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/cmic/sso/sdk/a/a/c;",
            ">(",
            "Ljava/lang/String;",
            "TT;Z",
            "Ljava/lang/String;",
            "Lcom/cmic/sso/sdk/a/b/b;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    iget-object v0, p0, Lcom/cmic/sso/sdk/a/b/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmic/sso/sdk/b/d;->b(Landroid/content/Context;)I

    move-result v0

    .line 127
    if-nez v0, :cond_3

    .line 128
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 130
    :try_start_0
    const-string/jumbo v0, "resultCode"

    const-string/jumbo v2, "102101"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string/jumbo v0, "desc"

    const-string/jumbo v2, "\u7f51\u7edc\u672a\u8fde\u63a5"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    if-eqz p5, :cond_2

    .line 138
    const-string/jumbo v0, "102101"

    const-string/jumbo v2, "\u7f51\u7edc\u672a\u8fde\u63a5"

    invoke-interface {p5, v0, v2, v1}, Lcom/cmic/sso/sdk/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 194
    :cond_1
    :goto_1
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    sget-object v2, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v2, :cond_0

    .line 134
    sget-object v2, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v3, "BaseRequest"

    const-string/jumbo v4, "have exception"

    invoke-interface {v2, v3, v4, v0}, Lcom/cmic/sso/sdk/auth/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 140
    :cond_2
    sget-object v0, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v0, :cond_1

    .line 141
    sget-object v0, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v1, "BaseRequest"

    const-string/jumbo v2, "callback is null"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/cmic/sso/sdk/auth/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 146
    :cond_3
    new-instance v0, Lcom/cmic/sso/sdk/b/b;

    invoke-direct {v0}, Lcom/cmic/sso/sdk/b/b;-><init>()V

    invoke-virtual {p2}, Lcom/cmic/sso/sdk/a/a/c;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/cmic/sso/sdk/a/b/a;->a:Landroid/content/Context;

    new-instance v5, Lcom/cmic/sso/sdk/a/b/a$1;

    invoke-direct {v5, p0, p5}, Lcom/cmic/sso/sdk/a/b/a$1;-><init>(Lcom/cmic/sso/sdk/a/b/a;Lcom/cmic/sso/sdk/a/b/b;)V

    move-object v1, p1

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/cmic/sso/sdk/b/b;->a(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Lcom/cmic/sso/sdk/b/b$b;Ljava/lang/String;)V

    goto :goto_1
.end method
