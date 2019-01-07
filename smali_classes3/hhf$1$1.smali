.class final Lhhf$1$1;
.super Ljava/lang/Object;
.source "FCScheduleCheck.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhhf$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lhhf$1;


# direct methods
.method constructor <init>(Lhhf$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lhhf$1;

    .prologue
    .line 51
    iput-object p1, p0, Lhhf$1$1;->b:Lhhf$1;

    iput-object p2, p0, Lhhf$1$1;->a:Ljava/util/List;

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
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v4, 0x0

    .line 54
    const-string/jumbo v5, "FCScheduleCheck"

    const-string/jumbo v6, "scheduleResultCheckV2 onDataReceived"

    new-array v7, v13, [Ljava/lang/Object;

    const-string/jumbo v3, "checkResults.size"

    aput-object v3, v7, v4

    iget-object v3, p0, Lhhf$1$1;->a:Ljava/util/List;

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v12

    invoke-static {v5, v6, v7}, Lhgz;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v2, "validExecutors":Ljava/util/List;, "Ljava/util/List<Lhhd;>;"
    iget-object v3, p0, Lhhf$1$1;->a:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lhhf$1$1;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 58
    iget-object v3, p0, Lhhf$1$1;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhjx;

    .line 59
    .local v0, "checkResult":Lhjx;
    if-eqz v0, :cond_0

    .line 60
    iget-object v5, v0, Lhjx;->c:Ljava/lang/Boolean;

    invoke-static {v5, v12}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 61
    iget-object v5, p0, Lhhf$1$1;->b:Lhhf$1;

    iget-object v5, v5, Lhhf$1;->a:Ljava/util/List;

    iget-object v6, v0, Lhjx;->a:Ljava/lang/String;

    iget-object v7, v0, Lhjx;->d:Ljava/lang/String;

    iget-object v8, v0, Lhjx;->b:Ljava/lang/Long;

    invoke-static {v5, v6, v7, v8}, Lhhf;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lhhd;

    move-result-object v1

    .line 62
    .local v1, "executor":Lhhd;
    if-eqz v1, :cond_0

    .line 63
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 54
    .end local v0    # "checkResult":Lhjx;
    .end local v1    # "executor":Lhhd;
    .end local v2    # "validExecutors":Ljava/util/List;, "Ljava/util/List<Lhhd;>;"
    :cond_1
    iget-object v3, p0, Lhhf$1$1;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 66
    .restart local v0    # "checkResult":Lhjx;
    .restart local v2    # "validExecutors":Ljava/util/List;, "Ljava/util/List<Lhhd;>;"
    :cond_2
    sget-object v5, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

    iget-object v6, v0, Lhjx;->a:Ljava/lang/String;

    iget-object v7, v0, Lhjx;->d:Ljava/lang/String;

    iget-object v8, v0, Lhjx;->b:Ljava/lang/Long;

    .line 1044
    const-wide/16 v10, 0x0

    invoke-static {v8, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 66
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->finish(Ljava/lang/String;Ljava/lang/String;J)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    goto :goto_1

    .line 71
    .end local v0    # "checkResult":Lhjx;
    :cond_3
    const-string/jumbo v3, "FCScheduleCheck"

    const-string/jumbo v5, "scheduleResultCheckV2 onDataReceived"

    new-array v6, v13, [Ljava/lang/Object;

    const-string/jumbo v7, "validExecutors.size"

    aput-object v7, v6, v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v12

    invoke-static {v3, v5, v6}, Lhgz;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v3, p0, Lhhf$1$1;->b:Lhhf$1;

    iget-object v3, v3, Lhhf$1;->b:Lcma;

    invoke-interface {v3, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 73
    return-void
.end method
