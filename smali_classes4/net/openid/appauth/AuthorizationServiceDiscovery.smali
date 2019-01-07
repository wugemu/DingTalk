.class public final Lnet/openid/appauth/AuthorizationServiceDiscovery;
.super Ljava/lang/Object;
.source "AuthorizationServiceDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;
    }
.end annotation


# static fields
.field static final A:Lklc$f;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final B:Lklc$e;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final C:Lklc$e;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final D:Lklc$a;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final E:Lklc$a;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final F:Lklc$a;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final G:Lklc$a;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final H:Lklc$f;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final I:Lklc$f;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final a:Lklc$d;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final b:Lklc$f;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final c:Lklc$f;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final d:Lklc$f;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final e:Lklc$f;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final f:Lklc$f;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final g:Lklc$e;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final h:Lklc$e;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final i:Lklc$e;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final j:Lklc$e;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final k:Lklc$e;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final l:Lklc$e;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final m:Lklc$e;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final n:Lklc$e;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final o:Lklc$e;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final p:Lklc$e;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final q:Lklc$e;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final r:Lklc$e;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final s:Lklc$e;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final t:Lklc$e;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final u:Lklc$e;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final v:Lklc$e;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final w:Lklc$e;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final x:Lklc$e;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final y:Lklc$e;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final z:Lklc$e;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final J:Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    const-string/jumbo v0, "issuer"

    .line 1581
    new-instance v1, Lklc$d;

    invoke-direct {v1, v0}, Lklc$d;-><init>(Ljava/lang/String;)V

    .line 46
    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->a:Lklc$d;

    .line 49
    const-string/jumbo v0, "authorization_endpoint"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->a(Ljava/lang/String;)Lklc$f;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->b:Lklc$f;

    .line 52
    const-string/jumbo v0, "token_endpoint"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->a(Ljava/lang/String;)Lklc$f;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->c:Lklc$f;

    .line 55
    const-string/jumbo v0, "userinfo_endpoint"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->a(Ljava/lang/String;)Lklc$f;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->d:Lklc$f;

    .line 58
    const-string/jumbo v0, "jwks_uri"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->a(Ljava/lang/String;)Lklc$f;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->e:Lklc$f;

    .line 61
    const-string/jumbo v0, "registration_endpoint"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->a(Ljava/lang/String;)Lklc$f;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->f:Lklc$f;

    .line 64
    const-string/jumbo v0, "scopes_supported"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->b(Ljava/lang/String;)Lklc$e;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->g:Lklc$e;

    .line 67
    const-string/jumbo v0, "response_types_supported"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->b(Ljava/lang/String;)Lklc$e;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->h:Lklc$e;

    .line 70
    const-string/jumbo v0, "response_modes_supported"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->b(Ljava/lang/String;)Lklc$e;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->i:Lklc$e;

    .line 73
    const-string/jumbo v0, "grant_types_supported"

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "authorization_code"

    aput-object v2, v1, v3

    const-string/jumbo v2, "implicit"

    aput-object v2, v1, v4

    .line 74
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->a(Ljava/lang/String;Ljava/util/List;)Lklc$e;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->j:Lklc$e;

    .line 77
    const-string/jumbo v0, "acr_values_supported"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->b(Ljava/lang/String;)Lklc$e;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->k:Lklc$e;

    .line 80
    const-string/jumbo v0, "subject_types_supported"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->b(Ljava/lang/String;)Lklc$e;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->l:Lklc$e;

    .line 83
    const-string/jumbo v0, "id_token_signing_alg_values_supported"

    .line 84
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->b(Ljava/lang/String;)Lklc$e;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->m:Lklc$e;

    .line 87
    const-string/jumbo v0, "id_token_encryption_enc_values_supported"

    .line 88
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->b(Ljava/lang/String;)Lklc$e;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->n:Lklc$e;

    .line 91
    const-string/jumbo v0, "id_token_encryption_enc_values_supported"

    .line 92
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->b(Ljava/lang/String;)Lklc$e;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->o:Lklc$e;

    .line 95
    const-string/jumbo v0, "userinfo_signing_alg_values_supported"

    .line 96
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->b(Ljava/lang/String;)Lklc$e;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->p:Lklc$e;

    .line 99
    const-string/jumbo v0, "userinfo_encryption_alg_values_supported"

    .line 100
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->b(Ljava/lang/String;)Lklc$e;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->q:Lklc$e;

    .line 103
    const-string/jumbo v0, "userinfo_encryption_enc_values_supported"

    .line 104
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->b(Ljava/lang/String;)Lklc$e;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->r:Lklc$e;

    .line 107
    const-string/jumbo v0, "request_object_signing_alg_values_supported"

    .line 108
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->b(Ljava/lang/String;)Lklc$e;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->s:Lklc$e;

    .line 111
    const-string/jumbo v0, "request_object_encryption_alg_values_supported"

    .line 112
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->b(Ljava/lang/String;)Lklc$e;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->t:Lklc$e;

    .line 115
    const-string/jumbo v0, "request_object_encryption_enc_values_supported"

    .line 116
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->b(Ljava/lang/String;)Lklc$e;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->u:Lklc$e;

    .line 119
    const-string/jumbo v0, "token_endpoint_auth_methods_supported"

    const-string/jumbo v1, "client_secret_basic"

    .line 121
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 120
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->a(Ljava/lang/String;Ljava/util/List;)Lklc$e;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->v:Lklc$e;

    .line 124
    const-string/jumbo v0, "token_endpoint_auth_signing_alg_values_supported"

    .line 125
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->b(Ljava/lang/String;)Lklc$e;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->w:Lklc$e;

    .line 128
    const-string/jumbo v0, "display_values_supported"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->b(Ljava/lang/String;)Lklc$e;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->x:Lklc$e;

    .line 131
    const-string/jumbo v0, "claim_types_supported"

    const-string/jumbo v1, "normal"

    .line 132
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->a(Ljava/lang/String;Ljava/util/List;)Lklc$e;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->y:Lklc$e;

    .line 135
    const-string/jumbo v0, "claims_supported"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->b(Ljava/lang/String;)Lklc$e;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->z:Lklc$e;

    .line 138
    const-string/jumbo v0, "service_documentation"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->a(Ljava/lang/String;)Lklc$f;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->A:Lklc$f;

    .line 141
    const-string/jumbo v0, "claims_locales_supported"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->b(Ljava/lang/String;)Lklc$e;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->B:Lklc$e;

    .line 144
    const-string/jumbo v0, "ui_locales_supported"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->b(Ljava/lang/String;)Lklc$e;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->C:Lklc$e;

    .line 147
    const-string/jumbo v0, "claims_parameter_supported"

    .line 148
    invoke-static {v0, v3}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->a(Ljava/lang/String;Z)Lklc$a;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->D:Lklc$a;

    .line 151
    const-string/jumbo v0, "request_parameter_supported"

    .line 152
    invoke-static {v0, v3}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->a(Ljava/lang/String;Z)Lklc$a;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->E:Lklc$a;

    .line 155
    const-string/jumbo v0, "request_uri_parameter_supported"

    .line 156
    invoke-static {v0, v4}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->a(Ljava/lang/String;Z)Lklc$a;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->F:Lklc$a;

    .line 159
    const-string/jumbo v0, "require_request_uri_registration"

    .line 160
    invoke-static {v0, v3}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->a(Ljava/lang/String;Z)Lklc$a;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->G:Lklc$a;

    .line 163
    const-string/jumbo v0, "op_policy_uri"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->a(Ljava/lang/String;)Lklc$f;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->H:Lklc$f;

    .line 166
    const-string/jumbo v0, "op_tos_uri"

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->a(Ljava/lang/String;)Lklc$f;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->I:Lklc$f;

    .line 171
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->a:Lklc$d;

    iget-object v1, v1, Lklc$d;->a:Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->b:Lklc$f;

    iget-object v1, v1, Lklc$f;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->e:Lklc$f;

    iget-object v1, v1, Lklc$f;->a:Ljava/lang/String;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    sget-object v2, Lnet/openid/appauth/AuthorizationServiceDiscovery;->h:Lklc$e;

    iget-object v2, v2, Lklc$e;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lnet/openid/appauth/AuthorizationServiceDiscovery;->l:Lklc$e;

    iget-object v2, v2, Lklc$e;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lnet/openid/appauth/AuthorizationServiceDiscovery;->m:Lklc$e;

    iget-object v2, v2, Lklc$e;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->K:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "discoveryDoc"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    invoke-static {p1}, Lkle;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    iput-object v1, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->J:Lorg/json/JSONObject;

    .line 194
    sget-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->K:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    .local v0, "mandatory":Ljava/lang/String;
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->J:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->J:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 196
    :cond_1
    new-instance v1, Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;

    invoke-direct {v1, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    .end local v0    # "mandatory":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static a(Ljava/lang/String;Z)Lklc$a;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 609
    new-instance v0, Lklc$a;

    invoke-direct {v0, p0, p1}, Lklc$a;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)Lklc$e;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lklc$e;"
        }
    .end annotation

    .prologue
    .line 602
    .local p1, "defaults":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lklc$e;

    invoke-direct {v0, p0, p1}, Lklc$e;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lklc$f;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 588
    new-instance v0, Lklc$f;

    invoke-direct {v0, p0}, Lklc$f;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lklc$e;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 595
    new-instance v0, Lklc$e;

    invoke-direct {v0, p0}, Lklc$e;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Lklc$b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lklc$b",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "field":Lklc$b;, "Lklc$b<TT;>;"
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->J:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lklc;->a(Lorg/json/JSONObject;Lklc$b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
