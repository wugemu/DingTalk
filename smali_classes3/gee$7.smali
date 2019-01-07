.class final Lgee$7;
.super Ljava/lang/Object;
.source "DentryListViewPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgee;->a(Ltl;Ljava/util/Map;Lgeg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltl;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lgeg;

.field final synthetic d:Lgee;


# direct methods
.method constructor <init>(Lgee;Ltl;Ljava/util/Map;Lgeg;)V
    .locals 0
    .param p1, "this$0"    # Lgee;

    .prologue
    .line 731
    iput-object p1, p0, Lgee$7;->d:Lgee;

    iput-object p2, p0, Lgee$7;->a:Ltl;

    iput-object p3, p0, Lgee$7;->b:Ljava/util/Map;

    iput-object p4, p0, Lgee$7;->c:Lgeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v12, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 734
    iget-object v4, p0, Lgee$7;->d:Lgee;

    iget-object v5, p0, Lgee$7;->a:Ltl;

    iget-object v6, p0, Lgee$7;->b:Ljava/util/Map;

    iget-object v7, p0, Lgee$7;->c:Lgeg;

    .line 2023
    iget-object v8, v7, Lgeg;->b:Ljava/util/List;

    .line 2047
    iget-object v0, v5, Ltl;->b:Ljava/lang/String;

    .line 3039
    iput-object v0, v7, Lgeg;->d:Ljava/lang/String;

    .line 3055
    iget-boolean v0, v5, Ltl;->c:Z

    .line 4031
    iput-boolean v0, v7, Lgeg;->c:Z

    .line 1744
    iget-object v0, v4, Lgee;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1745
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1746
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1747
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgeh;

    .line 1748
    if-eqz v0, :cond_0

    .line 5018
    iget v9, v0, Lgeh;->a:I

    .line 1748
    if-eq v9, v12, :cond_0

    .line 1749
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1750
    iget-object v9, v4, Lgee;->j:Ljava/util/Map;

    .line 5042
    iget-object v0, v0, Lgeh;->d:Ljava/lang/String;

    .line 1750
    invoke-interface {v9, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1753
    :cond_1
    iget-object v3, v4, Lgee;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Lgee;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v4, Lgee;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1756
    :cond_2
    new-instance v9, Ljava/util/HashSet;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 1757
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1758
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1759
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgeh;

    .line 1760
    if-eqz v0, :cond_3

    .line 6018
    iget v10, v0, Lgeh;->a:I

    .line 1763
    if-eq v10, v2, :cond_4

    .line 7018
    iget v10, v0, Lgeh;->a:I

    .line 1764
    if-ne v10, v12, :cond_3

    .line 1767
    :cond_4
    invoke-virtual {v4, v0}, Lgee;->j(Lgeh;)Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v0

    .line 1768
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 1771
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 7039
    iget-boolean v10, v5, Ltl;->a:Z

    .line 1772
    if-eqz v10, :cond_6

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 1773
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_5
    move v0, v1

    .line 1753
    goto :goto_1

    .line 1775
    :cond_6
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 8031
    :cond_7
    iget-object v0, v5, Ltl;->d:Ljava/util/List;

    .line 1781
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1782
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v3, v1

    :cond_8
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1783
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1786
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1788
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->create()Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v11

    .line 1789
    iget-object v12, v4, Lgee;->e:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    invoke-virtual {v11, v12}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->setSpace(Lcom/alibaba/dingtalk/cspace/model/CsSpace;)V

    .line 1790
    invoke-virtual {v11, v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->setDentryModel(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1791
    if-eqz v6, :cond_9

    .line 1792
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    invoke-virtual {v11, v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->setDentryExtModel(Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;)V

    .line 1795
    :cond_9
    invoke-virtual {v4, v11}, Lgee;->b(Lcom/alibaba/dingtalk/cspace/model/CsDentry;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1796
    new-instance v0, Lgeh;

    invoke-direct {v0}, Lgeh;-><init>()V

    .line 1797
    invoke-virtual {v4, v11}, Lgee;->a(Lcom/alibaba/dingtalk/cspace/model/CsDentry;)Ljava/lang/String;

    move-result-object v3

    .line 8046
    iput-object v3, v0, Lgeh;->d:Ljava/lang/String;

    .line 9022
    iput v2, v0, Lgeh;->a:I

    .line 1800
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    :goto_4
    move v3, v0

    .line 1803
    goto :goto_3

    :cond_a
    move v3, v1

    .line 9043
    :cond_b
    iget v0, v7, Lgeg;->a:I

    .line 1806
    const/4 v6, 0x3

    if-ne v0, v6, :cond_c

    .line 1807
    invoke-virtual {v4}, Lgee;->q()V

    .line 1810
    :cond_c
    if-eqz v3, :cond_e

    invoke-virtual {v4}, Lgee;->o()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v4, Lgee;->d:Lged$a$a;

    if-eqz v0, :cond_e

    .line 1811
    :goto_5
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lgee$8;

    invoke-direct {v1, v4, v7, v2}, Lgee$8;-><init>(Lgee;Lgeg;Z)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1831
    iget-object v0, v4, Lgee;->f:Ljava/lang/String;

    iget-object v1, v4, Lgee;->g:Ljava/lang/String;

    invoke-static {v5, v0, v1}, Lgoj$a;->a(Ltl;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1832
    invoke-virtual {v4}, Lgee;->f()V

    .line 735
    :cond_d
    return-void

    :cond_e
    move v2, v1

    .line 1810
    goto :goto_5

    :cond_f
    move v0, v3

    goto :goto_4
.end method
