.class final Lfak$10;
.super Ljava/lang/Object;
.source "ContactAPIImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfak;->a(Ljava/util/List;JZLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/List;

.field final synthetic c:J

.field final synthetic d:Lcma;

.field final synthetic e:Lfak;


# direct methods
.method constructor <init>(Lfak;ZLjava/util/List;JLcma;)V
    .locals 0
    .param p1, "this$0"    # Lfak;

    .prologue
    .line 732
    iput-object p1, p0, Lfak$10;->e:Lfak;

    iput-boolean p2, p0, Lfak$10;->a:Z

    iput-object p3, p0, Lfak$10;->b:Ljava/util/List;

    iput-wide p4, p0, Lfak$10;->c:J

    iput-object p6, p0, Lfak$10;->d:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcma;)Lcma;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcgc;",
            ">;>;)",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcgc;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 773
    .local p1, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcgc;>;>;"
    new-instance v0, Lfak$10$1;

    invoke-direct {v0, p0, p1}, Lfak$10$1;-><init>(Lfak$10;Lcma;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 735
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .local v7, "dbQueryIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-boolean v0, p0, Lfak$10;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfak$10;->e:Lfak;

    iget-object v1, p0, Lfak$10;->b:Ljava/util/List;

    iget-wide v2, p0, Lfak$10;->c:J

    invoke-static {v0, v1, v2, v3, v7}, Lfak;->a(Lfak;Ljava/util/List;JLjava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 739
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcgc;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lfak$10;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 740
    iget-object v0, p0, Lfak$10;->e:Lfak;

    iget-object v1, p0, Lfak$10;->d:Lcma;

    invoke-static {v0, v4, v1}, Lfak;->a(Lfak;Ljava/lang/Object;Lcma;)V

    .line 770
    :goto_1
    return-void

    .line 737
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcgc;>;"
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 742
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcgc;>;"
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 743
    iget-wide v0, p0, Lfak$10;->c:J

    invoke-static {v0, v1, v7}, Lfbm;->a(JLjava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 744
    .local v6, "dbList":Ljava/util/List;, "Ljava/util/List<Lfrw;>;"
    if-eqz v6, :cond_3

    .line 745
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lfrw;

    .line 746
    .local v8, "orgUserNameObject":Lfrw;
    if-eqz v8, :cond_2

    .line 749
    new-instance v9, Lcgc;

    invoke-direct {v9}, Lcgc;-><init>()V

    .line 750
    .local v9, "userEmployeeInfoModel":Lcgc;
    new-instance v1, Lcet;

    invoke-direct {v1}, Lcet;-><init>()V

    iput-object v1, v9, Lcgc;->b:Lcet;

    .line 751
    iget-object v1, v9, Lcgc;->b:Lcet;

    iget-wide v2, v8, Lfrw;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcet;->a:Ljava/lang/Long;

    .line 752
    iget-object v1, v9, Lcgc;->b:Lcet;

    iget-wide v2, v8, Lfrw;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcet;->b:Ljava/lang/Long;

    .line 753
    iget-object v1, v9, Lcgc;->b:Lcet;

    iget-object v2, v8, Lfrw;->e:Ljava/lang/String;

    iput-object v2, v1, Lcet;->d:Ljava/lang/String;

    .line 754
    iget-object v1, v9, Lcgc;->b:Lcet;

    iget-object v2, v8, Lfrw;->c:Ljava/lang/String;

    iput-object v2, v1, Lcet;->c:Ljava/lang/String;

    .line 755
    iget-object v1, v9, Lcgc;->b:Lcet;

    iget-object v2, v8, Lfrw;->f:Ljava/lang/String;

    iput-object v2, v1, Lcet;->j:Ljava/lang/String;

    .line 756
    iget-object v1, v9, Lcgc;->b:Lcet;

    iget-object v2, v8, Lfrw;->g:Ljava/lang/String;

    iput-object v2, v1, Lcet;->k:Ljava/lang/String;

    .line 757
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 761
    .end local v8    # "orgUserNameObject":Lfrw;
    .end local v9    # "userEmployeeInfoModel":Lcgc;
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lfak$10;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 762
    iget-object v0, p0, Lfak$10;->e:Lfak;

    iget-object v1, p0, Lfak$10;->d:Lcma;

    invoke-static {v0, v4, v1}, Lfak;->a(Lfak;Ljava/lang/Object;Lcma;)V

    goto :goto_1

    .line 764
    :cond_4
    iget-object v0, p0, Lfak$10;->e:Lfak;

    iget-object v1, p0, Lfak$10;->b:Ljava/util/List;

    iget-wide v2, p0, Lfak$10;->c:J

    iget-object v5, p0, Lfak$10;->d:Lcma;

    invoke-direct {p0, v5}, Lfak$10;->a(Lcma;)Lcma;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lfak;->a(Lfak;Ljava/util/List;JLjava/util/List;Lcma;)V

    goto/16 :goto_1

    .line 767
    .end local v6    # "dbList":Ljava/util/List;, "Ljava/util/List<Lfrw;>;"
    :cond_5
    iget-object v0, p0, Lfak$10;->e:Lfak;

    iget-object v1, p0, Lfak$10;->b:Ljava/util/List;

    iget-wide v2, p0, Lfak$10;->c:J

    iget-object v5, p0, Lfak$10;->d:Lcma;

    invoke-direct {p0, v5}, Lfak$10;->a(Lcma;)Lcma;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lfak;->a(Lfak;Ljava/util/List;JLjava/util/List;Lcma;)V

    goto/16 :goto_1
.end method
