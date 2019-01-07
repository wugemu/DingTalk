.class final Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$1;
.super Ljava/lang/Object;
.source "FCManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 53
    sget-object v3, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->tryLoadData()V

    .line 56
    sget-object v3, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->onCheckInRemind()V

    .line 59
    sget-object v3, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->getAllPlansModule()Ljava/util/Map;

    move-result-object v2

    .line 60
    .local v2, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lhhe;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "fastPlans":Ljava/util/List;, "Ljava/util/List<Lhhd;>;"
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhhe;

    .line 63
    .local v1, "module":Lhhe;
    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v1, v8}, Lhhe;->a(Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 67
    .end local v1    # "module":Lhhe;
    :cond_1
    sget-object v3, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->getOldFastCheckSwitch()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 68
    sget-object v3, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->hasPrivacyShowed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 69
    const-string/jumbo v3, "FCManager"

    const-string/jumbo v4, "start fail as not show privacy dialog"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    sget-object v3, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->sendPrivacyBroadcast()V

    .line 104
    .end local v0    # "fastPlans":Ljava/util/List;, "Ljava/util/List<Lhhd;>;"
    :cond_2
    :goto_1
    return-void

    .line 73
    .restart local v0    # "fastPlans":Ljava/util/List;, "Ljava/util/List<Lhhd;>;"
    :cond_3
    sget-object v3, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->hasPrivacyAgreed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 74
    const-string/jumbo v3, "FCManager"

    const-string/jumbo v4, "start fail as not agree privacy"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 78
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 79
    const-string/jumbo v3, "FCManager"

    const-string/jumbo v4, "start"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "fastPlans.size"

    aput-object v6, v5, v7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    new-instance v3, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$1$1;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$1$1;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$1;)V

    invoke-static {v8, v0, v3}, Lhhf;->a(ZLjava/util/List;Lcma;)V

    goto :goto_1
.end method
