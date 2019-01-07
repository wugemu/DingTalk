.class final Lgee$5$1;
.super Ljava/lang/Object;
.source "DentryListViewPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgee$5;->a(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lgeg;

.field final synthetic c:Lgee$5;


# direct methods
.method constructor <init>(Lgee$5;Ljava/util/List;Lgeg;)V
    .locals 0
    .param p1, "this$1"    # Lgee$5;

    .prologue
    .line 642
    iput-object p1, p0, Lgee$5$1;->c:Lgee$5;

    iput-object p2, p0, Lgee$5$1;->a:Ljava/util/List;

    iput-object p3, p0, Lgee$5$1;->b:Lgeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 645
    iget-object v1, p0, Lgee$5$1;->c:Lgee$5;

    iget-object v0, p0, Lgee$5$1;->a:Ljava/util/List;

    iget-object v2, p0, Lgee$5$1;->b:Lgeg;

    .line 2023
    iget-object v3, v2, Lgeg;->b:Ljava/util/List;

    .line 1651
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    .line 1652
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1653
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1654
    if-eqz v0, :cond_0

    .line 1657
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1658
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1661
    :cond_1
    if-eqz v3, :cond_0

    .line 1664
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->create()Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v6

    .line 1665
    invoke-virtual {v6, v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->setDentryModel(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1666
    iget-object v0, v1, Lgee$5;->a:Lgee;

    .line 2054
    iget-object v0, v0, Lgee;->e:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    .line 1666
    invoke-virtual {v6, v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->setSpace(Lcom/alibaba/dingtalk/cspace/model/CsSpace;)V

    .line 1667
    iget-object v0, v1, Lgee$5;->a:Lgee;

    invoke-virtual {v0, v6}, Lgee;->b(Lcom/alibaba/dingtalk/cspace/model/CsDentry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1668
    new-instance v0, Lgeh;

    invoke-direct {v0}, Lgeh;-><init>()V

    .line 1669
    iget-object v7, v1, Lgee$5;->a:Lgee;

    invoke-virtual {v7, v6}, Lgee;->a(Lcom/alibaba/dingtalk/cspace/model/CsDentry;)Ljava/lang/String;

    move-result-object v6

    .line 3046
    iput-object v6, v0, Lgeh;->d:Ljava/lang/String;

    .line 1670
    const/4 v6, 0x1

    .line 4022
    iput v6, v0, Lgeh;->a:I

    .line 5023
    iget-object v6, v2, Lgeg;->b:Ljava/util/List;

    .line 1671
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1675
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1676
    iget-object v0, v1, Lgee$5;->a:Lgee;

    invoke-virtual {v0}, Lgee;->q()V

    .line 1677
    iget-object v0, v1, Lgee$5;->a:Lgee;

    invoke-virtual {v0}, Lgee;->n()V

    .line 1682
    :goto_1
    invoke-virtual {v1}, Lgee$5;->a()V

    .line 646
    return-void

    .line 1679
    :cond_3
    iget-object v0, v1, Lgee$5;->a:Lgee;

    .line 5054
    iget-object v0, v0, Lgee;->a:Lgef;

    .line 1679
    invoke-virtual {v0, v4}, Lgef;->a(Ljava/util/List;)V

    goto :goto_1
.end method
