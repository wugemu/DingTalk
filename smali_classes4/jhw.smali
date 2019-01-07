.class public final Ljhw;
.super Ljhv;
.source "TypeVariableName.java"


# instance fields
.field public final a:Ljava/lang/String;

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
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljhv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "bounds":Ljava/util/List;, "Ljava/util/List<Ljhv;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Ljhw;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 40
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .local p2, "bounds":Ljava/util/List;, "Ljava/util/List<Ljhv;>;"
    .local p3, "annotations":Ljava/util/List;, "Ljava/util/List<Ljhl;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 43
    invoke-direct {p0, p3}, Ljhv;-><init>(Ljava/util/List;)V

    .line 44
    const-string/jumbo v1, "name == null"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1, v1, v4}, Ljhx;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljhw;->a:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Ljhw;->b:Ljava/util/List;

    .line 47
    iget-object v1, p0, Ljhw;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljhv;

    .line 48
    .local v0, "bound":Ljhv;
    invoke-virtual {v0}, Ljhv;->f()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljhw;->d:Ljhv;

    if-eq v0, v1, :cond_0

    move v1, v2

    :goto_1
    const-string/jumbo v5, "invalid bound: %s"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v1, v5, v6}, Ljhx;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    .line 50
    .end local v0    # "bound":Ljhv;
    :cond_1
    return-void
.end method


# virtual methods
.method final a(Ljhp;)Ljhp;
    .locals 1
    .param p1, "out"    # Ljhp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Ljhw;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljhv;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 57
    new-instance v0, Ljhw;

    iget-object v1, p0, Ljhw;->a:Ljava/lang/String;

    iget-object v2, p0, Ljhw;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Ljhw;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
