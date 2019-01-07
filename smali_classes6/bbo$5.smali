.class final Lbbo$5;
.super Ljava/lang/Object;
.source "DingDataCenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcma;

.field final synthetic e:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 1606
    iput-object p1, p0, Lbbo$5;->e:Lbbo;

    iput-object p2, p0, Lbbo$5;->a:Ljava/lang/Integer;

    iput-object p3, p0, Lbbo$5;->b:Ljava/lang/Integer;

    iput-object p4, p0, Lbbo$5;->c:Ljava/util/List;

    iput-object p5, p0, Lbbo$5;->d:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 1606
    .line 2609
    iget-object v0, p0, Lbbo$5;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_f

    .line 2610
    iget-object v0, p0, Lbbo$5;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    .line 2614
    iget-object v0, p0, Lbbo$5;->e:Lbbo;

    .line 3139
    iget-object v0, v0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    .line 2614
    invoke-virtual {v0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->getOrderlyAndOrderless()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2615
    if-eqz v0, :cond_0

    .line 2616
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;)V

    .line 2617
    iget-object v2, p0, Lbbo$5;->e:Lbbo;

    invoke-virtual {v2, v0}, Lbbo;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto :goto_0

    .line 2622
    :cond_1
    iget-object v0, p0, Lbbo$5;->e:Lbbo;

    .line 4139
    iget-object v0, v0, Lbbo;->f:Lbgp;

    .line 2622
    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Lbgp;->g(I)I

    .line 2623
    iget-object v0, p0, Lbbo$5;->e:Lbbo;

    .line 5139
    iget-object v0, v0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    .line 2623
    invoke-virtual {v0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->getOrderlyAndOrderless()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lbjs;->a(Ljava/util/Collection;)V

    .line 2696
    :cond_2
    :goto_1
    iget-object v0, p0, Lbbo$5;->e:Lbbo;

    invoke-virtual {v0}, Lbbo;->e()V

    .line 2697
    iget-object v0, p0, Lbbo$5;->e:Lbbo;

    invoke-virtual {v0}, Lbbo;->d()V

    .line 2698
    iget-object v0, p0, Lbbo$5;->e:Lbbo;

    iget-object v1, p0, Lbbo$5;->d:Lcma;

    const/4 v2, 0x0

    .line 18139
    invoke-virtual {v0, v1, v2}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    .line 1606
    return-void

    .line 2626
    :cond_3
    const/4 v0, 0x0

    .line 2627
    iget-object v1, p0, Lbbo$5;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v7, :cond_6

    .line 2629
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v0

    iget-object v1, p0, Lbbo$5;->e:Lbbo;

    .line 6139
    iget-object v1, v1, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    .line 2629
    invoke-virtual {v1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->getOrderlyAndOrderless()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbbs;->b(Ljava/util/Collection;Z)Ljava/util/List;

    move-result-object v0

    .line 2642
    :cond_4
    :goto_2
    if-eqz v0, :cond_9

    .line 2643
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2644
    if-eqz v0, :cond_5

    .line 2647
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;)V

    .line 2648
    iget-object v2, p0, Lbbo$5;->e:Lbbo;

    invoke-virtual {v2, v0}, Lbbo;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto :goto_3

    .line 2630
    :cond_6
    iget-object v1, p0, Lbbo$5;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_7

    .line 2632
    invoke-static {}, Lbbs;->a()Lbbs;

    iget-object v0, p0, Lbbo$5;->e:Lbbo;

    .line 7139
    iget-object v0, v0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    .line 2632
    invoke-virtual {v0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->getOrderlyAndOrderless()Ljava/util/List;

    move-result-object v0

    .line 7297
    const/16 v1, 0x11

    .line 7298
    invoke-static {v0, v1}, Lbbs;->a(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v0

    .line 7299
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 7300
    invoke-static {}, Lbbn;->a()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 2633
    :cond_7
    iget-object v1, p0, Lbbo$5;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_8

    .line 2635
    invoke-static {}, Lbbs;->a()Lbbs;

    iget-object v0, p0, Lbbo$5;->e:Lbbo;

    .line 8139
    iget-object v0, v0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    .line 2635
    invoke-virtual {v0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->getOrderlyAndOrderless()Ljava/util/List;

    move-result-object v0

    .line 8370
    const/16 v1, 0x41

    invoke-static {v0, v1}, Lbbs;->a(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v0

    .line 8371
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 8372
    invoke-static {}, Lbbn;->b()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 2636
    :cond_8
    iget-object v1, p0, Lbbo$5;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 2638
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v0

    iget-object v1, p0, Lbbo$5;->e:Lbbo;

    .line 9139
    iget-object v1, v1, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    .line 2638
    invoke-virtual {v1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->getOrderlyAndOrderless()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbs;->n(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_2

    .line 2653
    :cond_9
    iget-object v0, p0, Lbbo$5;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_a

    .line 2655
    iget-object v0, p0, Lbbo$5;->e:Lbbo;

    .line 10139
    iget-object v0, v0, Lbbo;->f:Lbgp;

    .line 2655
    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Lbgp;->a(I)I

    goto/16 :goto_1

    .line 2656
    :cond_a
    iget-object v0, p0, Lbbo$5;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_b

    .line 2658
    iget-object v0, p0, Lbbo$5;->e:Lbbo;

    .line 11139
    iget-object v0, v0, Lbbo;->f:Lbgp;

    .line 2658
    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Lbgp;->b(I)I

    goto/16 :goto_1

    .line 2659
    :cond_b
    iget-object v0, p0, Lbbo$5;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_c

    .line 2661
    iget-object v0, p0, Lbbo$5;->e:Lbbo;

    .line 12139
    iget-object v0, v0, Lbbo;->f:Lbgp;

    .line 2661
    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Lbgp;->c(I)I

    goto/16 :goto_1

    .line 2662
    :cond_c
    iget-object v0, p0, Lbbo$5;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_d

    .line 2664
    iget-object v0, p0, Lbbo$5;->e:Lbbo;

    .line 13139
    iget-object v0, v0, Lbbo;->f:Lbgp;

    .line 2664
    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Lbgp;->d(I)I

    goto/16 :goto_1

    .line 2665
    :cond_d
    iget-object v0, p0, Lbbo$5;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 2667
    iget-object v0, p0, Lbbo$5;->e:Lbbo;

    .line 14139
    iget-object v0, v0, Lbbo;->f:Lbgp;

    .line 2667
    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Lbgp;->e(I)I

    goto/16 :goto_1

    .line 2668
    :cond_e
    iget-object v0, p0, Lbbo$5;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 2670
    iget-object v0, p0, Lbbo$5;->e:Lbbo;

    .line 15139
    iget-object v0, v0, Lbbo;->f:Lbgp;

    .line 2670
    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Lbgp;->f(I)I

    goto/16 :goto_1

    .line 2674
    :cond_f
    iget-object v0, p0, Lbbo$5;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2676
    iget-object v0, p0, Lbbo$5;->e:Lbbo;

    .line 16139
    iget-object v0, v0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    .line 2676
    invoke-virtual {v0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->getOrderlyAndOrderless()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2677
    if-eqz v0, :cond_10

    .line 2678
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->af()Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    if-ne v2, v3, :cond_10

    .line 2683
    iget-object v2, p0, Lbbo$5;->c:Ljava/util/List;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    .line 17109
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2683
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2684
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;)V

    .line 2685
    iget-object v2, p0, Lbbo$5;->e:Lbbo;

    invoke-virtual {v2, v0}, Lbbo;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 2686
    invoke-static {v0}, Lbjs;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto :goto_4

    .line 2691
    :cond_11
    iget-object v0, p0, Lbbo$5;->e:Lbbo;

    .line 17139
    iget-object v0, v0, Lbbo;->f:Lbgp;

    .line 2691
    iget-object v1, p0, Lbbo$5;->c:Ljava/util/List;

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lbgp;->a(Ljava/util/List;I)I

    goto/16 :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1707
    iget-object v0, p0, Lbbo$5;->e:Lbbo;

    .line 2139
    iget-object v0, v0, Lbbo;->b:Lbbq;

    .line 1707
    new-instance v1, Lbbo$5$1;

    invoke-direct {v1, p0, p1, p2}, Lbbo$5$1;-><init>(Lbbo$5;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbbq;->a(Ljava/lang/Runnable;)V

    .line 1713
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1703
    return-void
.end method
