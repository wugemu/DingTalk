.class public final Lklh;
.super Ljava/lang/Object;
.source "TokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lklh$a;
    }
.end annotation


# static fields
.field private static final k:Ljava/util/Set;
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
.field public final a:Lkkv;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public final d:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final e:Landroid/net/Uri;
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

.field public final h:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final i:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final j:Ljava/util/Map;
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
    .line 88
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "client_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "code"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "code_verifier"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "grant_type"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "redirect_uri"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "refresh_token"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "scope"

    aput-object v3, v1, v2

    .line 89
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 88
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lklh;->k:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lkkv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "configuration"    # Lkkv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "clientId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "clientSecret"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "grantType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "redirectUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "scope"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "authorizationCode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "refreshToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "codeVerifier"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkkv;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
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
    .line 475
    .local p10, "additionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput-object p1, p0, Lklh;->a:Lkkv;

    .line 477
    iput-object p2, p0, Lklh;->b:Ljava/lang/String;

    .line 478
    iput-object p3, p0, Lklh;->c:Ljava/lang/String;

    .line 479
    iput-object p4, p0, Lklh;->d:Ljava/lang/String;

    .line 480
    iput-object p5, p0, Lklh;->e:Landroid/net/Uri;

    .line 481
    iput-object p6, p0, Lklh;->g:Ljava/lang/String;

    .line 482
    iput-object p7, p0, Lklh;->f:Ljava/lang/String;

    .line 483
    iput-object p8, p0, Lklh;->h:Ljava/lang/String;

    .line 484
    iput-object p9, p0, Lklh;->i:Ljava/lang/String;

    .line 485
    iput-object p10, p0, Lklh;->j:Ljava/util/Map;

    .line 486
    return-void
.end method

.method synthetic constructor <init>(Lkkv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;B)V
    .locals 0
    .param p1, "x0"    # Lkkv;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Landroid/net/Uri;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Ljava/lang/String;
    .param p9, "x8"    # Ljava/lang/String;
    .param p10, "x9"    # Ljava/util/Map;

    .prologue
    .line 47
    invoke-direct/range {p0 .. p10}, Lklh;-><init>(Lkkv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lklh;->k:Ljava/util/Set;

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lklh;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 561
    const-string/jumbo v1, "json object cannot be null"

    invoke-static {p0, v1}, Lkle;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    new-instance v1, Lklh$a;

    const-string/jumbo v2, "configuration"

    .line 564
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lkkv;->a(Lorg/json/JSONObject;)Lkkv;

    move-result-object v2

    const-string/jumbo v3, "clientId"

    .line 565
    invoke-static {p0, v3}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lklh$a;-><init>(Lkkv;Ljava/lang/String;)V

    const-string/jumbo v2, "redirectUri"

    .line 566
    invoke-static {p0, v2}, Lklc;->e(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lklh$a;->a(Landroid/net/Uri;)Lklh$a;

    move-result-object v1

    const-string/jumbo v2, "grantType"

    .line 567
    invoke-static {p0, v2}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lklh$a;->a(Ljava/lang/String;)Lklh$a;

    move-result-object v1

    const-string/jumbo v2, "refreshToken"

    .line 568
    invoke-static {p0, v2}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkla;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lklh$a;->c(Ljava/lang/String;)Lklh$a;

    move-result-object v1

    const-string/jumbo v2, "authorizationCode"

    .line 569
    invoke-static {p0, v2}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lklh$a;->b(Ljava/lang/String;)Lklh$a;

    move-result-object v1

    const-string/jumbo v2, "additionalParameters"

    .line 570
    invoke-static {p0, v2}, Lklc;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lklh$a;->a(Ljava/util/Map;)Lklh$a;

    move-result-object v0

    .line 572
    .local v0, "builder":Lklh$a;
    const-string/jumbo v1, "scope"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    const-string/jumbo v1, "scope"

    invoke-static {p0, v1}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkkr;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lklh$a;->a(Ljava/lang/Iterable;)Lklh$a;

    .line 576
    :cond_0
    invoke-virtual {v0}, Lklh$a;->a()Lklh;

    move-result-object v1

    return-object v1
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 520
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 521
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    :cond_0
    return-void
.end method
