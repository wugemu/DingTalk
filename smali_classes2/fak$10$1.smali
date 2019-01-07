.class final Lfak$10$1;
.super Lfae;
.source "ContactAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfak$10;->a(Lcma;)Lcma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfae",
        "<",
        "Ljava/util/List",
        "<",
        "Lcgc;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfak$10;


# direct methods
.method constructor <init>(Lfak$10;Lcma;)V
    .locals 0
    .param p1, "this$1"    # Lfak$10;

    .prologue
    .line 773
    .local p2, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcgc;>;>;"
    iput-object p1, p0, Lfak$10$1;->a:Lfak$10;

    invoke-direct {p0, p2}, Lfae;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 773
    check-cast p1, Ljava/util/List;

    .line 1777
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_user_rpc_enterprise_name_cacheable"

    .line 2083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 1777
    if-eqz v0, :cond_1

    .line 2084
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2085
    :cond_0
    const/4 v0, 0x0

    .line 1779
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1780
    invoke-static {v0}, Lfbm;->a(Ljava/util/List;)V

    .line 773
    :cond_1
    return-void

    .line 2087
    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2089
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgc;

    .line 3069
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcgc;->b:Lcet;

    if-nez v1, :cond_5

    .line 3070
    :cond_4
    const/4 v1, 0x0

    .line 2091
    :goto_2
    if-eqz v1, :cond_3

    .line 2092
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3072
    :cond_5
    new-instance v1, Lfrw;

    iget-object v2, v0, Lcgc;->b:Lcet;

    iget-object v2, v2, Lcet;->b:Ljava/lang/Long;

    .line 3073
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, v0, Lcgc;->b:Lcet;

    iget-object v4, v4, Lcet;->a:Ljava/lang/Long;

    .line 3074
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, v0, Lcgc;->b:Lcet;

    iget-object v6, v6, Lcet;->c:Ljava/lang/String;

    iget-object v7, v0, Lcgc;->b:Lcet;

    iget-object v7, v7, Lcet;->d:Ljava/lang/String;

    iget-object v8, v0, Lcgc;->b:Lcet;

    iget-object v8, v8, Lcet;->j:Ljava/lang/String;

    iget-object v9, v0, Lcgc;->b:Lcet;

    iget-object v9, v9, Lcet;->k:Ljava/lang/String;

    iget-object v0, v0, Lcgc;->b:Lcet;

    iget-object v0, v0, Lcet;->h:Ljava/lang/Long;

    .line 3079
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct/range {v1 .. v11}, Lfrw;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2

    :cond_6
    move-object v0, v12

    .line 2095
    goto :goto_0
.end method
