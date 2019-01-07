.class final Lcom/alibaba/bee/impl/DebugTools$3;
.super Ljava/lang/Object;
.source "DebugTools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/bee/impl/DebugTools;->throwDoNotEndTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dbName:Ljava/lang/String;

.field final synthetic val$e:Ljava/lang/Throwable;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alibaba/bee/impl/DebugTools$3;->val$dbName:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/bee/impl/DebugTools$3;->val$msg:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/bee/impl/DebugTools$3;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 99
    invoke-static {}, Lcom/alibaba/bee/impl/DebugTools;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    monitor-enter v2

    .line 100
    :try_start_0
    invoke-static {}, Lcom/alibaba/bee/impl/DebugTools;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/bee/impl/DebugTools$3;->val$dbName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/bee/impl/DebugTools$DBDebugInfo;

    .line 101
    .local v0, "debugInfo":Lcom/alibaba/bee/impl/DebugTools$DBDebugInfo;
    if-nez v0, :cond_0

    .line 102
    monitor-exit v2

    return-void

    .line 104
    :cond_0
    invoke-static {}, Lcom/alibaba/bee/impl/DebugTools;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/bee/impl/DebugTools$3;->val$dbName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Database may not end transaction or execution is too slow. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/bee/impl/DebugTools$3;->val$msg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/bee/impl/DebugTools$3;->val$e:Ljava/lang/Throwable;

    invoke-static {v4}, Lcom/alibaba/bee/impl/DebugTools;->access$000(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    .end local v0    # "debugInfo":Lcom/alibaba/bee/impl/DebugTools$DBDebugInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
