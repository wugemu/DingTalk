.class public final Lkli;
.super Ljava/lang/Object;
.source "TokenResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkli$a;
    }
.end annotation


# static fields
.field private static final i:Ljava/util/Set;
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
.field public final a:Lklh;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final d:Ljava/lang/Long;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final g:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final h:Ljava/util/Map;
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
    .line 83
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "token_type"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "access_token"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "expires_in"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "refresh_token"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "id_token"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "scope"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lkli;->i:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lklh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "request"    # Lklh;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "tokenType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "accessToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "accessTokenExpirationTime"    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "idToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "refreshToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "scope"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lklh;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 401
    .local p8, "additionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p1, p0, Lkli;->a:Lklh;

    .line 403
    iput-object p2, p0, Lkli;->b:Ljava/lang/String;

    .line 404
    iput-object p3, p0, Lkli;->c:Ljava/lang/String;

    .line 405
    iput-object p4, p0, Lkli;->d:Ljava/lang/Long;

    .line 406
    iput-object p5, p0, Lkli;->e:Ljava/lang/String;

    .line 407
    iput-object p6, p0, Lkli;->f:Ljava/lang/String;

    .line 408
    iput-object p7, p0, Lkli;->g:Ljava/lang/String;

    .line 409
    iput-object p8, p0, Lkli;->h:Ljava/util/Map;

    .line 410
    return-void
.end method

.method public static synthetic a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lkli;->i:Ljava/util/Set;

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lkli;
    .locals 2
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
    .line 457
    const-string/jumbo v0, "request"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "token request not provided and not found in JSON"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_0
    new-instance v0, Lkli$a;

    const-string/jumbo v1, "request"

    .line 462
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lklh;->a(Lorg/json/JSONObject;)Lklh;

    move-result-object v1

    invoke-direct {v0, v1}, Lkli$a;-><init>(Lklh;)V

    const-string/jumbo v1, "token_type"

    .line 463
    invoke-static {p0, v1}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkli$a;->a(Ljava/lang/String;)Lkli$a;

    move-result-object v0

    const-string/jumbo v1, "access_token"

    .line 464
    invoke-static {p0, v1}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkla;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkli$a;->b(Ljava/lang/String;)Lkli$a;

    move-result-object v0

    const-string/jumbo v1, "expires_at"

    .line 465
    invoke-static {p0, v1}, Lklc;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 1289
    iput-object v1, v0, Lkli$a;->a:Ljava/lang/Long;

    .line 465
    const-string/jumbo v1, "id_token"

    .line 466
    invoke-static {p0, v1}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkli$a;->c(Ljava/lang/String;)Lkli$a;

    move-result-object v0

    const-string/jumbo v1, "refresh_token"

    .line 467
    invoke-static {p0, v1}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkla;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkli$a;->d(Ljava/lang/String;)Lkli$a;

    move-result-object v0

    const-string/jumbo v1, "scope"

    .line 468
    invoke-static {p0, v1}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkli$a;->e(Ljava/lang/String;)Lkli$a;

    move-result-object v0

    const-string/jumbo v1, "additionalParameters"

    .line 469
    invoke-static {p0, v1}, Lklc;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkli$a;->a(Ljava/util/Map;)Lkli$a;

    move-result-object v0

    .line 470
    invoke-virtual {v0}, Lkli$a;->a()Lkli;

    move-result-object v0

    return-object v0
.end method
