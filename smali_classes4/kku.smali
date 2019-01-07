.class public final Lkku;
.super Ljava/lang/Object;
.source "AuthorizationResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkku$a;
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
.field public final a:Lkkt;
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

.field public final d:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final f:Ljava/lang/Long;
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
    .line 88
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "token_type"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "state"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "code"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "access_token"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "expires_in"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "id_token"

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

    sput-object v0, Lkku;->j:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lkkt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "request"    # Lkkt;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "state"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "tokenType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "authorizationCode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "accessToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "accessTokenExpirationTime"    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "idToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "scope"    # Ljava/lang/String;
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
            "Lkkt;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
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
    .line 404
    .local p9, "additionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput-object p1, p0, Lkku;->a:Lkkt;

    .line 406
    iput-object p2, p0, Lkku;->b:Ljava/lang/String;

    .line 407
    iput-object p3, p0, Lkku;->c:Ljava/lang/String;

    .line 408
    iput-object p4, p0, Lkku;->d:Ljava/lang/String;

    .line 409
    iput-object p5, p0, Lkku;->e:Ljava/lang/String;

    .line 410
    iput-object p6, p0, Lkku;->f:Ljava/lang/Long;

    .line 411
    iput-object p7, p0, Lkku;->g:Ljava/lang/String;

    .line 412
    iput-object p8, p0, Lkku;->h:Ljava/lang/String;

    .line 413
    iput-object p9, p0, Lkku;->i:Ljava/util/Map;

    .line 414
    return-void
.end method

.method synthetic constructor <init>(Lkkt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;B)V
    .locals 0
    .param p1, "x0"    # Lkkt;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/lang/Long;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Ljava/lang/String;
    .param p9, "x8"    # Ljava/util/Map;

    .prologue
    .line 49
    invoke-direct/range {p0 .. p9}, Lkku;-><init>(Lkkt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Landroid/content/Intent;)Lkku;
    .locals 3
    .param p0, "dataIntent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 565
    const-string/jumbo v1, "dataIntent must not be null"

    invoke-static {p0, v1}, Lkle;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const-string/jumbo v1, "net.openid.appauth.AuthorizationResponse"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 567
    const/4 v1, 0x0

    .line 571
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string/jumbo v1, "net.openid.appauth.AuthorizationResponse"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1543
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lkku;->a(Lorg/json/JSONObject;)Lkku;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, "ex":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Intent contains malformed auth response"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Lorg/json/JSONObject;)Lkku;
    .locals 3
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
    .line 512
    const-string/jumbo v1, "request"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 513
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "authorization request not provided and not found in JSON"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 517
    :cond_0
    const-string/jumbo v1, "request"

    .line 518
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lkkt;->a(Lorg/json/JSONObject;)Lkkt;

    move-result-object v0

    .line 520
    .local v0, "request":Lkkt;
    new-instance v1, Lkku$a;

    invoke-direct {v1, v0}, Lkku$a;-><init>(Lkkt;)V

    const-string/jumbo v2, "token_type"

    .line 521
    invoke-static {p0, v2}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkku$a;->b(Ljava/lang/String;)Lkku$a;

    move-result-object v1

    const-string/jumbo v2, "access_token"

    .line 522
    invoke-static {p0, v2}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkla;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkku$a;->d(Ljava/lang/String;)Lkku$a;

    move-result-object v1

    const-string/jumbo v2, "code"

    .line 523
    invoke-static {p0, v2}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkku$a;->c(Ljava/lang/String;)Lkku$a;

    move-result-object v1

    const-string/jumbo v2, "id_token"

    .line 524
    invoke-static {p0, v2}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkku$a;->e(Ljava/lang/String;)Lkku$a;

    move-result-object v1

    const-string/jumbo v2, "scope"

    .line 525
    invoke-static {p0, v2}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkku$a;->f(Ljava/lang/String;)Lkku$a;

    move-result-object v1

    const-string/jumbo v2, "state"

    .line 526
    invoke-static {p0, v2}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkku$a;->a(Ljava/lang/String;)Lkku$a;

    move-result-object v1

    const-string/jumbo v2, "expires_at"

    .line 527
    invoke-static {p0, v2}, Lklc;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 1307
    iput-object v2, v1, Lkku$a;->a:Ljava/lang/Long;

    .line 527
    const-string/jumbo v2, "additional_parameters"

    .line 529
    invoke-static {p0, v2}, Lklc;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 528
    invoke-virtual {v1, v2}, Lkku$a;->a(Ljava/util/Map;)Lkku$a;

    move-result-object v1

    .line 530
    invoke-virtual {v1}, Lkku$a;->a()Lkku;

    move-result-object v1

    return-object v1
.end method

.method static synthetic c()Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lkku;->j:Ljava/util/Set;

    return-object v0
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
    .line 479
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 480
    .local v0, "json":Lorg/json/JSONObject;
    const-string/jumbo v1, "request"

    iget-object v2, p0, Lkku;->a:Lkkt;

    invoke-virtual {v2}, Lkkt;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 481
    const-string/jumbo v1, "state"

    iget-object v2, p0, Lkku;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string/jumbo v1, "token_type"

    iget-object v2, p0, Lkku;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string/jumbo v1, "code"

    iget-object v2, p0, Lkku;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string/jumbo v1, "access_token"

    iget-object v2, p0, Lkku;->e:Ljava/lang/String;

    invoke-static {v2}, Lkla;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string/jumbo v1, "expires_at"

    iget-object v2, p0, Lkku;->f:Ljava/lang/Long;

    invoke-static {v0, v1, v2}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    .line 486
    const-string/jumbo v1, "id_token"

    iget-object v2, p0, Lkku;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string/jumbo v1, "scope"

    iget-object v2, p0, Lkku;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string/jumbo v1, "additional_parameters"

    iget-object v2, p0, Lkku;->i:Ljava/util/Map;

    .line 489
    invoke-static {v2}, Lklc;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    .line 488
    invoke-static {v0, v1, v2}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 490
    return-object v0
.end method

.method public final b()Landroid/content/Intent;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 553
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 554
    .local v0, "data":Landroid/content/Intent;
    const-string/jumbo v1, "net.openid.appauth.AuthorizationResponse"

    .line 1500
    invoke-virtual {p0}, Lkku;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 554
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    return-object v0
.end method
