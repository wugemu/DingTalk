.class final Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$3;
.super Ljava/lang/Object;
.source "FCPlanFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->successFetch(Ljava/util/List;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcma;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;Ljava/util/List;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$3;->c:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$3;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$3;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v3, "plansObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;>;"
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$3;->a:Ljava/util/List;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$3;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 152
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$3;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhhj;

    .line 153
    .local v1, "model":Lhhj;
    if-eqz v1, :cond_2

    iget-object v5, v1, Lhhj;->b:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lhhj;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 154
    new-instance v2, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;

    invoke-direct {v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;-><init>()V

    .line 155
    .local v2, "plansObject":Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;
    iget-object v5, v1, Lhhj;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhhi;

    .line 156
    .local v0, "fastCheckinPlanModel":Lhhi;
    if-eqz v0, :cond_0

    .line 157
    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->from(Lhhi;)Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 160
    .end local v0    # "fastCheckinPlanModel":Lhhi;
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 161
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .end local v2    # "plansObject":Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;
    :cond_2
    sget-object v5, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    invoke-virtual {v5, v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->setOldFastCheckSwitch(Lhhj;)V

    goto :goto_0

    .line 166
    .end local v1    # "model":Lhhj;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 167
    const-string/jumbo v4, "FCPlanFetcher"

    const-string/jumbo v5, "doFetch onDataReceived empty"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :cond_4
    :goto_2
    sget-object v4, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    invoke-virtual {v4}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->start()V

    .line 176
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$3;->b:Lcma;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 177
    return-void

    .line 169
    :cond_5
    sget-object v4, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

    invoke-virtual {v4, v3}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->addFromFetch(Ljava/util/List;)V

    goto :goto_2
.end method
