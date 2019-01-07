.class public final Lkkv;
.super Ljava/lang/Object;
.source "AuthorizationServiceConfiguration.java"


# instance fields
.field public final a:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final b:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final c:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final d:Lnet/openid/appauth/AuthorizationServiceDiscovery;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
    .param p1, "authorizationEndpoint"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "tokenEndpoint"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "registrationEndpoint"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-static {p1}, Lkle;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lkkv;->a:Landroid/net/Uri;

    .line 125
    invoke-static {p2}, Lkle;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lkkv;->b:Landroid/net/Uri;

    .line 126
    iput-object p3, p0, Lkkv;->c:Landroid/net/Uri;

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lkkv;->d:Lnet/openid/appauth/AuthorizationServiceDiscovery;

    .line 128
    return-void
.end method

.method private constructor <init>(Lnet/openid/appauth/AuthorizationServiceDiscovery;)V
    .locals 1
    .param p1, "discoveryDoc"    # Lnet/openid/appauth/AuthorizationServiceDiscovery;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const-string/jumbo v0, "docJson cannot be null"

    invoke-static {p1, v0}, Lkle;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iput-object p1, p0, Lkkv;->d:Lnet/openid/appauth/AuthorizationServiceDiscovery;

    .line 1251
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->b:Lklc$f;

    invoke-virtual {p1, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->a(Lklc$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 140
    iput-object v0, p0, Lkkv;->a:Landroid/net/Uri;

    .line 1259
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->c:Lklc$f;

    invoke-virtual {p1, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->a(Lklc$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 141
    iput-object v0, p0, Lkkv;->b:Landroid/net/Uri;

    .line 1285
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->f:Lklc$f;

    invoke-virtual {p1, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->a(Lklc$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 142
    iput-object v0, p0, Lkkv;->c:Landroid/net/Uri;

    .line 143
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lkkv;
    .locals 6
    .param p0, "json"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 179
    const-string/jumbo v2, "json object cannot be null"

    invoke-static {p0, v2}, Lkle;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string/jumbo v2, "discoveryDoc"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    :try_start_0
    new-instance v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;

    const-string/jumbo v2, "discoveryDoc"

    .line 184
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/openid/appauth/AuthorizationServiceDiscovery;-><init>(Lorg/json/JSONObject;)V

    .line 185
    .local v0, "discoveryDoc":Lnet/openid/appauth/AuthorizationServiceDiscovery;
    new-instance v2, Lkkv;

    invoke-direct {v2, v0}, Lkkv;-><init>(Lnet/openid/appauth/AuthorizationServiceDiscovery;)V
    :try_end_0
    .catch Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v0    # "discoveryDoc":Lnet/openid/appauth/AuthorizationServiceDiscovery;
    :goto_0
    return-object v2

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "ex":Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;
    new-instance v2, Lorg/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Missing required field in discovery doc: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;->getMissingField()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 191
    .end local v1    # "ex":Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;
    :cond_0
    const-string/jumbo v2, "authorizationEndpoint"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "missing authorizationEndpoint"

    invoke-static {v2, v3}, Lkle;->a(ZLjava/lang/Object;)V

    .line 192
    const-string/jumbo v2, "tokenEndpoint"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "missing tokenEndpoint"

    invoke-static {v2, v3}, Lkle;->a(ZLjava/lang/Object;)V

    .line 193
    new-instance v2, Lkkv;

    const-string/jumbo v3, "authorizationEndpoint"

    .line 194
    invoke-static {p0, v3}, Lklc;->d(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "tokenEndpoint"

    .line 195
    invoke-static {p0, v4}, Lklc;->d(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "registrationEndpoint"

    .line 196
    invoke-static {p0, v5}, Lklc;->e(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lkkv;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 150
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 151
    .local v0, "json":Lorg/json/JSONObject;
    const-string/jumbo v1, "authorizationEndpoint"

    iget-object v2, p0, Lkkv;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string/jumbo v1, "tokenEndpoint"

    iget-object v2, p0, Lkkv;->b:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lkkv;->c:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 154
    const-string/jumbo v1, "registrationEndpoint"

    iget-object v2, p0, Lkkv;->c:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    iget-object v1, p0, Lkkv;->d:Lnet/openid/appauth/AuthorizationServiceDiscovery;

    if-eqz v1, :cond_1

    .line 157
    const-string/jumbo v1, "discoveryDoc"

    iget-object v2, p0, Lkkv;->d:Lnet/openid/appauth/AuthorizationServiceDiscovery;

    iget-object v2, v2, Lnet/openid/appauth/AuthorizationServiceDiscovery;->J:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 159
    :cond_1
    return-object v0
.end method
