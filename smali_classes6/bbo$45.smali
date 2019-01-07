.class final Lbbo$45;
.super Ljava/lang/Object;
.source "DingDataCenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbo;->a(Lbes;Lcma;)V
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
        "Lbfg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 3752
    iput-object p1, p0, Lbbo$45;->b:Lbbo;

    iput-object p2, p0, Lbbo$45;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 3752
    check-cast p1, Lbfg;

    .line 4755
    if-nez p1, :cond_0

    .line 4756
    const-string/jumbo v0, "getDingWrapperModel failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "dingWrapperObject is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4757
    iget-object v0, p0, Lbbo$45;->b:Lbbo;

    iget-object v1, p0, Lbbo$45;->a:Lcma;

    const-string/jumbo v2, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Laxp$i;->unknown_error:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5139
    invoke-virtual {v0, v1, v2, v3}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 4758
    :goto_0
    return-void

    .line 4760
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[DingDataCenter] getDingWrapperModel onDataReceived success."

    aput-object v1, v0, v8

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 4762
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6028
    iget-object v0, p1, Lbfg;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 4766
    invoke-static {v0}, Lbkh;->r(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4767
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4768
    iget-object v1, p0, Lbbo$45;->b:Lbbo;

    .line 6139
    iget-object v1, v1, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    .line 4768
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->addToOrderlyOrOrderless(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 4769
    iget-object v1, p0, Lbbo$45;->b:Lbbo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    .line 4770
    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4771
    iget-object v1, p0, Lbbo$45;->b:Lbbo;

    .line 7139
    iget-object v1, v1, Lbbo;->e:Lbhh;

    .line 4771
    invoke-virtual {v1, v0}, Lbhh;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    :cond_1
    move-object v1, v0

    .line 4776
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8036
    iget-object v4, p1, Lbfg;->c:Ljava/util/List;

    .line 4778
    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4779
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4780
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 4781
    invoke-static {v0}, Lbkh;->r(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4782
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4785
    :cond_3
    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4786
    iget-object v0, p0, Lbbo$45;->b:Lbbo;

    .line 8139
    iget-object v0, v0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    .line 4786
    invoke-virtual {v0, v5}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->addToOrderlyOrOrderless(Ljava/util/List;)Z

    .line 4789
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 4790
    if-eqz v0, :cond_4

    .line 4791
    iget-object v6, p0, Lbbo$45;->b:Lbbo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    .line 4792
    if-eqz v0, :cond_4

    .line 4793
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4799
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 4800
    if-eqz v0, :cond_6

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 4801
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4806
    :cond_7
    new-instance v0, Lbfm;

    invoke-direct {v0, v8, v1, v3}, Lbfm;-><init>(ZLcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/util/List;)V

    .line 9040
    iget-object v3, p1, Lbfg;->d:Lbfv;

    .line 4810
    invoke-static {v1}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v3, :cond_8

    .line 4811
    invoke-static {}, Lbhi;->a()Lbhi;

    move-result-object v1

    invoke-virtual {v1, v3, v8}, Lbhi;->a(Lbfv;Z)V

    .line 10031
    :cond_8
    iput-object v3, v0, Lbfm;->d:Lbfv;

    .line 11032
    iget-object v1, p1, Lbfg;->b:Lbfz;

    .line 11051
    iput-object v1, v0, Lbfm;->e:Lbfz;

    .line 4818
    iget-object v1, p0, Lbbo$45;->b:Lbbo;

    iget-object v3, p0, Lbbo$45;->a:Lcma;

    .line 11139
    invoke-virtual {v1, v3, v0}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    .line 4821
    iget-object v0, p0, Lbbo$45;->b:Lbbo;

    .line 12139
    iget-object v0, v0, Lbbo;->f:Lbgp;

    .line 4821
    invoke-interface {v0, v2}, Lbgp;->a(Ljava/util/List;)I

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 3830
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DataCenter] getDingDetailFromServer failed, code:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 3831
    iget-object v0, p0, Lbbo$45;->b:Lbbo;

    iget-object v1, p0, Lbbo$45;->a:Lcma;

    .line 4139
    invoke-virtual {v0, v1, p1, p2}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 3832
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 3826
    return-void
.end method
