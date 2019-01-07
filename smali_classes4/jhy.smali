.class public final Ljhy;
.super Ljhv;
.source "WildcardTypeName.java"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljhv;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljhv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljhv;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljhv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "upperBounds":Ljava/util/List;, "Ljava/util/List<Ljhv;>;"
    .local p2, "lowerBounds":Ljava/util/List;, "Ljava/util/List<Ljhv;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Ljhy;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 38
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljhv;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljhv;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljhl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "upperBounds":Ljava/util/List;, "Ljava/util/List<Ljhv;>;"
    .local p2, "lowerBounds":Ljava/util/List;, "Ljava/util/List<Ljhv;>;"
    .local p3, "annotations":Ljava/util/List;, "Ljava/util/List<Ljhl;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 42
    invoke-direct {p0, p3}, Ljhv;-><init>(Ljava/util/List;)V

    .line 43
    invoke-static {p1}, Ljhx;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ljhy;->a:Ljava/util/List;

    .line 44
    invoke-static {p2}, Ljhx;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ljhy;->b:Ljava/util/List;

    .line 46
    iget-object v2, p0, Ljhy;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "unexpected extends bounds: %s"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v4

    invoke-static {v2, v5, v6}, Ljhx;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iget-object v2, p0, Ljhy;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljhv;

    .line 48
    .local v1, "upperBound":Ljhv;
    invoke-virtual {v1}, Ljhv;->f()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Ljhy;->d:Ljhv;

    if-eq v1, v2, :cond_1

    move v2, v3

    :goto_2
    const-string/jumbo v6, "invalid upper bound: %s"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v1, v7, v4

    invoke-static {v2, v6, v7}, Ljhx;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "upperBound":Ljhv;
    :cond_0
    move v2, v4

    .line 46
    goto :goto_0

    .restart local v1    # "upperBound":Ljhv;
    :cond_1
    move v2, v4

    .line 48
    goto :goto_2

    .line 51
    .end local v1    # "upperBound":Ljhv;
    :cond_2
    iget-object v2, p0, Ljhy;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljhv;

    .line 52
    .local v0, "lowerBound":Ljhv;
    invoke-virtual {v0}, Ljhv;->f()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Ljhy;->d:Ljhv;

    if-eq v0, v2, :cond_3

    move v2, v3

    :goto_4
    const-string/jumbo v6, "invalid lower bound: %s"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v0, v7, v4

    invoke-static {v2, v6, v7}, Ljhx;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    move v2, v4

    goto :goto_4

    .line 55
    .end local v0    # "lowerBound":Ljhv;
    :cond_4
    return-void
.end method


# virtual methods
.method final a(Ljhp;)Ljhp;
    .locals 4
    .param p1, "out"    # Ljhp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 66
    iget-object v0, p0, Ljhy;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 67
    const-string/jumbo v0, "? super $T"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Ljhy;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Ljhp;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljhp;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Ljhy;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljhv;

    sget-object v1, Ljhv;->m:Ljhn;

    invoke-virtual {v0, v1}, Ljhv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    const-string/jumbo v0, "?"

    .line 1206
    invoke-virtual {p1, v0}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_1
    const-string/jumbo v0, "? extends $T"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Ljhy;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Ljhp;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljhp;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()Ljhv;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 62
    new-instance v0, Ljhy;

    iget-object v1, p0, Ljhy;->a:Ljava/util/List;

    iget-object v2, p0, Ljhy;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Ljhy;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
