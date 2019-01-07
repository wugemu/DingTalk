.class public final Lklf;
.super Ljava/lang/Object;
.source "RegistrationRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lklf$a;
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
.field public final a:Lkkv;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
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
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "redirect_uris"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "response_types"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "grant_types"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "application_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "subject_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "token_endpoint_auth_method"

    aput-object v2, v0, v1

    invoke-static {v0}, Lkkp;->a([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lklf;->i:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lkkv;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "configuration"    # Lkkv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "subjectType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "tokenEndpointAuthenticationMethod"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkkv;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
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
    .line 322
    .local p2, "redirectUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .local p3, "responseTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "grantTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "additionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object p1, p0, Lklf;->a:Lkkv;

    .line 324
    iput-object p2, p0, Lklf;->b:Ljava/util/List;

    .line 325
    iput-object p3, p0, Lklf;->d:Ljava/util/List;

    .line 326
    iput-object p4, p0, Lklf;->e:Ljava/util/List;

    .line 327
    iput-object p5, p0, Lklf;->f:Ljava/lang/String;

    .line 328
    iput-object p6, p0, Lklf;->g:Ljava/lang/String;

    .line 329
    iput-object p7, p0, Lklf;->h:Ljava/util/Map;

    .line 330
    const-string/jumbo v0, "native"

    iput-object v0, p0, Lklf;->c:Ljava/lang/String;

    .line 331
    return-void
.end method

.method synthetic constructor <init>(Lkkv;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;B)V
    .locals 0
    .param p1, "x0"    # Lkkv;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Ljava/util/List;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/util/Map;

    .prologue
    .line 37
    invoke-direct/range {p0 .. p7}, Lklf;-><init>(Lkkv;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lklf;
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
    .line 393
    const-string/jumbo v0, "json must not be null"

    invoke-static {p0, v0}, Lkle;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const-string/jumbo v0, "redirect_uris"

    .line 1283
    const-string/jumbo v1, "json must not be null"

    invoke-static {p0, v1}, Lkle;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    const-string/jumbo v1, "field must not be null"

    invoke-static {v0, v1}, Lkle;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1286
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "field \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\" not found in json object"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1289
    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1290
    invoke-static {v0}, Lklc;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v10

    .line 396
    .local v10, "redirectUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v9, Lklf$a;

    const-string/jumbo v0, "configuration"

    .line 397
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lkkv;->a(Lorg/json/JSONObject;)Lkkv;

    move-result-object v0

    invoke-direct {v9, v0, v10}, Lklf$a;-><init>(Lkkv;Ljava/util/List;)V

    const-string/jumbo v0, "subject_type"

    .line 399
    invoke-static {p0, v0}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2270
    iput-object v0, v9, Lklf$a;->e:Ljava/lang/String;

    .line 399
    const-string/jumbo v0, "response_types"

    .line 400
    invoke-static {p0, v0}, Lklc;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3235
    iput-object v0, v9, Lklf$a;->c:Ljava/util/List;

    .line 400
    const-string/jumbo v0, "grant_types"

    .line 401
    invoke-static {p0, v0}, Lklc;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3258
    iput-object v0, v9, Lklf$a;->d:Ljava/util/List;

    .line 401
    const-string/jumbo v0, "additionalParameters"

    .line 402
    invoke-static {p0, v0}, Lklc;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 4037
    sget-object v1, Lklf;->i:Ljava/util/Set;

    .line 3293
    invoke-static {v0, v1}, Lkkp;->a(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v9, Lklf$a;->f:Ljava/util/Map;

    .line 4303
    .local v9, "builder":Lklf$a;
    new-instance v0, Lklf;

    iget-object v1, v9, Lklf$a;->a:Lkkv;

    iget-object v2, v9, Lklf$a;->b:Ljava/util/List;

    .line 4305
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v9, Lklf$a;->c:Ljava/util/List;

    if-nez v3, :cond_1

    iget-object v3, v9, Lklf$a;->c:Ljava/util/List;

    .line 4307
    :goto_0
    iget-object v4, v9, Lklf$a;->d:Ljava/util/List;

    if-nez v4, :cond_2

    iget-object v4, v9, Lklf$a;->d:Ljava/util/List;

    .line 4308
    :goto_1
    iget-object v5, v9, Lklf$a;->e:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, v9, Lklf$a;->f:Ljava/util/Map;

    .line 4311
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lklf;-><init>(Lkkv;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;B)V

    .line 404
    return-object v0

    .line 4305
    :cond_1
    iget-object v3, v9, Lklf$a;->c:Ljava/util/List;

    .line 4307
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget-object v4, v9, Lklf$a;->d:Ljava/util/List;

    .line 4308
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    goto :goto_1
.end method
