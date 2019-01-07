.class public final Lklh$a;
.super Ljava/lang/Object;
.source "TokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lklh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private d:Lkkv;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private g:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private j:Ljava/util/Map;
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
.method public constructor <init>(Lkkv;Ljava/lang/String;)V
    .locals 1
    .param p1, "configuration"    # Lkkv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "clientId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1261
    invoke-static {p1}, Lkle;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkkv;

    iput-object v0, p0, Lklh$a;->d:Lkkv;

    .line 1270
    const-string/jumbo v0, "clientId cannot be null or empty"

    invoke-static {p2, v0}, Lkle;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lklh$a;->e:Ljava/lang/String;

    .line 252
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lklh$a;->j:Ljava/util/Map;

    .line 253
    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Lklh$a;
    .locals 2
    .param p1, "redirectUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 294
    if-eqz p1, :cond_0

    .line 295
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "redirectUri must have a scheme"

    invoke-static {v0, v1}, Lkle;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_0
    iput-object p1, p0, Lklh$a;->g:Landroid/net/Uri;

    .line 298
    return-object p0
.end method

.method public final a(Ljava/lang/Iterable;)Lklh$a;
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lklh$a;"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, "scopes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-static {p1}, Lkkr;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lklh$a;->b:Ljava/lang/String;

    .line 356
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lklh$a;
    .locals 1
    .param p1, "grantType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 284
    const-string/jumbo v0, "grantType cannot be null or empty"

    invoke-static {p1, v0}, Lkle;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lklh$a;->f:Ljava/lang/String;

    .line 285
    return-object p0
.end method

.method public final a(Ljava/util/Map;)Lklh$a;
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
            "Lklh$a;"
        }
    .end annotation

    .prologue
    .line 410
    .local p1, "additionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lklh;->a()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lkkp;->a(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lklh$a;->j:Ljava/util/Map;

    .line 411
    return-object p0
.end method

.method public final a()Lklh;
    .locals 12
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 419
    .line 1453
    iget-object v0, p0, Lklh$a;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1454
    iget-object v4, p0, Lklh$a;->f:Ljava/lang/String;

    .line 421
    .local v4, "grantType":Ljava/lang/String;
    :goto_0
    const-string/jumbo v0, "authorization_code"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lklh$a;->h:Ljava/lang/String;

    const-string/jumbo v1, "authorization code must be specified for grant_type = authorization_code"

    invoke-static {v0, v1}, Lkle;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :cond_0
    const-string/jumbo v0, "refresh_token"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lklh$a;->i:Ljava/lang/String;

    const-string/jumbo v1, "refresh token must be specified for grant_type = refresh_token"

    invoke-static {v0, v1}, Lkle;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    :cond_1
    const-string/jumbo v0, "authorization_code"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lklh$a;->g:Landroid/net/Uri;

    if-nez v0, :cond_5

    .line 435
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no redirect URI specified on token request for code exchange"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1455
    .end local v4    # "grantType":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lklh$a;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1456
    const-string/jumbo v4, "authorization_code"

    goto :goto_0

    .line 1457
    :cond_3
    iget-object v0, p0, Lklh$a;->i:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1458
    const-string/jumbo v4, "refresh_token"

    goto :goto_0

    .line 1460
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "grant type not specified and cannot be inferred"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    .restart local v4    # "grantType":Ljava/lang/String;
    :cond_5
    new-instance v0, Lklh;

    iget-object v1, p0, Lklh$a;->d:Lkkv;

    iget-object v2, p0, Lklh$a;->e:Ljava/lang/String;

    iget-object v3, p0, Lklh$a;->a:Ljava/lang/String;

    iget-object v5, p0, Lklh$a;->g:Landroid/net/Uri;

    iget-object v6, p0, Lklh$a;->b:Ljava/lang/String;

    iget-object v7, p0, Lklh$a;->h:Ljava/lang/String;

    iget-object v8, p0, Lklh$a;->i:Ljava/lang/String;

    iget-object v9, p0, Lklh$a;->c:Ljava/lang/String;

    iget-object v10, p0, Lklh$a;->j:Ljava/util/Map;

    .line 449
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lklh;-><init>(Lkkv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;B)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lklh$a;
    .locals 1
    .param p1, "authorizationCode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 369
    const-string/jumbo v0, "authorization code must not be empty"

    invoke-static {p1, v0}, Lkle;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 370
    iput-object p1, p0, Lklh$a;->h:Ljava/lang/String;

    .line 371
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lklh$a;
    .locals 1
    .param p1, "refreshToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 384
    if-eqz p1, :cond_0

    .line 385
    const-string/jumbo v0, "refresh token cannot be empty if defined"

    invoke-static {p1, v0}, Lkle;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 387
    :cond_0
    iput-object p1, p0, Lklh$a;->i:Ljava/lang/String;

    .line 388
    return-object p0
.end method
