.class final Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3;
.super Ljava/lang/Object;
.source "FCRemindManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->getCheckInRemindPlan(Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 255
    sget-object v4, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

    invoke-virtual {v4}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->getAllPlansModule()Ljava/util/Map;

    move-result-object v1

    .line 256
    .local v1, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lhhe;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v3, "remindPlans":Ljava/util/List;, "Ljava/util/List<Lhhd;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 258
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhhe;

    .line 259
    .local v0, "module":Lhhe;
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0, v9}, Lhhe;->a(Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 264
    .end local v0    # "module":Lhhe;
    :cond_1
    const-string/jumbo v4, "FCRemindManager"

    const-string/jumbo v5, "getCheckInRemindPlan"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "remindPlans.size"

    aput-object v7, v6, v9

    const/4 v7, 0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 266
    .local v2, "remindCorpObjs":Ljava/util/Set;, "Ljava/util/Set<Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 267
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3;->a:Lcma;

    invoke-interface {v4, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 296
    :goto_1
    return-void

    .line 270
    :cond_2
    new-instance v4, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3$1;

    invoke-direct {v4, p0, v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3$1;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3;Ljava/util/Set;)V

    invoke-static {v9, v3, v4}, Lhhf;->a(ZLjava/util/List;Lcma;)V

    goto :goto_1
.end method
