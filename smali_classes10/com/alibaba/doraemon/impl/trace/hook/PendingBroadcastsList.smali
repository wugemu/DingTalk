.class public Lcom/alibaba/doraemon/impl/trace/hook/PendingBroadcastsList;
.super Ljava/util/ArrayList;
.source "PendingBroadcastsList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PendingBroadcastsList"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 26
    :try_start_0
    const-string/jumbo v6, "intent"

    invoke-static {p1, v6}, Lcom/alibaba/doraemon/utils/ReflectUtils;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 28
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/alibaba/doraemon/impl/trace/TraceId;->getThreadTraceId()Ljava/lang/String;

    move-result-object v5

    .line 29
    .local v5, "traceId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 30
    const-string/jumbo v6, "com.alibaba.doraemon.TRACEID"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string/jumbo v6, "p"

    invoke-static {v5, v6}, Lcom/alibaba/doraemon/impl/trace/TraceId;->getTraceIdRef(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    move-result-object v4

    .line 32
    .local v4, "ref":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->incTransferRef()V

    .line 35
    .end local v4    # "ref":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    :cond_0
    const-string/jumbo v6, "receivers"

    invoke-static {p1, v6}, Lcom/alibaba/doraemon/utils/ReflectUtils;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 36
    .local v2, "list":Ljava/util/ArrayList;
    instance-of v6, v2, Lcom/alibaba/doraemon/impl/trace/hook/ReceiversList;

    if-nez v6, :cond_1

    .line 37
    new-instance v3, Lcom/alibaba/doraemon/impl/trace/hook/ReceiversList;

    invoke-direct {v3, v1}, Lcom/alibaba/doraemon/impl/trace/hook/ReceiversList;-><init>(Landroid/content/Intent;)V

    .line 38
    .local v3, "receiversList":Lcom/alibaba/doraemon/impl/trace/hook/ReceiversList;
    invoke-virtual {v3, v2}, Lcom/alibaba/doraemon/impl/trace/hook/ReceiversList;->addAll(Ljava/util/Collection;)Z

    .line 39
    const-string/jumbo v6, "receivers"

    invoke-static {p1, v6, v3}, Lcom/alibaba/doraemon/utils/ReflectUtils;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "list":Ljava/util/ArrayList;
    .end local v3    # "receiversList":Lcom/alibaba/doraemon/impl/trace/hook/ReceiversList;
    .end local v5    # "traceId":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    return v6

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 43
    const-string/jumbo v6, "PendingBroadcastsList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/doraemon/DoraemonLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 44
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 46
    const-string/jumbo v6, "PendingBroadcastsList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/doraemon/DoraemonLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
