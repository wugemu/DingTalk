.class public final Lkkt$a;
.super Ljava/lang/Object;
.source "AuthorizationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkkt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field e:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field f:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field g:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field h:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field i:Ljava/util/Map;
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

.field private j:Lkkv;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private n:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkkv;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "configuration"    # Lkkv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "clientId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "responseType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "redirectUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lkkt$a;->i:Ljava/util/Map;

    .line 1587
    const-string/jumbo v0, "configuration cannot be null"

    invoke-static {p1, v0}, Lkle;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkkv;

    iput-object v0, p0, Lkkt$a;->j:Lkkv;

    .line 1602
    const-string/jumbo v0, "client ID cannot be null or empty"

    invoke-static {p2, v0}, Lkle;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkkt$a;->k:Ljava/lang/String;

    .line 1693
    const-string/jumbo v0, "expected response type cannot be null or empty"

    invoke-static {p3, v0}, Lkle;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkkt$a;->m:Ljava/lang/String;

    .line 1706
    const-string/jumbo v0, "redirect URI cannot be null or empty"

    invoke-static {p4, v0}, Lkle;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lkkt$a;->n:Landroid/net/Uri;

    .line 578
    invoke-static {}, Lkkt;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkkt$a;->b(Ljava/lang/String;)Lkkt$a;

    .line 579
    invoke-static {}, Lkkz;->a()Ljava/lang/String;

    move-result-object v0

    .line 1789
    if-eqz v0, :cond_0

    .line 1790
    invoke-static {v0}, Lkkz;->a(Ljava/lang/String;)V

    .line 1791
    iput-object v0, p0, Lkkt$a;->e:Ljava/lang/String;

    .line 1792
    invoke-static {v0}, Lkkz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkkt$a;->f:Ljava/lang/String;

    .line 1793
    invoke-static {}, Lkkz;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkkt$a;->g:Ljava/lang/String;

    .line 580
    :goto_0
    return-void

    .line 1795
    :cond_0
    iput-object v1, p0, Lkkt$a;->e:Ljava/lang/String;

    .line 1796
    iput-object v1, p0, Lkkt$a;->f:Ljava/lang/String;

    .line 1797
    iput-object v1, p0, Lkkt$a;->g:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Iterable;)Lkkt$a;
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
            "Lkkt$a;"
        }
    .end annotation

    .prologue
    .line 754
    .local p1, "scopes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-static {p1}, Lkkr;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkkt$a;->d:Ljava/lang/String;

    .line 755
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lkkt$a;
    .locals 1
    .param p1, "loginHint"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 630
    const-string/jumbo v0, "login hint must be null or not empty"

    invoke-static {p1, v0}, Lkle;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkkt$a;->l:Ljava/lang/String;

    .line 631
    return-object p0
.end method

.method public final a()Lkkt;
    .locals 18
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 881
    new-instance v1, Lkkt;

    move-object/from16 v0, p0

    iget-object v2, v0, Lkkt$a;->j:Lkkv;

    move-object/from16 v0, p0

    iget-object v3, v0, Lkkt$a;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lkkt$a;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lkkt$a;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lkkt$a;->n:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v7, v0, Lkkt$a;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lkkt$a;->l:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lkkt$a;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lkkt$a;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lkkt$a;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lkkt$a;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lkkt$a;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lkkt$a;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lkkt$a;->h:Ljava/lang/String;

    new-instance v16, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lkkt$a;->i:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 896
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v16

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v17}, Lkkt;-><init>(Lkkv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;B)V

    return-object v1
.end method

.method public final b(Ljava/lang/String;)Lkkt$a;
    .locals 1
    .param p1, "state"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 773
    const-string/jumbo v0, "state cannot be empty if defined"

    invoke-static {p1, v0}, Lkle;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkkt$a;->o:Ljava/lang/String;

    .line 774
    return-object p0
.end method
