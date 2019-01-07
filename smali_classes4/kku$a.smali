.class public final Lkku$a;
.super Ljava/lang/Object;
.source "AuthorizationResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/Long;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private b:Lkkt;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private i:Ljava/util/Map;
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
.method public constructor <init>(Lkkt;)V
    .locals 1
    .param p1, "request"    # Lkkt;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    const-string/jumbo v0, "authorization request cannot be null"

    invoke-static {p1, v0}, Lkle;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkkt;

    iput-object v0, p0, Lkku$a;->b:Lkkt;

    .line 213
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lkku$a;->i:Ljava/util/Map;

    .line 214
    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Lkku$a;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 221
    sget-object v2, Lklg;->a:Lklg;

    .line 1227
    const-string/jumbo v0, "state"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkku$a;->a(Ljava/lang/String;)Lkku$a;

    .line 1228
    const-string/jumbo v0, "token_type"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkku$a;->b(Ljava/lang/String;)Lkku$a;

    .line 1229
    const-string/jumbo v0, "code"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkku$a;->c(Ljava/lang/String;)Lkku$a;

    .line 1230
    const-string/jumbo v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkku$a;->d(Ljava/lang/String;)Lkku$a;

    .line 1231
    const-string/jumbo v0, "expires_in"

    .line 2070
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2071
    if-eqz v0, :cond_1

    .line 2072
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2293
    :goto_0
    if-nez v0, :cond_2

    .line 2294
    iput-object v1, p0, Lkku$a;->a:Ljava/lang/Long;

    .line 1232
    :goto_1
    const-string/jumbo v0, "id_token"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkku$a;->e(Ljava/lang/String;)Lkku$a;

    .line 1233
    const-string/jumbo v0, "scope"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkku$a;->f(Ljava/lang/String;)Lkku$a;

    .line 1234
    invoke-static {}, Lkku;->c()Ljava/util/Set;

    move-result-object v1

    .line 3090
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3091
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3092
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3093
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    move-object v0, v1

    .line 2074
    goto :goto_0

    .line 2296
    :cond_2
    invoke-interface {v2}, Lkky;->a()J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2297
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 2296
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkku$a;->a:Ljava/lang/Long;

    goto :goto_1

    .line 1234
    :cond_3
    invoke-virtual {p0, v2}, Lkku$a;->a(Ljava/util/Map;)Lkku$a;

    .line 221
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lkku$a;
    .locals 1
    .param p1, "state"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 243
    const-string/jumbo v0, "state must not be empty"

    invoke-static {p1, v0}, Lkle;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 244
    iput-object p1, p0, Lkku$a;->c:Ljava/lang/String;

    .line 245
    return-object p0
.end method

.method public final a(Ljava/util/Map;)Lkku$a;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lkku$a;"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, "additionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lkku;->c()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lkkp;->a(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lkku$a;->i:Ljava/util/Map;

    .line 374
    return-object p0
.end method

.method public final a()Lkku;
    .locals 11
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 382
    new-instance v0, Lkku;

    iget-object v1, p0, Lkku$a;->b:Lkkt;

    iget-object v2, p0, Lkku$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lkku$a;->d:Ljava/lang/String;

    iget-object v4, p0, Lkku$a;->e:Ljava/lang/String;

    iget-object v5, p0, Lkku$a;->f:Ljava/lang/String;

    iget-object v6, p0, Lkku$a;->a:Ljava/lang/Long;

    iget-object v7, p0, Lkku$a;->g:Ljava/lang/String;

    iget-object v8, p0, Lkku$a;->h:Ljava/lang/String;

    iget-object v9, p0, Lkku$a;->i:Ljava/util/Map;

    .line 391
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lkku;-><init>(Lkkt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;B)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lkku$a;
    .locals 1
    .param p1, "tokenType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 253
    const-string/jumbo v0, "tokenType must not be empty"

    invoke-static {p1, v0}, Lkle;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 254
    iput-object p1, p0, Lkku$a;->d:Ljava/lang/String;

    .line 255
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lkku$a;
    .locals 1
    .param p1, "authorizationCode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 263
    const-string/jumbo v0, "authorizationCode must not be empty"

    invoke-static {p1, v0}, Lkle;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 264
    iput-object p1, p0, Lkku$a;->e:Ljava/lang/String;

    .line 265
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lkku$a;
    .locals 1
    .param p1, "accessToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 273
    const-string/jumbo v0, "accessToken must not be empty"

    invoke-static {p1, v0}, Lkle;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 274
    iput-object p1, p0, Lkku$a;->f:Ljava/lang/String;

    .line 275
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lkku$a;
    .locals 1
    .param p1, "idToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 316
    const-string/jumbo v0, "idToken cannot be empty"

    invoke-static {p1, v0}, Lkle;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 317
    iput-object p1, p0, Lkku$a;->g:Ljava/lang/String;

    .line 318
    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lkku$a;
    .locals 2
    .param p1, "scope"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 330
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iput-object v1, p0, Lkku$a;->h:Ljava/lang/String;

    .line 335
    :goto_0
    return-object p0

    .line 333
    :cond_0
    const-string/jumbo v0, " +"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3347
    if-nez v0, :cond_1

    .line 3348
    iput-object v1, p0, Lkku$a;->h:Ljava/lang/String;

    goto :goto_0

    .line 3350
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3364
    invoke-static {v0}, Lkkr;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkku$a;->h:Ljava/lang/String;

    goto :goto_0
.end method
