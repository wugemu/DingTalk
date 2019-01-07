.class public final Lkli$a;
.super Ljava/lang/Object;
.source "TokenResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkli;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Long;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private b:Lklh;
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

.field private h:Ljava/util/Map;
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
.method public constructor <init>(Lklh;)V
    .locals 1
    .param p1, "request"    # Lklh;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1235
    const-string/jumbo v0, "request cannot be null"

    invoke-static {p1, v0}, Lkle;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklh;

    iput-object v0, p0, Lkli$a;->b:Lklh;

    .line 195
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lkli$a;->h:Ljava/util/Map;

    .line 196
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lkli$a;
    .locals 1
    .param p1, "tokenType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 245
    const-string/jumbo v0, "token type must not be empty if defined"

    invoke-static {p1, v0}, Lkle;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkli$a;->c:Ljava/lang/String;

    .line 246
    return-object p0
.end method

.method public final a(Ljava/util/Map;)Lkli$a;
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
            "Lkli$a;"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, "additionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lkli;->a()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lkkp;->a(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lkli$a;->h:Ljava/util/Map;

    .line 374
    return-object p0
.end method

.method public final a()Lkli;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 381
    new-instance v0, Lkli;

    iget-object v1, p0, Lkli$a;->b:Lklh;

    iget-object v2, p0, Lkli$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lkli$a;->d:Ljava/lang/String;

    iget-object v4, p0, Lkli$a;->a:Ljava/lang/Long;

    iget-object v5, p0, Lkli$a;->e:Ljava/lang/String;

    iget-object v6, p0, Lkli$a;->f:Ljava/lang/String;

    iget-object v7, p0, Lkli$a;->g:Ljava/lang/String;

    iget-object v8, p0, Lkli$a;->h:Ljava/util/Map;

    invoke-direct/range {v0 .. v8}, Lkli;-><init>(Lklh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lkli$a;
    .locals 1
    .param p1, "accessToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 254
    const-string/jumbo v0, "access token cannot be empty if specified"

    invoke-static {p1, v0}, Lkle;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkli$a;->d:Ljava/lang/String;

    .line 256
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lkli$a;
    .locals 1
    .param p1, "idToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 297
    const-string/jumbo v0, "id token must not be empty if defined"

    invoke-static {p1, v0}, Lkle;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkli$a;->e:Ljava/lang/String;

    .line 298
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lkli$a;
    .locals 1
    .param p1, "refreshToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 305
    const-string/jumbo v0, "refresh token must not be empty if defined"

    invoke-static {p1, v0}, Lkle;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkli$a;->f:Ljava/lang/String;

    .line 307
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lkli$a;
    .locals 1
    .param p1, "scope"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 319
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lkli$a;->g:Ljava/lang/String;

    .line 324
    :goto_0
    return-object p0

    .line 322
    :cond_0
    const-string/jumbo v0, " +"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1342
    if-nez v0, :cond_1

    .line 1343
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1345
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1364
    invoke-static {v0}, Lkkr;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkli$a;->g:Ljava/lang/String;

    goto :goto_0
.end method
