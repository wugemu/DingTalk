.class public final Ljiw;
.super Ljava/lang/Object;
.source "HttpDnsProvider.java"


# instance fields
.field a:I

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Ljiw;->a:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljiw;->b:Ljava/util/List;

    .line 1043
    sget-object v0, Lkn$b;->a:Lkn;

    .line 31
    new-instance v1, Ljiw$1;

    invoke-direct {v1, p0}, Ljiw$1;-><init>(Ljiw;)V

    invoke-virtual {v0, v1}, Lkn;->a(Lkn$a;)V

    .line 42
    invoke-virtual {p0, p1}, Ljiw;->a(Ljava/lang/String;)Ljava/util/List;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljy;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 47
    iget v3, p0, Ljiw;->a:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljiw;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 48
    :cond_0
    invoke-static {}, Lkc;->a()Lka;

    move-result-object v3

    invoke-interface {v3, p1}, Lka;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 50
    .local v2, "strategys":Ljava/util/List;, "Ljava/util/List<Ljy;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 51
    iget-object v3, p0, Ljiw;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 52
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljy;

    .line 53
    .local v1, "strategy":Ljy;
    sget-object v3, Lanet/channel/entity/ConnType;->ACCS_0RTT:Lanet/channel/entity/ConnType;

    invoke-interface {v1}, Ljy;->getConnType()Lanet/channel/entity/ConnType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "http2"

    invoke-interface {v1}, Ljy;->getConnType()Lanet/channel/entity/ConnType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    :cond_2
    iget-object v3, p0, Ljiw;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "strategy":Ljy;
    .end local v2    # "strategys":Ljava/util/List;, "Ljava/util/List<Ljy;>;"
    :cond_3
    iget-object v3, p0, Ljiw;->b:Ljava/util/List;

    return-object v3
.end method
