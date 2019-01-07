.class public Lcom/alibaba/doraemon/impl/trace/hook/BroadcastIntercept;
.super Ljava/lang/Object;
.source "BroadcastIntercept.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/trace/hook/BroadcastIntercept$HandlerProxy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BroadcastIntercept"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method private static injectLocalBroadcastHandler(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    .line 95
    :try_start_0
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v5

    const-string/jumbo v6, "mPendingBroadcasts"

    invoke-static {v5, v6}, Lcom/alibaba/doraemon/utils/ReflectUtils;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 96
    .local v2, "pendingBroadcasts":Ljava/util/ArrayList;
    new-instance v3, Lcom/alibaba/doraemon/impl/trace/hook/PendingBroadcastsList;

    invoke-direct {v3}, Lcom/alibaba/doraemon/impl/trace/hook/PendingBroadcastsList;-><init>()V

    .line 97
    .local v3, "pendingList":Lcom/alibaba/doraemon/impl/trace/hook/PendingBroadcastsList;
    invoke-virtual {v3, v2}, Lcom/alibaba/doraemon/impl/trace/hook/PendingBroadcastsList;->addAll(Ljava/util/Collection;)Z

    .line 98
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v5

    const-string/jumbo v6, "mPendingBroadcasts"

    invoke-static {v5, v6, v3}, Lcom/alibaba/doraemon/utils/ReflectUtils;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v5

    const-string/jumbo v6, "mHandler"

    invoke-static {v5, v6}, Lcom/alibaba/doraemon/utils/ReflectUtils;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 101
    .local v1, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/alibaba/doraemon/impl/trace/hook/BroadcastIntercept$HandlerProxy;

    invoke-direct {v4, v1}, Lcom/alibaba/doraemon/impl/trace/hook/BroadcastIntercept$HandlerProxy;-><init>(Landroid/os/Handler;)V

    .line 102
    .local v4, "proxy":Lcom/alibaba/doraemon/impl/trace/hook/BroadcastIntercept$HandlerProxy;
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v5

    const-string/jumbo v6, "mHandler"

    invoke-static {v5, v6, v4}, Lcom/alibaba/doraemon/utils/ReflectUtils;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "pendingBroadcasts":Ljava/util/ArrayList;
    .end local v3    # "pendingList":Lcom/alibaba/doraemon/impl/trace/hook/PendingBroadcastsList;
    .end local v4    # "proxy":Lcom/alibaba/doraemon/impl/trace/hook/BroadcastIntercept$HandlerProxy;
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_0

    .line 103
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static intercept(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/trace/hook/BroadcastIntercept;->injectLocalBroadcastHandler(Landroid/content/Context;)V

    .line 35
    return-void
.end method
