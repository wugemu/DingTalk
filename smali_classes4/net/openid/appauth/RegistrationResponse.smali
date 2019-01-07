.class public final Lnet/openid/appauth/RegistrationResponse;
.super Ljava/lang/Object;
.source "RegistrationResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/RegistrationResponse$a;,
        Lnet/openid/appauth/RegistrationResponse$MissingArgumentException;
    }
.end annotation


# static fields
.field private static final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lklf;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final c:Ljava/lang/Long;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final e:Ljava/lang/Long;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final g:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final i:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "client_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "client_secret"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "client_secret_expires_at"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "registration_access_token"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "registration_client_uri"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "client_id_issued_at"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "token_endpoint_auth_method"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lnet/openid/appauth/RegistrationResponse;->j:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lklf;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "request"    # Lklf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "clientId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "clientIdIssuedAt"    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "clientSecret"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "clientSecretExpiresAt"    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "registrationAccessToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "registrationClientUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "tokenEndpointAuthMethod"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lklf;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p9, "additionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object p1, p0, Lnet/openid/appauth/RegistrationResponse;->a:Lklf;

    .line 367
    iput-object p2, p0, Lnet/openid/appauth/RegistrationResponse;->b:Ljava/lang/String;

    .line 368
    iput-object p3, p0, Lnet/openid/appauth/RegistrationResponse;->c:Ljava/lang/Long;

    .line 369
    iput-object p4, p0, Lnet/openid/appauth/RegistrationResponse;->d:Ljava/lang/String;

    .line 370
    iput-object p5, p0, Lnet/openid/appauth/RegistrationResponse;->e:Ljava/lang/Long;

    .line 371
    iput-object p6, p0, Lnet/openid/appauth/RegistrationResponse;->f:Ljava/lang/String;

    .line 372
    iput-object p7, p0, Lnet/openid/appauth/RegistrationResponse;->g:Landroid/net/Uri;

    .line 373
    iput-object p8, p0, Lnet/openid/appauth/RegistrationResponse;->h:Ljava/lang/String;

    .line 374
    iput-object p9, p0, Lnet/openid/appauth/RegistrationResponse;->i:Ljava/util/Map;

    .line 375
    return-void
.end method

.method synthetic constructor <init>(Lklf;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;B)V
    .locals 0
    .param p1, "x0"    # Lklf;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/Long;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/Long;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Landroid/net/Uri;
    .param p8, "x7"    # Ljava/lang/String;
    .param p9, "x8"    # Ljava/util/Map;

    .prologue
    .line 37
    invoke-direct/range {p0 .. p9}, Lnet/openid/appauth/RegistrationResponse;-><init>(Lklf;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lnet/openid/appauth/RegistrationResponse;
    .locals 11
    .param p0, "json"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 448
    const-string/jumbo v0, "json cannot be null"

    invoke-static {p0, v0}, Lkle;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string/jumbo v0, "request"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "registration request not found in JSON"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    new-instance v9, Lnet/openid/appauth/RegistrationResponse$a;

    const-string/jumbo v0, "request"

    .line 454
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lklf;->a(Lorg/json/JSONObject;)Lklf;

    move-result-object v0

    invoke-direct {v9, v0}, Lnet/openid/appauth/RegistrationResponse$a;-><init>(Lklf;)V

    const-string/jumbo v0, "client_id"

    .line 455
    invoke-static {p0, v0}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1202
    const-string/jumbo v1, "client ID cannot be null or empty"

    invoke-static {v0, v1}, Lkle;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1203
    iput-object v0, v9, Lnet/openid/appauth/RegistrationResponse$a;->b:Ljava/lang/String;

    .line 455
    const-string/jumbo v0, "client_id_issued_at"

    .line 456
    invoke-static {p0, v0}, Lklc;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 1214
    iput-object v0, v9, Lnet/openid/appauth/RegistrationResponse$a;->c:Ljava/lang/Long;

    .line 456
    const-string/jumbo v0, "client_secret"

    .line 457
    invoke-static {p0, v0}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1225
    iput-object v0, v9, Lnet/openid/appauth/RegistrationResponse$a;->d:Ljava/lang/String;

    .line 457
    const-string/jumbo v0, "client_secret_expires_at"

    .line 459
    invoke-static {p0, v0}, Lklc;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 1236
    iput-object v0, v9, Lnet/openid/appauth/RegistrationResponse$a;->e:Ljava/lang/Long;

    .line 458
    const-string/jumbo v0, "registration_access_token"

    .line 461
    invoke-static {p0, v0}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1247
    iput-object v0, v9, Lnet/openid/appauth/RegistrationResponse$a;->f:Ljava/lang/String;

    .line 460
    const-string/jumbo v0, "registration_client_uri"

    .line 463
    invoke-static {p0, v0}, Lklc;->e(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1266
    iput-object v0, v9, Lnet/openid/appauth/RegistrationResponse$a;->g:Landroid/net/Uri;

    .line 462
    const-string/jumbo v0, "token_endpoint_auth_method"

    .line 465
    invoke-static {p0, v0}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2255
    iput-object v0, v9, Lnet/openid/appauth/RegistrationResponse$a;->h:Ljava/lang/String;

    .line 464
    const-string/jumbo v0, "additionalParameters"

    .line 467
    invoke-static {p0, v0}, Lklc;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 3037
    sget-object v1, Lnet/openid/appauth/RegistrationResponse;->j:Ljava/util/Set;

    .line 2274
    invoke-static {v0, v1}, Lkkp;->a(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v9, Lnet/openid/appauth/RegistrationResponse$a;->i:Ljava/util/Map;

    .line 3282
    new-instance v0, Lnet/openid/appauth/RegistrationResponse;

    iget-object v1, v9, Lnet/openid/appauth/RegistrationResponse$a;->a:Lklf;

    iget-object v2, v9, Lnet/openid/appauth/RegistrationResponse$a;->b:Ljava/lang/String;

    iget-object v3, v9, Lnet/openid/appauth/RegistrationResponse$a;->c:Ljava/lang/Long;

    iget-object v4, v9, Lnet/openid/appauth/RegistrationResponse$a;->d:Ljava/lang/String;

    iget-object v5, v9, Lnet/openid/appauth/RegistrationResponse$a;->e:Ljava/lang/Long;

    iget-object v6, v9, Lnet/openid/appauth/RegistrationResponse$a;->f:Ljava/lang/String;

    iget-object v7, v9, Lnet/openid/appauth/RegistrationResponse$a;->g:Landroid/net/Uri;

    iget-object v8, v9, Lnet/openid/appauth/RegistrationResponse$a;->h:Ljava/lang/String;

    iget-object v9, v9, Lnet/openid/appauth/RegistrationResponse$a;->i:Ljava/util/Map;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lnet/openid/appauth/RegistrationResponse;-><init>(Lklf;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;B)V

    .line 468
    return-object v0
.end method
