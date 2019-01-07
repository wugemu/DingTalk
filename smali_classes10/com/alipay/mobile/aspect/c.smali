.class public final Lcom/alipay/mobile/aspect/c;
.super Ljava/lang/Object;
.source "FrameworkPointcutExecution.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .param p0, "pointCut"    # Ljava/lang/String;
    .param p1, "thisPoint"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 23
    invoke-static {}, Lcom/alipay/mobile/aspect/b;->a()Lcom/alipay/mobile/aspect/b;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/alipay/mobile/aspect/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 24
    .local v1, "advices":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/aspect/a;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 27
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/aspect/a;

    .line 28
    .local v0, "advice":Lcom/alipay/mobile/aspect/a;
    if-eqz v0, :cond_0

    .line 30
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/alipay/mobile/aspect/a;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 31
    :catch_0
    move-exception v2

    .line 32
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "PointCutExecution"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 37
    .end local v0    # "advice":Lcom/alipay/mobile/aspect/a;
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 5
    .param p0, "pointCut"    # Ljava/lang/String;
    .param p1, "thisPoint"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    const/4 v2, 0x0

    .line 52
    .local v2, "aroundResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/alipay/mobile/aspect/b;->a()Lcom/alipay/mobile/aspect/b;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/alipay/mobile/aspect/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 53
    .local v1, "advices":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/aspect/a;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 56
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/aspect/a;

    .line 57
    .local v0, "advice":Lcom/alipay/mobile/aspect/a;
    if-eqz v0, :cond_0

    .line 59
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/alipay/mobile/aspect/a;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 62
    :goto_0
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    .end local v0    # "advice":Lcom/alipay/mobile/aspect/a;
    :cond_1
    return-object v2

    .restart local v0    # "advice":Lcom/alipay/mobile/aspect/a;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "pointCut"    # Ljava/lang/String;
    .param p1, "thisPoint"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 79
    invoke-static {}, Lcom/alipay/mobile/aspect/b;->a()Lcom/alipay/mobile/aspect/b;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/alipay/mobile/aspect/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 80
    .local v1, "advices":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/aspect/a;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 83
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/aspect/a;

    .line 84
    .local v0, "advice":Lcom/alipay/mobile/aspect/a;
    if-eqz v0, :cond_0

    .line 86
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/alipay/mobile/aspect/a;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    .line 92
    .end local v0    # "advice":Lcom/alipay/mobile/aspect/a;
    :cond_1
    return-void
.end method
